.class public Lobject/p2pwificam/clientActivity/DronePlayActivity;
.super Lobject/p2pwificam/clientActivity/BaseActivity;
.source "DronePlayActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/GestureDetector$OnDoubleTapListener;
.implements Lobject/p2pwificam/clientActivity/BridgeService$PlayInterface;
.implements Lobject/p2pwificam/clientActivity/BridgeService$OpenLockInterface;
.implements Lobject/p2pwificam/clientActivity/BridgeService$IpcamClientInterface;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lobject/p2pwificam/clientActivity/DronePlayActivity$StatusThread;,
        Lobject/p2pwificam/clientActivity/DronePlayActivity$ThreadConnect;,
        Lobject/p2pwificam/clientActivity/DronePlayActivity$surfaceCallback;
    }
.end annotation


# static fields
.field private static final AUDIO_BUFFER_START_CODE:I = 0xff00ff

.field private static final LOG_TAG:Ljava/lang/String; = "Drone"

.field private static final LOW_MEMORY:Ljava/lang/String; = "The memory will be full"

.field private static final LOW_MEMORY_MB:I = 0x200

.field private static final LOW_POWER:Ljava/lang/String; = "Low Battery - Land Soon and Unplug"

.field private static final MEMORY_FULL:Ljava/lang/String; = "The memory is full"

.field private static final MEMORY_FULL_MB:I = 0x100

.field private static final MESSAGE_QUERY_STORAGESTATE:I = 0x64

.field private static final MESSAGE_QUERY_WIFIRSSI:I = 0x65

.field private static final NO_CARD:Ljava/lang/String; = "No Memory Card Installed"

.field private static final RECORD_STATE_START:I = 0x2

.field private static final RECORD_STATE_STARTTING:I = 0x1

.field private static final RECORD_STATE_STOP:I = 0x0

.field private static final RECORD_STATE_STOPPING:I = 0x3

.field private static _camera:Lcom/easyview/ppcs/PPCSCamera;

.field private static final isDebug:Z


# instance fields
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

.field VideoFPS:I

.field Video_bps:I

.field Video_fps:I

.field private WiFiName:Ljava/lang/String;

.field private _camInfo:Lcom/easyview/common/EV_NetInfo;

.field private _connectRun:Z

.field private _conntect_count:I

.field private _control_idle_count:I

.field private _dev_ssid:Ljava/lang/String;

.field private _isConnected:Z

.field private _prefix:Ljava/lang/String;

.field private _soundPool:Landroid/media/SoundPool;

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

.field private dismissAnim:Landroid/view/animation/Animation;

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

.field private edit_wifi_name:Landroid/widget/EditText;

.field protected findCamera:Z

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

.field private helper:Lobject/p2pipcam/utils/DataBaseHelper;

.field private imgViewOpenLock:Landroid/widget/ImageView;

.field private imgViewRecord:Landroid/widget/ImageView;

.field private imgViewSnap:Landroid/widget/ImageView;

.field private isExit:Z

.field private isH264:Z

.field private isModified:Z

.field private isPictSave:Z

.field private isReverseLandscape:Z

.field private isT:Z

.field private isTakeVideo:Z

.field private isTypeI:I

.field private is_record:Z

.field private is_record_show:Z

.field private is_recording:Z

.field private isstart:Z

.field private lastBackKeyTimeStamp:J

.field private lastRecordTime:J

.field private lastSnapTime:J

.field lastTimeStamp:J

.field private left_control_layout:Landroid/view/View;

.field private final mBatInfoReceiver:Landroid/content/BroadcastReceiver;

.field private mBmp:Landroid/graphics/Bitmap;

.field private mHandler:Landroid/os/Handler;

.field private mOrientationListener:Landroid/view/OrientationEventListener;

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

.field private paramCanSave:Z

.field private playHolder:Landroid/view/SurfaceHolder;

.field private playSurface:Landroid/view/SurfaceView;

.field private playType:I

.field private preference:Landroid/content/SharedPreferences;

.field private progressView:Landroid/view/View;

.field private ptzPlatform:Landroid/widget/LinearLayout;

.field private record_sel_card:Landroid/widget/ImageButton;

.field private record_sel_local:Landroid/widget/ImageButton;

.field private record_show_layout:Landroid/view/View;

.field private record_state:I

.field private resolutionPopWindow:Landroid/widget/PopupWindow;

.field private restart:Z

.field private rssi_text:Landroid/widget/TextView;

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

.field private snap_sel_card:Landroid/widget/ImageButton;

.field private snap_sel_local:Landroid/widget/ImageButton;

.field private start_record_count:I

.field private strDID:Ljava/lang/String;

.field private strName:Ljava/lang/String;

.field private streamType:I

.field private surface:Landroid/view/Surface;

.field private timeoutHandle:Landroid/os/Handler;

.field private vedioview:Landroid/view/View;

.field private videoCallback:Lobject/p2pwificam/clientActivity/DronePlayActivity$surfaceCallback;

