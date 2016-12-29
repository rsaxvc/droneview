.class public Lobject/p2pwificam/clientActivity/DPlayActivity;
.super Lobject/p2pwificam/clientActivity/BaseActivity;
.source "DPlayActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/GestureDetector$OnDoubleTapListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lobject/p2pwificam/clientActivity/DPlayActivity$PlayerThread;,
        Lobject/p2pwificam/clientActivity/DPlayActivity$StatusThread;,
        Lobject/p2pwificam/clientActivity/DPlayActivity$ThreadConnect;,
        Lobject/p2pwificam/clientActivity/DPlayActivity$surfaceCallback;
    }
.end annotation


# static fields
.field private static final AUDIO_BUFFER_START_CODE:I = 0xff00ff

.field private static final LOG_TAG:Ljava/lang/String; = "DPlay"

.field private static final LOW_MEMORY:Ljava/lang/String; = "The memory will be full"

.field private static final LOW_MEMORY_MB:I = 0x200

.field private static final LOW_POWER:Ljava/lang/String; = "Low Battery - Land Soon and Unplug"

.field private static final MEMORY_FULL:Ljava/lang/String; = "The memory is full"

.field private static final MEMORY_FULL_MB:I = 0x100

.field private static final MESSAGE_DATA_TIMEOUT:I = 0x67

.field private static final MESSAGE_DEVICE_STATE:I = 0x68

.field private static final MESSAGE_HIDE_PROGRESSBAR:I = 0x66

.field private static final MESSAGE_ONLINE:I = 0x2

.field private static final MESSAGE_QUERY_STORAGESTATE:I = 0x64

.field private static final MESSAGE_QUERY_WIFIRSSI:I = 0x65

.field private static final MESSAGE_RECORD_TEXT:I = 0x6a

.field private static final MESSAGE_SHOWSURFACE:I = 0x3

.field private static final MESSAGE_SHOW_SETUP:I = 0x69

.field private static final MESSAGE_START:I = 0x1

.field private static final NO_CARD:Ljava/lang/String; = "No Memory Card Installed"

.field private static final RECORD_STATE_FLAG:I = 0x1

.field private static final RECORD_STATE_START:I = 0x2

.field private static final RECORD_STATE_STARTTING:I = 0x1

.field private static final RECORD_STATE_STOP:I = 0x0

.field private static final RECORD_STATE_STOPPING:I = 0x3

.field private static final VIDEO_DATA_TIMEOUT:I = 0xa

.field private static final isDebug:Z


# instance fields
.field private CameraVersion:I

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

.field VideoFPS:I

.field Video_bps:I

.field Video_fps:I

.field private WiFiName:Ljava/lang/String;

.field private _camInfo:Lcom/easyview/common/EV_NetInfo;

.field private _camera:Lcom/easyview/camera/EVBaseCamera;

.field private _connectRun:Z

.field private _connectThread:Lobject/p2pwificam/clientActivity/DPlayActivity$ThreadConnect;

.field private _conntect_count:I

.field private _control_idle_count:I

.field private _dCamera:Lcom/easyview/evnet/DCamera;

.field private _dev_ssid:Ljava/lang/String;

.field private _frame_ms:J

.field private _frame_period:I

.field private _frame_period_count:I

.field private _frame_timeout_count:I

.field private _frame_timeout_count_1:I

.field private _frame_timeout_count_2:I

.field private _isConnected:Z

.field private _isPause:Z

.field private _max_rssi:I

.field private _min_rssi:I

.field private _period_0:I

.field private _period_1:I

.field private _period_2:I

.field private _ppcsCamera:Lcom/easyview/ppcs/PPCSCamera;

.field private _prefix:Ljava/lang/String;

.field private _soundPool:Landroid/media/SoundPool;

.field private _statusThread:Lobject/p2pwificam/clientActivity/DPlayActivity$StatusThread;

.field private _step:I

.field private _stop_record_count:I

.field private _tran_mode:I

.field private _videoDataQueue:Lobject/p2pipcam/utils/VideoDataQueue;

.field private _wifiUtils:Lcom/easyview/common/WifiUtils;

.field private _wifi_rssi_level:I

.field private ap_name_text:Landroid/widget/TextView;

.field private bDisplayFinished:Z

.field private bInitCameraParam:Z

.field private bManualExit:Z

.field private bProgress:Z

.field private bTimeoutStarted:Z

.field private bgetCameraParamsThreadRuning:Z

.field private brightseekBar:Landroid/widget/SeekBar;

.field private button_sel:Landroid/widget/ImageButton;

.field private contrastseekBar:Landroid/widget/SeekBar;

.field private control_layout:Landroid/view/View;

.field private control_show:Z

.field private decoder:Landroid/media/MediaCodec;

.field private device_state:I

.field private dismissAnim:Landroid/view/animation/Animation;

.field private dismissToLeft:Landroid/view/animation/Animation;

.field private drone_date_code_off:Landroid/widget/ImageButton;

.field private drone_date_code_on:Landroid/widget/ImageButton;

.field private drone_do:Landroid/widget/ImageButton;

.field private drone_gallery:Landroid/widget/ImageButton;

.field private drone_record:Landroid/widget/ImageButton;

.field private drone_record_show:Landroid/widget/ImageButton;

.field private drone_record_text:Landroid/widget/TextView;

.field private drone_reset:Landroid/widget/Button;

.field private drone_return:Landroid/widget/ImageButton;

.field private drone_save:Landroid/widget/ImageButton;

.field private drone_sensor_off:Landroid/widget/ImageButton;

.field private drone_sensor_on:Landroid/widget/ImageButton;

.field private drone_setup:Landroid/widget/ImageButton;

.field private drone_snap:Landroid/widget/ImageButton;

.field private drone_view_rotate_off:Landroid/widget/ImageButton;

.field private drone_view_rotate_on:Landroid/widget/ImageButton;

.field private drone_wifi:Landroid/widget/ImageButton;

.field private edit_wifi_name:Landroid/widget/EditText;

.field protected findCamera:Z

.field private findKeyFrame:Z

.field private gallery_sel_card:Landroid/widget/ImageButton;

.field private gallery_sel_local:Landroid/widget/ImageButton;

.field private h264JpegVideoDate:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<[B>;"
        }
    .end annotation
.end field

.field private handler:Landroid/os/Handler;

.field private imgViewOpenLock:Landroid/widget/ImageView;

.field private imgViewRecord:Landroid/widget/ImageView;

.field private imgViewSnap:Landroid/widget/ImageView;

.field private isCameraReady:Z

.field private isExit:Z

.field private isH264:Z

.field private isModified:Z

.field private isPictSave:Z

.field private isReverseLandscape:Z

.field private isRunning:Z

.field private isT:Z

.field private isTakeVideo:Z

.field private isTypeI:I

.field private is_close_video:Z

.field private is_record:Z

.field private is_record_show:Z

.field private is_recording:Z

.field private isstart:Z

.field private lastBackKeyTimeStamp:J

.field private lastRecordTime:J

.field private lastSnapTime:J

.field lastTimeStamp:J

.field private last_touch:J

.field private left_control_layout:Landroid/view/View;

.field private final mBatInfoReceiver:Landroid/content/BroadcastReceiver;

.field private mBmp:Landroid/graphics/Bitmap;

.field private mHandler:Landroid/os/Handler;

.field private mOrientationListener:Landroid/view/OrientationEventListener;

.field private mPlayer:Lobject/p2pwificam/clientActivity/DPlayActivity$PlayerThread;

.field private mPopupWindowProgress:Landroid/widget/PopupWindow;

.field private msgStreamCodecHandler:Landroid/os/Handler;

.field private myGlSurfaceView:Landroid/opengl/GLSurfaceView;

.field private myRender:Lobject/p2pwificam/clientActivity/MyRender;

.field private nBrightness:I

.field private nContrast:I

.field private nCurBrightness:I

.field private nCurContrast:I

.field private nCurDateCode:I

.field private nCurRotate:I

.field private nCurSensorRes:I

.field private nDateCode:I

.field private nFlip:I

.field private nP2PMode:I

.field private nPlayCount:I

.field private nRotate:I

.field private nSensorRes:I

.field private nStreamCodecType:I

.field private nTimeoutRemain:I

.field private nVideoHeight:I

.field private nVideoWidth:I

.field private no_sd_show_count:I

.field private no_sd_text:Landroid/widget/TextView;

.field private onControlClick:Landroid/view/View$OnClickListener;

.field private onSelectClick:Landroid/view/View$OnClickListener;

.field private onVideoData:Lcom/easyview/basecamera/ICamera$IDataListener;

.field private onWifiClick:Landroid/view/View$OnClickListener;

.field private onYUVData:Lcom/easyview/basecamera/ICamera$IYUVDataListener;

.field private paramCanSave:Z

.field private playHolder:Landroid/view/SurfaceHolder;

.field private playSurface:Landroid/view/SurfaceView;

.field private playType:I

.field private preference:Landroid/content/SharedPreferences;

.field private progressView:Landroid/view/View;

.field private ptzPlatform:Landroid/widget/LinearLayout;

.field private record_second:I

.field private record_sel_card:Landroid/widget/ImageButton;

.field private record_sel_local:Landroid/widget/ImageButton;

.field private record_show_layout:Landroid/view/View;

.field private record_state:I

.field private record_task:Ljava/util/TimerTask;

.field private record_timer:Ljava/util/Timer;

.field private render_idle_count:I

.field private resolutionPopWindow:Landroid/widget/PopupWindow;

.field private restart:Z

.field private rssi_text:Landroid/widget/TextView;

.field private rssi_value_text:Landroid/widget/TextView;

.field private run_firstRequest:Ljava/lang/Runnable;

.field private search_text:Landroid/widget/TextView;

.field private seekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private seek_Time:J

.field private seek_brightness:I

.field private seek_contrast:I

.field private sel_gallery:Z

.field private sensor_layout:Landroid/view/View;

.field private setup_is_show:Z

.field private setup_show_layout:Landroid/view/View;

.field private showAnim:Landroid/view/animation/Animation;

.field private showDebugInfo:Z

.field private showFromLeft:Landroid/view/animation/Animation;

.field private snap_sel_card:Landroid/widget/ImageButton;

.field private snap_sel_local:Landroid/widget/ImageButton;

.field private start_record_count:I

.field private step_text:Landroid/widget/TextView;

.field private strDID:Ljava/lang/String;

.field private strName:Ljava/lang/String;

.field private streamType:I

.field private surface:Landroid/view/Surface;

.field private timeoutHandle:Landroid/os/Handler;

.field private touch_count:I

.field private vedioview:Landroid/view/View;

.field private videoCallback:Lobject/p2pwificam/clientActivity/DPlayActivity$surfaceCallback;

.field private video_data_idle_count:I