.field private videodata:[B

.field private vidoeView:Landroid/widget/ImageView;

.field private viewHandler:Landroid/os/Handler;

.field private wait_seconds:I

.field private wait_text:Landroid/widget/TextView;

.field private wifi_ap_prefixs:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 246
    const/4 v0, 0x0

    sput-object v0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->_camera:Lcom/easyview/ppcs/PPCSCamera;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0xfa0

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 98
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/BaseActivity;-><init>()V

    .line 117
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->playSurface:Landroid/view/SurfaceView;

    .line 118
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->playHolder:Landroid/view/SurfaceHolder;

    .line 120
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->videodata:[B

    .line 121
    iput v3, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->nVideoWidth:I

    .line 122
    iput v3, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->nVideoHeight:I

    .line 124
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->progressView:Landroid/view/View;

    .line 125
    iput-boolean v1, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->bProgress:Z

    .line 127
    iput-boolean v3, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->bInitCameraParam:Z

    .line 128
    iput-boolean v3, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->bManualExit:Z

    .line 130
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->strName:Ljava/lang/String;

    .line 131
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->strDID:Ljava/lang/String;

    .line 132
    const/4 v0, 0x3

    iput v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->streamType:I

    .line 134
    iput-boolean v1, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->bDisplayFinished:Z

    .line 135
    new-instance v0, Lobject/p2pwificam/clientActivity/DronePlayActivity$surfaceCallback;

    invoke-direct {v0, p0, v2}, Lobject/p2pwificam/clientActivity/DronePlayActivity$surfaceCallback;-><init>(Lobject/p2pwificam/clientActivity/DronePlayActivity;Lobject/p2pwificam/clientActivity/DronePlayActivity$surfaceCallback;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->videoCallback:Lobject/p2pwificam/clientActivity/DronePlayActivity$surfaceCallback;

    .line 137
    iput v3, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->nPlayCount:I

    .line 139
    iput v1, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->nP2PMode:I

    .line 141
    iput v3, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->playType:I

    .line 142
    iput-boolean v3, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->bTimeoutStarted:Z

    .line 143
    const/16 v0, 0xb4

    iput v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->nTimeoutRemain:I

    .line 145
    iput-boolean v3, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->isTakeVideo:Z

    .line 147
    iput v1, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->BRIGHT:I

    .line 148
    const/4 v0, 0x2

    iput v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->CONTRAST:I

    .line 151
    iput-boolean v3, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->isExit:Z

    .line 155
    iput-boolean v3, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->isH264:Z

    .line 157
    iput-boolean v3, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->restart:Z

    .line 159
    iput v3, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->isTypeI:I

    .line 160
    iput-boolean v3, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->isT:Z

    .line 161
    iput-boolean v3, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->isstart:Z

    .line 162
    iput-boolean v3, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->isPictSave:Z

    .line 163
    iput v3, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->nBrightness:I

    .line 164
    iput v3, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->nContrast:I

    .line 165
    iput v3, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->nFlip:I

    .line 166
    iput v3, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->nRotate:I

    .line 167
    const/4 v0, -0x1

    iput v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->nDateCode:I

    .line 168
    iput v3, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->nSensorRes:I

    .line 169
    iput v3, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->nCurBrightness:I

    .line 170
    iput v3, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->nCurContrast:I

    .line 171
    iput v3, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->nCurRotate:I

    .line 172
    iput v3, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->nCurDateCode:I

    .line 173
    iput v3, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->nCurSensorRes:I

    .line 174
    iput-boolean v3, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->isModified:Z

    .line 175
    iput-boolean v3, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->paramCanSave:Z

    .line 177
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->imgViewRecord:Landroid/widget/ImageView;

    .line 178
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->imgViewSnap:Landroid/widget/ImageView;

    .line 179
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->imgViewOpenLock:Landroid/widget/ImageView;

    .line 181
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->h264JpegVideoDate:Ljava/util/LinkedList;

    .line 182
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->IorP:Ljava/util/LinkedList;

    .line 184
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->control_layout:Landroid/view/View;

    .line 185
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->left_control_layout:Landroid/view/View;

    .line 186
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->snap_sel_local:Landroid/widget/ImageButton;

    .line 187
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->snap_sel_card:Landroid/widget/ImageButton;

    .line 188
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->drone_snap:Landroid/widget/ImageButton;

    .line 189
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->record_sel_local:Landroid/widget/ImageButton;

    .line 190
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->record_sel_card:Landroid/widget/ImageButton;

    .line 191
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->drone_record:Landroid/widget/ImageButton;

    .line 192
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->gallery_sel_local:Landroid/widget/ImageButton;

    .line 193
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->gallery_sel_card:Landroid/widget/ImageButton;

    .line 194
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->drone_gallery:Landroid/widget/ImageButton;

    .line 195
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->drone_setup:Landroid/widget/ImageButton;

    .line 196
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->drone_do:Landroid/widget/ImageButton;

    .line 197
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->drone_return:Landroid/widget/ImageButton;

    .line 198
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->drone_save:Landroid/widget/ImageButton;

    .line 199
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->edit_wifi_name:Landroid/widget/EditText;

    .line 200
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->brightseekBar:Landroid/widget/SeekBar;

    .line 201
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->contrastseekBar:Landroid/widget/SeekBar;

    .line 202
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->drone_view_rotate_on:Landroid/widget/ImageButton;

    .line 203
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->drone_view_rotate_off:Landroid/widget/ImageButton;

    .line 204
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->drone_date_code_on:Landroid/widget/ImageButton;

    .line 205
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->drone_date_code_off:Landroid/widget/ImageButton;

    .line 206
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->drone_sensor_on:Landroid/widget/ImageButton;

    .line 207
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->drone_sensor_off:Landroid/widget/ImageButton;

    .line 208
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->drone_reset:Landroid/widget/Button;

    .line 210
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->button_sel:Landroid/widget/ImageButton;

    .line 211
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->vedioview:Landroid/view/View;

    .line 212
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->record_show_layout:Landroid/view/View;

    .line 213
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->setup_show_layout:Landroid/view/View;

    .line 215
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->no_sd_text:Landroid/widget/TextView;

    .line 216
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->drone_record_show:Landroid/widget/ImageButton;

    .line 217
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->drone_record_text:Landroid/widget/TextView;

    .line 218
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->search_text:Landroid/widget/TextView;

    .line 220
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->ap_name_text:Landroid/widget/TextView;

    .line 221
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->wait_text:Landroid/widget/TextView;

    .line 222
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->rssi_text:Landroid/widget/TextView;

    .line 223
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->sensor_layout:Landroid/view/View;

    .line 225
    iput v3, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->wait_seconds:I

    .line 227
    iput-boolean v1, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->control_show:Z

    .line 228
    iput-boolean v3, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->sel_gallery:Z

    .line 229
    iput-boolean v3, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->is_recording:Z

    .line 230
    iput v3, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->start_record_count:I

    .line 231
    iput-boolean v3, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->is_record:Z

    .line 232
    iput v3, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->record_state:I

    .line 233
    iput-boolean v3, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->setup_is_show:Z

    .line 237
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->_camInfo:Lcom/easyview/common/EV_NetInfo;

    .line 241
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->_dev_ssid:Ljava/lang/String;

    .line 243
    iput v3, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->_wifi_rssi_level:I

    .line 244
    iput-boolean v3, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->bgetCameraParamsThreadRuning:Z

    .line 248
    iput v3, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->_control_idle_count:I

    .line 249
    iput-boolean v3, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->_isConnected:Z

    .line 250
    iput-boolean v3, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->_connectRun:Z

    .line 251
    iput v3, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->_conntect_count:I

    .line 252
    iput v3, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->no_sd_show_count:I

    .line 253
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v4

    iput-wide v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->lastBackKeyTimeStamp:J

    .line 254
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v4

    iput-wide v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->lastRecordTime:J

    .line 255
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v4

    iput-wide v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->lastSnapTime:J

    .line 257
    iput-boolean v3, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->isReverseLandscape:Z

    .line 260
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->surface:Landroid/view/Surface;

    .line 328
    new-instance v0, Lobject/p2pwificam/clientActivity/DronePlayActivity$1;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/DronePlayActivity$1;-><init>(Lobject/p2pwificam/clientActivity/DronePlayActivity;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->timeoutHandle:Landroid/os/Handler;

    .line 369
    iput-boolean v3, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->is_record_show:Z

    .line 396
    new-instance v0, Lobject/p2pwificam/clientActivity/DronePlayActivity$2;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/DronePlayActivity$2;-><init>(Lobject/p2pwificam/clientActivity/DronePlayActivity;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->mHandler:Landroid/os/Handler;

    .line 535
    new-instance v0, Lobject/p2pwificam/clientActivity/DronePlayActivity$3;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/DronePlayActivity$3;-><init>(Lobject/p2pwificam/clientActivity/DronePlayActivity;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->msgStreamCodecHandler:Landroid/os/Handler;

    .line 544
    iput-boolean v3, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->findCamera:Z

    .line 745
    new-instance v0, Lobject/p2pwificam/clientActivity/DronePlayActivity$4;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/DronePlayActivity$4;-><init>(Lobject/p2pwificam/clientActivity/DronePlayActivity;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->handler:Landroid/os/Handler;

    .line 1154
    iput v3, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->seek_brightness:I

    .line 1155
    iput v3, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->seek_contrast:I

    .line 1156
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->seek_Time:J

    .line 1158
    new-instance v0, Lobject/p2pwificam/clientActivity/DronePlayActivity$5;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/DronePlayActivity$5;-><init>(Lobject/p2pwificam/clientActivity/DronePlayActivity;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->seekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 1483
    new-instance v0, Lobject/p2pwificam/clientActivity/DronePlayActivity$6;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/DronePlayActivity$6;-><init>(Lobject/p2pwificam/clientActivity/DronePlayActivity;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->onControlClick:Landroid/view/View$OnClickListener;

    .line 1642
    new-instance v0, Lobject/p2pwificam/clientActivity/DronePlayActivity$7;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/DronePlayActivity$7;-><init>(Lobject/p2pwificam/clientActivity/DronePlayActivity;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->onSelectClick:Landroid/view/View$OnClickListener;

    .line 1677
    new-instance v0, Lobject/p2pwificam/clientActivity/DronePlayActivity$8;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/DronePlayActivity$8;-><init>(Lobject/p2pwificam/clientActivity/DronePlayActivity;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->viewHandler:Landroid/os/Handler;

    .line 1742
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->myRender:Lobject/p2pwificam/clientActivity/MyRender;

    .line 1743
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->myGlSurfaceView:Landroid/opengl/GLSurfaceView;

    .line 1810
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->lastTimeStamp:J

    .line 1816
    iput v3, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->VideoFPS:I

    .line 1818
    iput v3, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->Video_fps:I

    .line 1819
    iput v3, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->Video_bps:I

    .line 1911
    new-instance v0, Lobject/p2pwificam/clientActivity/DronePlayActivity$9;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/DronePlayActivity$9;-><init>(Lobject/p2pwificam/clientActivity/DronePlayActivity;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->mBatInfoReceiver:Landroid/content/BroadcastReceiver;

    .line 98
    return-void
.end method

.method private InitParams()V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ServiceCast"
        }
    .end annotation

    .prologue
    .line 996
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 997
    .local v1, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 998
    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 999
    .local v3, "widthPixels":I
    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 1001
    .local v2, "heightPixels":I
    add-int/lit8 v4, v2, -0x6

    div-int/lit8 v0, v4, 0x4

    .line 1012
    .local v0, "buttonHeight":I
    return-void
.end method

.method static synthetic access$0(Lobject/p2pwificam/clientActivity/DronePlayActivity;)I
    .locals 1

    .prologue
    .line 143
    iget v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->nTimeoutRemain:I

    return v0
.end method

.method static synthetic access$1(Lobject/p2pwificam/clientActivity/DronePlayActivity;I)V
    .locals 0

    .prologue
    .line 143
    iput p1, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->nTimeoutRemain:I

    return-void
.end method

.method static synthetic access$10(Lobject/p2pwificam/clientActivity/DronePlayActivity;Z)V
    .locals 0

    .prologue
    .line 134
    iput-boolean p1, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->bDisplayFinished:Z

    return-void
.end method

.method static synthetic access$100(Lobject/p2pwificam/clientActivity/DronePlayActivity;I)V
    .locals 0

    .prologue
    .line 164
    iput p1, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->nContrast:I

    return-void
.end method

.method static synthetic access$101(Lobject/p2pwificam/clientActivity/DronePlayActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->_prefix:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lobject/p2pwificam/clientActivity/DronePlayActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 242
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->WiFiName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$103(Lobject/p2pwificam/clientActivity/DronePlayActivity;I)V
    .locals 0

    .prologue
    .line 171
    iput p1, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->nCurRotate:I

    return-void
.end method

.method static synthetic access$104(Lobject/p2pwificam/clientActivity/DronePlayActivity;)I
    .locals 1

    .prologue
    .line 165
    iget v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->nFlip:I

    return v0
.end method

.method static synthetic access$105(Lobject/p2pwificam/clientActivity/DronePlayActivity;)Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->drone_view_rotate_on:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$106(Lobject/p2pwificam/clientActivity/DronePlayActivity;)Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->drone_view_rotate_off:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$107(Lobject/p2pwificam/clientActivity/DronePlayActivity;I)V
    .locals 0

    .prologue
    .line 172
    iput p1, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->nCurDateCode:I

    return-void
.end method

.method static synthetic access$108(Lobject/p2pwificam/clientActivity/DronePlayActivity;)Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->drone_date_code_on:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$109(Lobject/p2pwificam/clientActivity/DronePlayActivity;)Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->drone_date_code_off:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$11(Lobject/p2pwificam/clientActivity/DronePlayActivity;)I
    .locals 1

    .prologue
    .line 137
    iget v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->nPlayCount:I

    return v0
.end method

.method static synthetic access$110(Lobject/p2pwificam/clientActivity/DronePlayActivity;I)V
    .locals 0

    .prologue
    .line 173
    iput p1, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->nCurSensorRes:I

    return-void
.end method

.method static synthetic access$111(Lobject/p2pwificam/clientActivity/DronePlayActivity;)Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->drone_sensor_on:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$112(Lobject/p2pwificam/clientActivity/DronePlayActivity;)Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->drone_sensor_off:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$113(Lobject/p2pwificam/clientActivity/DronePlayActivity;)Landroid/widget/SeekBar;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->brightseekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$114(Lobject/p2pwificam/clientActivity/DronePlayActivity;)Landroid/widget/SeekBar;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->contrastseekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$115(Lobject/p2pwificam/clientActivity/DronePlayActivity;Z)V
    .locals 0

    .prologue
    .line 257
    iput-boolean p1, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->isReverseLandscape:Z

    return-void
.end method

.method static synthetic access$12(Lobject/p2pwificam/clientActivity/DronePlayActivity;I)V
    .locals 0

    .prologue
    .line 137
    iput p1, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->nPlayCount:I

    return-void
.end method

.method static synthetic access$13(Lobject/p2pwificam/clientActivity/DronePlayActivity;)I
    .locals 1

    .prologue
    .line 138
    iget v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->nStreamCodecType:I

    return v0
.end method

.method static synthetic access$14()Lcom/easyview/ppcs/PPCSCamera;
    .locals 1

    .prologue
    .line 246
    sget-object v0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->_camera:Lcom/easyview/ppcs/PPCSCamera;

    return-object v0
.end method

.method static synthetic access$15(Lobject/p2pwificam/clientActivity/DronePlayActivity;[B)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->videodata:[B

    return-void
.end method

.method static synthetic access$16(Lobject/p2pwificam/clientActivity/DronePlayActivity;I)V
    .locals 0

    .prologue
    .line 121
    iput p1, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->nVideoWidth:I

    return-void
.end method

.method static synthetic access$17(Lobject/p2pwificam/clientActivity/DronePlayActivity;I)V
    .locals 0

    .prologue
    .line 122
    iput p1, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->nVideoHeight:I

    return-void
.end method

.method static synthetic access$18(Lobject/p2pwificam/clientActivity/DronePlayActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->_dev_ssid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$19(Lobject/p2pwificam/clientActivity/DronePlayActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->control_layout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2(Lobject/p2pwificam/clientActivity/DronePlayActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->timeoutHandle:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$20(Lobject/p2pwificam/clientActivity/DronePlayActivity;)V
    .locals 0

    .prologue
    .line 522
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->getCameraParams()V

    return-void
.end method

.method static synthetic access$21(Lobject/p2pwificam/clientActivity/DronePlayActivity;)Z
    .locals 1

    .prologue
    .line 125
    iget-boolean v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->bProgress:Z

    return v0
.end method

.method static synthetic access$22(Lobject/p2pwificam/clientActivity/DronePlayActivity;Z)V
    .locals 0

    .prologue
    .line 125
    iput-boolean p1, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->bProgress:Z

    return-void
.end method

.method static synthetic access$23(Lobject/p2pwificam/clientActivity/DronePlayActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->progressView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$24(Lobject/p2pwificam/clientActivity/DronePlayActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 241
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->_dev_ssid:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$25(Lobject/p2pwificam/clientActivity/DronePlayActivity;)Z
    .locals 1

    .prologue
    .line 227
    iget-boolean v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->control_show:Z

    return v0
.end method

.method static synthetic access$26(Lobject/p2pwificam/clientActivity/DronePlayActivity;)Landroid/view/animation/Animation;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->dismissAnim:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$27(Lobject/p2pwificam/clientActivity/DronePlayActivity;Z)V
    .locals 0

    .prologue
    .line 227
    iput-boolean p1, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->control_show:Z

    return-void
.end method

.method static synthetic access$28(Lobject/p2pwificam/clientActivity/DronePlayActivity;I)V
    .locals 0

    .prologue
    .line 248
    iput p1, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->_control_idle_count:I

    return-void
.end method

.method static synthetic access$29(Lobject/p2pwificam/clientActivity/DronePlayActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 745
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3(Lobject/p2pwificam/clientActivity/DronePlayActivity;)Z
    .locals 1

    .prologue
    .line 151
    iget-boolean v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->isExit:Z

    return v0
.end method

.method static synthetic access$30(Lobject/p2pwificam/clientActivity/DronePlayActivity;Z)V
    .locals 0

    .prologue
    .line 249
    iput-boolean p1, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->_isConnected:Z

    return-void
.end method

.method static synthetic access$31(Lobject/p2pwificam/clientActivity/DronePlayActivity;)J
    .locals 2

    .prologue
    .line 1156
    iget-wide v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->seek_Time:J

    return-wide v0
.end method

.method static synthetic access$32(Lobject/p2pwificam/clientActivity/DronePlayActivity;J)V
    .locals 0

    .prologue
    .line 1156
    iput-wide p1, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->seek_Time:J

    return-void
.end method

.method static synthetic access$33(Lobject/p2pwificam/clientActivity/DronePlayActivity;I)V
    .locals 0

    .prologue
    .line 1154
    iput p1, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->seek_brightness:I

    return-void
.end method

.method static synthetic access$34(Lobject/p2pwificam/clientActivity/DronePlayActivity;I)V
    .locals 0

    .prologue
    .line 169
    iput p1, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->nCurBrightness:I

    return-void
.end method

.method static synthetic access$35(Lobject/p2pwificam/clientActivity/DronePlayActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->strDID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$36(Lobject/p2pwificam/clientActivity/DronePlayActivity;I)V
    .locals 0

    .prologue
    .line 1155
    iput p1, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->seek_contrast:I

    return-void
.end method

.method static synthetic access$37(Lobject/p2pwificam/clientActivity/DronePlayActivity;I)V
    .locals 0

    .prologue
    .line 170
    iput p1, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->nCurContrast:I

    return-void
.end method

.method static synthetic access$38(Lobject/p2pwificam/clientActivity/DronePlayActivity;)I
    .locals 1

    .prologue
    .line 169
    iget v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->nCurBrightness:I

    return v0
.end method

.method static synthetic access$39(Lobject/p2pwificam/clientActivity/DronePlayActivity;)I
    .locals 1

    .prologue
    .line 170
    iget v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->nCurContrast:I

    return v0
.end method

.method static synthetic access$4(Lobject/p2pwificam/clientActivity/DronePlayActivity;)V
    .locals 0

    .prologue
    .line 355
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->setViewVisible()V

    return-void
.end method

.method static synthetic access$40(Lobject/p2pwificam/clientActivity/DronePlayActivity;)I
    .locals 1

    .prologue
    .line 1154
    iget v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->seek_brightness:I

    return v0
.end method

.method static synthetic access$41(Lobject/p2pwificam/clientActivity/DronePlayActivity;)I
    .locals 1

    .prologue
    .line 1155
    iget v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->seek_contrast:I

    return v0
.end method

.method static synthetic access$42(Lobject/p2pwificam/clientActivity/DronePlayActivity;)J
    .locals 2

    .prologue
    .line 255
    iget-wide v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->lastSnapTime:J

    return-wide v0
.end method

.method static synthetic access$43(Lobject/p2pwificam/clientActivity/DronePlayActivity;J)V
    .locals 0

    .prologue
    .line 255
    iput-wide p1, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->lastSnapTime:J

    return-void
.end method

.method static synthetic access$44(Lobject/p2pwificam/clientActivity/DronePlayActivity;)J
    .locals 2

    .prologue
    .line 254
    iget-wide v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->lastRecordTime:J

    return-wide v0
.end method

.method static synthetic access$45(Lobject/p2pwificam/clientActivity/DronePlayActivity;J)V
    .locals 0

    .prologue
    .line 254
    iput-wide p1, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->lastRecordTime:J

    return-void
.end method

.method static synthetic access$46(Lobject/p2pwificam/clientActivity/DronePlayActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->no_sd_text:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$47(Lobject/p2pwificam/clientActivity/DronePlayActivity;I)V
    .locals 0

    .prologue
    .line 252
    iput p1, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->no_sd_show_count:I

    return-void
.end method

.method static synthetic access$48(Lobject/p2pwificam/clientActivity/DronePlayActivity;)Landroid/media/SoundPool;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->_soundPool:Landroid/media/SoundPool;

    return-object v0
.end method

.method static synthetic access$49(Lobject/p2pwificam/clientActivity/DronePlayActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->vedioview:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$5(Lobject/p2pwificam/clientActivity/DronePlayActivity;)I
    .locals 1

    .prologue
    .line 122
    iget v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->nVideoHeight:I

    return v0
.end method

.method static synthetic access$50(Lobject/p2pwificam/clientActivity/DronePlayActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 396
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$51(Lobject/p2pwificam/clientActivity/DronePlayActivity;Z)V
    .locals 0

    .prologue
    .line 229
    iput-boolean p1, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->is_recording:Z

    return-void
.end method

.method static synthetic access$52(Lobject/p2pwificam/clientActivity/DronePlayActivity;I)V
    .locals 0

    .prologue
    .line 232
    iput p1, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->record_state:I

    return-void
.end method

.method static synthetic access$53(Lobject/p2pwificam/clientActivity/DronePlayActivity;)Z
    .locals 1

    .prologue
    .line 257
    iget-boolean v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->isReverseLandscape:Z

    return v0
.end method

.method static synthetic access$54(Lobject/p2pwificam/clientActivity/DronePlayActivity;)V
    .locals 0

    .prologue
    .line 2017
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->adjustFontSize()V

    return-void
.end method

.method static synthetic access$55(Lobject/p2pwificam/clientActivity/DronePlayActivity;)V
    .locals 0

    .prologue
    .line 1212
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->show_setup_view()V

    return-void
.end method

.method static synthetic access$56(Lobject/p2pwificam/clientActivity/DronePlayActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->setup_show_layout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$57(Lobject/p2pwificam/clientActivity/DronePlayActivity;)Z
    .locals 1

    .prologue
    .line 231
    iget-boolean v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->is_record:Z

    return v0
.end method

.method static synthetic access$58(Lobject/p2pwificam/clientActivity/DronePlayActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->record_show_layout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$59(Lobject/p2pwificam/clientActivity/DronePlayActivity;)Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->snap_sel_local:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$6(Lobject/p2pwificam/clientActivity/DronePlayActivity;)I
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->nVideoWidth:I

    return v0
.end method

.method static synthetic access$60(Lobject/p2pwificam/clientActivity/DronePlayActivity;Landroid/widget/ImageButton;)V
    .locals 0

    .prologue
    .line 210
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->button_sel:Landroid/widget/ImageButton;

    return-void
.end method

.method static synthetic access$61(Lobject/p2pwificam/clientActivity/DronePlayActivity;)Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->snap_sel_card:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$62(Lobject/p2pwificam/clientActivity/DronePlayActivity;)Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->record_sel_local:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$63(Lobject/p2pwificam/clientActivity/DronePlayActivity;)Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->record_sel_card:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$64(Lobject/p2pwificam/clientActivity/DronePlayActivity;)Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->gallery_sel_local:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$65(Lobject/p2pwificam/clientActivity/DronePlayActivity;)Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->gallery_sel_card:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$66(Lobject/p2pwificam/clientActivity/DronePlayActivity;)Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->button_sel:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$67(Lobject/p2pwificam/clientActivity/DronePlayActivity;Landroid/content/SharedPreferences;)V
    .locals 0

    .prologue
    .line 245
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->preference:Landroid/content/SharedPreferences;

    return-void
.end method

.method static synthetic access$68(Lobject/p2pwificam/clientActivity/DronePlayActivity;)Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->preference:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$69(Lobject/p2pwificam/clientActivity/DronePlayActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->imgViewSnap:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$7(Lobject/p2pwificam/clientActivity/DronePlayActivity;)Landroid/opengl/GLSurfaceView;
    .locals 1

    .prologue
    .line 1743
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->myGlSurfaceView:Landroid/opengl/GLSurfaceView;

    return-object v0
.end method

.method static synthetic access$70(Lobject/p2pwificam/clientActivity/DronePlayActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->imgViewRecord:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$71(Lobject/p2pwificam/clientActivity/DronePlayActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->imgViewOpenLock:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$72(Lobject/p2pwificam/clientActivity/DronePlayActivity;)Landroid/view/SurfaceHolder;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->playHolder:Landroid/view/SurfaceHolder;

    return-object v0
.end method

.method static synthetic access$73(Lobject/p2pwificam/clientActivity/DronePlayActivity;Landroid/view/Surface;)V
    .locals 0

    .prologue
    .line 260
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->surface:Landroid/view/Surface;

    return-void
.end method

.method static synthetic access$74(Lobject/p2pwificam/clientActivity/DronePlayActivity;)V
    .locals 0

    .prologue
    .line 640
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->connectDevice()V

    return-void
.end method

.method static synthetic access$75(Lobject/p2pwificam/clientActivity/DronePlayActivity;)Z
    .locals 1

    .prologue
    .line 249
    iget-boolean v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->_isConnected:Z

    return v0
.end method

.method static synthetic access$76(Lobject/p2pwificam/clientActivity/DronePlayActivity;)I
    .locals 1

    .prologue
    .line 232
    iget v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->record_state:I

    return v0
.end method

.method static synthetic access$77(Lobject/p2pwificam/clientActivity/DronePlayActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 2087
    invoke-direct {p0, p1}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->showMessage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$78(Lobject/p2pwificam/clientActivity/DronePlayActivity;)I
    .locals 1

    .prologue
    .line 252
    iget v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->no_sd_show_count:I

    return v0
.end method

.method static synthetic access$79(Lobject/p2pwificam/clientActivity/DronePlayActivity;Z)V
    .locals 0

    .prologue
    .line 250
    iput-boolean p1, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->_connectRun:Z

    return-void
.end method

.method static synthetic access$8(Lobject/p2pwificam/clientActivity/DronePlayActivity;)Lobject/p2pwificam/clientActivity/MyRender;
    .locals 1

    .prologue
    .line 1742
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->myRender:Lobject/p2pwificam/clientActivity/MyRender;

    return-object v0
.end method

.method static synthetic access$80(Lobject/p2pwificam/clientActivity/DronePlayActivity;)Z
    .locals 1

    .prologue
    .line 250
    iget-boolean v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->_connectRun:Z

    return v0
.end method

.method static synthetic access$81(Lobject/p2pwificam/clientActivity/DronePlayActivity;)I
    .locals 1

    .prologue
    .line 248
    iget v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->_control_idle_count:I

    return v0
.end method

.method static synthetic access$82(Lobject/p2pwificam/clientActivity/DronePlayActivity;Z)V
    .locals 0

    .prologue
    .line 231
    iput-boolean p1, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->is_record:Z

    return-void
.end method

.method static synthetic access$83(Lobject/p2pwificam/clientActivity/DronePlayActivity;)V
    .locals 0

    .prologue
    .line 370
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->updateRecState()V

    return-void
.end method

.method static synthetic access$84(Lobject/p2pwificam/clientActivity/DronePlayActivity;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 458
    invoke-direct {p0, p1}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->savePicToSDcard(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$85(Lobject/p2pwificam/clientActivity/DronePlayActivity;)Z
    .locals 1

    .prologue
    .line 175
    iget-boolean v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->paramCanSave:Z

    return v0
.end method

.method static synthetic access$86(Lobject/p2pwificam/clientActivity/DronePlayActivity;)I
    .locals 1

    .prologue
    .line 166
    iget v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->nRotate:I

    return v0
.end method

.method static synthetic access$87(Lobject/p2pwificam/clientActivity/DronePlayActivity;)I
    .locals 1

    .prologue
    .line 171
    iget v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->nCurRotate:I

    return v0
.end method

.method static synthetic access$88(Lobject/p2pwificam/clientActivity/DronePlayActivity;)I
    .locals 1

    .prologue
    .line 167
    iget v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->nDateCode:I

    return v0
.end method

.method static synthetic access$89(Lobject/p2pwificam/clientActivity/DronePlayActivity;)I
    .locals 1

    .prologue
    .line 172
    iget v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->nCurDateCode:I

    return v0
.end method

.method static synthetic access$9(Lobject/p2pwificam/clientActivity/DronePlayActivity;)[B
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->videodata:[B

    return-object v0
.end method

.method static synthetic access$90(Lobject/p2pwificam/clientActivity/DronePlayActivity;)I
    .locals 1

    .prologue
    .line 163
    iget v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->nBrightness:I

    return v0
.end method

.method static synthetic access$91(Lobject/p2pwificam/clientActivity/DronePlayActivity;)I
    .locals 1

    .prologue
    .line 164
    iget v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->nContrast:I

    return v0
.end method

.method static synthetic access$92(Lobject/p2pwificam/clientActivity/DronePlayActivity;)I
    .locals 1

    .prologue
    .line 168
    iget v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->nSensorRes:I

    return v0
.end method

.method static synthetic access$93(Lobject/p2pwificam/clientActivity/DronePlayActivity;)I
    .locals 1

    .prologue
    .line 173
    iget v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->nCurSensorRes:I

    return v0
.end method

.method static synthetic access$94(Lobject/p2pwificam/clientActivity/DronePlayActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->edit_wifi_name:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$95(Lobject/p2pwificam/clientActivity/DronePlayActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->WiFiName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$96(Lobject/p2pwificam/clientActivity/DronePlayActivity;Z)V
    .locals 0

    .prologue
    .line 233
    iput-boolean p1, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->setup_is_show:Z

    return-void
.end method

.method static synthetic access$97(Lobject/p2pwificam/clientActivity/DronePlayActivity;I)V
    .locals 0

    .prologue
    .line 166
    iput p1, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->nRotate:I

    return-void
.end method

.method static synthetic access$98(Lobject/p2pwificam/clientActivity/DronePlayActivity;I)V
    .locals 0

    .prologue
    .line 167
    iput p1, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->nDateCode:I

    return-void
.end method

.method static synthetic access$99(Lobject/p2pwificam/clientActivity/DronePlayActivity;I)V
    .locals 0

    .prologue
    .line 163
    iput p1, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->nBrightness:I

    return-void
.end method

.method private adjustFontSize()V
    .locals 15

    .prologue
    const/4 v13, 0x1

    const/4 v14, 0x0

    .line 2019
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 2020
    .local v0, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v10

    invoke-interface {v10}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v10

    invoke-virtual {v10, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 2021
    iget v9, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 2022
    .local v9, "widthPixels":I
    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 2025
    .local v3, "heightPixels":I
    const v10, 0x7f0800c3

    invoke-virtual {p0, v10}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    .line 2027
    .local v6, "view":Landroid/view/ViewGroup;
    invoke-static {v14, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 2028
    .local v7, "w":I
    invoke-static {v14, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 2030
    .local v1, "h":I
    iget-object v10, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->drone_return:Landroid/widget/ImageButton;

    invoke-virtual {v10, v7, v1}, Landroid/widget/ImageButton;->measure(II)V

    .line 2031
    iget-object v10, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->drone_return:Landroid/widget/ImageButton;

    invoke-virtual {v10}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result v2

    .line 2032
    .local v2, "height":I
    iget-object v10, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->drone_return:Landroid/widget/ImageButton;

    invoke-virtual {v10}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v8

    .line 2034
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

    .line 2036
    .local v5, "text":Ljava/lang/String;
    sub-int v10, v3, v2

    div-int/lit8 v10, v10, 0xa

    add-int/lit8 v10, v10, -0x5

    int-to-float v4, v10

    .line 2037
    .local v4, "size":F
    const-string v10, "Drone"

    const-string v11, "adjustFontSize %f "

    new-array v12, v13, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    aput-object v13, v12, v14

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2038
    invoke-direct {p0, v6, v4}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->adjustFontSize(Landroid/view/ViewGroup;F)V

    .line 2039
    return-void
.end method

.method private adjustFontSize(Landroid/view/ViewGroup;F)V
    .locals 5
    .param p1, "view"    # Landroid/view/ViewGroup;
    .param p2, "size"    # F

    .prologue
    const/4 v4, 0x0

    .line 2042
    move v0, p2

    .line 2043
    .local v0, "adjustFontSize":F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-lt v1, v3, :cond_0

    .line 2057
    return-void

    .line 2044
    :cond_0
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2045
    .local v2, "v":Landroid/view/View;
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_2

    .line 2046
    check-cast v2, Landroid/view/ViewGroup;

    .end local v2    # "v":Landroid/view/View;
    invoke-direct {p0, v2, p2}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->adjustFontSize(Landroid/view/ViewGroup;F)V

    .line 2043
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2047
    .restart local v2    # "v":Landroid/view/View;
    :cond_2
    instance-of v3, v2, Landroid/widget/TextView;

    if-eqz v3, :cond_3

    .line 2048
    check-cast v2, Landroid/widget/TextView;

    .end local v2    # "v":Landroid/view/View;
    invoke-virtual {v2, v4, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_1

    .line 2049
    .restart local v2    # "v":Landroid/view/View;
    :cond_3
    instance-of v3, v2, Landroid/widget/EditText;

    if-eqz v3, :cond_4

    .line 2051
    check-cast v2, Landroid/widget/EditText;

    .end local v2    # "v":Landroid/view/View;
    invoke-virtual {v2, v4, v0}, Landroid/widget/EditText;->setTextSize(IF)V

    goto :goto_1

    .line 2052
    .restart local v2    # "v":Landroid/view/View;
    :cond_4
    instance-of v3, v2, Landroid/widget/Button;

    if-eqz v3, :cond_1

    .line 2054
    check-cast v2, Landroid/widget/Button;

    .end local v2    # "v":Landroid/view/View;
    invoke-virtual {v2, v4, v0}, Landroid/widget/Button;->setTextSize(IF)V

    goto :goto_1
.end method

.method private connectDevice()V
    .locals 14

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 651
    iput-boolean v13, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->_connectRun:Z

    .line 652
    const/4 v2, 0x0

    .line 653
    .local v2, "idle_count":I
    :goto_0
    iget-boolean v7, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->_connectRun:Z

    if-nez v7, :cond_0

    .line 743
    return-void

    .line 655
    :cond_0
    if-lez v2, :cond_1

    .line 657
    add-int/lit8 v2, v2, -0x1

    .line 659
    const-wide/16 v7, 0x3e8

    :try_start_0
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 660
    :catch_0
    move-exception v1

    .line 661
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 665
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_1
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->searchDeviceWifi()Z

    move-result v7

    if-nez v7, :cond_2

    .line 668
    const-wide/16 v7, 0x7d0

    :try_start_1
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 669
    :catch_1
    move-exception v1

    .line 670
    .restart local v1    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 674
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_2
    iget-boolean v7, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->_isConnected:Z

    if-nez v7, :cond_4

    .line 676
    iget-object v7, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->_wifiUtils:Lcom/easyview/common/WifiUtils;

    invoke-virtual {v7}, Lcom/easyview/common/WifiUtils;->getCurrentSSID()Ljava/lang/String;

    move-result-object v6

    .line 677
    .local v6, "ssid":Ljava/lang/String;
    const-string v7, "Drone"

    const-string v8, "WIFI current ssid:%s dev_ssid:%s"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v6, v9, v12

    iget-object v10, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->_dev_ssid:Ljava/lang/String;

    aput-object v10, v9, v13

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/easyview/ndt/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 678
    iput-boolean v12, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->findCamera:Z

    .line 694
    const-string v7, "Drone"

    const-string v8, "Search P2P Camera"

    new-array v9, v12, [Ljava/lang/Object;

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/easyview/ndt/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    const-string v7, "camera_info"

    invoke-virtual {p0, v7, v12}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 696
    .local v4, "preference":Landroid/content/SharedPreferences;
    const-string v7, "camera_user"

    const-string v8, "admin"

    invoke-interface {v4, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 698
    .local v0, "cameraUser":Ljava/lang/String;
    const v7, 0x7f060003

    invoke-virtual {p0, v7}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 699
    .local v5, "searchPort":Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 700
    .local v3, "port":I
    sput-object v0, Lcom/easyview/ppcs/PPCSCamera;->CameraUser:Ljava/lang/String;

    .line 701
    new-instance v7, Lobject/p2pwificam/clientActivity/DronePlayActivity$14;

    invoke-direct {v7, p0}, Lobject/p2pwificam/clientActivity/DronePlayActivity$14;-><init>(Lobject/p2pwificam/clientActivity/DronePlayActivity;)V

    invoke-static {v7, v3}, Lcom/easyview/ppcs/PPCSCamera;->StartSearch(Lcom/easyview/basecamera/ICameraSearchListener;I)V

    .line 713
    const-wide/16 v7, 0x3e8

    :try_start_2
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_3

    .line 720
    :goto_1
    iget-boolean v7, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->findCamera:Z

    if-eqz v7, :cond_4

    .line 722
    sget-object v7, Lobject/p2pwificam/clientActivity/DronePlayActivity;->_camera:Lcom/easyview/ppcs/PPCSCamera;

    if-nez v7, :cond_3

    .line 724
    const-string v7, "PPCS-000000-MYGXJ"

    iput-object v7, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->strDID:Ljava/lang/String;

    .line 725
    new-instance v7, Lcom/easyview/ppcs/PPCSCamera;

    const-string v8, "IPCamera"

    iget-object v9, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->strDID:Ljava/lang/String;

    const-string v10, "admin"

    const-string v11, "admin"

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/easyview/ppcs/PPCSCamera;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v7, Lobject/p2pwificam/clientActivity/DronePlayActivity;->_camera:Lcom/easyview/ppcs/PPCSCamera;

    .line 727
    sget-object v7, Lobject/p2pwificam/clientActivity/DronePlayActivity;->_camera:Lcom/easyview/ppcs/PPCSCamera;

    const/16 v8, 0x2710

    iput v8, v7, Lcom/easyview/ppcs/PPCSCamera;->reconnect:I

    .line 728
    invoke-static {}, Lcom/easyview/camera/CameraList;->GetInstance()Lcom/easyview/camera/CameraList;

    move-result-object v7

    invoke-virtual {v7}, Lcom/easyview/camera/CameraList;->Clear()V

    .line 729
    invoke-static {}, Lcom/easyview/camera/CameraList;->GetInstance()Lcom/easyview/camera/CameraList;

    move-result-object v7

    sget-object v8, Lobject/p2pwificam/clientActivity/DronePlayActivity;->_camera:Lcom/easyview/ppcs/PPCSCamera;

    invoke-virtual {v7, v8}, Lcom/easyview/camera/CameraList;->Add(Lcom/easyview/basecamera/BaseCamera;)Z

    .line 731
    :cond_3
    iget-object v7, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v7, v13}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 732
    const/16 v2, 0x14

    .line 738
    .end local v0    # "cameraUser":Ljava/lang/String;
    .end local v3    # "port":I
    .end local v4    # "preference":Landroid/content/SharedPreferences;
    .end local v5    # "searchPort":Ljava/lang/String;
    .end local v6    # "ssid":Ljava/lang/String;
    :cond_4
    const-wide/16 v7, 0x3e8

    :try_start_3
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    .line 739
    :catch_2
    move-exception v1

    .line 740
    .restart local v1    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_0

    .line 714
    .end local v1    # "e":Ljava/lang/InterruptedException;
    .restart local v0    # "cameraUser":Ljava/lang/String;
    .restart local v3    # "port":I
    .restart local v4    # "preference":Landroid/content/SharedPreferences;
    .restart local v5    # "searchPort":Ljava/lang/String;
    .restart local v6    # "ssid":Ljava/lang/String;
    :catch_3
    move-exception v1

    .line 716
    .restart local v1    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1
.end method

.method private findView()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 1016
    const v0, 0x7f08007d

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->progressView:Landroid/view/View;

    .line 1018
    const v0, 0x7f08007b

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->playSurface:Landroid/view/SurfaceView;

    .line 1019
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->playSurface:Landroid/view/SurfaceView;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setBackgroundColor(I)V

    .line 1021
    const v0, 0x7f0800ad

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->control_layout:Landroid/view/View;

    .line 1022
    const v0, 0x7f0800d9

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->left_control_layout:Landroid/view/View;

    .line 1024
    const v0, 0x7f0800af

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->snap_sel_local:Landroid/widget/ImageButton;

    .line 1025
    const v0, 0x7f0800b0

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->snap_sel_card:Landroid/widget/ImageButton;

    .line 1026
    const v0, 0x7f0800b1

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->drone_snap:Landroid/widget/ImageButton;

    .line 1028
    const v0, 0x7f0800b3

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->record_sel_local:Landroid/widget/ImageButton;

    .line 1029
    const v0, 0x7f0800b4

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->record_sel_card:Landroid/widget/ImageButton;

    .line 1030
    const v0, 0x7f0800b5

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->drone_record:Landroid/widget/ImageButton;

    .line 1032
    const v0, 0x7f0800b7

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->gallery_sel_local:Landroid/widget/ImageButton;

    .line 1033
    const v0, 0x7f0800b8

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->gallery_sel_card:Landroid/widget/ImageButton;

    .line 1034
    const v0, 0x7f0800b9

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->drone_gallery:Landroid/widget/ImageButton;

    .line 1036
    const v0, 0x7f0800bc

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->drone_setup:Landroid/widget/ImageButton;

    .line 1038
    const v0, 0x7f0800bb

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->drone_do:Landroid/widget/ImageButton;

    .line 1039
    const v0, 0x7f0800c1

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->drone_return:Landroid/widget/ImageButton;

    .line 1041
    const v0, 0x7f0800bd

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->record_show_layout:Landroid/view/View;

    .line 1042
    const v0, 0x7f0800aa

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->vedioview:Landroid/view/View;

    .line 1043
    const v0, 0x7f0800c0

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->setup_show_layout:Landroid/view/View;

    .line 1045
    const v0, 0x7f0800c2

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->drone_save:Landroid/widget/ImageButton;

    .line 1046
    const v0, 0x7f0800c4

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->edit_wifi_name:Landroid/widget/EditText;

    .line 1047
    const v0, 0x7f0800c5

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->brightseekBar:Landroid/widget/SeekBar;

    .line 1048
    const v0, 0x7f0800c6

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->contrastseekBar:Landroid/widget/SeekBar;

    .line 1049
    const v0, 0x7f0800cc

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->drone_view_rotate_on:Landroid/widget/ImageButton;

    .line 1050
    const v0, 0x7f0800cd

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->drone_view_rotate_off:Landroid/widget/ImageButton;

    .line 1051
    const v0, 0x7f0800c7

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->drone_date_code_on:Landroid/widget/ImageButton;

    .line 1052
    const v0, 0x7f0800c8

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->drone_date_code_off:Landroid/widget/ImageButton;

    .line 1053
    const v0, 0x7f0800ca

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->drone_sensor_on:Landroid/widget/ImageButton;

    .line 1054
    const v0, 0x7f0800cb

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->drone_sensor_off:Landroid/widget/ImageButton;

    .line 1056
    const v0, 0x7f0800ce

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->drone_reset:Landroid/widget/Button;

    .line 1058
    const v0, 0x7f0800be

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->drone_record_show:Landroid/widget/ImageButton;

    .line 1059
    const v0, 0x7f0800bf

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->drone_record_text:Landroid/widget/TextView;

    .line 1061
    const v0, 0x7f0800d0

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->no_sd_text:Landroid/widget/TextView;

    .line 1062
    const v0, 0x7f0800ac

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->search_text:Landroid/widget/TextView;

    .line 1063
    const v0, 0x7f0800c9

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->sensor_layout:Landroid/view/View;

    .line 1074
    const v0, 0x7f08007c

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/opengl/GLSurfaceView;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->myGlSurfaceView:Landroid/opengl/GLSurfaceView;

    .line 1075
    new-instance v0, Lobject/p2pwificam/clientActivity/MyRender;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->myGlSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-direct {v0, v1}, Lobject/p2pwificam/clientActivity/MyRender;-><init>(Landroid/opengl/GLSurfaceView;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->myRender:Lobject/p2pwificam/clientActivity/MyRender;

    .line 1076
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->myGlSurfaceView:Landroid/opengl/GLSurfaceView;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->myRender:Lobject/p2pwificam/clientActivity/MyRender;

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 1078
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->control_layout:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1079
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->snap_sel_local:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1080
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->snap_sel_card:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1081
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->record_sel_local:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1082
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->record_sel_card:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1083
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->gallery_sel_local:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1084
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->gallery_sel_card:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1086
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->drone_do:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1087
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->record_show_layout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1088
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->setup_show_layout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1090
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->left_control_layout:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1092
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->drone_snap:Landroid/widget/ImageButton;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->onControlClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1093
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->drone_record:Landroid/widget/ImageButton;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->onControlClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1094
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->drone_gallery:Landroid/widget/ImageButton;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->onControlClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1095
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->drone_setup:Landroid/widget/ImageButton;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->onControlClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1096
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->drone_record_show:Landroid/widget/ImageButton;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->onControlClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1098
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->snap_sel_local:Landroid/widget/ImageButton;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->onSelectClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1099
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->snap_sel_card:Landroid/widget/ImageButton;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->onSelectClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1100
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->record_sel_local:Landroid/widget/ImageButton;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->onSelectClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1101
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->record_sel_card:Landroid/widget/ImageButton;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->onSelectClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1102
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->gallery_sel_local:Landroid/widget/ImageButton;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->onSelectClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1103
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->gallery_sel_card:Landroid/widget/ImageButton;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->onSelectClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1104
    return-void
.end method

.method public static getCamera()Lcom/easyview/ppcs/PPCSCamera;
    .locals 1

    .prologue
    .line 264
    sget-object v0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->_camera:Lcom/easyview/ppcs/PPCSCamera;

    return-object v0
.end method

.method private getCameraParams()V
    .locals 3

    .prologue
    .line 524
    const-string v0, "Drone"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "strDID  === "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->strDID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->strDID:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 527
    const-string v0, "Drone"

    const-string v1, "strDID  is Empty "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    :goto_0
    return-void

    .line 531
    :cond_0
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->strDID:Ljava/lang/String;

    .line 532
    const/4 v1, 0x2

    .line 531
    invoke-static {v0, v1}, Lobject/p2pipcam/nativecaller/NativeCaller;->PPPPGetSystemParams(Ljava/lang/String;I)I

    goto :goto_0
.end method

.method private getRssiLevel(I)I
    .locals 1
    .param p1, "rssi"    # I

    .prologue
    .line 2213
    const/16 v0, -0x4c

    if-ge p1, v0, :cond_0

    const/4 v0, 0x0

    .line 2217
    :goto_0
    return v0

    .line 2214
    :cond_0
    const/16 v0, -0x44

    if-ge p1, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    .line 2215
    :cond_1
    const/16 v0, -0x3c

    if-ge p1, v0, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    .line 2216
    :cond_2
    const/16 v0, -0x32

    if-ge p1, v0, :cond_3

    const/4 v0, 0x3

    goto :goto_0

    .line 2217
    :cond_3
    const/4 v0, 0x4

    goto :goto_0
.end method

.method private getRssiRes(I)I
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 2221
    if-nez p1, :cond_0

    const v0, 0x7f020179

    .line 2225
    :goto_0
    return v0

    .line 2222
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const v0, 0x7f02017a

    goto :goto_0

    .line 2223
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    const v0, 0x7f02017b

    goto :goto_0

    .line 2224
    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    const v0, 0x7f02017c

    goto :goto_0

    .line 2225
    :cond_3
    const v0, 0x7f02017d

    goto :goto_0
.end method

.method private getStrDate()Ljava/lang/String;
    .locals 4

    .prologue
    .line 517
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 518
    .local v0, "d":Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd_HH_mm"

    invoke-direct {v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 519
    .local v1, "f":Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 520
    .local v2, "strDate":Ljava/lang/String;
    return-object v2
.end method

.method private declared-synchronized savePicToSDcard(Landroid/graphics/Bitmap;)V
    .locals 12
    .param p1, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 459
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->getStrDate()Ljava/lang/String;

    move-result-object v7

    .line 460
    .local v7, "strDate":Ljava/lang/String;
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->helper:Lobject/p2pipcam/utils/DataBaseHelper;

    iget-object v9, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->strDID:Ljava/lang/String;

    .line 461
    const-string v10, "picture"

    .line 460
    invoke-virtual {v8, v9, v7, v10}, Lobject/p2pipcam/utils/DataBaseHelper;->queryVideoOrPictureByDate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 462
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    add-int/lit8 v6, v8, 0x1

    .line 463
    .local v6, "seri":I
    const/4 v4, 0x0

    .line 465
    .local v4, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v8

    .line 466
    const-string v9, "IPcamer/pic"

    .line 465
    invoke-direct {v1, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 467
    .local v1, "div":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_0

    .line 468
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 470
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

    iget-object v9, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->strDID:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "!"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 471
    const-string v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".jpg"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 470
    invoke-direct {v3, v1, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 472
    .local v3, "file":Ljava/io/File;
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 473
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .local v5, "fos":Ljava/io/FileOutputStream;
    :try_start_2
    sget-object v8, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v9, 0x64

    invoke-virtual {p1, v8, v9, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 474
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->flush()V

    .line 475
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->helper:Lobject/p2pipcam/utils/DataBaseHelper;

    iget-object v9, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->strDID:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    .line 476
    const-string v11, "picture"

    .line 475
    invoke-virtual {v8, v9, v10, v11, v7}, Lobject/p2pipcam/utils/DataBaseHelper;->createVideoOrPic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    .line 477
    new-instance v8, Lobject/p2pwificam/clientActivity/DronePlayActivity$12;

    invoke-direct {v8, p0}, Lobject/p2pwificam/clientActivity/DronePlayActivity$12;-><init>(Lobject/p2pwificam/clientActivity/DronePlayActivity;)V

    invoke-virtual {p0, v8}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 503
    :cond_1
    const/4 v8, 0x0

    :try_start_3
    iput-boolean v8, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->isPictSave:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 504
    if-eqz v5, :cond_4

    .line 506
    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 510
    :goto_0
    const/4 v4, 0x0

    .line 514
    .end local v1    # "div":Ljava/io/File;
    .end local v3    # "file":Ljava/io/File;
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    .line 489
    :catch_0
    move-exception v2

    .line 490
    .local v2, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_5
    new-instance v8, Lobject/p2pwificam/clientActivity/DronePlayActivity$13;

    invoke-direct {v8, p0}, Lobject/p2pwificam/clientActivity/DronePlayActivity$13;-><init>(Lobject/p2pwificam/clientActivity/DronePlayActivity;)V

    invoke-virtual {p0, v8}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 500
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

    .line 501
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 503
    const/4 v8, 0x0

    :try_start_6
    iput-boolean v8, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->isPictSave:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 504
    if-eqz v4, :cond_2

    .line 506
    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 510
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_3
    const/4 v4, 0x0

    goto :goto_1

    .line 507
    .restart local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 508
    .local v2, "e":Ljava/io/IOException;
    :try_start_8
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_3

    .line 459
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .end local v6    # "seri":I
    .end local v7    # "strDate":Ljava/lang/String;
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .line 502
    .restart local v0    # "cursor":Landroid/database/Cursor;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "seri":I
    .restart local v7    # "strDate":Ljava/lang/String;
    :catchall_1
    move-exception v8

    .line 503
    :goto_4
    const/4 v9, 0x0

    :try_start_9
    iput-boolean v9, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->isPictSave:Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 504
    if-eqz v4, :cond_3

    .line 506
    :try_start_a
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 510
    :goto_5
    const/4 v4, 0x0

    .line 512
    :cond_3
    :try_start_b
    throw v8

    .line 507
    :catch_2
    move-exception v2

    .line 508
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 507
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "div":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v2

    .line 508
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_0

    .line 502
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_2
    move-exception v8

    move-object v4, v5

    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    goto :goto_4

    .line 489
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

.method private searchDeviceWifi()Z
    .locals 13

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 899
    iget-object v7, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->_dev_ssid:Ljava/lang/String;

    if-nez v7, :cond_1

    .line 901
    const-string v7, "Drone"

    const-string v8, "Search Device AP"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v8, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/easyview/ndt/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 902
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->searchDeviceWifiAP()Z

    .line 939
    :cond_0
    :goto_0
    return v5

    .line 905
    :cond_1
    iget-object v7, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->_wifiUtils:Lcom/easyview/common/WifiUtils;

    invoke-virtual {v7}, Lcom/easyview/common/WifiUtils;->getCurrentSSID()Ljava/lang/String;

    move-result-object v4

    .line 906
    .local v4, "ssid":Ljava/lang/String;
    iget-object v7, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->_dev_ssid:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 907
    const/4 v0, 0x0

    .local v0, "count":I
    move v1, v0

    .line 908
    .end local v0    # "count":I
    .local v1, "count":I
    :goto_1
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "count":I
    .restart local v0    # "count":I
    const/16 v7, 0x28

    if-lt v1, v7, :cond_3

    .line 934
    invoke-static {p0}, Lobject/p2pipcam/utils/Pub;->isAppOnForeground(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 936
    const-string v7, "Drone"

    const-string v8, "App is backgroud, drop wifi: %s"

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v9, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->_dev_ssid:Ljava/lang/String;

    aput-object v9, v5, v6

    invoke-static {v8, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Lcom/easyview/ndt/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 937
    const/4 v5, 0x0

    iput-object v5, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->_dev_ssid:Ljava/lang/String;

    :cond_2
    move v5, v6

    .line 939
    goto :goto_0

    .line 910
    :cond_3
    iget-object v7, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->_wifiUtils:Lcom/easyview/common/WifiUtils;

    invoke-virtual {v7}, Lcom/easyview/common/WifiUtils;->Scan()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_5

    .line 928
    const-wide/16 v7, 0x3e8

    :try_start_0
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    move v1, v0

    .line 929
    .end local v0    # "count":I
    .restart local v1    # "count":I
    goto :goto_1

    .line 910
    .end local v1    # "count":I
    .restart local v0    # "count":I
    :cond_5
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ScanResult;

    .line 912
    .local v3, "result":Landroid/net/wifi/ScanResult;
    const-string v8, "Drone"

    const-string v9, "Scan AP curAP:%s scan:%s dev_ssid:%s"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v4, v10, v6

    iget-object v11, v3, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    aput-object v11, v10, v5

    const/4 v11, 0x2

    iget-object v12, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->_dev_ssid:Ljava/lang/String;

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/easyview/ndt/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 913
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->_dev_ssid:Ljava/lang/String;

    iget-object v9, v3, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 915
    const-string v8, "Drone"

    const-string v9, "Connect AP %s"

    new-array v10, v5, [Ljava/lang/Object;

    iget-object v11, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->_dev_ssid:Ljava/lang/String;

    aput-object v11, v10, v6

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/easyview/ndt/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 916
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->_wifiUtils:Lcom/easyview/common/WifiUtils;

    iget-object v9, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->_dev_ssid:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/easyview/common/WifiUtils;->Connect(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 919
    const-wide/16 v6, 0x7d0

    :try_start_1
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 920
    :catch_0
    move-exception v2

    .line 921
    .local v2, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_0

    .line 929
    .end local v2    # "e":Ljava/lang/InterruptedException;
    .end local v3    # "result":Landroid/net/wifi/ScanResult;
    :catch_1
    move-exception v2

    .line 930
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

    .line 943
    iget-object v9, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->_wifiUtils:Lcom/easyview/common/WifiUtils;

    invoke-virtual {v9}, Lcom/easyview/common/WifiUtils;->getCurrentSSID()Ljava/lang/String;

    move-result-object v6

    .line 944
    .local v6, "ssid":Ljava/lang/String;
    iget-object v10, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->wifi_ap_prefixs:[Ljava/lang/String;

    array-length v11, v10

    move v9, v8

    :goto_0
    if-lt v9, v11, :cond_0

    .line 953
    const/4 v0, 0x0

    .local v0, "count":I
    move v1, v0

    .line 954
    .end local v0    # "count":I
    .local v1, "count":I
    :goto_1
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "count":I
    .restart local v0    # "count":I
    const/16 v9, 0x14

    if-lt v1, v9, :cond_2

    move v7, v8

    .line 985
    .end local v0    # "count":I
    :goto_2
    return v7

    .line 944
    :cond_0
    aget-object v4, v10, v9

    .line 946
    .local v4, "prefix":Ljava/lang/String;
    invoke-virtual {v6, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 948
    const-string v9, "Drone"

    const-string v10, "Have Connect AP %s"

    new-array v11, v7, [Ljava/lang/Object;

    aput-object v6, v11, v8

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Lcom/easyview/ndt/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 944
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 956
    .end local v4    # "prefix":Ljava/lang/String;
    .restart local v0    # "count":I
    :cond_2
    const/16 v3, -0x64

    .line 957
    .local v3, "level":I
    iget-object v9, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->_wifiUtils:Lcom/easyview/common/WifiUtils;

    invoke-virtual {v9}, Lcom/easyview/common/WifiUtils;->Scan()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_3
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_4

    .line 973
    const/16 v9, -0x64

    if-le v3, v9, :cond_6

    .line 975
    const-string v9, "Drone"

    const-string v10, "Connect %s"

    new-array v11, v7, [Ljava/lang/Object;

    aput-object v6, v11, v8

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Lcom/easyview/ndt/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 976
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->_wifiUtils:Lcom/easyview/common/WifiUtils;

    invoke-virtual {v8, v6}, Lcom/easyview/common/WifiUtils;->Connect(Ljava/lang/String;)Z

    goto :goto_2

    .line 957
    :cond_4
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/ScanResult;

    .line 959
    .local v5, "result":Landroid/net/wifi/ScanResult;
    iget-object v11, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->wifi_ap_prefixs:[Ljava/lang/String;

    array-length v12, v11

    move v9, v8

    :goto_4
    if-ge v9, v12, :cond_3

    aget-object v4, v11, v9

    .line 961
    .restart local v4    # "prefix":Ljava/lang/String;
    iget-object v13, v5, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v13, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 963
    iget v9, v5, Landroid/net/wifi/ScanResult;->level:I

    if-le v9, v3, :cond_3

    .line 965
    iget-object v6, v5, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    .line 966
    iget v3, v5, Landroid/net/wifi/ScanResult;->level:I

    .line 967
    const-string v9, "Drone"

    const-string v11, "Find Device AP %s %d"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    iget-object v13, v5, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    aput-object v13, v12, v8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v12, v7

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Lcom/easyview/ndt/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 959
    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 980
    .end local v4    # "prefix":Ljava/lang/String;
    .end local v5    # "result":Landroid/net/wifi/ScanResult;
    :cond_6
    const-wide/16 v9, 0x3e8

    :try_start_0
    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v0

    .line 981
    .end local v0    # "count":I
    .restart local v1    # "count":I
    goto/16 :goto_1

    .end local v1    # "count":I
    .restart local v0    # "count":I
    :catch_0
    move-exception v2

    .line 982
    .local v2, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    move v1, v0

    .end local v0    # "count":I
    .restart local v1    # "count":I
    goto/16 :goto_1
.end method

.method private setButtonHeight(Landroid/widget/ImageButton;I)V
    .locals 1
    .param p1, "button"    # Landroid/widget/ImageButton;
    .param p2, "h"    # I

    .prologue
    .line 990
    invoke-virtual {p1}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 991
    .local v0, "linearParams":Landroid/widget/LinearLayout$LayoutParams;
    iput p2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 992
    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 993
    return-void
.end method

.method private setViewVisible()V
    .locals 2

    .prologue
    .line 356
    iget-boolean v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->bProgress:Z

    if-eqz v0, :cond_0

    .line 357
    const/4 v0, 0x0

    iput-boolean v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->bProgress:Z

    .line 358
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->progressView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 359
    const-string v0, "Drone"

    const-string v1, "device connect!!!"

    invoke-static {v0, v1}, Lcom/easyview/ndt/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->getCameraParams()V

    .line 362
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->_wifiUtils:Lcom/easyview/common/WifiUtils;

    invoke-virtual {v0}, Lcom/easyview/common/WifiUtils;->getCurrentSSID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->_dev_ssid:Ljava/lang/String;

    .line 368
    :cond_0
    return-void
.end method

.method private showMessage(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 2089
    new-instance v0, Lobject/p2pwificam/clientActivity/DronePlayActivity$25;

    invoke-direct {v0, p0, p1}, Lobject/p2pwificam/clientActivity/DronePlayActivity$25;-><init>(Lobject/p2pwificam/clientActivity/DronePlayActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2097
    return-void
.end method

.method private show_setup_view()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 1214
    iput-boolean v4, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->setup_is_show:Z

    .line 1215
    iget v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->nDateCode:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1217
    sget-object v0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->_camera:Lcom/easyview/ppcs/PPCSCamera;

    if-eqz v0, :cond_0

    sget-object v0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->_camera:Lcom/easyview/ppcs/PPCSCamera;

    iget-object v0, v0, Lcom/easyview/ppcs/PPCSCamera;->planeParams:Lcom/easyview/ppcs/PPCSCamera$PlaneParams;

    iget v0, v0, Lcom/easyview/ppcs/PPCSCamera$PlaneParams;->showDate:I

    iput v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->nDateCode:I

    .line 1219
    :cond_0
    iget v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->nDateCode:I

    iput v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->nCurDateCode:I

    .line 1220
    iget v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->nRotate:I

    iput v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->nCurRotate:I

    .line 1221
    iget v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->nBrightness:I

    iput v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->nCurBrightness:I

    .line 1222
    iget v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->nContrast:I

    iput v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->nCurContrast:I

    .line 1224
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->brightseekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->nBrightness:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1225
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->contrastseekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->nContrast:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1227
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->drone_return:Landroid/widget/ImageButton;

    new-instance v1, Lobject/p2pwificam/clientActivity/DronePlayActivity$15;

    invoke-direct {v1, p0}, Lobject/p2pwificam/clientActivity/DronePlayActivity$15;-><init>(Lobject/p2pwificam/clientActivity/DronePlayActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1319
    sget-object v0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->_camera:Lcom/easyview/ppcs/PPCSCamera;

    if-nez v0, :cond_1

    .line 1482
    :goto_0
    return-void

    .line 1320
    :cond_1
    iput-boolean v2, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->paramCanSave:Z

    .line 1321
    iget-boolean v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->_isConnected:Z

    if-eqz v0, :cond_4

    sget-object v0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->_camera:Lcom/easyview/ppcs/PPCSCamera;

    iget-boolean v0, v0, Lcom/easyview/ppcs/PPCSCamera;->planeParams_OK:Z

    if-eqz v0, :cond_4

    .line 1323
    iput-boolean v4, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->paramCanSave:Z

    .line 1324
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->WiFiName:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 1326
    sget-object v0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->_camera:Lcom/easyview/ppcs/PPCSCamera;

    iget-object v0, v0, Lcom/easyview/ppcs/PPCSCamera;->planeParams:Lcom/easyview/ppcs/PPCSCamera$PlaneParams;

    iget-object v0, v0, Lcom/easyview/ppcs/PPCSCamera$PlaneParams;->WiFiName:Lstruct/CString;

    invoke-virtual {v0}, Lstruct/CString;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->WiFiName:Ljava/lang/String;

    .line 1328
    :cond_2
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->WiFiName:Ljava/lang/String;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->_prefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1330
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->WiFiName:Ljava/lang/String;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->_prefix:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->WiFiName:Ljava/lang/String;

    .line 1332
    :cond_3
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->edit_wifi_name:Landroid/widget/EditText;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->WiFiName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1334
    sget-object v0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->_camera:Lcom/easyview/ppcs/PPCSCamera;

    invoke-virtual {v0}, Lcom/easyview/ppcs/PPCSCamera;->getSensorRes()I

    move-result v0

    iput v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->nSensorRes:I

    .line 1335
    iget v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->nSensorRes:I

    iput v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->nCurSensorRes:I

    .line 1336
    iget v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->nSensorRes:I

    if-lez v0, :cond_4

    .line 1338
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->sensor_layout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1341
    :cond_4
    iget v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->nRotate:I

    if-ne v0, v4, :cond_6

    .line 1343
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->drone_view_rotate_on:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1344
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->drone_view_rotate_off:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1350
    :goto_1
    iget v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->nDateCode:I

    if-ne v0, v4, :cond_7

    .line 1352
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->drone_date_code_on:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1353
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->drone_date_code_off:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1360
    :goto_2
    iget v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->nSensorRes:I

    const/16 v1, 0x1f

    if-ne v0, v1, :cond_8

    .line 1362
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->drone_sensor_on:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1363
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->drone_sensor_off:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1371
    :cond_5
    :goto_3
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->brightseekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->seekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 1372
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->contrastseekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->seekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 1374
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->drone_view_rotate_on:Landroid/widget/ImageButton;

    new-instance v1, Lobject/p2pwificam/clientActivity/DronePlayActivity$16;

    invoke-direct {v1, p0}, Lobject/p2pwificam/clientActivity/DronePlayActivity$16;-><init>(Lobject/p2pwificam/clientActivity/DronePlayActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1385
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->drone_view_rotate_off:Landroid/widget/ImageButton;

    new-instance v1, Lobject/p2pwificam/clientActivity/DronePlayActivity$17;

    invoke-direct {v1, p0}, Lobject/p2pwificam/clientActivity/DronePlayActivity$17;-><init>(Lobject/p2pwificam/clientActivity/DronePlayActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1396
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->drone_date_code_on:Landroid/widget/ImageButton;

    new-instance v1, Lobject/p2pwificam/clientActivity/DronePlayActivity$18;

    invoke-direct {v1, p0}, Lobject/p2pwificam/clientActivity/DronePlayActivity$18;-><init>(Lobject/p2pwificam/clientActivity/DronePlayActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1406
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->drone_date_code_off:Landroid/widget/ImageButton;

    new-instance v1, Lobject/p2pwificam/clientActivity/DronePlayActivity$19;

    invoke-direct {v1, p0}, Lobject/p2pwificam/clientActivity/DronePlayActivity$19;-><init>(Lobject/p2pwificam/clientActivity/DronePlayActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1415
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->drone_sensor_on:Landroid/widget/ImageButton;

    new-instance v1, Lobject/p2pwificam/clientActivity/DronePlayActivity$20;

    invoke-direct {v1, p0}, Lobject/p2pwificam/clientActivity/DronePlayActivity$20;-><init>(Lobject/p2pwificam/clientActivity/DronePlayActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1423
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->drone_sensor_off:Landroid/widget/ImageButton;

    new-instance v1, Lobject/p2pwificam/clientActivity/DronePlayActivity$21;

    invoke-direct {v1, p0}, Lobject/p2pwificam/clientActivity/DronePlayActivity$21;-><init>(Lobject/p2pwificam/clientActivity/DronePlayActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1431
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->drone_save:Landroid/widget/ImageButton;

    new-instance v1, Lobject/p2pwificam/clientActivity/DronePlayActivity$22;

    invoke-direct {v1, p0}, Lobject/p2pwificam/clientActivity/DronePlayActivity$22;-><init>(Lobject/p2pwificam/clientActivity/DronePlayActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1451
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->drone_reset:Landroid/widget/Button;

    new-instance v1, Lobject/p2pwificam/clientActivity/DronePlayActivity$23;

    invoke-direct {v1, p0}, Lobject/p2pwificam/clientActivity/DronePlayActivity$23;-><init>(Lobject/p2pwificam/clientActivity/DronePlayActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 1347
    :cond_6
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->drone_view_rotate_on:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1348
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->drone_view_rotate_off:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto/16 :goto_1

    .line 1356
    :cond_7
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->drone_date_code_on:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1357
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->drone_date_code_off:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto/16 :goto_2

    .line 1365
    :cond_8
    iget v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->nSensorRes:I

    const/16 v1, 0x1d

    if-ne v0, v1, :cond_5

    .line 1367
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->drone_sensor_off:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1368
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->drone_sensor_on:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto/16 :goto_3
.end method

.method private final startOrientationChangeListener()V
    .locals 1

    .prologue
    .line 2059
    new-instance v0, Lobject/p2pwificam/clientActivity/DronePlayActivity$24;

    invoke-direct {v0, p0, p0}, Lobject/p2pwificam/clientActivity/DronePlayActivity$24;-><init>(Lobject/p2pwificam/clientActivity/DronePlayActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 2085
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    .line 2086
    return-void
.end method

.method private startTimeout()V
    .locals 4

    .prologue
    .line 348
    iget-boolean v1, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->bTimeoutStarted:Z

    if-nez v1, :cond_0

    .line 349
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 350
    .local v0, "msgMessage":Landroid/os/Message;
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->timeoutHandle:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 351
    const/4 v1, 0x1

    iput-boolean v1, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->bTimeoutStarted:Z

    .line 353
    .end local v0    # "msgMessage":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private takePicture(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 445
    iget-boolean v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->isPictSave:Z

    if-nez v0, :cond_0

    .line 446
    const/4 v0, 0x1

    iput-boolean v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->isPictSave:Z

    .line 447
    new-instance v0, Lobject/p2pwificam/clientActivity/DronePlayActivity$11;

    invoke-direct {v0, p0, p1}, Lobject/p2pwificam/clientActivity/DronePlayActivity$11;-><init>(Lobject/p2pwificam/clientActivity/DronePlayActivity;Landroid/graphics/Bitmap;)V

    .line 451
    invoke-virtual {v0}, Lobject/p2pwificam/clientActivity/DronePlayActivity$11;->start()V

    .line 456
    :cond_0
    return-void
.end method

.method private updateRecState()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 372
    iget-boolean v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->is_record:Z

    if-nez v0, :cond_0

    .line 374
    const-string v0, "Drone"

    const-string v1, "updateRecState is not record"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    :goto_0
    return-void

    .line 377
    :cond_0
    iget-boolean v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->is_record_show:Z

    if-eqz v0, :cond_1

    .line 379
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->drone_record_show:Landroid/widget/ImageButton;

    const v1, 0x7f02005a

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 380
    iput-boolean v2, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->is_record_show:Z

    .line 393
    :goto_1
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->drone_record_text:Landroid/widget/TextView;

    sget-object v1, Lobject/p2pwificam/clientActivity/DronePlayActivity;->_camera:Lcom/easyview/ppcs/PPCSCamera;

    invoke-virtual {v1}, Lcom/easyview/ppcs/PPCSCamera;->getRecordText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 383
    :cond_1
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->drone_record_show:Landroid/widget/ImageButton;

    const v1, 0x7f02005c

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 384
    const/4 v0, 0x1

    iput-boolean v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->is_record_show:Z

    goto :goto_1
.end method


# virtual methods
.method public BSMsgNotifyData(Ljava/lang/String;II)V
    .locals 7
    .param p1, "did"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "param"    # I

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x2

    .line 1925
    const-string v0, "Drone"

    const-string v1, "Notify %s %d %d"

    new-array v2, v6, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1926
    if-nez p2, :cond_3

    .line 1928
    if-ne p3, v4, :cond_0

    .line 1930
    iput-boolean v5, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->_isConnected:Z

    .line 1931
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1933
    :cond_0
    const/4 v0, 0x4

    if-ne p3, v0, :cond_1

    .line 1935
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->handler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1937
    :cond_1
    const/4 v0, 0x6

    if-eq p3, v0, :cond_2

    .line 1938
    if-eq p3, v6, :cond_2

    .line 1939
    const/4 v0, 0x7

    if-ne p3, v0, :cond_3

    .line 1946
    :cond_2
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->handler:Landroid/os/Handler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1950
    :cond_3
    return-void
.end method

.method public BSSnapshotNotify(Ljava/lang/String;[BI)V
    .locals 0
    .param p1, "did"    # Ljava/lang/String;
    .param p2, "bImage"    # [B
    .param p3, "len"    # I

    .prologue
    .line 1956
    return-void
.end method

.method public callBaceVideoData([BIIII)V
    .locals 3
    .param p1, "videobuf"    # [B
    .param p2, "h264Data"    # I
    .param p3, "len"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    const/4 v2, 0x1

    .line 1826
    iget-boolean v1, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->bDisplayFinished:Z

    if-nez v1, :cond_0

    .line 1850
    :goto_0
    return-void

    .line 1832
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->bDisplayFinished:Z

    .line 1834
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->videodata:[B

    .line 1835
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 1836
    .local v0, "msg":Landroid/os/Message;
    if-ne p2, v2, :cond_2

    .line 1837
    iput p4, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->nVideoWidth:I

    .line 1838
    iput p5, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->nVideoHeight:I

    .line 1839
    iput-boolean v2, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->isH264:Z

    .line 1840
    iput v2, v0, Landroid/os/Message;->what:I

    .line 1849
    :cond_1
    :goto_1
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 1843
    :cond_2
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1844
    iget-boolean v1, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->isstart:Z

    if-eqz v1, :cond_1

    .line 1845
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->h264JpegVideoDate:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public callBackAudioData([BI)V
    .locals 0
    .param p1, "pcm"    # [B
    .param p2, "len"    # I

    .prologue
    .line 1886
    return-void
.end method

.method public callBackCameraParamNotify(Ljava/lang/String;IIIIII)V
    .locals 4
    .param p1, "did"    # Ljava/lang/String;
    .param p2, "resolution"    # I
    .param p3, "brightness"    # I
    .param p4, "contrast"    # I
    .param p5, "hue"    # I
    .param p6, "saturation"    # I
    .param p7, "flip"    # I

    .prologue
    const/4 v3, 0x1

    .line 1796
    const-string v0, "Drone"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CameraParamNotify...did:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " brightness: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1797
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

    .line 1798
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

    .line 1799
    const-string v2, " flip: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1796
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1800
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

    .line 1801
    iput-boolean v3, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->bInitCameraParam:Z

    .line 1802
    iput p3, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->nBrightness:I

    .line 1803
    iput p4, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->nContrast:I

    .line 1804
    const/4 v0, 0x0

    iput v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->nRotate:I

    .line 1805
    iput p7, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->nFlip:I

    .line 1806
    and-int/lit8 v0, p7, 0x1

    if-ne v0, v3, :cond_0

    iput v3, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->nRotate:I

    .line 1807
    :cond_0
    sget-object v0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->_camera:Lcom/easyview/ppcs/PPCSCamera;

    iget-boolean v0, v0, Lcom/easyview/ppcs/PPCSCamera;->planeParams_OK:Z

    if-nez v0, :cond_1

    .line 1808
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->handler:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1809
    :cond_1
    return-void
.end method

.method public callBackH264Data([BII)V
    .locals 0
    .param p1, "h264"    # [B
    .param p2, "type"    # I
    .param p3, "size"    # I

    .prologue
    .line 1895
    return-void
.end method

.method public callBackMessageNotify(Ljava/lang/String;II)V
    .locals 4
    .param p1, "did"    # Ljava/lang/String;
    .param p2, "msgType"    # I
    .param p3, "param"    # I

    .prologue
    .line 1858
    const-string v1, "tag123"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MessageNotify did: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " msgType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1859
    const-string v3, " param: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1858
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1860
    iget-boolean v1, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->bManualExit:Z

    if-eqz v1, :cond_1

    .line 1877
    :cond_0
    :goto_0
    return-void

    .line 1863
    :cond_1
    const/4 v1, 0x2

    if-ne p2, v1, :cond_2

    .line 1864
    iput p3, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->nStreamCodecType:I

    .line 1865
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 1866
    .local v0, "msgMessage":Landroid/os/Message;
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->msgStreamCodecHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 1870
    .end local v0    # "msgMessage":Landroid/os/Message;
    :cond_2
    if-nez p2, :cond_0

    .line 1874
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->strDID:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0
.end method

.method public callBackUserParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "did"    # Ljava/lang/String;
    .param p2, "user1"    # Ljava/lang/String;
    .param p3, "pwd1"    # Ljava/lang/String;
    .param p4, "user2"    # Ljava/lang/String;
    .param p5, "pwd2"    # Ljava/lang/String;
    .param p6, "user3"    # Ljava/lang/String;
    .param p7, "pwd3"    # Ljava/lang/String;

    .prologue
    .line 1963
    return-void
.end method

.method public callBackpenLockParams(Ljava/lang/String;[BI)V
    .locals 5
    .param p1, "did"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .param p3, "len"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x4

    .line 1899
    new-array v1, v3, [B

    .line 1900
    .local v1, "ret":[B
    invoke-static {p2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1901
    new-instance v0, Lobject/p2pipcam/bean/LockBean;

    invoke-direct {v0}, Lobject/p2pipcam/bean/LockBean;-><init>()V

    .line 1902
    .local v0, "lockbean":Lobject/p2pipcam/bean/LockBean;
    invoke-static {v1}, Lobject/p2pipcam/bean/LockBean;->byteArrayToInt_Little([B)I

    .line 1904
    invoke-static {p2, v3, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1905
    invoke-static {v1}, Lobject/p2pipcam/bean/LockBean;->byteArrayToInt_Little([B)I

    move-result v2

    .line 1908
    .local v2, "retcode":I
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->viewHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1909
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1674
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 1109
    invoke-super {p0, p1}, Lobject/p2pwificam/clientActivity/BaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1124
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ServiceCast"
        }
    .end annotation

    .prologue
    const/16 v7, 0x400

    const/16 v3, 0x80

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 549
    invoke-super {p0, p1}, Lobject/p2pwificam/clientActivity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 550
    iput-boolean v4, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->restart:Z

    .line 551
    const/4 v2, 0x0

    sput-object v2, Lobject/p2pwificam/clientActivity/DronePlayActivity;->_camera:Lcom/easyview/ppcs/PPCSCamera;

    .line 553
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v7, v7}, Landroid/view/Window;->setFlags(II)V

    .line 554
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 556
    invoke-virtual {p0, v5}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->requestWindowFeature(I)Z

    .line 558
    const v2, 0x7f030023

    invoke-virtual {p0, v2}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->setContentView(I)V

    .line 559
    invoke-static {}, Lobject/p2pipcam/utils/Pub;->isReverseLandscape()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 561
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->setRequestedOrientation(I)V

    .line 565
    :goto_0
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->findView()V

    .line 566
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->InitParams()V

    .line 567
    invoke-static {p0}, Lobject/p2pipcam/utils/DataBaseHelper;->getInstance(Landroid/content/Context;)Lobject/p2pipcam/utils/DataBaseHelper;

    move-result-object v2

    iput-object v2, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->helper:Lobject/p2pipcam/utils/DataBaseHelper;

    .line 568
    invoke-static {p0}, Lobject/p2pwificam/clientActivity/BridgeService;->setIpcamClientInterface(Lobject/p2pwificam/clientActivity/BridgeService$IpcamClientInterface;)V

    .line 569
    invoke-static {p0}, Lobject/p2pwificam/clientActivity/BridgeService;->setPlayInterface(Lobject/p2pwificam/clientActivity/BridgeService$PlayInterface;)V

    .line 570
    invoke-static {p0}, Lobject/p2pwificam/clientActivity/BridgeService;->setOpenLockInterface(Lobject/p2pwificam/clientActivity/BridgeService$OpenLockInterface;)V

    .line 571
    invoke-static {}, Lobject/p2pipcam/nativecaller/NativeCaller;->Init()V

    .line 572
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->playSurface:Landroid/view/SurfaceView;

    invoke-virtual {v2}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    iput-object v2, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->playHolder:Landroid/view/SurfaceHolder;

    .line 573
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->playHolder:Landroid/view/SurfaceHolder;

    const/4 v3, 0x4

    invoke-interface {v2, v3}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 574
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->playHolder:Landroid/view/SurfaceHolder;

    iget-object v3, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->videoCallback:Lobject/p2pwificam/clientActivity/DronePlayActivity$surfaceCallback;

    invoke-interface {v2, v3}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 576
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->playSurface:Landroid/view/SurfaceView;

    invoke-virtual {v2, p0}, Landroid/view/SurfaceView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 578
    new-instance v2, Lcom/easyview/common/WifiUtils;

    invoke-direct {v2, p0}, Lcom/easyview/common/WifiUtils;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->_wifiUtils:Lcom/easyview/common/WifiUtils;

    .line 582
    const v2, 0x7f040002

    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    iput-object v2, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->showAnim:Landroid/view/animation/Animation;

    .line 583
    const v2, 0x7f040007

    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    iput-object v2, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->dismissAnim:Landroid/view/animation/Animation;

    .line 593
    iput-boolean v5, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->bgetCameraParamsThreadRuning:Z

    .line 595
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 596
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->mBatInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 598
    new-instance v2, Landroid/media/SoundPool;

    const/16 v3, 0xa

    invoke-direct {v2, v3, v6, v4}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v2, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->_soundPool:Landroid/media/SoundPool;

    .line 600
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->_soundPool:Landroid/media/SoundPool;

    const v3, 0x7f050006

    invoke-virtual {v2, p0, v3, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    .line 601
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->_soundPool:Landroid/media/SoundPool;

    const v3, 0x7f050004

    invoke-virtual {v2, p0, v3, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    .line 603
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 604
    .local v1, "res":Landroid/content/res/Resources;
    const/high16 v2, 0x7f0a0000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->wifi_ap_prefixs:[Ljava/lang/String;

    .line 605
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->wifi_ap_prefixs:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->wifi_ap_prefixs:[Ljava/lang/String;

    aget-object v2, v2, v4

    iput-object v2, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->_prefix:Ljava/lang/String;

    .line 607
    :goto_1
    new-instance v2, Lobject/p2pwificam/clientActivity/DronePlayActivity$ThreadConnect;

    invoke-direct {v2, p0}, Lobject/p2pwificam/clientActivity/DronePlayActivity$ThreadConnect;-><init>(Lobject/p2pwificam/clientActivity/DronePlayActivity;)V

    invoke-virtual {v2}, Lobject/p2pwificam/clientActivity/DronePlayActivity$ThreadConnect;->start()V

    .line 608
    new-instance v2, Lobject/p2pwificam/clientActivity/DronePlayActivity$StatusThread;

    invoke-direct {v2, p0}, Lobject/p2pwificam/clientActivity/DronePlayActivity$StatusThread;-><init>(Lobject/p2pwificam/clientActivity/DronePlayActivity;)V

    invoke-virtual {v2}, Lobject/p2pwificam/clientActivity/DronePlayActivity$StatusThread;->start()V

    .line 609
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->startOrientationChangeListener()V

    .line 610
    iput v6, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->_control_idle_count:I

    .line 616
    return-void

    .line 563
    .end local v0    # "filter":Landroid/content/IntentFilter;
    .end local v1    # "res":Landroid/content/res/Resources;
    :cond_0
    invoke-virtual {p0, v4}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->setRequestedOrientation(I)V

    goto/16 :goto_0

    .line 606
    .restart local v0    # "filter":Landroid/content/IntentFilter;
    .restart local v1    # "res":Landroid/content/res/Resources;
    :cond_1
    const-string v2, "DRONEVIEW-"

    iput-object v2, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->_prefix:Ljava/lang/String;

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

    .line 1748
    invoke-static {}, Lobject/p2pipcam/nativecaller/NativeCaller;->CloseAvi()I

    .line 1749
    iput-boolean v5, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->isTakeVideo:Z

    .line 1750
    iput-boolean v5, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->isstart:Z

    .line 1751
    iput-boolean v5, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->isT:Z

    .line 1752
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->strDID:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1754
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->strDID:Ljava/lang/String;

    invoke-static {v3}, Lobject/p2pipcam/nativecaller/NativeCaller;->StopPPPPLivestream(Ljava/lang/String;)I

    .line 1756
    :cond_0
    iput-boolean v5, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->bgetCameraParamsThreadRuning:Z

    .line 1758
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->myRender:Lobject/p2pwificam/clientActivity/MyRender;

    if-eqz v3, :cond_1

    .line 1759
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->myRender:Lobject/p2pwificam/clientActivity/MyRender;

    invoke-virtual {v3}, Lobject/p2pwificam/clientActivity/MyRender;->destroyShaders()J

    .line 1761
    :cond_1
    const-string v3, "isFirst"

    invoke-virtual {p0, v3, v5}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->preference:Landroid/content/SharedPreferences;

    .line 1762
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->preference:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1763
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "activity"

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1764
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1766
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->mBatInfoReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v3, :cond_2

    .line 1768
    :try_start_0
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->mBatInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1773
    :cond_2
    :goto_0
    const-string v3, "tag"

    const-string v4, "DronePlayActivity onDestroy"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1775
    invoke-static {}, Lobject/p2pipcam/nativecaller/NativeCaller;->Free()V

    .line 1776
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1777
    .local v2, "intent":Landroid/content/Intent;
    const-class v3, Lobject/p2pwificam/clientActivity/BridgeService;

    invoke-virtual {v2, p0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1778
    invoke-virtual {p0, v2}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->stopService(Landroid/content/Intent;)Z

    .line 1779
    sput v5, Lobject/p2pipcam/system/SystemValue;->checkSDStatu:I

    .line 1780
    iget-boolean v3, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->restart:Z

    if-eqz v3, :cond_3

    .line 1782
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lobject/p2pwificam/clientActivity/DronePlayActivity;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1783
    .local v1, "in":Landroid/content/Intent;
    const/high16 v3, 0x4000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1784
    invoke-virtual {p0, v1}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->startActivity(Landroid/content/Intent;)V

    .line 1786
    .end local v1    # "in":Landroid/content/Intent;
    :cond_3
    invoke-super {p0}, Lobject/p2pwificam/clientActivity/BaseActivity;->onDestroy()V

    .line 1787
    return-void

    .line 1769
    .end local v2    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 1729
    const/4 v0, 0x0

    return v0
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 1734
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v4, 0x0

    .line 304
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->mPopupWindowProgress:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->mPopupWindowProgress:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->mPopupWindowProgress:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 308
    :cond_0
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->resolutionPopWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->resolutionPopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 309
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->resolutionPopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 311
    :cond_1
    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    .line 312
    iput-boolean v4, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->_connectRun:Z

    .line 314
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->lastBackKeyTimeStamp:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7d0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 317
    const v0, 0x7f0601dc

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 316
    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 317
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 318
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->lastBackKeyTimeStamp:J

    .line 319
    const/4 v0, 0x1

    .line 326
    :goto_0
    return v0

    .line 321
    :cond_2
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->finish()V

    .line 326
    :cond_3
    invoke-super {p0, p1, p2}, Lobject/p2pwificam/clientActivity/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onRestart()V
    .locals 3

    .prologue
    .line 620
    iget-boolean v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->_isConnected:Z

    if-eqz v0, :cond_0

    .line 622
    const-string v0, "restart"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "strDID  === "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->strDID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    sget-object v0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->_camera:Lcom/easyview/ppcs/PPCSCamera;

    invoke-virtual {v0}, Lcom/easyview/ppcs/PPCSCamera;->isOnline()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 625
    sget-object v0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->_camera:Lcom/easyview/ppcs/PPCSCamera;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/easyview/ppcs/PPCSCamera;->StartVideo(Lcom/easyview/basecamera/ICamera$IDataListener;)V

    .line 628
    :cond_0
    invoke-super {p0}, Lobject/p2pwificam/clientActivity/BaseActivity;->onRestart()V

    .line 629
    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 1739
    const/4 v0, 0x0

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x5

    const/4 v6, 0x0

    .line 1967
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    packed-switch v2, :pswitch_data_0

    .line 2015
    :cond_0
    :goto_0
    return v6

    .line 1969
    :pswitch_0
    iget-boolean v2, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->setup_is_show:Z

    if-nez v2, :cond_0

    .line 1970
    iget-boolean v2, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->is_record:Z

    if-eqz v2, :cond_1

    .line 1972
    iget v2, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->record_state:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    .line 1974
    const-string v2, "Drone"

    const-string v3, "onTouch is record"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1978
    :cond_1
    iget-boolean v2, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->is_record:Z

    if-eqz v2, :cond_3

    .line 1980
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1981
    .local v0, "now":J
    iget-wide v2, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->lastRecordTime:J

    cmp-long v2, v2, v0

    if-lez v2, :cond_2

    const-wide/16 v2, 0xfa0

    sub-long v2, v0, v2

    iput-wide v2, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->lastRecordTime:J

    .line 1982
    :cond_2
    iget-wide v2, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->lastRecordTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0xbb8

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 1984
    iput-wide v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->lastRecordTime:J

    .line 1985
    sget-object v2, Lobject/p2pwificam/clientActivity/DronePlayActivity;->_camera:Lcom/easyview/ppcs/PPCSCamera;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/easyview/ppcs/PPCSCamera;->stopRecord(Lcom/easyview/basecamera/ICamera$IRespondListener;)V

    .line 1986
    iput-boolean v6, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->is_recording:Z

    .line 1987
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->record_show_layout:Landroid/view/View;

    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1988
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->control_layout:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1989
    iput v7, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->_control_idle_count:I

    goto :goto_0

    .line 1993
    .end local v0    # "now":J
    :cond_3
    iget-boolean v2, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->control_show:Z

    if-eqz v2, :cond_5

    .line 1995
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->dismissAnim:Landroid/view/animation/Animation;

    if-eqz v2, :cond_4

    .line 1997
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->control_layout:Landroid/view/View;

    iget-object v3, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->dismissAnim:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1998
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->control_layout:Landroid/view/View;

    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 2000
    :cond_4
    iput-boolean v6, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->control_show:Z

    .line 2001
    iput v6, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->_control_idle_count:I

    goto :goto_0

    .line 2004
    :cond_5
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->showAnim:Landroid/view/animation/Animation;

    if-eqz v2, :cond_6

    .line 2006
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->control_layout:Landroid/view/View;

    iget-object v3, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->showAnim:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2007
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->control_layout:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2009
    :cond_6
    const/4 v2, 0x1

    iput-boolean v2, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->control_show:Z

    .line 2010
    iput v7, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->_control_idle_count:I

    goto :goto_0

    .line 1967
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public quit()V
    .locals 2

    .prologue
    .line 1129
    const-string v0, "ViewRecord"

    const-string v1, "555555555555555555555555555555555555555555555"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1130
    const/4 v0, 0x1

    iput-boolean v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->bManualExit:Z

    .line 1131
    iget-boolean v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->bProgress:Z

    if-nez v0, :cond_0

    .line 1132
    iget-boolean v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity;->isTakeVideo:Z

    if-eqz v0, :cond_1

    .line 1133
    const v0, 0x7f0601a6

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->showToast(I)V

    .line 1152
    :cond_0
    :goto_0
    return-void

    .line 1147
    :cond_1
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->finish()V

    .line 1148
    const v0, 0x7f040006

    .line 1149
    const/high16 v1, 0x7f040000

    .line 1148
    invoke-virtual {p0, v0, v1}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->overridePendingTransition(II)V

    goto :goto_0
.end method

.method public showSureDialogPlay(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 285
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 288
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0601b8

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 289
    const v1, 0x7f06000c

    .line 290
    new-instance v2, Lobject/p2pwificam/clientActivity/DronePlayActivity$10;

    invoke-direct {v2, p0}, Lobject/p2pwificam/clientActivity/DronePlayActivity$10;-><init>(Lobject/p2pwificam/clientActivity/DronePlayActivity;)V

    .line 289
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 298
    const v1, 0x7f06000d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 299
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 300
    return-void
.end method