.field private videodata:[B

.field private viewHandler:Landroid/os/Handler;

.field private wait_seconds:I

.field private wait_text:Landroid/widget/TextView;

.field private wifi_ap_prefixs:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const-wide/16 v4, 0xfa0

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 87
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/BaseActivity;-><init>()V

    .line 117
    iput-object v3, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->playSurface:Landroid/view/SurfaceView;

    .line 118
    iput-object v3, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->playHolder:Landroid/view/SurfaceHolder;

    .line 119
    iput-object v3, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->mPlayer:Lobject/p2pwificam/clientActivity/DPlayActivity$PlayerThread;

    .line 120
    iput-boolean v2, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->isRunning:Z

    .line 121
    iput-object v3, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->_statusThread:Lobject/p2pwificam/clientActivity/DPlayActivity$StatusThread;

    .line 122
    iput-object v3, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->_connectThread:Lobject/p2pwificam/clientActivity/DPlayActivity$ThreadConnect;

    .line 123
    iput-object v3, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->videodata:[B

    .line 124
    iput v2, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->nVideoWidth:I

    .line 125
    iput v2, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->nVideoHeight:I

    .line 127
    iput-object v3, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->progressView:Landroid/view/View;

    .line 128
    iput-boolean v1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->bProgress:Z

    .line 130
    iput-boolean v2, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->bInitCameraParam:Z

    .line 131
    iput-boolean v2, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->bManualExit:Z

    .line 133
    iput-object v3, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->strName:Ljava/lang/String;

    .line 134
    iput-object v3, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->strDID:Ljava/lang/String;

    .line 135
    const/4 v0, 0x3

    iput v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->streamType:I

    .line 137
    iput-boolean v1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->bDisplayFinished:Z

    .line 138
    new-instance v0, Lobject/p2pwificam/clientActivity/DPlayActivity$surfaceCallback;

    invoke-direct {v0, p0, v3}, Lobject/p2pwificam/clientActivity/DPlayActivity$surfaceCallback;-><init>(Lobject/p2pwificam/clientActivity/DPlayActivity;Lobject/p2pwificam/clientActivity/DPlayActivity$surfaceCallback;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->videoCallback:Lobject/p2pwificam/clientActivity/DPlayActivity$surfaceCallback;

    .line 140
    iput v2, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->nPlayCount:I

    .line 142
    iput v1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->nP2PMode:I

    .line 144
    iput v2, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->playType:I

    .line 145
    iput-boolean v2, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->bTimeoutStarted:Z

    .line 146
    const/16 v0, 0xb4

    iput v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->nTimeoutRemain:I

    .line 148
    iput-boolean v2, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->isTakeVideo:Z

    .line 150
    iput-boolean v2, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->isExit:Z

    .line 154
    iput-boolean v2, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->isH264:Z

    .line 156
    iput-boolean v2, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->restart:Z

    .line 158
    iput v2, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->isTypeI:I

    .line 159
    iput-boolean v2, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->isT:Z

    .line 160
    iput-boolean v2, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->isstart:Z

    .line 161
    iput-boolean v2, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->isPictSave:Z

    .line 162
    iput-boolean v2, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->findKeyFrame:Z

    .line 163
    iput v2, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->nBrightness:I

    .line 164
    iput v2, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->nContrast:I

    .line 165
    iput v2, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->nFlip:I

    .line 166
    iput v2, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->nRotate:I

    .line 167
    const/4 v0, -0x1

    iput v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->nDateCode:I

    .line 168
    iput v2, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->nSensorRes:I

    .line 169
    iput v2, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->nCurBrightness:I

    .line 170
    iput v2, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->nCurContrast:I

    .line 171
    iput v2, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->nCurRotate:I

    .line 172
    iput v2, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->nCurDateCode:I

    .line 173
    iput v2, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->nCurSensorRes:I

    .line 174
    iput-boolean v2, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->isModified:Z

    .line 175
    iput-boolean v2, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->paramCanSave:Z

    .line 176
    iput v2, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->video_data_idle_count:I

    .line 177
    const/4 v0, 0x6

    iput v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->render_idle_count:I

    .line 179
    iput-object v3, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->imgViewRecord:Landroid/widget/ImageView;

    .line 180
    iput-object v3, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->imgViewSnap:Landroid/widget/ImageView;

    .line 181
    iput-object v3, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->imgViewOpenLock:Landroid/widget/ImageView;

    .line 183
    iput-object v3, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->h264JpegVideoDate:Ljava/util/LinkedList;

    .line 184
    iput-object v3, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->IorP:Ljava/util/LinkedList;

    .line 186
    iput-object v3, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->control_layout:Landroid/view/View;

    .line 187
    iput-object v3, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->left_control_layout:Landroid/view/View;

    .line 188
    iput-object v3, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->snap_sel_local:Landroid/widget/ImageButton;

    .line 189
    iput-object v3, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->snap_sel_card:Landroid/widget/ImageButton;

    .line 190
    iput-object v3, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->drone_snap:Landroid/widget/ImageButton;

    .line 191
    iput-object v3, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->record_sel_local:Landroid/widget/ImageButton;

    .line 192
    iput-object v3, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->record_sel_card:Landroid/widget/ImageButton;

    .line 193
    iput-object v3, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->drone_record:Landroid/widget/ImageButton;

    .line 194
    iput-object v3, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->gallery_sel_local:Landroid/widget/ImageButton;

    .line 195
    iput-object v3, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->gallery_sel_card:Landroid/widget/ImageButton;

    .line 196
    iput-object v3, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->drone_gallery:Landroid/widget/ImageButton;

    .line 197
    iput-object v3, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->drone_setup:Landroid/widget/ImageButton;

    .line 198
    iput-object v3, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->drone_do:Landroid/widget/ImageButton;

    .line 199
    iput-object v3, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->drone_return:Landroid/widget/ImageButton;

    .line 200
    iput-object v3, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->drone_save:Landroid/widget/ImageButton;

    .line 201
    iput-object v3, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->edit_wifi_name:Landroid/widget/EditText;

    .line 202
    iput-object v3, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->brightseekBar:Landroid/widget/SeekBar;

    .line 203
    iput-object v3, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->contrastseekBar:Landroid/widget/SeekBar;

    .line 204
    iput-object v3, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->drone_view_rotate_on:Landroid/widget/ImageButton;

    .line 205
    iput-object v3, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->drone_view_rotate_off:Landroid/widget/ImageButton;

    .line 206
    iput-object v3, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->drone_date_code_on:Landroid/widget/ImageButton;

    .line 207
    iput-object v3, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->drone_date_code_off:Landroid/widget/ImageButton;

    .line 208
    iput-object v3, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->drone_sensor_on:Landroid/widget/ImageButton;

    .line 209
    iput-object v3, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->drone_sensor_off:Landroid/widget/ImageButton;

    .line 210
    iput-object v3, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->drone_wifi:Landroid/widget/ImageButton;

    .line 211
    iput-object v3, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->drone_reset:Landroid/widget/Button;

    .line 213
    iput-object v3, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->button_sel:Landroid/widget/ImageButton;

    .line 214
    iput-object v3, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->vedioview:Landroid/view/View;

    .line 215
    iput-object v3, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->record_show_layout:Landroid/view/View;

    .line 216
    iput-object v3, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->setup_show_layout:Landroid/view/View;

    .line 218
    iput-object v3, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->no_sd_text:Landroid/widget/TextView;

    .line 219
    iput-object v3, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->drone_record_show:Landroid/widget/ImageButton;

    .line 220
    iput-object v3, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->drone_record_text:Landroid/widget/TextView;

    .line 221
    iput-object v3, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->search_text:Landroid/widget/TextView;

    .line 223
    iput-object v3, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->ap_name_text:Landroid/widget/TextView;

    .line 224
    iput-object v3, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->wait_text:Landroid/widget/TextView;

    .line 225
    iput-object v3, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->rssi_text:Landroid/widget/TextView;

    .line 226
    iput-object v3, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->sensor_layout:Landroid/view/View;

    .line 228
    iput v2, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->wait_seconds:I

    .line 230
    iput-boolean v1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->control_show:Z

    .line 231
    iput-boolean v2, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->sel_gallery:Z

    .line 232
    iput-boolean v2, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->is_recording:Z

    .line 233
    iput v2, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->start_record_count:I

    .line 234
    iput-boolean v2, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->is_record:Z

    .line 235
    iput v2, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->record_state:I

    .line 236
    iput-boolean v2, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->setup_is_show:Z

    .line 237
    iput-boolean v2, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->is_close_video:Z

    .line 243
    iput-object v3, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->_camInfo:Lcom/easyview/common/EV_NetInfo;

    .line 245
    const/16 v0, -0x48

    iput v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->_min_rssi:I

    .line 246
    const/16 v0, -0x40

    iput v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->_max_rssi:I

    .line 249
    iput-object v3, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->_dev_ssid:Ljava/lang/String;

    .line 250
    iput-object v3, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->WiFiName:Ljava/lang/String;

    .line 251
    iput v2, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->_wifi_rssi_level:I

    .line 252
    iput-boolean v2, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->bgetCameraParamsThreadRuning:Z

    .line 254
    iput-object v3, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->_camera:Lcom/easyview/camera/EVBaseCamera;

    .line 255
    iput-object v3, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->_ppcsCamera:Lcom/easyview/ppcs/PPCSCamera;

    .line 256
    iput-object v3, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->_dCamera:Lcom/easyview/evnet/DCamera;

    .line 257
    iput-boolean v2, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->isCameraReady:Z

    .line 259
    iput v2, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->_control_idle_count:I

    .line 260
    iput v2, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->_stop_record_count:I

    .line 261
    iput-boolean v2, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->_isConnected:Z

    .line 262
    iput-boolean v2, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->_connectRun:Z

    .line 263
    iput-boolean v2, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->_isPause:Z

    .line 264
    iput v2, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->_conntect_count:I

    .line 265
    iput v2, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->no_sd_show_count:I

    .line 266
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v4

    iput-wide v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->lastBackKeyTimeStamp:J

    .line 267
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v4

    iput-wide v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->lastRecordTime:J

    .line 268
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v4

    iput-wide v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->lastSnapTime:J

    .line 270
    iput-boolean v2, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->isReverseLandscape:Z

    .line 271
    iput v2, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->CameraVersion:I

    .line 273
    iput-object v3, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->surface:Landroid/view/Surface;

    .line 274
    iput v2, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->device_state:I

    .line 275
    iput v2, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->record_second:I

    .line 276
    new-instance v0, Lobject/p2pipcam/utils/VideoDataQueue;

    invoke-direct {v0}, Lobject/p2pipcam/utils/VideoDataQueue;-><init>()V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->_videoDataQueue:Lobject/p2pipcam/utils/VideoDataQueue;

    .line 278
    iput-boolean v2, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->showDebugInfo:Z

    .line 279
    iput-object v3, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->rssi_value_text:Landroid/widget/TextView;

    .line 280
    iput-object v3, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->step_text:Landroid/widget/TextView;

    .line 281
    iput v2, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->_step:I

    .line 282
    iput v2, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->_tran_mode:I

    .line 283
    iput-wide v6, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->_frame_ms:J

    .line 284
    iput v2, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->_frame_period:I

    .line 285
    iput v2, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->_frame_period_count:I

    .line 286
    iput v2, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->_period_0:I

    .line 287
    iput v2, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->_frame_timeout_count:I

    .line 288
    iput v2, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->_period_1:I

    .line 289
    iput v2, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->_frame_timeout_count_1:I

    .line 290
    iput v2, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->_period_2:I

    .line 291
    iput v2, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->_frame_timeout_count_2:I

    .line 293
    iput-object v3, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->myRender:Lobject/p2pwificam/clientActivity/MyRender;

    .line 294
    iput-object v3, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->myGlSurfaceView:Landroid/opengl/GLSurfaceView;

    .line 400
    new-instance v0, Lobject/p2pwificam/clientActivity/DPlayActivity$1;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/DPlayActivity$1;-><init>(Lobject/p2pwificam/clientActivity/DPlayActivity;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->timeoutHandle:Landroid/os/Handler;

    .line 445
    iput-boolean v2, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->is_record_show:Z

    .line 469
    new-instance v0, Lobject/p2pwificam/clientActivity/DPlayActivity$2;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/DPlayActivity$2;-><init>(Lobject/p2pwificam/clientActivity/DPlayActivity;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->mHandler:Landroid/os/Handler;

    .line 518
    new-instance v0, Lobject/p2pwificam/clientActivity/DPlayActivity$3;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/DPlayActivity$3;-><init>(Lobject/p2pwificam/clientActivity/DPlayActivity;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->msgStreamCodecHandler:Landroid/os/Handler;

    .line 527
    iput-boolean v2, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->findCamera:Z

    .line 916
    new-instance v0, Lobject/p2pwificam/clientActivity/DPlayActivity$4;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/DPlayActivity$4;-><init>(Lobject/p2pwificam/clientActivity/DPlayActivity;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->run_firstRequest:Ljava/lang/Runnable;

    .line 923
    new-instance v0, Lobject/p2pwificam/clientActivity/DPlayActivity$5;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/DPlayActivity$5;-><init>(Lobject/p2pwificam/clientActivity/DPlayActivity;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->handler:Landroid/os/Handler;

    .line 1248
    new-instance v0, Lobject/p2pwificam/clientActivity/DPlayActivity$6;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/DPlayActivity$6;-><init>(Lobject/p2pwificam/clientActivity/DPlayActivity;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->onYUVData:Lcom/easyview/basecamera/ICamera$IYUVDataListener;

    .line 1260
    new-instance v0, Lobject/p2pwificam/clientActivity/DPlayActivity$7;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/DPlayActivity$7;-><init>(Lobject/p2pwificam/clientActivity/DPlayActivity;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->onVideoData:Lcom/easyview/basecamera/ICamera$IDataListener;

    .line 1531
    iput v2, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->seek_brightness:I

    .line 1532
    iput v2, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->seek_contrast:I

    .line 1533
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->seek_Time:J

    .line 1535
    new-instance v0, Lobject/p2pwificam/clientActivity/DPlayActivity$8;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/DPlayActivity$8;-><init>(Lobject/p2pwificam/clientActivity/DPlayActivity;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->seekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 1882
    new-instance v0, Lobject/p2pwificam/clientActivity/DPlayActivity$9;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/DPlayActivity$9;-><init>(Lobject/p2pwificam/clientActivity/DPlayActivity;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->onControlClick:Landroid/view/View$OnClickListener;

    .line 2063
    new-instance v0, Lobject/p2pwificam/clientActivity/DPlayActivity$10;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/DPlayActivity$10;-><init>(Lobject/p2pwificam/clientActivity/DPlayActivity;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->onSelectClick:Landroid/view/View$OnClickListener;

    .line 2091
    new-instance v0, Lobject/p2pwificam/clientActivity/DPlayActivity$11;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/DPlayActivity$11;-><init>(Lobject/p2pwificam/clientActivity/DPlayActivity;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->onWifiClick:Landroid/view/View$OnClickListener;

    .line 2119
    new-instance v0, Lobject/p2pwificam/clientActivity/DPlayActivity$12;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/DPlayActivity$12;-><init>(Lobject/p2pwificam/clientActivity/DPlayActivity;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->viewHandler:Landroid/os/Handler;

    .line 2242
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->lastTimeStamp:J

    .line 2243
    iput v2, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->VideoFPS:I

    .line 2245
    iput v2, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->Video_fps:I

    .line 2246
    iput v2, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->Video_bps:I

    .line 2249
    new-instance v0, Lobject/p2pwificam/clientActivity/DPlayActivity$13;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/DPlayActivity$13;-><init>(Lobject/p2pwificam/clientActivity/DPlayActivity;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->mBatInfoReceiver:Landroid/content/BroadcastReceiver;

    .line 2261
    iput v2, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->touch_count:I

    .line 2262
    iput-wide v6, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->last_touch:J

    .line 2567
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->record_timer:Ljava/util/Timer;

    .line 2568
    new-instance v0, Lobject/p2pwificam/clientActivity/DPlayActivity$14;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/DPlayActivity$14;-><init>(Lobject/p2pwificam/clientActivity/DPlayActivity;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->record_task:Ljava/util/TimerTask;

    .line 87
    return-void
.end method

.method private StopAll()V
    .locals 2

    .prologue
    .line 381
    const/4 v1, 0x0

    iput-boolean v1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->_connectRun:Z

    .line 382
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->StopPlayThread()V

    .line 384
    :try_start_0
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->_statusThread:Lobject/p2pwificam/clientActivity/DPlayActivity$StatusThread;

    invoke-virtual {v1}, Lobject/p2pwificam/clientActivity/DPlayActivity$StatusThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 391
    :goto_0
    :try_start_1
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->_connectThread:Lobject/p2pwificam/clientActivity/DPlayActivity$ThreadConnect;

    invoke-virtual {v1}, Lobject/p2pwificam/clientActivity/DPlayActivity$ThreadConnect;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 397
    :goto_1
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->_camera:Lcom/easyview/camera/EVBaseCamera;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->_camera:Lcom/easyview/camera/EVBaseCamera;

    invoke-virtual {v1}, Lcom/easyview/camera/EVBaseCamera;->Stop()V

    .line 398
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->_camera:Lcom/easyview/camera/EVBaseCamera;

    .line 399
    return-void

    .line 385
    :catch_0
    move-exception v0

    .line 387
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 392
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 394
    .restart local v0    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1
.end method

.method private StopPlayThread()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 367
    iget-boolean v1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->isRunning:Z

    if-eqz v1, :cond_0

    .line 368
    const-string v1, "DPlay"

    const-string v2, "ready finish play thread"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    iput-boolean v4, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->isRunning:Z

    .line 371
    :try_start_0
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->mPlayer:Lobject/p2pwificam/clientActivity/DPlayActivity$PlayerThread;

    invoke-virtual {v1}, Lobject/p2pwificam/clientActivity/DPlayActivity$PlayerThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 376
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->mPlayer:Lobject/p2pwificam/clientActivity/DPlayActivity$PlayerThread;

    .line 378
    :cond_0
    return-void

    .line 372
    :catch_0
    move-exception v0

    .line 374
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic access$0(Lobject/p2pwificam/clientActivity/DPlayActivity;)I
    .locals 1

    .prologue
    .line 146
    iget v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->nTimeoutRemain:I

    return v0
.end method

.method static synthetic access$1(Lobject/p2pwificam/clientActivity/DPlayActivity;I)V
    .locals 0

    .prologue
    .line 146
    iput p1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->nTimeoutRemain:I

    return-void
.end method

.method static synthetic access$10(Lobject/p2pwificam/clientActivity/DPlayActivity;Z)V
    .locals 0

    .prologue
    .line 137
    iput-boolean p1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->bDisplayFinished:Z

    return-void
.end method

.method static synthetic access$100(Lobject/p2pwificam/clientActivity/DPlayActivity;)Z
    .locals 1

    .prologue
    .line 232
    iget-boolean v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->is_recording:Z

    return v0
.end method

.method static synthetic access$101(Lobject/p2pwificam/clientActivity/DPlayActivity;)Z
    .locals 1

    .prologue
    .line 270
    iget-boolean v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->isReverseLandscape:Z

    return v0
.end method

.method static synthetic access$102(Lobject/p2pwificam/clientActivity/DPlayActivity;)V
    .locals 0

    .prologue
    .line 2348
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->adjustFontSize()V

    return-void
.end method

.method static synthetic access$103(Lobject/p2pwificam/clientActivity/DPlayActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->setup_show_layout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$104(Lobject/p2pwificam/clientActivity/DPlayActivity;)Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->snap_sel_local:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$105(Lobject/p2pwificam/clientActivity/DPlayActivity;Landroid/widget/ImageButton;)V
    .locals 0

    .prologue
    .line 213
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->button_sel:Landroid/widget/ImageButton;

    return-void
.end method

.method static synthetic access$106(Lobject/p2pwificam/clientActivity/DPlayActivity;)Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->snap_sel_card:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$107(Lobject/p2pwificam/clientActivity/DPlayActivity;)Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->record_sel_local:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$108(Lobject/p2pwificam/clientActivity/DPlayActivity;)Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->record_sel_card:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$109(Lobject/p2pwificam/clientActivity/DPlayActivity;)Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->gallery_sel_local:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$11(Lobject/p2pwificam/clientActivity/DPlayActivity;)I
    .locals 1

    .prologue
    .line 140
    iget v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->nPlayCount:I

    return v0
.end method

.method static synthetic access$110(Lobject/p2pwificam/clientActivity/DPlayActivity;)Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->gallery_sel_card:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$111(Lobject/p2pwificam/clientActivity/DPlayActivity;)Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->button_sel:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$112(Lobject/p2pwificam/clientActivity/DPlayActivity;)Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->drone_wifi:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$113(Lobject/p2pwificam/clientActivity/DPlayActivity;Z)V
    .locals 0

    .prologue
    .line 237
    iput-boolean p1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->is_close_video:Z

    return-void
.end method

.method static synthetic access$114(Lobject/p2pwificam/clientActivity/DPlayActivity;)Lcom/easyview/basecamera/ICamera$IYUVDataListener;
    .locals 1

    .prologue
    .line 1248
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->onYUVData:Lcom/easyview/basecamera/ICamera$IYUVDataListener;

    return-object v0
.end method

.method static synthetic access$115(Lobject/p2pwificam/clientActivity/DPlayActivity;Landroid/content/SharedPreferences;)V
    .locals 0

    .prologue
    .line 253
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->preference:Landroid/content/SharedPreferences;

    return-void
.end method

.method static synthetic access$116(Lobject/p2pwificam/clientActivity/DPlayActivity;)Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->preference:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$117(Lobject/p2pwificam/clientActivity/DPlayActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->imgViewSnap:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$118(Lobject/p2pwificam/clientActivity/DPlayActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->imgViewRecord:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$119(Lobject/p2pwificam/clientActivity/DPlayActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->imgViewOpenLock:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$12(Lobject/p2pwificam/clientActivity/DPlayActivity;I)V
    .locals 0

    .prologue
    .line 140
    iput p1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->nPlayCount:I

    return-void
.end method

.method static synthetic access$120(Lobject/p2pwificam/clientActivity/DPlayActivity;)Landroid/view/SurfaceHolder;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->playHolder:Landroid/view/SurfaceHolder;

    return-object v0
.end method

.method static synthetic access$121(Lobject/p2pwificam/clientActivity/DPlayActivity;Landroid/view/Surface;)V
    .locals 0

    .prologue
    .line 273
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->surface:Landroid/view/Surface;

    return-void
.end method

.method static synthetic access$122(Lobject/p2pwificam/clientActivity/DPlayActivity;)Lobject/p2pwificam/clientActivity/DPlayActivity$PlayerThread;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->mPlayer:Lobject/p2pwificam/clientActivity/DPlayActivity$PlayerThread;

    return-object v0
.end method

.method static synthetic access$123(Lobject/p2pwificam/clientActivity/DPlayActivity;)V
    .locals 0

    .prologue
    .line 365
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->StopPlayThread()V

    return-void
.end method

.method static synthetic access$124(Lobject/p2pwificam/clientActivity/DPlayActivity;)V
    .locals 0

    .prologue
    .line 639
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->connectDevice()V

    return-void
.end method

.method static synthetic access$125(Lobject/p2pwificam/clientActivity/DPlayActivity;)Lcom/easyview/basecamera/ICamera$IDataListener;
    .locals 1

    .prologue
    .line 1260
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->onVideoData:Lcom/easyview/basecamera/ICamera$IDataListener;

    return-object v0
.end method

.method static synthetic access$126(Lobject/p2pwificam/clientActivity/DPlayActivity;)Z
    .locals 1

    .prologue
    .line 120
    iget-boolean v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->isRunning:Z

    return v0
.end method

.method static synthetic access$127(Lobject/p2pwificam/clientActivity/DPlayActivity;)I
    .locals 1

    .prologue
    .line 177
    iget v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->render_idle_count:I

    return v0
.end method

.method static synthetic access$128(Lobject/p2pwificam/clientActivity/DPlayActivity;I)V
    .locals 0

    .prologue
    .line 177
    iput p1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->render_idle_count:I

    return-void
.end method

.method static synthetic access$129(Lobject/p2pwificam/clientActivity/DPlayActivity;Z)V
    .locals 0

    .prologue
    .line 120
    iput-boolean p1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->isRunning:Z

    return-void
.end method

.method static synthetic access$13(Lobject/p2pwificam/clientActivity/DPlayActivity;)I
    .locals 1

    .prologue
    .line 141
    iget v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->nStreamCodecType:I

    return v0
.end method

.method static synthetic access$130(Lobject/p2pwificam/clientActivity/DPlayActivity;)Z
    .locals 1

    .prologue
    .line 261
    iget-boolean v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->_isConnected:Z

    return v0
.end method

.method static synthetic access$131(Lobject/p2pwificam/clientActivity/DPlayActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 2418
    invoke-direct {p0, p1}, Lobject/p2pwificam/clientActivity/DPlayActivity;->showMessage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$132(Lobject/p2pwificam/clientActivity/DPlayActivity;)I
    .locals 1

    .prologue
    .line 265
    iget v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->no_sd_show_count:I

    return v0
.end method

.method static synthetic access$133(Lobject/p2pwificam/clientActivity/DPlayActivity;)I
    .locals 1

    .prologue
    .line 176
    iget v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->video_data_idle_count:I

    return v0
.end method

.method static synthetic access$134(Lobject/p2pwificam/clientActivity/DPlayActivity;Z)V
    .locals 0

    .prologue
    .line 262
    iput-boolean p1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->_connectRun:Z

    return-void
.end method

.method static synthetic access$135(Lobject/p2pwificam/clientActivity/DPlayActivity;)Z
    .locals 1

    .prologue
    .line 262
    iget-boolean v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->_connectRun:Z

    return v0
.end method

.method static synthetic access$136(Lobject/p2pwificam/clientActivity/DPlayActivity;)I
    .locals 1

    .prologue
    .line 259
    iget v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->_control_idle_count:I

    return v0
.end method

.method static synthetic access$137(Lobject/p2pwificam/clientActivity/DPlayActivity;I)V
    .locals 0

    .prologue
    .line 260
    iput p1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->_stop_record_count:I

    return-void
.end method

.method static synthetic access$138(Lobject/p2pwificam/clientActivity/DPlayActivity;)Z
    .locals 1

    .prologue
    .line 175
    iget-boolean v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->paramCanSave:Z

    return v0
.end method

.method static synthetic access$139(Lobject/p2pwificam/clientActivity/DPlayActivity;)I
    .locals 1

    .prologue
    .line 166
    iget v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->nRotate:I

    return v0
.end method

.method static synthetic access$14(Lobject/p2pwificam/clientActivity/DPlayActivity;)V
    .locals 0

    .prologue
    .line 895
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->firstRequest()V

    return-void
.end method

.method static synthetic access$140(Lobject/p2pwificam/clientActivity/DPlayActivity;)I
    .locals 1

    .prologue
    .line 171
    iget v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->nCurRotate:I

    return v0
.end method

.method static synthetic access$141(Lobject/p2pwificam/clientActivity/DPlayActivity;)I
    .locals 1

    .prologue
    .line 167
    iget v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->nDateCode:I

    return v0
.end method

.method static synthetic access$142(Lobject/p2pwificam/clientActivity/DPlayActivity;)I
    .locals 1

    .prologue
    .line 172
    iget v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->nCurDateCode:I

    return v0
.end method

.method static synthetic access$143(Lobject/p2pwificam/clientActivity/DPlayActivity;)I
    .locals 1

    .prologue
    .line 163
    iget v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->nBrightness:I

    return v0
.end method

.method static synthetic access$144(Lobject/p2pwificam/clientActivity/DPlayActivity;)I
    .locals 1

    .prologue
    .line 164
    iget v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->nContrast:I

    return v0
.end method

.method static synthetic access$145(Lobject/p2pwificam/clientActivity/DPlayActivity;)I
    .locals 1

    .prologue
    .line 168
    iget v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->nSensorRes:I

    return v0
.end method

.method static synthetic access$146(Lobject/p2pwificam/clientActivity/DPlayActivity;)I
    .locals 1

    .prologue
    .line 173
    iget v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->nCurSensorRes:I

    return v0
.end method

.method static synthetic access$147(Lobject/p2pwificam/clientActivity/DPlayActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->edit_wifi_name:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$148(Lobject/p2pwificam/clientActivity/DPlayActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->WiFiName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$149(Lobject/p2pwificam/clientActivity/DPlayActivity;Z)V
    .locals 0

    .prologue
    .line 236
    iput-boolean p1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->setup_is_show:Z

    return-void
.end method

.method static synthetic access$15(Lobject/p2pwificam/clientActivity/DPlayActivity;)V
    .locals 0

    .prologue
    .line 877
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->dealVideoDataTimeOut()V

    return-void
.end method

.method static synthetic access$150(Lobject/p2pwificam/clientActivity/DPlayActivity;I)V
    .locals 0

    .prologue
    .line 166
    iput p1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->nRotate:I

    return-void
.end method

.method static synthetic access$151(Lobject/p2pwificam/clientActivity/DPlayActivity;I)V
    .locals 0

    .prologue
    .line 167
    iput p1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->nDateCode:I

    return-void
.end method

.method static synthetic access$152(Lobject/p2pwificam/clientActivity/DPlayActivity;I)V
    .locals 0

    .prologue
    .line 163
    iput p1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->nBrightness:I

    return-void
.end method

.method static synthetic access$153(Lobject/p2pwificam/clientActivity/DPlayActivity;I)V
    .locals 0

    .prologue
    .line 164
    iput p1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->nContrast:I

    return-void
.end method

.method static synthetic access$154(Lobject/p2pwificam/clientActivity/DPlayActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->_prefix:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$155(Lobject/p2pwificam/clientActivity/DPlayActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 250
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->WiFiName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$156(Lobject/p2pwificam/clientActivity/DPlayActivity;I)V
    .locals 0

    .prologue
    .line 171
    iput p1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->nCurRotate:I

    return-void
.end method

.method static synthetic access$157(Lobject/p2pwificam/clientActivity/DPlayActivity;)Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->drone_view_rotate_on:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$158(Lobject/p2pwificam/clientActivity/DPlayActivity;)Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->drone_view_rotate_off:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$159(Lobject/p2pwificam/clientActivity/DPlayActivity;I)V
    .locals 0

    .prologue
    .line 172
    iput p1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->nCurDateCode:I

    return-void
.end method

.method static synthetic access$16(Lobject/p2pwificam/clientActivity/DPlayActivity;)Lcom/easyview/camera/EVBaseCamera;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->_camera:Lcom/easyview/camera/EVBaseCamera;

    return-object v0
.end method

.method static synthetic access$160(Lobject/p2pwificam/clientActivity/DPlayActivity;)Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->drone_date_code_on:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$161(Lobject/p2pwificam/clientActivity/DPlayActivity;)Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->drone_date_code_off:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$162(Lobject/p2pwificam/clientActivity/DPlayActivity;I)V
    .locals 0

    .prologue
    .line 173
    iput p1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->nCurSensorRes:I

    return-void
.end method

.method static synthetic access$163(Lobject/p2pwificam/clientActivity/DPlayActivity;)Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->drone_sensor_on:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$164(Lobject/p2pwificam/clientActivity/DPlayActivity;)Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->drone_sensor_off:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$165(Lobject/p2pwificam/clientActivity/DPlayActivity;)Landroid/widget/SeekBar;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->brightseekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$166(Lobject/p2pwificam/clientActivity/DPlayActivity;)Landroid/widget/SeekBar;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->contrastseekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$167(Lobject/p2pwificam/clientActivity/DPlayActivity;Z)V
    .locals 0

    .prologue
    .line 270
    iput-boolean p1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->isReverseLandscape:Z

    return-void
.end method

.method static synthetic access$17(Lobject/p2pwificam/clientActivity/DPlayActivity;)I
    .locals 1

    .prologue
    .line 274
    iget v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->device_state:I

    return v0
.end method

.method static synthetic access$18(Lobject/p2pwificam/clientActivity/DPlayActivity;I)V
    .locals 0

    .prologue
    .line 274
    iput p1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->device_state:I

    return-void
.end method

.method static synthetic access$19(Lobject/p2pwificam/clientActivity/DPlayActivity;)Z
    .locals 1

    .prologue
    .line 263
    iget-boolean v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->_isPause:Z

    return v0
.end method

.method static synthetic access$2(Lobject/p2pwificam/clientActivity/DPlayActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->timeoutHandle:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$20(Lobject/p2pwificam/clientActivity/DPlayActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 923
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$21(Lobject/p2pwificam/clientActivity/DPlayActivity;)Z
    .locals 1

    .prologue
    .line 128
    iget-boolean v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->bProgress:Z

    return v0
.end method

.method static synthetic access$22(Lobject/p2pwificam/clientActivity/DPlayActivity;Z)V
    .locals 0

    .prologue
    .line 128
    iput-boolean p1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->bProgress:Z

    return-void
.end method

.method static synthetic access$23(Lobject/p2pwificam/clientActivity/DPlayActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->progressView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$24(Lobject/p2pwificam/clientActivity/DPlayActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 249
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->_dev_ssid:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$25(Lobject/p2pwificam/clientActivity/DPlayActivity;)Z
    .locals 1

    .prologue
    .line 230
    iget-boolean v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->control_show:Z

    return v0
.end method

.method static synthetic access$26(Lobject/p2pwificam/clientActivity/DPlayActivity;)Landroid/view/animation/Animation;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->dismissAnim:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$27(Lobject/p2pwificam/clientActivity/DPlayActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->control_layout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$28(Lobject/p2pwificam/clientActivity/DPlayActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->left_control_layout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$29(Lobject/p2pwificam/clientActivity/DPlayActivity;)Landroid/view/animation/Animation;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->dismissToLeft:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$3(Lobject/p2pwificam/clientActivity/DPlayActivity;)Z
    .locals 1

    .prologue
    .line 150
    iget-boolean v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->isExit:Z

    return v0
.end method

.method static synthetic access$30(Lobject/p2pwificam/clientActivity/DPlayActivity;Z)V
    .locals 0

    .prologue
    .line 230
    iput-boolean p1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->control_show:Z

    return-void
.end method

.method static synthetic access$31(Lobject/p2pwificam/clientActivity/DPlayActivity;I)V
    .locals 0

    .prologue
    .line 259
    iput p1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->_control_idle_count:I

    return-void
.end method

.method static synthetic access$32(Lobject/p2pwificam/clientActivity/DPlayActivity;)Lcom/easyview/common/WifiUtils;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->_wifiUtils:Lcom/easyview/common/WifiUtils;

    return-object v0
.end method

.method static synthetic access$33(Lobject/p2pwificam/clientActivity/DPlayActivity;I)I
    .locals 1

    .prologue
    .line 2575
    invoke-direct {p0, p1}, Lobject/p2pwificam/clientActivity/DPlayActivity;->getRssiLevel(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$34(Lobject/p2pwificam/clientActivity/DPlayActivity;)Z
    .locals 1

    .prologue
    .line 278
    iget-boolean v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->showDebugInfo:Z

    return v0
.end method

.method static synthetic access$35(Lobject/p2pwificam/clientActivity/DPlayActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->rssi_value_text:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$36(Lobject/p2pwificam/clientActivity/DPlayActivity;)I
    .locals 1

    .prologue
    .line 245
    iget v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->_min_rssi:I

    return v0
.end method

.method static synthetic access$37(Lobject/p2pwificam/clientActivity/DPlayActivity;)I
    .locals 1

    .prologue
    .line 246
    iget v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->_max_rssi:I

    return v0
.end method

.method static synthetic access$38(Lobject/p2pwificam/clientActivity/DPlayActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->step_text:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$39(Lobject/p2pwificam/clientActivity/DPlayActivity;)I
    .locals 1

    .prologue
    .line 281
    iget v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->_step:I

    return v0
.end method

.method static synthetic access$4(Lobject/p2pwificam/clientActivity/DPlayActivity;)V
    .locals 0

    .prologue
    .line 427
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->setViewVisible()V

    return-void
.end method

.method static synthetic access$40(Lobject/p2pwificam/clientActivity/DPlayActivity;)I
    .locals 1

    .prologue
    .line 282
    iget v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->_tran_mode:I

    return v0
.end method

.method static synthetic access$41(Lobject/p2pwificam/clientActivity/DPlayActivity;)I
    .locals 1

    .prologue
    .line 284
    iget v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->_frame_period:I

    return v0
.end method

.method static synthetic access$42(Lobject/p2pwificam/clientActivity/DPlayActivity;)I
    .locals 1

    .prologue
    .line 287
    iget v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->_frame_timeout_count:I

    return v0
.end method

.method static synthetic access$43(Lobject/p2pwificam/clientActivity/DPlayActivity;)I
    .locals 1

    .prologue
    .line 286
    iget v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->_period_0:I

    return v0
.end method

.method static synthetic access$44(Lobject/p2pwificam/clientActivity/DPlayActivity;)I
    .locals 1

    .prologue
    .line 289
    iget v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->_frame_timeout_count_1:I

    return v0
.end method

.method static synthetic access$45(Lobject/p2pwificam/clientActivity/DPlayActivity;)I
    .locals 1

    .prologue
    .line 288
    iget v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->_period_1:I

    return v0
.end method

.method static synthetic access$46(Lobject/p2pwificam/clientActivity/DPlayActivity;)I
    .locals 1

    .prologue
    .line 291
    iget v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->_frame_timeout_count_2:I

    return v0
.end method

.method static synthetic access$47(Lobject/p2pwificam/clientActivity/DPlayActivity;)I
    .locals 1

    .prologue
    .line 290
    iget v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->_period_2:I

    return v0
.end method

.method static synthetic access$48(Lobject/p2pwificam/clientActivity/DPlayActivity;Z)V
    .locals 0

    .prologue
    .line 261
    iput-boolean p1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->_isConnected:Z

    return-void
.end method

.method static synthetic access$49(Lobject/p2pwificam/clientActivity/DPlayActivity;)Z
    .locals 1

    .prologue
    .line 234
    iget-boolean v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->is_record:Z

    return v0
.end method

.method static synthetic access$5(Lobject/p2pwificam/clientActivity/DPlayActivity;)I
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->nVideoHeight:I

    return v0
.end method

.method static synthetic access$50(Lobject/p2pwificam/clientActivity/DPlayActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->record_show_layout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$51(Lobject/p2pwificam/clientActivity/DPlayActivity;)Landroid/media/SoundPool;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->_soundPool:Landroid/media/SoundPool;

    return-object v0
.end method

.method static synthetic access$52(Lobject/p2pwificam/clientActivity/DPlayActivity;Z)V
    .locals 0

    .prologue
    .line 234
    iput-boolean p1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->is_record:Z

    return-void
.end method

.method static synthetic access$53(Lobject/p2pwificam/clientActivity/DPlayActivity;I)V
    .locals 0

    .prologue
    .line 235
    iput p1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->record_state:I

    return-void
.end method

.method static synthetic access$54(Lobject/p2pwificam/clientActivity/DPlayActivity;)I
    .locals 1

    .prologue
    .line 235
    iget v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->record_state:I

    return v0
.end method

.method static synthetic access$55(Lobject/p2pwificam/clientActivity/DPlayActivity;I)V
    .locals 0

    .prologue
    .line 275
    iput p1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->record_second:I

    return-void
.end method

.method static synthetic access$56(Lobject/p2pwificam/clientActivity/DPlayActivity;)V
    .locals 0

    .prologue
    .line 1597
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->show_setup_view()V

    return-void
.end method

.method static synthetic access$57(Lobject/p2pwificam/clientActivity/DPlayActivity;)V
    .locals 0

    .prologue
    .line 446
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->updateRecState()V

    return-void
.end method

.method static synthetic access$58(Lobject/p2pwificam/clientActivity/DPlayActivity;[B)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->videodata:[B

    return-void
.end method

.method static synthetic access$59(Lobject/p2pwificam/clientActivity/DPlayActivity;I)V
    .locals 0

    .prologue
    .line 124
    iput p1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->nVideoWidth:I

    return-void
.end method

.method static synthetic access$6(Lobject/p2pwificam/clientActivity/DPlayActivity;)I
    .locals 1

    .prologue
    .line 124
    iget v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->nVideoWidth:I

    return v0
.end method

.method static synthetic access$60(Lobject/p2pwificam/clientActivity/DPlayActivity;I)V
    .locals 0

    .prologue
    .line 125
    iput p1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->nVideoHeight:I

    return-void
.end method

.method static synthetic access$61(Lobject/p2pwificam/clientActivity/DPlayActivity;I)V
    .locals 0

    .prologue
    .line 176
    iput p1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->video_data_idle_count:I

    return-void
.end method

.method static synthetic access$62(Lobject/p2pwificam/clientActivity/DPlayActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 469
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$63(Lobject/p2pwificam/clientActivity/DPlayActivity;)J
    .locals 2

    .prologue
    .line 283
    iget-wide v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->_frame_ms:J

    return-wide v0
.end method

.method static synthetic access$64(Lobject/p2pwificam/clientActivity/DPlayActivity;)I
    .locals 1

    .prologue
    .line 285
    iget v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->_frame_period_count:I

    return v0
.end method

.method static synthetic access$65(Lobject/p2pwificam/clientActivity/DPlayActivity;I)V
    .locals 0

    .prologue
    .line 285
    iput p1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->_frame_period_count:I

    return-void
.end method

.method static synthetic access$66(Lobject/p2pwificam/clientActivity/DPlayActivity;I)V
    .locals 0

    .prologue
    .line 284
    iput p1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->_frame_period:I

    return-void
.end method

.method static synthetic access$67(Lobject/p2pwificam/clientActivity/DPlayActivity;I)V
    .locals 0

    .prologue
    .line 286
    iput p1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->_period_0:I

    return-void
.end method

.method static synthetic access$68(Lobject/p2pwificam/clientActivity/DPlayActivity;I)V
    .locals 0

    .prologue
    .line 287
    iput p1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->_frame_timeout_count:I

    return-void
.end method

.method static synthetic access$69(Lobject/p2pwificam/clientActivity/DPlayActivity;I)V
    .locals 0

    .prologue
    .line 288
    iput p1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->_period_1:I

    return-void
.end method

.method static synthetic access$7(Lobject/p2pwificam/clientActivity/DPlayActivity;)Landroid/opengl/GLSurfaceView;
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->myGlSurfaceView:Landroid/opengl/GLSurfaceView;

    return-object v0
.end method

.method static synthetic access$70(Lobject/p2pwificam/clientActivity/DPlayActivity;I)V
    .locals 0

    .prologue
    .line 289
    iput p1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->_frame_timeout_count_1:I

    return-void
.end method

.method static synthetic access$71(Lobject/p2pwificam/clientActivity/DPlayActivity;I)V
    .locals 0

    .prologue
    .line 290
    iput p1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->_period_2:I

    return-void
.end method

.method static synthetic access$72(Lobject/p2pwificam/clientActivity/DPlayActivity;I)V
    .locals 0

    .prologue
    .line 291
    iput p1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->_frame_timeout_count_2:I

    return-void
.end method

.method static synthetic access$73(Lobject/p2pwificam/clientActivity/DPlayActivity;J)V
    .locals 0

    .prologue
    .line 283
    iput-wide p1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->_frame_ms:J

    return-void
.end method

.method static synthetic access$74(Lobject/p2pwificam/clientActivity/DPlayActivity;Z)V
    .locals 0

    .prologue
    .line 162
    iput-boolean p1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->findKeyFrame:Z

    return-void
.end method

.method static synthetic access$75(Lobject/p2pwificam/clientActivity/DPlayActivity;)Z
    .locals 1

    .prologue
    .line 162
    iget-boolean v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->findKeyFrame:Z

    return v0
.end method

.method static synthetic access$76(Lobject/p2pwificam/clientActivity/DPlayActivity;)Lobject/p2pipcam/utils/VideoDataQueue;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->_videoDataQueue:Lobject/p2pipcam/utils/VideoDataQueue;

    return-object v0
.end method

.method static synthetic access$77(Lobject/p2pwificam/clientActivity/DPlayActivity;)J
    .locals 2

    .prologue
    .line 1533
    iget-wide v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->seek_Time:J

    return-wide v0
.end method

.method static synthetic access$78(Lobject/p2pwificam/clientActivity/DPlayActivity;J)V
    .locals 0

    .prologue
    .line 1533
    iput-wide p1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->seek_Time:J

    return-void
.end method

.method static synthetic access$79(Lobject/p2pwificam/clientActivity/DPlayActivity;I)V
    .locals 0

    .prologue
    .line 245
    iput p1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->_min_rssi:I

    return-void
.end method

.method static synthetic access$8(Lobject/p2pwificam/clientActivity/DPlayActivity;)Lobject/p2pwificam/clientActivity/MyRender;
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->myRender:Lobject/p2pwificam/clientActivity/MyRender;

    return-object v0
.end method

.method static synthetic access$80(Lobject/p2pwificam/clientActivity/DPlayActivity;I)V
    .locals 0

    .prologue
    .line 1531
    iput p1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->seek_brightness:I

    return-void
.end method

.method static synthetic access$81(Lobject/p2pwificam/clientActivity/DPlayActivity;I)V
    .locals 0

    .prologue
    .line 169
    iput p1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->nCurBrightness:I

    return-void
.end method

.method static synthetic access$82(Lobject/p2pwificam/clientActivity/DPlayActivity;I)V
    .locals 0

    .prologue
    .line 246
    iput p1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->_max_rssi:I

    return-void
.end method

.method static synthetic access$83(Lobject/p2pwificam/clientActivity/DPlayActivity;I)V
    .locals 0

    .prologue
    .line 1532
    iput p1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->seek_contrast:I

    return-void
.end method

.method static synthetic access$84(Lobject/p2pwificam/clientActivity/DPlayActivity;I)V
    .locals 0

    .prologue
    .line 170
    iput p1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->nCurContrast:I

    return-void
.end method

.method static synthetic access$85(Lobject/p2pwificam/clientActivity/DPlayActivity;)I
    .locals 1

    .prologue
    .line 169
    iget v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->nCurBrightness:I

    return v0
.end method

.method static synthetic access$86(Lobject/p2pwificam/clientActivity/DPlayActivity;)I
    .locals 1

    .prologue
    .line 170
    iget v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->nCurContrast:I

    return v0
.end method

.method static synthetic access$87(Lobject/p2pwificam/clientActivity/DPlayActivity;)I
    .locals 1

    .prologue
    .line 1531
    iget v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->seek_brightness:I

    return v0
.end method

.method static synthetic access$88(Lobject/p2pwificam/clientActivity/DPlayActivity;)I
    .locals 1

    .prologue
    .line 1532
    iget v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->seek_contrast:I

    return v0
.end method

.method static synthetic access$89(Lobject/p2pwificam/clientActivity/DPlayActivity;)J
    .locals 2

    .prologue
    .line 268
    iget-wide v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->lastSnapTime:J

    return-wide v0
.end method

.method static synthetic access$9(Lobject/p2pwificam/clientActivity/DPlayActivity;)[B
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->videodata:[B

    return-object v0
.end method

.method static synthetic access$90(Lobject/p2pwificam/clientActivity/DPlayActivity;J)V
    .locals 0

    .prologue
    .line 268
    iput-wide p1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->lastSnapTime:J

    return-void
.end method

.method static synthetic access$91(Lobject/p2pwificam/clientActivity/DPlayActivity;)J
    .locals 2

    .prologue
    .line 267
    iget-wide v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->lastRecordTime:J

    return-wide v0
.end method

.method static synthetic access$92(Lobject/p2pwificam/clientActivity/DPlayActivity;J)V
    .locals 0

    .prologue
    .line 267
    iput-wide p1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->lastRecordTime:J

    return-void
.end method

.method static synthetic access$93(Lobject/p2pwificam/clientActivity/DPlayActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->no_sd_text:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$94(Lobject/p2pwificam/clientActivity/DPlayActivity;I)V
    .locals 0

    .prologue
    .line 265
    iput p1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->no_sd_show_count:I

    return-void
.end method

.method static synthetic access$95(Lobject/p2pwificam/clientActivity/DPlayActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->vedioview:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$96(Lobject/p2pwificam/clientActivity/DPlayActivity;Z)V
    .locals 0

    .prologue
    .line 232
    iput-boolean p1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->is_recording:Z

    return-void
.end method

.method static synthetic access$97(Lobject/p2pwificam/clientActivity/DPlayActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->drone_record_text:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$98(Lobject/p2pwificam/clientActivity/DPlayActivity;)Z
    .locals 1

    .prologue
    .line 237
    iget-boolean v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->is_close_video:Z

    return v0
.end method

.method static synthetic access$99(Lobject/p2pwificam/clientActivity/DPlayActivity;)I
    .locals 1

    .prologue
    .line 260
    iget v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->_stop_record_count:I

    return v0
.end method

.method private adjustFontSize()V
    .locals 15

    .prologue
    const/4 v13, 0x1

    const/4 v14, 0x0

    .line 2350
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 2351
    .local v0, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v10

    invoke-interface {v10}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v10

    invoke-virtual {v10, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 2352
    iget v9, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 2353
    .local v9, "widthPixels":I
    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 2356
    .local v3, "heightPixels":I
    const v10, 0x7f0800c3

    invoke-virtual {p0, v10}, Lobject/p2pwificam/clientActivity/DPlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    .line 2358
    .local v6, "view":Landroid/view/ViewGroup;
    invoke-static {v14, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 2359
    .local v7, "w":I
    invoke-static {v14, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 2361
    .local v1, "h":I
    iget-object v10, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->drone_return:Landroid/widget/ImageButton;

    invoke-virtual {v10, v7, v1}, Landroid/widget/ImageButton;->measure(II)V

    .line 2362
    iget-object v10, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->drone_return:Landroid/widget/ImageButton;

    invoke-virtual {v10}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result v2

    .line 2363
    .local v2, "height":I
    iget-object v10, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->drone_return:Landroid/widget/ImageButton;

    invoke-virtual {v10}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v8

    .line 2365
    .local v8, "width":I
    const-string v10, "%d %d"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v14

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v13

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 2367
    .local v5, "text":Ljava/lang/String;
    sub-int v10, v3, v2

    div-int/lit8 v10, v10, 0xa

    add-int/lit8 v10, v10, -0x5

    int-to-float v4, v10

    .line 2368
    .local v4, "size":F
    const-string v10, "DPlay"

    const-string v11, "adjustFontSize %f "

    new-array v12, v13, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    aput-object v13, v12, v14

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2369
    invoke-direct {p0, v6, v4}, Lobject/p2pwificam/clientActivity/DPlayActivity;->adjustFontSize(Landroid/view/ViewGroup;F)V

    .line 2370
    return-void
.end method

.method private adjustFontSize(Landroid/view/ViewGroup;F)V
    .locals 5
    .param p1, "view"    # Landroid/view/ViewGroup;
    .param p2, "size"    # F

    .prologue
    const/4 v4, 0x0

    .line 2373
    move v0, p2

    .line 2374
    .local v0, "adjustFontSize":F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-lt v1, v3, :cond_0

    .line 2388
    return-void

    .line 2375
    :cond_0
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2376
    .local v2, "v":Landroid/view/View;
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_2

    .line 2377
    check-cast v2, Landroid/view/ViewGroup;

    .end local v2    # "v":Landroid/view/View;
    invoke-direct {p0, v2, p2}, Lobject/p2pwificam/clientActivity/DPlayActivity;->adjustFontSize(Landroid/view/ViewGroup;F)V

    .line 2374
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2378
    .restart local v2    # "v":Landroid/view/View;
    :cond_2
    instance-of v3, v2, Landroid/widget/TextView;

    if-eqz v3, :cond_3

    .line 2379
    check-cast v2, Landroid/widget/TextView;

    .end local v2    # "v":Landroid/view/View;
    invoke-virtual {v2, v4, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_1

    .line 2380
    .restart local v2    # "v":Landroid/view/View;
    :cond_3
    instance-of v3, v2, Landroid/widget/EditText;

    if-eqz v3, :cond_4

    .line 2382
    check-cast v2, Landroid/widget/EditText;

    .end local v2    # "v":Landroid/view/View;
    invoke-virtual {v2, v4, v0}, Landroid/widget/EditText;->setTextSize(IF)V

    goto :goto_1

    .line 2383
    .restart local v2    # "v":Landroid/view/View;
    :cond_4
    instance-of v3, v2, Landroid/widget/Button;

    if-eqz v3, :cond_1

    .line 2385
    check-cast v2, Landroid/widget/Button;

    .end local v2    # "v":Landroid/view/View;
    invoke-virtual {v2, v4, v0}, Landroid/widget/Button;->setTextSize(IF)V

    goto :goto_1
.end method

.method private connectDevice()V
    .locals 14

    .prologue
    .line 641
    const/4 v9, 0x1

    iput-boolean v9, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->_connectRun:Z

    .line 642
    const/4 v4, 0x0

    .line 643
    .local v4, "idle_count":I
    :goto_0
    iget-boolean v9, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->_connectRun:Z

    if-nez v9, :cond_0

    .line 746
    return-void

    .line 645
    :cond_0
    if-lez v4, :cond_1

    .line 647
    add-int/lit8 v4, v4, -0x1

    .line 649
    const-wide/16 v9, 0x3e8

    :try_start_0
    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 650
    :catch_0
    move-exception v3

    .line 651
    .local v3, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 655
    .end local v3    # "e":Ljava/lang/InterruptedException;
    :cond_1
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->searchDeviceWifi()Z

    move-result v9

    if-nez v9, :cond_2

    .line 658
    const-wide/16 v9, 0x7d0

    :try_start_1
    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 659
    :catch_1
    move-exception v3

    .line 660
    .restart local v3    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 664
    .end local v3    # "e":Ljava/lang/InterruptedException;
    :cond_2
    iget-boolean v9, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->_isConnected:Z

    if-nez v9, :cond_6

    .line 666
    iget-object v9, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->_wifiUtils:Lcom/easyview/common/WifiUtils;

    invoke-virtual {v9}, Lcom/easyview/common/WifiUtils;->getCurrentSSID()Ljava/lang/String;

    move-result-object v8

    .line 668
    .local v8, "ssid":Ljava/lang/String;
    const/4 v9, 0x0

    iput-boolean v9, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->findCamera:Z

    .line 669
    const-string v9, "DPlay"

    const-string v10, "Search P2P Camera"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    const-string v9, "camera_info"

    const/4 v10, 0x0

    invoke-virtual {p0, v9, v10}, Lobject/p2pwificam/clientActivity/DPlayActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 671
    .local v6, "preference":Landroid/content/SharedPreferences;
    const-string v9, "camera_user"

    const-string v10, "admin"

    invoke-interface {v6, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 673
    .local v0, "cameraUser":Ljava/lang/String;
    const v9, 0x7f060003

    invoke-virtual {p0, v9}, Lobject/p2pwificam/clientActivity/DPlayActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 674
    .local v7, "searchPort":Ljava/lang/String;
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 675
    .local v5, "port":I
    sput-object v0, Lcom/easyview/ppcs/PPCSCamera;->CameraUser:Ljava/lang/String;

    .line 676
    new-instance v9, Lobject/p2pwificam/clientActivity/DPlayActivity$16;

    invoke-direct {v9, p0}, Lobject/p2pwificam/clientActivity/DPlayActivity$16;-><init>(Lobject/p2pwificam/clientActivity/DPlayActivity;)V

    invoke-static {v9, v5}, Lcom/easyview/ppcs/PPCSCamera;->StartSearch(Lcom/easyview/basecamera/ICameraSearchListener;I)V

    .line 687
    const/16 v1, 0xa

    .local v1, "count":I
    move v2, v1

    .line 688
    .end local v1    # "count":I
    .local v2, "count":I
    :goto_1
    add-int/lit8 v1, v2, -0x1

    .end local v2    # "count":I
    .restart local v1    # "count":I
    if-gtz v2, :cond_7

    .line 699
    :cond_3
    const/4 v9, 0x3

    iput v9, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->_step:I

    .line 701
    iget-boolean v9, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->findCamera:Z

    if-eqz v9, :cond_6

    .line 703
    invoke-static {}, Lcom/easyview/ppcs/PPCSCamera;->StopSearch()V

    .line 704
    iget-object v9, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->_camera:Lcom/easyview/camera/EVBaseCamera;

    if-nez v9, :cond_5

    .line 706
    iget v9, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->CameraVersion:I

    if-nez v9, :cond_9

    .line 708
    iget-object v9, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->_ppcsCamera:Lcom/easyview/ppcs/PPCSCamera;

    if-nez v9, :cond_4

    .line 710
    const-string v9, "PPCS-000000-MYGXJ"

    iput-object v9, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->strDID:Ljava/lang/String;

    .line 711
    const-string v9, "DPlay"

    const-string v10, "new PPCS Camera"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    new-instance v9, Lcom/easyview/ppcs/PPCSCamera;

    const-string v10, "IPCamera"

    iget-object v11, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->strDID:Ljava/lang/String;

    const-string v12, "admin"

    const-string v13, "admin"

    invoke-direct {v9, v10, v11, v12, v13}, Lcom/easyview/ppcs/PPCSCamera;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v9, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->_ppcsCamera:Lcom/easyview/ppcs/PPCSCamera;

    .line 713
    iget-object v9, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->_ppcsCamera:Lcom/easyview/ppcs/PPCSCamera;

    const/16 v10, 0x3e8

    iput v10, v9, Lcom/easyview/ppcs/PPCSCamera;->reconnect:I

    .line 714
    const/4 v9, 0x4

    iput v9, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->_step:I

    .line 716
    :cond_4
    const/4 v9, 0x1

    iput v9, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->_tran_mode:I

    .line 717
    iget-object v9, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->_ppcsCamera:Lcom/easyview/ppcs/PPCSCamera;

    iput-object v9, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->_camera:Lcom/easyview/camera/EVBaseCamera;

    .line 731
    :goto_2
    invoke-static {}, Lcom/easyview/camera/CameraList;->GetInstance()Lcom/easyview/camera/CameraList;

    move-result-object v9

    invoke-virtual {v9}, Lcom/easyview/camera/CameraList;->Clear()V

    .line 732
    invoke-static {}, Lcom/easyview/camera/CameraList;->GetInstance()Lcom/easyview/camera/CameraList;

    move-result-object v9

    iget-object v10, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->_camera:Lcom/easyview/camera/EVBaseCamera;

    invoke-virtual {v9, v10}, Lcom/easyview/camera/CameraList;->Add(Lcom/easyview/basecamera/BaseCamera;)Z

    .line 734
    :cond_5
    const-string v9, "DPlay"

    const-string v10, "Start Camera"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    iget-object v9, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->handler:Landroid/os/Handler;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 736
    const/16 v4, 0x14

    .line 741
    .end local v0    # "cameraUser":Ljava/lang/String;
    .end local v1    # "count":I
    .end local v5    # "port":I
    .end local v6    # "preference":Landroid/content/SharedPreferences;
    .end local v7    # "searchPort":Ljava/lang/String;
    .end local v8    # "ssid":Ljava/lang/String;
    :cond_6
    const-wide/16 v9, 0x3e8

    :try_start_2
    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 742
    :catch_2
    move-exception v3

    .line 743
    .restart local v3    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_0

    .line 690
    .end local v3    # "e":Ljava/lang/InterruptedException;
    .restart local v0    # "cameraUser":Ljava/lang/String;
    .restart local v1    # "count":I
    .restart local v5    # "port":I
    .restart local v6    # "preference":Landroid/content/SharedPreferences;
    .restart local v7    # "searchPort":Ljava/lang/String;
    .restart local v8    # "ssid":Ljava/lang/String;
    :cond_7
    invoke-static {}, Lcom/easyview/evnet/EVNet;->GetVersion()I

    move-result v9

    iput v9, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->CameraVersion:I

    .line 691
    iget v9, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->CameraVersion:I

    if-lez v9, :cond_8

    .line 693
    const-string v9, "DPlay"

    const-string v10, "Camera Version:%d"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget v13, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->CameraVersion:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    const/4 v9, 0x1

    iput-boolean v9, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->findCamera:Z

    .line 696
    :cond_8
    iget-boolean v9, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->findCamera:Z

    if-nez v9, :cond_3

    .line 697
    iget-boolean v9, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->_connectRun:Z

    if-eqz v9, :cond_3

    move v2, v1

    .end local v1    # "count":I
    .restart local v2    # "count":I
    goto/16 :goto_1

    .line 720
    .end local v2    # "count":I
    .restart local v1    # "count":I
    :cond_9
    iget-object v9, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->_dCamera:Lcom/easyview/evnet/DCamera;

    if-nez v9, :cond_a

    .line 722
    const-string v9, "DPlay"

    const-string v10, "Start DCamera"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    new-instance v9, Lcom/easyview/evnet/DCamera;

    const-string v10, "Camera"

    const-string v11, "Camera"

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-direct {v9, v10, v11, v12, v13}, Lcom/easyview/evnet/DCamera;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v9, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->_dCamera:Lcom/easyview/evnet/DCamera;

    .line 724
    const/4 v9, 0x5

    iput v9, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->_step:I

    .line 726
    :cond_a
    const/4 v9, 0x2

    iput v9, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->_tran_mode:I

    .line 727
    iget-object v9, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->_dCamera:Lcom/easyview/evnet/DCamera;

    iput-object v9, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->_camera:Lcom/easyview/camera/EVBaseCamera;

    goto/16 :goto_2
.end method

.method private dealVideoDataTimeOut()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 879
    iget-boolean v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->bProgress:Z

    if-nez v0, :cond_0

    .line 881
    const/4 v0, 0x1

    iput-boolean v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->bProgress:Z

    .line 882
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->progressView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 883
    iput-boolean v1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->_isConnected:Z

    .line 884
    const/4 v0, 0x7

    iput v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->_step:I

    .line 885
    const-string v0, "DPlay"

    const-string v1, "device disconnect!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    :cond_0
    return-void
.end method

.method private findView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 1103
    const v0, 0x7f08007d

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->progressView:Landroid/view/View;

    .line 1105
    const v0, 0x7f08007b

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->playSurface:Landroid/view/SurfaceView;

    .line 1109
    const v0, 0x7f0800ad

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->control_layout:Landroid/view/View;

    .line 1110
    const v0, 0x7f0800d9

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->left_control_layout:Landroid/view/View;

    .line 1111
    const v0, 0x7f0800af

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->snap_sel_local:Landroid/widget/ImageButton;

    .line 1112
    const v0, 0x7f0800b0

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->snap_sel_card:Landroid/widget/ImageButton;

    .line 1113
    const v0, 0x7f0800b1

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->drone_snap:Landroid/widget/ImageButton;

    .line 1115
    const v0, 0x7f0800b3

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->record_sel_local:Landroid/widget/ImageButton;

    .line 1116
    const v0, 0x7f0800b4

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->record_sel_card:Landroid/widget/ImageButton;

    .line 1117
    const v0, 0x7f0800b5

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->drone_record:Landroid/widget/ImageButton;

    .line 1119
    const v0, 0x7f0800b7

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->gallery_sel_local:Landroid/widget/ImageButton;

    .line 1120
    const v0, 0x7f0800b8

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->gallery_sel_card:Landroid/widget/ImageButton;

    .line 1121
    const v0, 0x7f0800b9

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->drone_gallery:Landroid/widget/ImageButton;

    .line 1123
    const v0, 0x7f0800bc

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->drone_setup:Landroid/widget/ImageButton;

    .line 1125
    const v0, 0x7f0800bb

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->drone_do:Landroid/widget/ImageButton;

    .line 1126
    const v0, 0x7f0800c1

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->drone_return:Landroid/widget/ImageButton;

    .line 1128
    const v0, 0x7f0800bd

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->record_show_layout:Landroid/view/View;

    .line 1129
    const v0, 0x7f0800aa

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->vedioview:Landroid/view/View;

    .line 1130
    const v0, 0x7f0800c0

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->setup_show_layout:Landroid/view/View;

    .line 1132
    const v0, 0x7f0800c2

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->drone_save:Landroid/widget/ImageButton;

    .line 1133
    const v0, 0x7f0800c4

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->edit_wifi_name:Landroid/widget/EditText;

    .line 1134
    const v0, 0x7f0800c5

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->brightseekBar:Landroid/widget/SeekBar;

    .line 1135
    const v0, 0x7f0800c6

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->contrastseekBar:Landroid/widget/SeekBar;

    .line 1136
    const v0, 0x7f0800cc

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->drone_view_rotate_on:Landroid/widget/ImageButton;

    .line 1137
    const v0, 0x7f0800cd

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->drone_view_rotate_off:Landroid/widget/ImageButton;

    .line 1138
    const v0, 0x7f0800c7

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->drone_date_code_on:Landroid/widget/ImageButton;

    .line 1139
    const v0, 0x7f0800c8

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->drone_date_code_off:Landroid/widget/ImageButton;

    .line 1140
    const v0, 0x7f0800ca

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->drone_sensor_on:Landroid/widget/ImageButton;

    .line 1141
    const v0, 0x7f0800cb

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->drone_sensor_off:Landroid/widget/ImageButton;

    .line 1142
    const v0, 0x7f0800da

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->drone_wifi:Landroid/widget/ImageButton;

    .line 1144
    const v0, 0x7f0800ce

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->drone_reset:Landroid/widget/Button;

    .line 1146
    const v0, 0x7f0800be

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->drone_record_show:Landroid/widget/ImageButton;

    .line 1147
    const v0, 0x7f0800bf

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->drone_record_text:Landroid/widget/TextView;

    .line 1149
    const v0, 0x7f0800d0

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->no_sd_text:Landroid/widget/TextView;

    .line 1150
    const v0, 0x7f0800ac

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->search_text:Landroid/widget/TextView;

    .line 1151
    const v0, 0x7f0800c9

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->sensor_layout:Landroid/view/View;

    .line 1166
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->control_layout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1167
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->left_control_layout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1169
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->snap_sel_local:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1170
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->snap_sel_card:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1171
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->record_sel_local:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1172
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->record_sel_card:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1173
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->gallery_sel_local:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1174
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->gallery_sel_card:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1176
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->drone_do:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1177
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->record_show_layout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1178
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->setup_show_layout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1180
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->drone_snap:Landroid/widget/ImageButton;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->onControlClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1181
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->drone_record:Landroid/widget/ImageButton;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->onControlClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1182
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->drone_gallery:Landroid/widget/ImageButton;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->onControlClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1183
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->drone_setup:Landroid/widget/ImageButton;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->onControlClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1184
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->drone_record_show:Landroid/widget/ImageButton;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->onControlClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1186
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->snap_sel_local:Landroid/widget/ImageButton;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->onSelectClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1187
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->snap_sel_card:Landroid/widget/ImageButton;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->onSelectClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1188
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->record_sel_local:Landroid/widget/ImageButton;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->onSelectClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1189
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->record_sel_card:Landroid/widget/ImageButton;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->onSelectClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1190
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->gallery_sel_local:Landroid/widget/ImageButton;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->onSelectClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1191
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->gallery_sel_card:Landroid/widget/ImageButton;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->onSelectClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1193
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->drone_wifi:Landroid/widget/ImageButton;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->onWifiClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1195
    const v0, 0x7f08007c

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/opengl/GLSurfaceView;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->myGlSurfaceView:Landroid/opengl/GLSurfaceView;

    .line 1196
    new-instance v0, Lobject/p2pwificam/clientActivity/MyRender;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->myGlSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-direct {v0, v1}, Lobject/p2pwificam/clientActivity/MyRender;-><init>(Landroid/opengl/GLSurfaceView;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->myRender:Lobject/p2pwificam/clientActivity/MyRender;

    .line 1197
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->myGlSurfaceView:Landroid/opengl/GLSurfaceView;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->myRender:Lobject/p2pwificam/clientActivity/MyRender;

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 1199
    return-void
.end method

.method private firstRequest()V
    .locals 4

    .prologue
    .line 897
    const-string v0, "DPlay"

    const-string v1, "firstRequest!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    iget-boolean v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->bProgress:Z

    if-nez v0, :cond_0

    .line 900
    const-string v0, "DPlay"

    const-string v1, "have video!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->_camera:Lcom/easyview/camera/EVBaseCamera;

    invoke-virtual {v0}, Lcom/easyview/camera/EVBaseCamera;->timing()V

    .line 914
    :goto_0
    return-void

    .line 907
    :cond_0
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->_camera:Lcom/easyview/camera/EVBaseCamera;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->onYUVData:Lcom/easyview/basecamera/ICamera$IYUVDataListener;

    invoke-virtual {v0, v1}, Lcom/easyview/camera/EVBaseCamera;->StartVideoYUV(Lcom/easyview/basecamera/ICamera$IYUVDataListener;)V

    .line 908
    const/4 v0, 0x6

    iput v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->_step:I

    .line 912
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->run_firstRequest:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private getRssiLevel(I)I
    .locals 1
    .param p1, "rssi"    # I

    .prologue
    .line 2577
    const/16 v0, -0x4c

    if-ge p1, v0, :cond_0

    const/4 v0, 0x0

    .line 2581
    :goto_0
    return v0

    .line 2578
    :cond_0
    const/16 v0, -0x44

    if-ge p1, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    .line 2579
    :cond_1
    const/16 v0, -0x3c

    if-ge p1, v0, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    .line 2580
    :cond_2
    const/16 v0, -0x32

    if-ge p1, v0, :cond_3

    const/4 v0, 0x3

    goto :goto_0

    .line 2581
    :cond_3
    const/4 v0, 0x4

    goto :goto_0
.end method

.method private getRssiRes(I)I
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 2585
    if-nez p1, :cond_0

    const v0, 0x7f020179

    .line 2589
    :goto_0
    return v0

    .line 2586
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const v0, 0x7f02017a

    goto :goto_0

    .line 2587
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    const v0, 0x7f02017b

    goto :goto_0

    .line 2588
    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    const v0, 0x7f02017c

    goto :goto_0

    .line 2589
    :cond_3
    const v0, 0x7f02017d

    goto :goto_0
.end method

.method private searchDeviceWifi()Z
    .locals 14

    .prologue
    const/4 v13, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 749
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->_dev_ssid:Ljava/lang/String;

    if-nez v8, :cond_1

    .line 751
    const-string v6, "DPlay"

    const-string v8, "Search Device AP"

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v8, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->searchDeviceWifiAP()Z

    move-result v6

    .line 825
    :cond_0
    :goto_0
    return v6

    .line 754
    :cond_1
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->_wifiUtils:Lcom/easyview/common/WifiUtils;

    invoke-virtual {v8}, Lcom/easyview/common/WifiUtils;->getCurrentSSID()Ljava/lang/String;

    move-result-object v5

    .line 755
    .local v5, "ssid":Ljava/lang/String;
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->_dev_ssid:Ljava/lang/String;

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 760
    iput v7, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->_step:I

    .line 762
    const/4 v0, 0x0

    .local v0, "count":I
    move v1, v0

    .line 763
    .end local v0    # "count":I
    .local v1, "count":I
    :goto_1
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "count":I
    .restart local v0    # "count":I
    const/16 v8, 0x28

    if-lt v1, v8, :cond_3

    :cond_2
    move v6, v7

    .line 825
    goto :goto_0

    .line 765
    :cond_3
    iget-boolean v8, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->_connectRun:Z

    if-eqz v8, :cond_2

    .line 766
    invoke-static {p0}, Lobject/p2pipcam/utils/Pub;->isAppOnForeground(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 768
    const-string v8, "DPlay"

    const-string v9, "App is backgroud, drop wifi: %s"

    new-array v10, v6, [Ljava/lang/Object;

    iget-object v11, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->_dev_ssid:Ljava/lang/String;

    aput-object v11, v10, v7

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/easyview/ndt/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 769
    iput-object v13, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->_dev_ssid:Ljava/lang/String;

    .line 770
    iput-boolean v7, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->_isConnected:Z

    .line 771
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->_camera:Lcom/easyview/camera/EVBaseCamera;

    if-eqz v8, :cond_4

    .line 773
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->_camera:Lcom/easyview/camera/EVBaseCamera;

    invoke-virtual {v8}, Lcom/easyview/camera/EVBaseCamera;->StopVideo()V

    .line 774
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->_camera:Lcom/easyview/camera/EVBaseCamera;

    invoke-virtual {v8, v7, v13}, Lcom/easyview/camera/EVBaseCamera;->setSensor(ILcom/easyview/basecamera/ICamera$IRespondListener;)V

    .line 776
    :cond_4
    iput-object v13, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->_camera:Lcom/easyview/camera/EVBaseCamera;

    .line 777
    iput-object v13, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->WiFiName:Ljava/lang/String;

    .line 778
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->handler:Landroid/os/Handler;

    const/16 v9, 0x67

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 779
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->searchDeviceWifiAP()Z

    .line 780
    iput v7, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->_step:I

    goto :goto_0

    .line 783
    :cond_5
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->_dev_ssid:Ljava/lang/String;

    if-nez v8, :cond_a

    .line 785
    const-string v8, "DPlay"

    const-string v9, "Scan Wifi"

    new-array v10, v7, [Ljava/lang/Object;

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/easyview/ndt/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 786
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->_wifiUtils:Lcom/easyview/common/WifiUtils;

    invoke-virtual {v8}, Lcom/easyview/common/WifiUtils;->Scan()Ljava/util/List;

    move-result-object v4

    .line 787
    .local v4, "results":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_8

    .line 820
    .end local v4    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :cond_7
    :goto_2
    const-wide/16 v8, 0x3e8

    :try_start_0
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2

    move v1, v0

    .line 821
    .end local v0    # "count":I
    .restart local v1    # "count":I
    goto :goto_1

    .line 787
    .end local v1    # "count":I
    .restart local v0    # "count":I
    .restart local v4    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :cond_8
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ScanResult;

    .line 790
    .local v3, "result":Landroid/net/wifi/ScanResult;
    iget-object v9, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->_dev_ssid:Ljava/lang/String;

    iget-object v10, v3, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 792
    const-string v9, "DPlay"

    const-string v10, "Connect AP %s"

    new-array v11, v6, [Ljava/lang/Object;

    iget-object v12, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->_dev_ssid:Ljava/lang/String;

    aput-object v12, v11, v7

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/easyview/ndt/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 793
    iget-object v9, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->_wifiUtils:Lcom/easyview/common/WifiUtils;

    iget-object v10, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->_dev_ssid:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/easyview/common/WifiUtils;->Connect(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 796
    const-wide/16 v7, 0x7d0

    :try_start_1
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 797
    :catch_0
    move-exception v2

    .line 798
    .local v2, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_0

    .line 803
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :cond_9
    iget-boolean v9, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->_connectRun:Z

    if-nez v9, :cond_6

    goto :goto_2

    .line 807
    .end local v3    # "result":Landroid/net/wifi/ScanResult;
    .end local v4    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :cond_a
    const-string v8, "DPlay"

    const-string v9, "Direct Connect AP %s"

    new-array v10, v6, [Ljava/lang/Object;

    iget-object v11, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->_dev_ssid:Ljava/lang/String;

    aput-object v11, v10, v7

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/easyview/ndt/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 808
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->_wifiUtils:Lcom/easyview/common/WifiUtils;

    iget-object v9, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->_dev_ssid:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/easyview/common/WifiUtils;->Connect(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 811
    const-wide/16 v8, 0x7d0

    :try_start_2
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    .line 815
    :goto_3
    const-string v8, "DPlay"

    const-string v9, "Direct Connect AP %s OK"

    new-array v10, v6, [Ljava/lang/Object;

    iget-object v11, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->_dev_ssid:Ljava/lang/String;

    aput-object v11, v10, v7

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Lcom/easyview/ndt/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 812
    :catch_1
    move-exception v2

    .line 813
    .restart local v2    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_3

    .line 821
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :catch_2
    move-exception v2

    .line 822
    .restart local v2    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    move v1, v0

    .end local v0    # "count":I
    .restart local v1    # "count":I
    goto/16 :goto_1
.end method

.method private searchDeviceWifiAP()Z
    .locals 14

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 829
    iget-object v9, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->_wifiUtils:Lcom/easyview/common/WifiUtils;

    invoke-virtual {v9}, Lcom/easyview/common/WifiUtils;->getCurrentSSID()Ljava/lang/String;

    move-result-object v6

    .line 830
    .local v6, "ssid":Ljava/lang/String;
    iget-object v10, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->wifi_ap_prefixs:[Ljava/lang/String;

    array-length v11, v10

    move v9, v8

    :goto_0
    if-lt v9, v11, :cond_1

    .line 840
    const/4 v0, 0x0

    .local v0, "count":I
    move v1, v0

    .line 841
    .end local v0    # "count":I
    .local v1, "count":I
    :goto_1
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "count":I
    .restart local v0    # "count":I
    const/16 v9, 0x14

    if-lt v1, v9, :cond_3

    :cond_0
    move v7, v8

    .line 875
    .end local v0    # "count":I
    :goto_2
    return v7

    .line 830
    :cond_1
    aget-object v4, v10, v9

    .line 832
    .local v4, "prefix":Ljava/lang/String;
    invoke-virtual {v6, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 834
    const-string v9, "DPlay"

    const-string v10, "Have Connect AP %s"

    new-array v11, v7, [Ljava/lang/Object;

    aput-object v6, v11, v8

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    const/4 v8, 0x2

    iput v8, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->_step:I

    goto :goto_2

    .line 830
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 843
    .end local v4    # "prefix":Ljava/lang/String;
    .restart local v0    # "count":I
    :cond_3
    iget-boolean v9, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->_connectRun:Z

    if-eqz v9, :cond_0

    .line 844
    const/16 v3, -0x64

    .line 845
    .local v3, "level":I
    const-string v9, "DPlay"

    const-string v10, "Scan Wifi"

    new-array v11, v8, [Ljava/lang/Object;

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/easyview/ndt/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 846
    iget-object v9, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->_wifiUtils:Lcom/easyview/common/WifiUtils;

    invoke-virtual {v9}, Lcom/easyview/common/WifiUtils;->Scan()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_4
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_5

    .line 862
    const/16 v9, -0x64

    if-le v3, v9, :cond_7

    .line 864
    const-string v9, "DPlay"

    const-string v10, "Connect %s"

    new-array v11, v7, [Ljava/lang/Object;

    aput-object v6, v11, v8

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Lcom/easyview/ndt/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 865
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->_wifiUtils:Lcom/easyview/common/WifiUtils;

    invoke-virtual {v8, v6}, Lcom/easyview/common/WifiUtils;->Connect(Ljava/lang/String;)Z

    .line 866
    iput v7, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->_step:I

    goto :goto_2

    .line 846
    :cond_5
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/ScanResult;

    .line 848
    .local v5, "result":Landroid/net/wifi/ScanResult;
    iget-object v11, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->wifi_ap_prefixs:[Ljava/lang/String;

    array-length v12, v11

    move v9, v8

    :goto_4
    if-ge v9, v12, :cond_4

    aget-object v4, v11, v9

    .line 850
    .restart local v4    # "prefix":Ljava/lang/String;
    iget-object v13, v5, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v13, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 852
    iget v9, v5, Landroid/net/wifi/ScanResult;->level:I

    if-le v9, v3, :cond_4

    .line 854
    iget-object v6, v5, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    .line 855
    iget v3, v5, Landroid/net/wifi/ScanResult;->level:I

    .line 858
    goto :goto_3

    .line 848
    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 870
    .end local v4    # "prefix":Ljava/lang/String;
    .end local v5    # "result":Landroid/net/wifi/ScanResult;
    :cond_7
    const-wide/16 v9, 0x3e8

    :try_start_0
    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v0

    .line 871
    .end local v0    # "count":I
    .restart local v1    # "count":I
    goto/16 :goto_1

    .end local v1    # "count":I
    .restart local v0    # "count":I
    :catch_0
    move-exception v2

    .line 872
    .local v2, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    move v1, v0

    .end local v0    # "count":I
    .restart local v1    # "count":I
    goto/16 :goto_1
.end method

.method private setViewVisible()V
    .locals 2

    .prologue
    .line 428
    iget-boolean v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->bProgress:Z

    if-eqz v0, :cond_0

    .line 429
    const/4 v0, 0x0

    iput-boolean v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->bProgress:Z

    .line 430
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->progressView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 431
    const/4 v0, 0x1

    iput-boolean v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->_isConnected:Z

    .line 432
    const-string v0, "DPlay"

    const-string v1, "device connect!!!"

    invoke-static {v0, v1}, Lcom/easyview/ndt/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->_wifiUtils:Lcom/easyview/common/WifiUtils;

    invoke-virtual {v0}, Lcom/easyview/common/WifiUtils;->getCurrentSSID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->_dev_ssid:Ljava/lang/String;

    .line 436
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->handler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 437
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->handler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 444
    :cond_0
    return-void
.end method

.method private showMessage(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 2420
    new-instance v0, Lobject/p2pwificam/clientActivity/DPlayActivity$27;

    invoke-direct {v0, p0, p1}, Lobject/p2pwificam/clientActivity/DPlayActivity$27;-><init>(Lobject/p2pwificam/clientActivity/DPlayActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2428
    return-void
.end method

.method private show_setup_view()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 1599
    iput-boolean v5, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->setup_is_show:Z

    .line 1600
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->_camera:Lcom/easyview/camera/EVBaseCamera;

    if-eqz v0, :cond_0

    .line 1602
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->_camera:Lcom/easyview/camera/EVBaseCamera;

    invoke-virtual {v0}, Lcom/easyview/camera/EVBaseCamera;->getShowOSD()I

    move-result v0

    iput v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->nDateCode:I

    .line 1603
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->_camera:Lcom/easyview/camera/EVBaseCamera;

    invoke-virtual {v0}, Lcom/easyview/camera/EVBaseCamera;->getRotate()I

    move-result v0

    iput v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->nRotate:I

    .line 1604
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->_camera:Lcom/easyview/camera/EVBaseCamera;

    invoke-virtual {v0}, Lcom/easyview/camera/EVBaseCamera;->getBrightness()I

    move-result v0

    iput v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->nBrightness:I

    .line 1605
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->_camera:Lcom/easyview/camera/EVBaseCamera;

    invoke-virtual {v0}, Lcom/easyview/camera/EVBaseCamera;->getContrast()I

    move-result v0

    iput v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->nContrast:I

    .line 1606
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->_camera:Lcom/easyview/camera/EVBaseCamera;

    invoke-virtual {v0}, Lcom/easyview/camera/EVBaseCamera;->getSensorRes()I

    move-result v0

    iput v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->nSensorRes:I

    .line 1607
    iget v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->nSensorRes:I

    iput v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->nCurSensorRes:I

    .line 1608
    iget v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->nSensorRes:I

    if-lez v0, :cond_2

    .line 1610
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->sensor_layout:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1613
    :cond_0
    :goto_0
    iget v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->nDateCode:I

    iput v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->nCurDateCode:I

    .line 1614
    iget v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->nRotate:I

    iput v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->nCurRotate:I

    .line 1615
    iget v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->nBrightness:I

    iput v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->nCurBrightness:I

    .line 1616
    iget v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->nContrast:I

    iput v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->nCurContrast:I

    .line 1618
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->brightseekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->nBrightness:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1619
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->contrastseekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->nContrast:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1620
    iget-boolean v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->showDebugInfo:Z

    if-eqz v0, :cond_1

    .line 1622
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->brightseekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->_min_rssi:I

    neg-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1623
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->contrastseekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->_max_rssi:I

    neg-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1625
    :cond_1
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->drone_return:Landroid/widget/ImageButton;

    new-instance v1, Lobject/p2pwificam/clientActivity/DPlayActivity$17;

    invoke-direct {v1, p0}, Lobject/p2pwificam/clientActivity/DPlayActivity$17;-><init>(Lobject/p2pwificam/clientActivity/DPlayActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1722
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->_camera:Lcom/easyview/camera/EVBaseCamera;

    if-nez v0, :cond_3

    .line 1881
    :goto_1
    return-void

    .line 1611
    :cond_2
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->sensor_layout:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1723
    :cond_3
    iput-boolean v3, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->paramCanSave:Z

    .line 1724
    iget-boolean v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->_isConnected:Z

    if-eqz v0, :cond_6

    .line 1726
    iput-boolean v5, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->paramCanSave:Z

    .line 1727
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->WiFiName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1729
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->_camera:Lcom/easyview/camera/EVBaseCamera;

    invoke-virtual {v0}, Lcom/easyview/camera/EVBaseCamera;->getWiFiName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->WiFiName:Ljava/lang/String;

    .line 1730
    const-string v0, "DPlay"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "WifiName1:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->WiFiName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1732
    :cond_4
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->WiFiName:Ljava/lang/String;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->_prefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1734
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->WiFiName:Ljava/lang/String;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->_prefix:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->WiFiName:Ljava/lang/String;

    .line 1736
    :cond_5
    const-string v0, "DPlay"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "WifiName:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->WiFiName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1737
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->edit_wifi_name:Landroid/widget/EditText;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->WiFiName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1740
    iget v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->nSensorRes:I

    iput v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->nCurSensorRes:I

    .line 1741
    iget v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->nSensorRes:I

    if-lez v0, :cond_6

    .line 1743
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->sensor_layout:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1746
    :cond_6
    iget v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->nRotate:I

    if-ne v0, v5, :cond_8

    .line 1748
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->drone_view_rotate_on:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1749
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->drone_view_rotate_off:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1755
    :goto_2
    iget v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->nDateCode:I

    if-ne v0, v5, :cond_9

    .line 1757
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->drone_date_code_on:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1758
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->drone_date_code_off:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1765
    :goto_3
    iget v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->nSensorRes:I

    const/16 v1, 0x1f

    if-ne v0, v1, :cond_a

    .line 1767
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->drone_sensor_on:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1768
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->drone_sensor_off:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1776
    :cond_7
    :goto_4
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->brightseekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->seekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 1777
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->contrastseekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->seekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 1779
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->drone_view_rotate_on:Landroid/widget/ImageButton;

    new-instance v1, Lobject/p2pwificam/clientActivity/DPlayActivity$18;

    invoke-direct {v1, p0}, Lobject/p2pwificam/clientActivity/DPlayActivity$18;-><init>(Lobject/p2pwificam/clientActivity/DPlayActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1788
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->drone_view_rotate_off:Landroid/widget/ImageButton;

    new-instance v1, Lobject/p2pwificam/clientActivity/DPlayActivity$19;

    invoke-direct {v1, p0}, Lobject/p2pwificam/clientActivity/DPlayActivity$19;-><init>(Lobject/p2pwificam/clientActivity/DPlayActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1797
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->drone_date_code_on:Landroid/widget/ImageButton;

    new-instance v1, Lobject/p2pwificam/clientActivity/DPlayActivity$20;

    invoke-direct {v1, p0}, Lobject/p2pwificam/clientActivity/DPlayActivity$20;-><init>(Lobject/p2pwificam/clientActivity/DPlayActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1806
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->drone_date_code_off:Landroid/widget/ImageButton;

    new-instance v1, Lobject/p2pwificam/clientActivity/DPlayActivity$21;

    invoke-direct {v1, p0}, Lobject/p2pwificam/clientActivity/DPlayActivity$21;-><init>(Lobject/p2pwificam/clientActivity/DPlayActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1815
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->drone_sensor_on:Landroid/widget/ImageButton;

    new-instance v1, Lobject/p2pwificam/clientActivity/DPlayActivity$22;

    invoke-direct {v1, p0}, Lobject/p2pwificam/clientActivity/DPlayActivity$22;-><init>(Lobject/p2pwificam/clientActivity/DPlayActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1823
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->drone_sensor_off:Landroid/widget/ImageButton;

    new-instance v1, Lobject/p2pwificam/clientActivity/DPlayActivity$23;

    invoke-direct {v1, p0}, Lobject/p2pwificam/clientActivity/DPlayActivity$23;-><init>(Lobject/p2pwificam/clientActivity/DPlayActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1831
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->drone_save:Landroid/widget/ImageButton;

    new-instance v1, Lobject/p2pwificam/clientActivity/DPlayActivity$24;

    invoke-direct {v1, p0}, Lobject/p2pwificam/clientActivity/DPlayActivity$24;-><init>(Lobject/p2pwificam/clientActivity/DPlayActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1850
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->drone_reset:Landroid/widget/Button;

    new-instance v1, Lobject/p2pwificam/clientActivity/DPlayActivity$25;

    invoke-direct {v1, p0}, Lobject/p2pwificam/clientActivity/DPlayActivity$25;-><init>(Lobject/p2pwificam/clientActivity/DPlayActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 1752
    :cond_8
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->drone_view_rotate_on:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1753
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->drone_view_rotate_off:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto/16 :goto_2

    .line 1761
    :cond_9
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->drone_date_code_on:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1762
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->drone_date_code_off:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto/16 :goto_3

    .line 1770
    :cond_a
    iget v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->nSensorRes:I

    const/16 v1, 0x1d

    if-ne v0, v1, :cond_7

    .line 1772
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->drone_sensor_off:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1773
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->drone_sensor_on:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto/16 :goto_4
.end method

.method private final startOrientationChangeListener()V
    .locals 1

    .prologue
    .line 2390
    new-instance v0, Lobject/p2pwificam/clientActivity/DPlayActivity$26;

    invoke-direct {v0, p0, p0}, Lobject/p2pwificam/clientActivity/DPlayActivity$26;-><init>(Lobject/p2pwificam/clientActivity/DPlayActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 2416
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    .line 2417
    return-void
.end method

.method private startTimeout()V
    .locals 4

    .prologue
    .line 420
    iget-boolean v1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->bTimeoutStarted:Z

    if-nez v1, :cond_0

    .line 421
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 422
    .local v0, "msgMessage":Landroid/os/Message;
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->timeoutHandle:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 423
    const/4 v1, 0x1

    iput-boolean v1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->bTimeoutStarted:Z

    .line 425
    .end local v0    # "msgMessage":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private updateRecState()V
    .locals 2

    .prologue
    .line 448
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->_camera:Lcom/easyview/camera/EVBaseCamera;

    if-nez v0, :cond_1

    .line 467
    :cond_0
    :goto_0
    return-void

    .line 449
    :cond_1
    iget-boolean v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->is_record:Z

    if-eqz v0, :cond_0

    .line 454
    iget-boolean v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->is_record_show:Z

    if-eqz v0, :cond_2

    .line 456
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->drone_record_show:Landroid/widget/ImageButton;

    const v1, 0x7f02005a

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 457
    const/4 v0, 0x0

    iput-boolean v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->is_record_show:Z

    .line 464
    :goto_1
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->drone_record_text:Landroid/widget/TextView;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->_camera:Lcom/easyview/camera/EVBaseCamera;

    invoke-virtual {v1}, Lcom/easyview/camera/EVBaseCamera;->getRecordText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 466
    iget v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->record_second:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->record_second:I

    goto :goto_0

    .line 460
    :cond_2
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->drone_record_show:Landroid/widget/ImageButton;

    const v1, 0x7f02005c

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 461
    const/4 v0, 0x1

    iput-boolean v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->is_record_show:Z

    goto :goto_1
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2116
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 1204
    invoke-super {p0, p1}, Lobject/p2pwificam/clientActivity/BaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1219
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ServiceCast",
            "NewApi"
        }
    .end annotation

    .prologue
    const/16 v7, 0x400

    const/16 v5, 0x80

    const/4 v4, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 532
    invoke-super {p0, p1}, Lobject/p2pwificam/clientActivity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 533
    const-string v0, "DPlay"

    const-string v1, "onCreate========="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    iput-boolean v2, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->restart:Z

    .line 536
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v7, v7}, Landroid/view/Window;->setFlags(II)V

    .line 537
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v5, v5}, Landroid/view/Window;->setFlags(II)V

    .line 539
    invoke-virtual {p0, v3}, Lobject/p2pwificam/clientActivity/DPlayActivity;->requestWindowFeature(I)Z

    .line 541
    const v0, 0x7f03001f

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->setContentView(I)V

    .line 542
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->findView()V

    .line 543
    invoke-static {}, Lobject/p2pipcam/utils/Pub;->isReverseLandscape()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 545
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->setRequestedOrientation(I)V

    .line 549
    :goto_0
    invoke-static {}, Lobject/p2pipcam/nativecaller/NativeCaller;->Init()V

    .line 550
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->playSurface:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->playHolder:Landroid/view/SurfaceHolder;

    .line 552
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->playHolder:Landroid/view/SurfaceHolder;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->videoCallback:Lobject/p2pwificam/clientActivity/DPlayActivity$surfaceCallback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 553
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->playSurface:Landroid/view/SurfaceView;

    invoke-virtual {v0, p0}, Landroid/view/SurfaceView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 556
    new-instance v0, Lcom/easyview/common/WifiUtils;

    invoke-direct {v0, p0}, Lcom/easyview/common/WifiUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->_wifiUtils:Lcom/easyview/common/WifiUtils;

    .line 560
    const v0, 0x7f040002

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->showAnim:Landroid/view/animation/Animation;

    .line 561
    const v0, 0x7f040007

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->dismissAnim:Landroid/view/animation/Animation;

    .line 562
    const/high16 v0, 0x7f040000

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->showFromLeft:Landroid/view/animation/Animation;

    .line 563
    const v0, 0x7f040005

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->dismissToLeft:Landroid/view/animation/Animation;

    .line 573
    iput-boolean v3, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->bgetCameraParamsThreadRuning:Z

    .line 578
    new-instance v0, Landroid/media/SoundPool;

    const/16 v1, 0xa

    invoke-direct {v0, v1, v4, v2}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->_soundPool:Landroid/media/SoundPool;

    .line 580
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->_soundPool:Landroid/media/SoundPool;

    const v1, 0x7f050006

    invoke-virtual {v0, p0, v1, v3}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    .line 581
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->_soundPool:Landroid/media/SoundPool;

    const v1, 0x7f050004

    invoke-virtual {v0, p0, v1, v3}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    .line 583
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 584
    .local v6, "res":Landroid/content/res/Resources;
    const/high16 v0, 0x7f0a0000

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->wifi_ap_prefixs:[Ljava/lang/String;

    .line 585
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->wifi_ap_prefixs:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->wifi_ap_prefixs:[Ljava/lang/String;

    aget-object v0, v0, v2

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->_prefix:Ljava/lang/String;

    .line 587
    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->_dev_ssid:Ljava/lang/String;

    .line 588
    new-instance v0, Lobject/p2pwificam/clientActivity/DPlayActivity$ThreadConnect;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/DPlayActivity$ThreadConnect;-><init>(Lobject/p2pwificam/clientActivity/DPlayActivity;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->_connectThread:Lobject/p2pwificam/clientActivity/DPlayActivity$ThreadConnect;

    .line 589
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->_connectThread:Lobject/p2pwificam/clientActivity/DPlayActivity$ThreadConnect;

    invoke-virtual {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity$ThreadConnect;->start()V

    .line 590
    new-instance v0, Lobject/p2pwificam/clientActivity/DPlayActivity$StatusThread;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/DPlayActivity$StatusThread;-><init>(Lobject/p2pwificam/clientActivity/DPlayActivity;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->_statusThread:Lobject/p2pwificam/clientActivity/DPlayActivity$StatusThread;

    .line 591
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->_statusThread:Lobject/p2pwificam/clientActivity/DPlayActivity$StatusThread;

    invoke-virtual {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity$StatusThread;->start()V

    .line 592
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->startOrientationChangeListener()V

    .line 593
    iput v4, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->_control_idle_count:I

    .line 594
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->record_timer:Ljava/util/Timer;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->record_task:Ljava/util/TimerTask;

    const-wide/16 v2, 0x3e8

    const-wide/16 v4, 0x3e8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 601
    return-void

    .line 547
    .end local v6    # "res":Landroid/content/res/Resources;
    :cond_0
    invoke-virtual {p0, v2}, Lobject/p2pwificam/clientActivity/DPlayActivity;->setRequestedOrientation(I)V

    goto/16 :goto_0

    .line 586
    .restart local v6    # "res":Landroid/content/res/Resources;
    :cond_1
    const-string v0, "DRONEVIEW-"

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->_prefix:Ljava/lang/String;

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CommitPrefEdits"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 2190
    const-string v3, "DPlay"

    const-string v4, "onDestroy========="

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2191
    invoke-static {}, Lobject/p2pipcam/nativecaller/NativeCaller;->CloseAvi()I

    .line 2192
    iput-boolean v5, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->isTakeVideo:Z

    .line 2193
    iput-boolean v5, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->isstart:Z

    .line 2194
    iput-boolean v5, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->isT:Z

    .line 2195
    iput-boolean v5, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->bgetCameraParamsThreadRuning:Z

    .line 2196
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->handler:Landroid/os/Handler;

    iget-object v4, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->run_firstRequest:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2197
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->StopAll()V

    .line 2198
    const-string v3, "tag"

    const-string v4, "DPlayActivity onDestroy StopAll"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2205
    const-string v3, "isFirst"

    invoke-virtual {p0, v3, v5}, Lobject/p2pwificam/clientActivity/DPlayActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->preference:Landroid/content/SharedPreferences;

    .line 2206
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->preference:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2207
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "activity"

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2208
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2210
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->mBatInfoReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v3, :cond_0

    .line 2212
    :try_start_0
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->mBatInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3}, Lobject/p2pwificam/clientActivity/DPlayActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2217
    :cond_0
    :goto_0
    const-string v3, "tag"

    const-string v4, "DPlayActivity onDestroy"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2226
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 2227
    .local v2, "intent":Landroid/content/Intent;
    const-class v3, Lobject/p2pwificam/clientActivity/BridgeService;

    invoke-virtual {v2, p0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 2228
    invoke-virtual {p0, v2}, Lobject/p2pwificam/clientActivity/DPlayActivity;->stopService(Landroid/content/Intent;)Z

    .line 2229
    invoke-static {}, Lobject/p2pipcam/nativecaller/NativeCaller;->Free()V

    .line 2230
    sput v5, Lobject/p2pipcam/system/SystemValue;->checkSDStatu:I

    .line 2231
    iget-boolean v3, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->restart:Z

    if-eqz v3, :cond_1

    .line 2233
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lobject/p2pwificam/clientActivity/DPlayActivity;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2234
    .local v1, "in":Landroid/content/Intent;
    const/high16 v3, 0x4000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2235
    invoke-virtual {p0, v1}, Lobject/p2pwificam/clientActivity/DPlayActivity;->startActivity(Landroid/content/Intent;)V

    .line 2237
    .end local v1    # "in":Landroid/content/Intent;
    :cond_1
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-static {v3}, Landroid/os/Process;->killProcess(I)V

    .line 2238
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->finish()V

    .line 2240
    invoke-super {p0}, Lobject/p2pwificam/clientActivity/BaseActivity;->onDestroy()V

    .line 2241
    return-void

    .line 2213
    .end local v2    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 2171
    const/4 v0, 0x0

    return v0
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 2176
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 339
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->mPopupWindowProgress:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->mPopupWindowProgress:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->mPopupWindowProgress:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 343
    :cond_0
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->resolutionPopWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->resolutionPopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 344
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->resolutionPopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 346
    :cond_1
    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    .line 348
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->lastBackKeyTimeStamp:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7d0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 351
    const v0, 0x7f0601dc

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x0

    .line 350
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 351
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 352
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->lastBackKeyTimeStamp:J

    .line 353
    const/4 v0, 0x1

    .line 363
    :goto_0
    return v0

    .line 355
    :cond_2
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->run_firstRequest:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 356
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->StopAll()V

    .line 357
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 358
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->finish()V

    .line 363
    :cond_3
    invoke-super {p0, p1, p2}, Lobject/p2pwificam/clientActivity/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 623
    const/4 v0, 0x1

    iput-boolean v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->_isPause:Z

    .line 624
    const-string v0, "DPlay"

    const-string v1, "===onPause==="

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    invoke-super {p0}, Lobject/p2pwificam/clientActivity/BaseActivity;->onPause()V

    .line 627
    return-void
.end method

.method public onRestart()V
    .locals 2

    .prologue
    .line 605
    const-string v0, "DPlay"

    const-string v1, "===onRestart===="

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    const/4 v0, 0x0

    iput-boolean v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->_isPause:Z

    .line 618
    invoke-super {p0}, Lobject/p2pwificam/clientActivity/BaseActivity;->onRestart()V

    .line 619
    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 2181
    const/4 v0, 0x0

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v10, 0x5

    const/16 v9, 0x8

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 2265
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    packed-switch v2, :pswitch_data_0

    .line 2346
    :cond_0
    :goto_0
    return v7

    .line 2267
    :pswitch_0
    iget-boolean v2, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->setup_is_show:Z

    if-eqz v2, :cond_2

    .line 2269
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2270
    .local v0, "now":J
    iget-wide v2, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->last_touch:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0xc8

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    iput v7, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->touch_count:I

    .line 2271
    :cond_1
    const-string v2, "DPlay"

    const-string v3, "onTouch delta:%d count:%d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-wide v5, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->last_touch:J

    sub-long v5, v0, v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v7

    iget v5, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->touch_count:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2272
    iput-wide v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->last_touch:J

    .line 2273
    iget v2, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->touch_count:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->touch_count:I

    const/4 v3, 0x6

    if-le v2, v3, :cond_2

    .line 2275
    const v2, 0x7f0800d6

    invoke-virtual {p0, v2}, Lobject/p2pwificam/clientActivity/DPlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 2276
    const v2, 0x7f0800d7

    invoke-virtual {p0, v2}, Lobject/p2pwificam/clientActivity/DPlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->rssi_value_text:Landroid/widget/TextView;

    .line 2277
    const v2, 0x7f0800d8

    invoke-virtual {p0, v2}, Lobject/p2pwificam/clientActivity/DPlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->step_text:Landroid/widget/TextView;

    .line 2279
    iput v7, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->_frame_timeout_count:I

    .line 2280
    iput v7, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->_period_0:I

    .line 2281
    iput v7, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->_frame_timeout_count_1:I

    .line 2282
    iput v7, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->_period_1:I

    .line 2283
    iput v7, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->_frame_timeout_count_2:I

    .line 2284
    iput v7, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->_period_2:I

    .line 2286
    iput-boolean v8, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->showDebugInfo:Z

    .line 2290
    .end local v0    # "now":J
    :cond_2
    iget-boolean v2, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->setup_is_show:Z

    if-nez v2, :cond_0

    .line 2291
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->left_control_layout:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_3

    .line 2293
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->left_control_layout:Landroid/view/View;

    iget-object v3, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->dismissToLeft:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2294
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->left_control_layout:Landroid/view/View;

    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    .line 2300
    :goto_1
    iget-boolean v2, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->is_record:Z

    if-eqz v2, :cond_4

    .line 2302
    iget v2, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->record_state:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_4

    .line 2304
    const-string v2, "DPlay"

    const-string v3, "onTouch is record"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2297
    :cond_3
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->left_control_layout:Landroid/view/View;

    iget-object v3, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->showFromLeft:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2298
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->left_control_layout:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 2308
    :cond_4
    iget-boolean v2, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->is_record:Z

    if-eqz v2, :cond_6

    .line 2310
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2311
    .restart local v0    # "now":J
    iget-wide v2, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->lastRecordTime:J

    cmp-long v2, v2, v0

    if-lez v2, :cond_5

    const-wide/16 v2, 0xfa0

    sub-long v2, v0, v2

    iput-wide v2, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->lastRecordTime:J

    .line 2312
    :cond_5
    iget-wide v2, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->lastRecordTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0xbb8

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 2314
    iput-wide v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->lastRecordTime:J

    .line 2316
    iput-boolean v7, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->is_recording:Z

    .line 2317
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->record_show_layout:Landroid/view/View;

    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    .line 2318
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->control_layout:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 2319
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->left_control_layout:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 2320
    iput v10, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->_control_idle_count:I

    goto/16 :goto_0

    .line 2324
    .end local v0    # "now":J
    :cond_6
    iget-boolean v2, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->control_show:Z

    if-eqz v2, :cond_8

    .line 2326
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->dismissAnim:Landroid/view/animation/Animation;

    if-eqz v2, :cond_7

    .line 2328
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->control_layout:Landroid/view/View;

    iget-object v3, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->dismissAnim:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2329
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->control_layout:Landroid/view/View;

    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    .line 2331
    :cond_7
    iput-boolean v7, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->control_show:Z

    .line 2332
    iput v7, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->_control_idle_count:I

    goto/16 :goto_0

    .line 2335
    :cond_8
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->showAnim:Landroid/view/animation/Animation;

    if-eqz v2, :cond_9

    .line 2337
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->control_layout:Landroid/view/View;

    iget-object v3, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->showAnim:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2338
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->control_layout:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 2340
    :cond_9
    iput-boolean v8, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->control_show:Z

    .line 2341
    iput v10, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->_control_idle_count:I

    goto/16 :goto_0

    .line 2265
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public quit()V
    .locals 2

    .prologue
    .line 1224
    const-string v0, "ViewRecord"

    const-string v1, "555555555555555555555555555555555555555555555"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1225
    const/4 v0, 0x1

    iput-boolean v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->bManualExit:Z

    .line 1226
    iget-boolean v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->bProgress:Z

    if-nez v0, :cond_0

    .line 1227
    iget-boolean v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity;->isTakeVideo:Z

    if-eqz v0, :cond_1

    .line 1228
    const v0, 0x7f0601a6

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->showToast(I)V

    .line 1247
    :cond_0
    :goto_0
    return-void

    .line 1242
    :cond_1
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->finish()V

    .line 1243
    const v0, 0x7f040006

    .line 1244
    const/high16 v1, 0x7f040000

    .line 1243
    invoke-virtual {p0, v0, v1}, Lobject/p2pwificam/clientActivity/DPlayActivity;->overridePendingTransition(II)V

    goto :goto_0
.end method

.method public showSureDialogPlay(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 320
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 323
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0601b8

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 324
    const v1, 0x7f06000c

    .line 325
    new-instance v2, Lobject/p2pwificam/clientActivity/DPlayActivity$15;

    invoke-direct {v2, p0}, Lobject/p2pwificam/clientActivity/DPlayActivity$15;-><init>(Lobject/p2pwificam/clientActivity/DPlayActivity;)V

    .line 324
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 333
    const v1, 0x7f06000d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 334
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 335
    return-void
.end method
