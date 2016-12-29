.class public Lobject/p2pwificam/clientActivity/CallVideoActivity;
.super Lobject/p2pwificam/clientActivity/BaseActivity;
.source "CallVideoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/GestureDetector$OnDoubleTapListener;
.implements Lobject/p2pwificam/clientActivity/BridgeService$PlayInterface;
.implements Lobject/p2pwificam/clientActivity/BridgeService$OpenLockInterface;
.implements Lobject/p2pwificam/clientActivity/BridgeService$DateTimeInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lobject/p2pwificam/clientActivity/CallVideoActivity$surfaceCallback;
    }
.end annotation


# static fields
.field private static final AUDIO_BUFFER_START_CODE:I = 0xff00ff

.field private static final HANGUP_MANUAL:I = 0x2

.field private static final HANGUP_TIMEOUT:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "CallVideoActivity"


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

.field private _camera:Lcom/easyview/camera/EVBaseCamera;

.field private _noti_id:I

.field private _ppcs_init:Z

.field private bDisplayFinished:Z

.field private bInitCameraParam:Z

.field private bManualExit:Z

.field private bProgress:Z

.field private bTimeoutStarted:Z

.field private bgetCameraParamsThreadRuning:Z

.field private button_back:Landroid/widget/ImageButton;

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

.field private isPictSave:Z

.field private isT:Z

.field private isTakeVideo:Z

.field private isTypeI:I

.field private isstart:Z

.field lastTimeStamp:J

.field private final mBatInfoReceiver:Landroid/content/BroadcastReceiver;

.field private mBmp:Landroid/graphics/Bitmap;

.field private mHandler:Landroid/os/Handler;

.field private mHandlerFramerate:Landroid/os/Handler;

.field private mHandlerVideo:Landroid/os/Handler;

.field private mPopupWindowProgress:Landroid/widget/PopupWindow;

.field private mSliderHandler:Landroid/os/Handler;

.field private msgHandler:Landroid/os/Handler;

.field private msgStreamCodecHandler:Landroid/os/Handler;

.field private myGlSurfaceView:Landroid/opengl/GLSurfaceView;

.field private myRender:Lobject/p2pwificam/clientActivity/MyRender;

.field private nP2PMode:I

.field private nPlayCount:I

.field private nStreamCodecType:I

.field private nTimeoutRemain:I

.field private nVideoHeight:I

.field private nVideoWidth:I

.field private playHolder:Landroid/view/SurfaceHolder;

.field private playMode:I

.field private playSurface:Landroid/view/SurfaceView;

.field private playType:I

.field private preference:Landroid/content/SharedPreferences;

.field private progressView:Landroid/view/View;

.field private ptzPlatform:Landroid/widget/LinearLayout;

.field private resolutionPopWindow:Landroid/widget/PopupWindow;

.field private runnableHangup:Ljava/lang/Runnable;

.field private sliderLayout:Lobject/p2pwificam/clientActivity/SliderRelativeLayout;

.field private strDID:Ljava/lang/String;

.field private strName:Ljava/lang/String;

.field private streamType:I

.field private textViewTitle:Landroid/widget/TextView;

.field private timeoutHandle:Landroid/os/Handler;

.field private videoCallback:Lobject/p2pwificam/clientActivity/CallVideoActivity$surfaceCallback;

.field private videodata:[B

.field private vidoeView:Landroid/widget/ImageView;

.field private viewHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 72
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/BaseActivity;-><init>()V

    .line 80
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->playSurface:Landroid/view/SurfaceView;

    .line 81
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->playHolder:Landroid/view/SurfaceHolder;

    .line 82
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->videodata:[B

    .line 83
    iput v2, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->nVideoWidth:I

    .line 84
    iput v2, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->nVideoHeight:I

    .line 86
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->progressView:Landroid/view/View;

    .line 87
    iput-boolean v3, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->bProgress:Z

    .line 89
    iput-boolean v2, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->bInitCameraParam:Z

    .line 90
    iput-boolean v2, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->bManualExit:Z

    .line 92
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->strName:Ljava/lang/String;

    .line 93
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->strDID:Ljava/lang/String;

    .line 94
    const/4 v0, 0x3

    iput v0, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->streamType:I

    .line 96
    iput-boolean v3, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->bDisplayFinished:Z

    .line 97
    new-instance v0, Lobject/p2pwificam/clientActivity/CallVideoActivity$surfaceCallback;

    invoke-direct {v0, p0, v1}, Lobject/p2pwificam/clientActivity/CallVideoActivity$surfaceCallback;-><init>(Lobject/p2pwificam/clientActivity/CallVideoActivity;Lobject/p2pwificam/clientActivity/CallVideoActivity$surfaceCallback;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->videoCallback:Lobject/p2pwificam/clientActivity/CallVideoActivity$surfaceCallback;

    .line 99
    iput v2, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->nPlayCount:I

    .line 101
    iput v3, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->nP2PMode:I

    .line 103
    iput v2, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->playType:I

    .line 104
    iput v2, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->playMode:I

    .line 105
    iput-boolean v2, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->bTimeoutStarted:Z

    .line 106
    const/16 v0, 0xb4

    iput v0, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->nTimeoutRemain:I

    .line 108
    iput-boolean v2, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->isTakeVideo:Z

    .line 110
    iput v3, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->BRIGHT:I

    .line 111
    const/4 v0, 0x2

    iput v0, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->CONTRAST:I

    .line 114
    iput-boolean v2, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->isExit:Z

    .line 118
    iput-boolean v2, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->isH264:Z

    .line 121
    iput v2, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->isTypeI:I

    .line 122
    iput-boolean v2, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->isT:Z

    .line 123
    iput-boolean v2, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->isstart:Z

    .line 124
    iput-boolean v2, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->isPictSave:Z

    .line 126
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->imgViewRecord:Landroid/widget/ImageView;

    .line 127
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->imgViewSnap:Landroid/widget/ImageView;

    .line 128
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->imgViewOpenLock:Landroid/widget/ImageView;

    .line 130
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->h264JpegVideoDate:Ljava/util/LinkedList;

    .line 131
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->IorP:Ljava/util/LinkedList;

    .line 132
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->button_back:Landroid/widget/ImageButton;

    .line 133
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->textViewTitle:Landroid/widget/TextView;

    .line 135
    iput-boolean v2, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->bgetCameraParamsThreadRuning:Z

    .line 137
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->sliderLayout:Lobject/p2pwificam/clientActivity/SliderRelativeLayout;

    .line 139
    iput-boolean v2, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->_ppcs_init:Z

    .line 140
    iput v2, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->_noti_id:I

    .line 269
    new-instance v0, Lobject/p2pwificam/clientActivity/CallVideoActivity$1;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/CallVideoActivity$1;-><init>(Lobject/p2pwificam/clientActivity/CallVideoActivity;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->timeoutHandle:Landroid/os/Handler;

    .line 305
    new-instance v0, Lobject/p2pwificam/clientActivity/CallVideoActivity$2;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/CallVideoActivity$2;-><init>(Lobject/p2pwificam/clientActivity/CallVideoActivity;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->mHandlerFramerate:Landroid/os/Handler;

    .line 319
    new-instance v0, Lobject/p2pwificam/clientActivity/CallVideoActivity$3;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/CallVideoActivity$3;-><init>(Lobject/p2pwificam/clientActivity/CallVideoActivity;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->handler:Landroid/os/Handler;

    .line 332
    new-instance v0, Lobject/p2pwificam/clientActivity/CallVideoActivity$4;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/CallVideoActivity$4;-><init>(Lobject/p2pwificam/clientActivity/CallVideoActivity;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->mHandlerVideo:Landroid/os/Handler;

    .line 374
    new-instance v0, Lobject/p2pwificam/clientActivity/CallVideoActivity$5;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/CallVideoActivity$5;-><init>(Lobject/p2pwificam/clientActivity/CallVideoActivity;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->mHandler:Landroid/os/Handler;

    .line 507
    new-instance v0, Lobject/p2pwificam/clientActivity/CallVideoActivity$6;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/CallVideoActivity$6;-><init>(Lobject/p2pwificam/clientActivity/CallVideoActivity;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->msgHandler:Landroid/os/Handler;

    .line 519
    new-instance v0, Lobject/p2pwificam/clientActivity/CallVideoActivity$7;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/CallVideoActivity$7;-><init>(Lobject/p2pwificam/clientActivity/CallVideoActivity;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->msgStreamCodecHandler:Landroid/os/Handler;

    .line 714
    new-instance v0, Lobject/p2pwificam/clientActivity/CallVideoActivity$8;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/CallVideoActivity$8;-><init>(Lobject/p2pwificam/clientActivity/CallVideoActivity;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->viewHandler:Landroid/os/Handler;

    .line 778
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->myRender:Lobject/p2pwificam/clientActivity/MyRender;

    .line 779
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->myGlSurfaceView:Landroid/opengl/GLSurfaceView;

    .line 863
    new-instance v0, Lobject/p2pwificam/clientActivity/CallVideoActivity$9;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/CallVideoActivity$9;-><init>(Lobject/p2pwificam/clientActivity/CallVideoActivity;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->mSliderHandler:Landroid/os/Handler;

    .line 932
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->lastTimeStamp:J

    .line 938
    iput v2, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->VideoFPS:I

    .line 940
    iput v2, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->Video_fps:I

    .line 941
    iput v2, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->Video_bps:I

    .line 1040
    new-instance v0, Lobject/p2pwificam/clientActivity/CallVideoActivity$10;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/CallVideoActivity$10;-><init>(Lobject/p2pwificam/clientActivity/CallVideoActivity;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->runnableHangup:Ljava/lang/Runnable;

    .line 1049
    new-instance v0, Lobject/p2pwificam/clientActivity/CallVideoActivity$11;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/CallVideoActivity$11;-><init>(Lobject/p2pwificam/clientActivity/CallVideoActivity;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->mBatInfoReceiver:Landroid/content/BroadcastReceiver;

    .line 72
    return-void
.end method

.method private Hangup(I)V
    .locals 10
    .param p1, "type"    # I

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 837
    const-string v4, "isFirst"

    invoke-virtual {p0, v4, v8}, Lobject/p2pwificam/clientActivity/CallVideoActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    iput-object v4, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->preference:Landroid/content/SharedPreferences;

    .line 838
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->preference:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 839
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v4, "activity"

    invoke-interface {v0, v4, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 840
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 841
    sget-object v4, Lobject/p2pwificam/clientActivity/BridgeService;->lockFlag:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 842
    sget-object v4, Lobject/p2pwificam/clientActivity/BridgeService;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    if-eqz v4, :cond_0

    .line 843
    sget-object v4, Lobject/p2pwificam/clientActivity/BridgeService;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    invoke-virtual {v4}, Landroid/app/KeyguardManager$KeyguardLock;->reenableKeyguard()V

    .line 844
    sput-object v9, Lobject/p2pwificam/clientActivity/BridgeService;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    .line 848
    :cond_0
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->_camera:Lcom/easyview/camera/EVBaseCamera;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->_camera:Lcom/easyview/camera/EVBaseCamera;

    invoke-virtual {v4}, Lcom/easyview/camera/EVBaseCamera;->StopVideo()V

    .line 849
    :cond_1
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/CallVideoActivity;->stopService()V

    .line 850
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->runnableHangup:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 851
    const-string v4, "notification"

    invoke-virtual {p0, v4}, Lobject/p2pwificam/clientActivity/CallVideoActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 852
    .local v1, "nm":Landroid/app/NotificationManager;
    iget v4, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->_noti_id:I

    invoke-virtual {v1, v4}, Landroid/app/NotificationManager;->cancel(I)V

    .line 853
    const/4 v4, 0x1

    if-ne p1, v4, :cond_2

    .line 855
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 856
    .local v2, "now":J
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/CallVideoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->_camera:Lcom/easyview/camera/EVBaseCamera;

    iget v6, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->playMode:I

    const v7, 0x8000

    add-int/2addr v6, v7

    long-to-int v7, v2

    invoke-static {v4, v5, v6, v8, v7}, Lobject/p2pipcam/utils/Pub;->showNotification(Landroid/content/Context;Lcom/easyview/basecamera/BaseCamera;III)I

    move-result v4

    iput v4, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->_noti_id:I

    .line 858
    .end local v2    # "now":J
    :cond_2
    const-string v4, "CallVideoActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "CallVideo Hangup:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/easyview/ndt/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 859
    iget-boolean v4, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->_ppcs_init:Z

    if-eqz v4, :cond_3

    invoke-static {}, Lcom/easyview/ppcs/PPCSCamera;->Free()V

    .line 860
    :cond_3
    invoke-static {v9}, Lobject/p2pwificam/clientActivity/BridgeService;->setPlayInterface(Lobject/p2pwificam/clientActivity/BridgeService$PlayInterface;)V

    .line 861
    invoke-static {v9}, Lobject/p2pwificam/clientActivity/BridgeService;->setOpenLockInterface(Lobject/p2pwificam/clientActivity/BridgeService$OpenLockInterface;)V

    .line 862
    return-void
.end method

.method private InitParams()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ServiceCast"
        }
    .end annotation

    .prologue
    .line 633
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 634
    .local v0, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/CallVideoActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 635
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->textViewTitle:Landroid/widget/TextView;

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->strName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 636
    return-void
.end method

.method static synthetic access$0(Lobject/p2pwificam/clientActivity/CallVideoActivity;)I
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->nTimeoutRemain:I

    return v0
.end method

.method static synthetic access$1(Lobject/p2pwificam/clientActivity/CallVideoActivity;I)V
    .locals 0

    .prologue
    .line 106
    iput p1, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->nTimeoutRemain:I

    return-void
.end method

.method static synthetic access$10(Lobject/p2pwificam/clientActivity/CallVideoActivity;)I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->nVideoWidth:I

    return v0
.end method

.method static synthetic access$11(Lobject/p2pwificam/clientActivity/CallVideoActivity;)Landroid/opengl/GLSurfaceView;
    .locals 1

    .prologue
    .line 779
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->myGlSurfaceView:Landroid/opengl/GLSurfaceView;

    return-object v0
.end method

.method static synthetic access$12(Lobject/p2pwificam/clientActivity/CallVideoActivity;)Lobject/p2pwificam/clientActivity/MyRender;
    .locals 1

    .prologue
    .line 778
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->myRender:Lobject/p2pwificam/clientActivity/MyRender;

    return-object v0
.end method

.method static synthetic access$13(Lobject/p2pwificam/clientActivity/CallVideoActivity;)[B
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->videodata:[B

    return-object v0
.end method

.method static synthetic access$14(Lobject/p2pwificam/clientActivity/CallVideoActivity;Z)V
    .locals 0

    .prologue
    .line 96
    iput-boolean p1, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->bDisplayFinished:Z

    return-void
.end method

.method static synthetic access$15(Lobject/p2pwificam/clientActivity/CallVideoActivity;)I
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->nPlayCount:I

    return v0
.end method

.method static synthetic access$16(Lobject/p2pwificam/clientActivity/CallVideoActivity;I)V
    .locals 0

    .prologue
    .line 99
    iput p1, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->nPlayCount:I

    return-void
.end method

.method static synthetic access$17(Lobject/p2pwificam/clientActivity/CallVideoActivity;)V
    .locals 0

    .prologue
    .line 828
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/CallVideoActivity;->stopService()V

    return-void
.end method

.method static synthetic access$18(Lobject/p2pwificam/clientActivity/CallVideoActivity;)I
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->nStreamCodecType:I

    return v0
.end method

.method static synthetic access$19(Lobject/p2pwificam/clientActivity/CallVideoActivity;I)V
    .locals 0

    .prologue
    .line 835
    invoke-direct {p0, p1}, Lobject/p2pwificam/clientActivity/CallVideoActivity;->Hangup(I)V

    return-void
.end method

.method static synthetic access$2(Lobject/p2pwificam/clientActivity/CallVideoActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->timeoutHandle:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$20(Lobject/p2pwificam/clientActivity/CallVideoActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->imgViewSnap:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$21(Lobject/p2pwificam/clientActivity/CallVideoActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->imgViewRecord:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$22(Lobject/p2pwificam/clientActivity/CallVideoActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->imgViewOpenLock:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$23(Lobject/p2pwificam/clientActivity/CallVideoActivity;)Z
    .locals 1

    .prologue
    .line 139
    iget-boolean v0, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->_ppcs_init:Z

    return v0
.end method

.method static synthetic access$24(Lobject/p2pwificam/clientActivity/CallVideoActivity;)Lcom/easyview/camera/EVBaseCamera;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->_camera:Lcom/easyview/camera/EVBaseCamera;

    return-object v0
.end method

.method static synthetic access$25(Lobject/p2pwificam/clientActivity/CallVideoActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->strDID:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$26(Lobject/p2pwificam/clientActivity/CallVideoActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$27(Lobject/p2pwificam/clientActivity/CallVideoActivity;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 1040
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->runnableHangup:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$28(Lobject/p2pwificam/clientActivity/CallVideoActivity;)I
    .locals 1

    .prologue
    .line 140
    iget v0, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->_noti_id:I

    return v0
.end method

.method static synthetic access$29(Lobject/p2pwificam/clientActivity/CallVideoActivity;)Landroid/view/SurfaceHolder;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->playHolder:Landroid/view/SurfaceHolder;

    return-object v0
.end method

.method static synthetic access$3(Lobject/p2pwificam/clientActivity/CallVideoActivity;)Z
    .locals 1

    .prologue
    .line 114
    iget-boolean v0, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->isExit:Z

    return v0
.end method

.method static synthetic access$30(Lobject/p2pwificam/clientActivity/CallVideoActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$31(Lobject/p2pwificam/clientActivity/CallVideoActivity;)Z
    .locals 1

    .prologue
    .line 118
    iget-boolean v0, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->isH264:Z

    return v0
.end method

.method static synthetic access$32(Lobject/p2pwificam/clientActivity/CallVideoActivity;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 373
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->mBmp:Landroid/graphics/Bitmap;

    return-void
.end method

.method static synthetic access$33(Lobject/p2pwificam/clientActivity/CallVideoActivity;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->mBmp:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$34(Lobject/p2pwificam/clientActivity/CallVideoActivity;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 208
    invoke-direct {p0, p1, p2}, Lobject/p2pwificam/clientActivity/CallVideoActivity;->saveBmpToSDcard(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$35(Lobject/p2pwificam/clientActivity/CallVideoActivity;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 436
    invoke-direct {p0, p1}, Lobject/p2pwificam/clientActivity/CallVideoActivity;->savePicToSDcard(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$4(Lobject/p2pwificam/clientActivity/CallVideoActivity;)V
    .locals 0

    .prologue
    .line 499
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/CallVideoActivity;->getCameraParams()V

    return-void
.end method

.method static synthetic access$5(Lobject/p2pwificam/clientActivity/CallVideoActivity;I)V
    .locals 0

    .prologue
    .line 94
    iput p1, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->streamType:I

    return-void
.end method

.method static synthetic access$6(Lobject/p2pwificam/clientActivity/CallVideoActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->strDID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7(Lobject/p2pwificam/clientActivity/CallVideoActivity;)I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->streamType:I

    return v0
.end method

.method static synthetic access$8(Lobject/p2pwificam/clientActivity/CallVideoActivity;)V
    .locals 0

    .prologue
    .line 296
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/CallVideoActivity;->setViewVisible()V

    return-void
.end method

.method static synthetic access$9(Lobject/p2pwificam/clientActivity/CallVideoActivity;)I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->nVideoHeight:I

    return v0
.end method

.method private dismissBrightAndContrastProgress()V
    .locals 1

    .prologue
    .line 757
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->mPopupWindowProgress:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->mPopupWindowProgress:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 758
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->mPopupWindowProgress:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 759
    const/4 v0, 0x0

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->mPopupWindowProgress:Landroid/widget/PopupWindow;

    .line 761
    :cond_0
    return-void
.end method

.method private findView()V
    .locals 3

    .prologue
    .line 640
    const v1, 0x7f080080

    invoke-virtual {p0, v1}, Lobject/p2pwificam/clientActivity/CallVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->textViewTitle:Landroid/widget/TextView;

    .line 641
    const v1, 0x7f08007d

    invoke-virtual {p0, v1}, Lobject/p2pwificam/clientActivity/CallVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->progressView:Landroid/view/View;

    .line 643
    const v1, 0x7f08007b

    invoke-virtual {p0, v1}, Lobject/p2pwificam/clientActivity/CallVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/SurfaceView;

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->playSurface:Landroid/view/SurfaceView;

    .line 644
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->playSurface:Landroid/view/SurfaceView;

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/view/SurfaceView;->setBackgroundColor(I)V

    .line 645
    const v1, 0x7f080197

    invoke-virtual {p0, v1}, Lobject/p2pwificam/clientActivity/CallVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->button_back:Landroid/widget/ImageButton;

    .line 646
    const v1, 0x7f08007c

    invoke-virtual {p0, v1}, Lobject/p2pwificam/clientActivity/CallVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/opengl/GLSurfaceView;

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->myGlSurfaceView:Landroid/opengl/GLSurfaceView;

    .line 647
    new-instance v1, Lobject/p2pwificam/clientActivity/MyRender;

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->myGlSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-direct {v1, v2}, Lobject/p2pwificam/clientActivity/MyRender;-><init>(Landroid/opengl/GLSurfaceView;)V

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->myRender:Lobject/p2pwificam/clientActivity/MyRender;

    .line 648
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->myGlSurfaceView:Landroid/opengl/GLSurfaceView;

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->myRender:Lobject/p2pwificam/clientActivity/MyRender;

    invoke-virtual {v1, v2}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 649
    const v1, 0x7f08007e

    invoke-virtual {p0, v1}, Lobject/p2pwificam/clientActivity/CallVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 650
    .local v0, "image":Landroid/widget/ImageView;
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->_camera:Lcom/easyview/camera/EVBaseCamera;

    invoke-virtual {v1}, Lcom/easyview/camera/EVBaseCamera;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 651
    const v1, 0x7f080082

    invoke-virtual {p0, v1}, Lobject/p2pwificam/clientActivity/CallVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lobject/p2pwificam/clientActivity/SliderRelativeLayout;

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->sliderLayout:Lobject/p2pwificam/clientActivity/SliderRelativeLayout;

    .line 652
    return-void
.end method

.method private getCameraParams()V
    .locals 3

    .prologue
    .line 501
    const-string v0, "CallVideoActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getCameraParams strDID  === "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->strDID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->strDID:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lobject/p2pipcam/nativecaller/NativeCaller;->PPPPGetSystemParams(Ljava/lang/String;I)I

    .line 505
    return-void
.end method

.method private getDataFromOther()V
    .locals 13

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x1

    const/4 v12, 0x0

    .line 590
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/CallVideoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 591
    .local v2, "in":Landroid/content/Intent;
    if-eqz v2, :cond_3

    .line 592
    const-string v8, "stream_type"

    invoke-virtual {v2, v8, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    iput v8, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->streamType:I

    .line 593
    const-string v8, "cameraid"

    invoke-virtual {v2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->strDID:Ljava/lang/String;

    .line 594
    invoke-static {}, Lcom/easyview/camera/CameraList;->GetInstance()Lcom/easyview/camera/CameraList;

    move-result-object v8

    iget-object v9, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->strDID:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/easyview/camera/CameraList;->getCamera(Ljava/lang/String;)Lcom/easyview/basecamera/BaseCamera;

    move-result-object v8

    check-cast v8, Lcom/easyview/camera/EVBaseCamera;

    iput-object v8, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->_camera:Lcom/easyview/camera/EVBaseCamera;

    .line 595
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->_camera:Lcom/easyview/camera/EVBaseCamera;

    if-nez v8, :cond_2

    .line 597
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->helper:Lobject/p2pipcam/utils/DataBaseHelper;

    iget-object v9, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->strDID:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lobject/p2pipcam/utils/DataBaseHelper;->fetchCamera(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 598
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 599
    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 600
    .local v3, "name":Ljava/lang/String;
    const/4 v8, 0x2

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 601
    .local v1, "did":Ljava/lang/String;
    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 602
    .local v7, "user":Ljava/lang/String;
    const/4 v8, 0x4

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 603
    .local v6, "pwd":Ljava/lang/String;
    invoke-static {p0}, Lobject/p2pipcam/utils/Pub;->isBell(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 605
    invoke-static {p0}, Lobject/p2pipcam/utils/Pub;->getCameraUser(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 607
    :cond_0
    invoke-static {}, Lcom/easyview/camera/CameraList;->GetInstance()Lcom/easyview/camera/CameraList;

    move-result-object v8

    invoke-virtual {v8, v3, v1, v7, v6}, Lcom/easyview/camera/CameraList;->Add(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 609
    .end local v1    # "did":Ljava/lang/String;
    .end local v3    # "name":Ljava/lang/String;
    .end local v6    # "pwd":Ljava/lang/String;
    .end local v7    # "user":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/easyview/camera/CameraList;->GetInstance()Lcom/easyview/camera/CameraList;

    move-result-object v8

    iget-object v9, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->strDID:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/easyview/camera/CameraList;->getCamera(Ljava/lang/String;)Lcom/easyview/basecamera/BaseCamera;

    move-result-object v8

    check-cast v8, Lcom/easyview/camera/EVBaseCamera;

    iput-object v8, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->_camera:Lcom/easyview/camera/EVBaseCamera;

    .line 611
    .end local v0    # "cursor":Landroid/database/Cursor;
    :cond_2
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->_camera:Lcom/easyview/camera/EVBaseCamera;

    if-nez v8, :cond_4

    .line 613
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/CallVideoActivity;->finish()V

    .line 629
    :cond_3
    :goto_0
    return-void

    .line 616
    :cond_4
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->_camera:Lcom/easyview/camera/EVBaseCamera;

    invoke-virtual {v8}, Lcom/easyview/camera/EVBaseCamera;->StopAudio()V

    .line 617
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->_camera:Lcom/easyview/camera/EVBaseCamera;

    invoke-virtual {v8}, Lcom/easyview/camera/EVBaseCamera;->StopTalk()V

    .line 618
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->_camera:Lcom/easyview/camera/EVBaseCamera;

    invoke-virtual {v8}, Lcom/easyview/camera/EVBaseCamera;->getName()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->strName:Ljava/lang/String;

    .line 619
    const-string v8, "camera_type"

    invoke-virtual {v2, v8, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    iput v8, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->nP2PMode:I

    .line 621
    const-string v8, "play_type"

    invoke-virtual {v2, v8, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    iput v8, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->playType:I

    .line 622
    const-string v8, "play_mode"

    invoke-virtual {v2, v8, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    iput v8, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->playMode:I

    .line 624
    const-string v8, "CallVideoActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "CallVideo:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->strDID:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/easyview/ndt/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    const-string v8, "strDIDtag"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "strName:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->strName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "strDID:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->strDID:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "streamType:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->streamType:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "nP2PMode:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->nP2PMode:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 627
    .local v4, "now":J
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/CallVideoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    iget-object v9, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->_camera:Lcom/easyview/camera/EVBaseCamera;

    iget v10, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->playMode:I

    long-to-int v11, v4

    invoke-static {v8, v9, v10, v12, v11}, Lobject/p2pipcam/utils/Pub;->showNotification(Landroid/content/Context;Lcom/easyview/basecamera/BaseCamera;III)I

    move-result v8

    iput v8, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->_noti_id:I

    goto/16 :goto_0
.end method

.method private getStrDate()Ljava/lang/String;
    .locals 4

    .prologue
    .line 494
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 495
    .local v0, "d":Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd_HH_mm"

    invoke-direct {v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 496
    .local v1, "f":Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 497
    .local v2, "strDate":Ljava/lang/String;
    return-object v2
.end method

.method private returnLastBmp2Home()V
    .locals 1

    .prologue
    .line 178
    new-instance v0, Lobject/p2pwificam/clientActivity/CallVideoActivity$12;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/CallVideoActivity$12;-><init>(Lobject/p2pwificam/clientActivity/CallVideoActivity;)V

    .line 205
    invoke-virtual {v0}, Lobject/p2pwificam/clientActivity/CallVideoActivity$12;->start()V

    .line 206
    return-void
.end method

.method private saveBmpToSDcard(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 9
    .param p1, "did"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 209
    const/4 v4, 0x0

    .line 210
    .local v4, "fos":Ljava/io/FileOutputStream;
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    .line 211
    const-string v8, "IPcamer/picid"

    .line 210
    invoke-direct {v1, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 212
    .local v1, "div":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    .line 213
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 216
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

    .line 217
    .local v3, "file":Ljava/io/File;
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .local v5, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v8, 0x50

    invoke-virtual {p2, v7, v8, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 219
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->flush()V

    .line 220
    iget-object v7, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->helper:Lobject/p2pipcam/utils/DataBaseHelper;

    invoke-virtual {v7, p1}, Lobject/p2pipcam/utils/DataBaseHelper;->queryFirstpic(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 221
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-gtz v7, :cond_1

    .line 222
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    .line 223
    .local v6, "path":Ljava/lang/String;
    iget-object v7, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->helper:Lobject/p2pipcam/utils/DataBaseHelper;

    invoke-virtual {v7, p1, v6}, Lobject/p2pipcam/utils/DataBaseHelper;->addFirstpic(Ljava/lang/String;Ljava/lang/String;)Z

    .line 225
    .end local v6    # "path":Ljava/lang/String;
    :cond_1
    if-eqz v0, :cond_2

    .line 226
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v4, v5

    .line 232
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v3    # "file":Ljava/io/File;
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 229
    :catch_0
    move-exception v2

    .line 230
    .local v2, "e":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 229
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
    .line 437
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/CallVideoActivity;->getStrDate()Ljava/lang/String;

    move-result-object v7

    .line 438
    .local v7, "strDate":Ljava/lang/String;
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->helper:Lobject/p2pipcam/utils/DataBaseHelper;

    iget-object v9, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->strDID:Ljava/lang/String;

    .line 439
    const-string v10, "picture"

    .line 438
    invoke-virtual {v8, v9, v7, v10}, Lobject/p2pipcam/utils/DataBaseHelper;->queryVideoOrPictureByDate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 440
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    add-int/lit8 v6, v8, 0x1

    .line 441
    .local v6, "seri":I
    const/4 v4, 0x0

    .line 443
    .local v4, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v8

    .line 444
    const-string v9, "IPcamer/pic"

    .line 443
    invoke-direct {v1, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 445
    .local v1, "div":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_0

    .line 446
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 448
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

    iget-object v9, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->strDID:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "!"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 449
    const-string v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".jpg"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 448
    invoke-direct {v3, v1, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 450
    .local v3, "file":Ljava/io/File;
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 451
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .local v5, "fos":Ljava/io/FileOutputStream;
    :try_start_2
    sget-object v8, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v9, 0x64

    invoke-virtual {p1, v8, v9, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 452
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->flush()V

    .line 453
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->helper:Lobject/p2pipcam/utils/DataBaseHelper;

    iget-object v9, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->strDID:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    .line 454
    const-string v11, "picture"

    .line 453
    invoke-virtual {v8, v9, v10, v11, v7}, Lobject/p2pipcam/utils/DataBaseHelper;->createVideoOrPic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    .line 455
    new-instance v8, Lobject/p2pwificam/clientActivity/CallVideoActivity$15;

    invoke-direct {v8, p0}, Lobject/p2pwificam/clientActivity/CallVideoActivity$15;-><init>(Lobject/p2pwificam/clientActivity/CallVideoActivity;)V

    invoke-virtual {p0, v8}, Lobject/p2pwificam/clientActivity/CallVideoActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 480
    :cond_1
    const/4 v8, 0x0

    :try_start_3
    iput-boolean v8, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->isPictSave:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 481
    if-eqz v5, :cond_4

    .line 483
    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 487
    :goto_0
    const/4 v4, 0x0

    .line 491
    .end local v1    # "div":Ljava/io/File;
    .end local v3    # "file":Ljava/io/File;
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    .line 466
    :catch_0
    move-exception v2

    .line 467
    .local v2, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_5
    new-instance v8, Lobject/p2pwificam/clientActivity/CallVideoActivity$16;

    invoke-direct {v8, p0}, Lobject/p2pwificam/clientActivity/CallVideoActivity$16;-><init>(Lobject/p2pwificam/clientActivity/CallVideoActivity;)V

    invoke-virtual {p0, v8}, Lobject/p2pwificam/clientActivity/CallVideoActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 477
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

    .line 478
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 480
    const/4 v8, 0x0

    :try_start_6
    iput-boolean v8, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->isPictSave:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 481
    if-eqz v4, :cond_2

    .line 483
    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 487
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_3
    const/4 v4, 0x0

    goto :goto_1

    .line 484
    .restart local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 485
    .local v2, "e":Ljava/io/IOException;
    :try_start_8
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_3

    .line 437
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .end local v6    # "seri":I
    .end local v7    # "strDate":Ljava/lang/String;
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .line 479
    .restart local v0    # "cursor":Landroid/database/Cursor;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "seri":I
    .restart local v7    # "strDate":Ljava/lang/String;
    :catchall_1
    move-exception v8

    .line 480
    :goto_4
    const/4 v9, 0x0

    :try_start_9
    iput-boolean v9, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->isPictSave:Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 481
    if-eqz v4, :cond_3

    .line 483
    :try_start_a
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 487
    :goto_5
    const/4 v4, 0x0

    .line 489
    :cond_3
    :try_start_b
    throw v8

    .line 484
    :catch_2
    move-exception v2

    .line 485
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 484
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "div":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v2

    .line 485
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_0

    .line 479
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_2
    move-exception v8

    move-object v4, v5

    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    goto :goto_4

    .line 466
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

.method private setViewVisible()V
    .locals 2

    .prologue
    .line 297
    iget-boolean v0, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->bProgress:Z

    if-eqz v0, :cond_0

    .line 298
    const/4 v0, 0x0

    iput-boolean v0, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->bProgress:Z

    .line 299
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->progressView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 301
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/CallVideoActivity;->getCameraParams()V

    .line 303
    :cond_0
    return-void
.end method

.method private startTimeout()V
    .locals 4

    .prologue
    .line 289
    iget-boolean v1, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->bTimeoutStarted:Z

    if-nez v1, :cond_0

    .line 290
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 291
    .local v0, "msgMessage":Landroid/os/Message;
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->timeoutHandle:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 292
    const/4 v1, 0x1

    iput-boolean v1, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->bTimeoutStarted:Z

    .line 294
    .end local v0    # "msgMessage":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private stopService()V
    .locals 2

    .prologue
    .line 830
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lobject/p2pwificam/clientActivity/DoorBellMusicService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 831
    .local v0, "service":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/CallVideoActivity;->stopService(Landroid/content/Intent;)Z

    .line 832
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/CallVideoActivity;->finish()V

    .line 833
    return-void
.end method

.method private takePicture(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 423
    iget-boolean v0, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->isPictSave:Z

    if-nez v0, :cond_0

    .line 424
    const/4 v0, 0x1

    iput-boolean v0, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->isPictSave:Z

    .line 425
    new-instance v0, Lobject/p2pwificam/clientActivity/CallVideoActivity$14;

    invoke-direct {v0, p0, p1}, Lobject/p2pwificam/clientActivity/CallVideoActivity$14;-><init>(Lobject/p2pwificam/clientActivity/CallVideoActivity;Landroid/graphics/Bitmap;)V

    .line 429
    invoke-virtual {v0}, Lobject/p2pwificam/clientActivity/CallVideoActivity$14;->start()V

    .line 434
    :cond_0
    return-void
.end method


# virtual methods
.method public callBaceVideoData([BIIII)V
    .locals 3
    .param p1, "videobuf"    # [B
    .param p2, "h264Data"    # I
    .param p3, "len"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    const/4 v2, 0x1

    .line 948
    iget-boolean v1, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->bDisplayFinished:Z

    if-nez v1, :cond_0

    .line 949
    const-string v1, "CallVideoActivity"

    const-string v2, "return bDisplayFinished"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    :goto_0
    return-void

    .line 954
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->bDisplayFinished:Z

    .line 956
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->videodata:[B

    .line 957
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 958
    .local v0, "msg":Landroid/os/Message;
    if-ne p2, v2, :cond_2

    .line 959
    iput p4, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->nVideoWidth:I

    .line 960
    iput p5, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->nVideoHeight:I

    .line 961
    iput-boolean v2, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->isH264:Z

    .line 962
    iput v2, v0, Landroid/os/Message;->what:I

    .line 971
    :cond_1
    :goto_1
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 965
    :cond_2
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 966
    iget-boolean v1, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->isstart:Z

    if-eqz v1, :cond_1

    .line 967
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->h264JpegVideoDate:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public callBackAudioData([BI)V
    .locals 0
    .param p1, "pcm"    # [B
    .param p2, "len"    # I

    .prologue
    .line 1015
    return-void
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
    .line 820
    const-string v0, "CallVideoActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CameraParamNotify...did:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " brightness: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 821
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

    .line 822
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

    .line 823
    const-string v2, " flip: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 820
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
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

    .line 825
    const/4 v0, 0x1

    iput-boolean v0, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->bInitCameraParam:Z

    .line 827
    return-void
.end method

.method public callBackDatetimeParams(Ljava/lang/String;IIILjava/lang/String;)V
    .locals 7
    .param p1, "did"    # Ljava/lang/String;
    .param p2, "now"    # I
    .param p3, "tz"    # I
    .param p4, "ntp_enable"    # I
    .param p5, "ntp_svr"    # Ljava/lang/String;

    .prologue
    .line 1063
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 1064
    .local v0, "date":Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v4, "HH:mm:ss"

    invoke-direct {v1, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1065
    .local v1, "f":Ljava/text/SimpleDateFormat;
    int-to-long v2, p2

    .line 1066
    .local v2, "ms":J
    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    .line 1067
    invoke-virtual {v0, v2, v3}, Ljava/util/Date;->setTime(J)V

    .line 1069
    const-string v4, "CallVideoActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Device Time:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " t:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/easyview/ndt/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1071
    return-void
.end method

.method public callBackH264Data([BII)V
    .locals 0
    .param p1, "h264"    # [B
    .param p2, "type"    # I
    .param p3, "size"    # I

    .prologue
    .line 1024
    return-void
.end method

.method public callBackMessageNotify(Ljava/lang/String;II)V
    .locals 5
    .param p1, "did"    # Ljava/lang/String;
    .param p2, "msgType"    # I
    .param p3, "param"    # I

    .prologue
    .line 980
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

    .line 981
    const-string v4, " param: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 980
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    iget-boolean v2, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->bManualExit:Z

    if-eqz v2, :cond_1

    .line 1006
    :cond_0
    :goto_0
    return-void

    .line 985
    :cond_1
    const/4 v2, 0x2

    if-ne p2, v2, :cond_2

    .line 986
    iput p3, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->nStreamCodecType:I

    .line 987
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 988
    .local v1, "msgMessage":Landroid/os/Message;
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->msgStreamCodecHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 992
    .end local v1    # "msgMessage":Landroid/os/Message;
    :cond_2
    if-nez p2, :cond_0

    .line 996
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->strDID:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1000
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 1001
    .local v0, "msg":Landroid/os/Message;
    const/4 v2, 0x1

    iput v2, v0, Landroid/os/Message;->what:I

    .line 1003
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

    .line 1004
    const-string v4, " param: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1003
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1005
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->msgHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public callBackSetSystemParamsResult(Ljava/lang/String;II)V
    .locals 0
    .param p1, "did"    # Ljava/lang/String;
    .param p2, "paramType"    # I
    .param p3, "result"    # I

    .prologue
    .line 1077
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

    .line 1028
    new-array v1, v3, [B

    .line 1029
    .local v1, "ret":[B
    invoke-static {p2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1030
    new-instance v0, Lobject/p2pipcam/bean/LockBean;

    invoke-direct {v0}, Lobject/p2pipcam/bean/LockBean;-><init>()V

    .line 1031
    .local v0, "lockbean":Lobject/p2pipcam/bean/LockBean;
    invoke-static {v1}, Lobject/p2pipcam/bean/LockBean;->byteArrayToInt_Little([B)I

    .line 1033
    invoke-static {p2, v3, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1034
    invoke-static {v1}, Lobject/p2pipcam/bean/LockBean;->byteArrayToInt_Little([B)I

    move-result v2

    .line 1037
    .local v2, "retcode":I
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->viewHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1038
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 711
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v3, -0x1

    .line 657
    invoke-super {p0, p1}, Lobject/p2pwificam/clientActivity/BaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 658
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/CallVideoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 659
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 662
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v1, 0x3

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 663
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->ptzPlatform:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 671
    .end local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    :goto_0
    return-void

    .line 664
    :cond_1
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/CallVideoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 665
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 668
    .restart local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 669
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->ptzPlatform:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ServiceCast"
        }
    .end annotation

    .prologue
    const/16 v6, 0x400

    const/4 v7, 0x0

    const/4 v9, 0x1

    .line 532
    invoke-super {p0, p1}, Lobject/p2pwificam/clientActivity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 533
    const-string v5, "isFirst"

    invoke-virtual {p0, v5, v7}, Lobject/p2pwificam/clientActivity/CallVideoActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    iput-object v5, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->preference:Landroid/content/SharedPreferences;

    .line 534
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->preference:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 535
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v5, "activity"

    invoke-interface {v0, v5, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 536
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 538
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/CallVideoActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    .line 539
    .local v4, "win":Landroid/view/Window;
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/CallVideoActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v6, v6}, Landroid/view/Window;->setFlags(II)V

    .line 541
    const/high16 v5, 0x480000

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    .line 542
    const v5, 0x200080

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    .line 543
    invoke-static {p0}, Lobject/p2pipcam/utils/DataBaseHelper;->getInstance(Landroid/content/Context;)Lobject/p2pipcam/utils/DataBaseHelper;

    move-result-object v5

    iput-object v5, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->helper:Lobject/p2pipcam/utils/DataBaseHelper;

    .line 544
    iput-boolean v7, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->_ppcs_init:Z

    .line 545
    invoke-static {}, Lcom/easyview/ppcs/PPCSCamera;->isInit()Z

    move-result v5

    if-nez v5, :cond_0

    .line 547
    iput-boolean v9, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->_ppcs_init:Z

    .line 548
    invoke-static {p0}, Lcom/easyview/ppcs/PPCSCamera;->Init(Landroid/content/Context;)V

    .line 550
    :cond_0
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/CallVideoActivity;->getDataFromOther()V

    .line 552
    invoke-virtual {p0, v9}, Lobject/p2pwificam/clientActivity/CallVideoActivity;->requestWindowFeature(I)Z

    .line 553
    const v5, 0x7f030014

    invoke-virtual {p0, v5}, Lobject/p2pwificam/clientActivity/CallVideoActivity;->setContentView(I)V

    .line 554
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/CallVideoActivity;->findView()V

    .line 555
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/CallVideoActivity;->InitParams()V

    .line 556
    invoke-static {p0}, Lobject/p2pwificam/clientActivity/BridgeService;->setPlayInterface(Lobject/p2pwificam/clientActivity/BridgeService$PlayInterface;)V

    .line 557
    invoke-static {p0}, Lobject/p2pwificam/clientActivity/BridgeService;->setOpenLockInterface(Lobject/p2pwificam/clientActivity/BridgeService$OpenLockInterface;)V

    .line 558
    invoke-static {p0}, Lobject/p2pwificam/clientActivity/BridgeService;->setDateTimeInterface(Lobject/p2pwificam/clientActivity/BridgeService$DateTimeInterface;)V

    .line 560
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->playSurface:Landroid/view/SurfaceView;

    invoke-virtual {v5}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v5

    iput-object v5, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->playHolder:Landroid/view/SurfaceHolder;

    .line 561
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->playHolder:Landroid/view/SurfaceHolder;

    const/4 v6, 0x4

    invoke-interface {v5, v6}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 562
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->playHolder:Landroid/view/SurfaceHolder;

    iget-object v6, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->videoCallback:Lobject/p2pwificam/clientActivity/CallVideoActivity$surfaceCallback;

    invoke-interface {v5, v6}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 564
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/CallVideoActivity;->getCameraParams()V

    .line 567
    const-string v5, "ptzcontrol"

    invoke-virtual {p0, v5, v7}, Lobject/p2pwificam/clientActivity/CallVideoActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 571
    .local v3, "sharePreferences":Landroid/content/SharedPreferences;
    iget v5, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->playType:I

    if-ne v5, v9, :cond_1

    .line 573
    new-instance v2, Landroid/content/Intent;

    const-class v5, Lobject/p2pwificam/clientActivity/DoorBellMusicService;

    invoke-direct {v2, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 574
    .local v2, "service":Landroid/content/Intent;
    const-string v5, "playMode"

    iget v6, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->playMode:I

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 575
    invoke-virtual {p0, v2}, Lobject/p2pwificam/clientActivity/CallVideoActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 576
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->runnableHangup:Ljava/lang/Runnable;

    const-wide/16 v7, 0x7530

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 582
    .end local v2    # "service":Landroid/content/Intent;
    :cond_1
    iput-boolean v9, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->bgetCameraParamsThreadRuning:Z

    .line 583
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->sliderLayout:Lobject/p2pwificam/clientActivity/SliderRelativeLayout;

    iget-object v6, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->mSliderHandler:Landroid/os/Handler;

    invoke-virtual {v5, v6}, Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->setMainHandler(Landroid/os/Handler;)V

    .line 585
    new-instance v1, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.SCREEN_OFF"

    invoke-direct {v1, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 586
    .local v1, "filter":Landroid/content/IntentFilter;
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->mBatInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v5, v1}, Lobject/p2pwificam/clientActivity/CallVideoActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 587
    return-void
.end method

.method protected onDestroy()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CommitPrefEdits"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 784
    invoke-static {}, Lobject/p2pipcam/nativecaller/NativeCaller;->CloseAvi()I

    .line 785
    iput-boolean v2, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->isTakeVideo:Z

    .line 786
    iput-boolean v2, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->isstart:Z

    .line 787
    iput-boolean v2, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->isT:Z

    .line 788
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->strDID:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 790
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->strDID:Ljava/lang/String;

    invoke-static {v1}, Lobject/p2pipcam/nativecaller/NativeCaller;->StopPPPPLivestream(Ljava/lang/String;)I

    .line 792
    :cond_0
    iput-boolean v2, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->bgetCameraParamsThreadRuning:Z

    .line 794
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->myRender:Lobject/p2pwificam/clientActivity/MyRender;

    if-eqz v1, :cond_1

    .line 795
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->myRender:Lobject/p2pwificam/clientActivity/MyRender;

    invoke-virtual {v1}, Lobject/p2pwificam/clientActivity/MyRender;->destroyShaders()J

    .line 797
    :cond_1
    const-string v1, "isFirst"

    invoke-virtual {p0, v1, v2}, Lobject/p2pwificam/clientActivity/CallVideoActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->preference:Landroid/content/SharedPreferences;

    .line 798
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->preference:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 799
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "activity"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 800
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 802
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->mBatInfoReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_2

    .line 804
    :try_start_0
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->mBatInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lobject/p2pwificam/clientActivity/CallVideoActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 809
    :cond_2
    :goto_0
    const-string v1, "tag"

    const-string v2, "CallVideoActivity onDestroy"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    invoke-super {p0}, Lobject/p2pwificam/clientActivity/BaseActivity;->onDestroy()V

    .line 811
    return-void

    .line 805
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 765
    const/4 v0, 0x0

    return v0
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 770
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 254
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->mPopupWindowProgress:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->mPopupWindowProgress:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 255
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->mPopupWindowProgress:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 258
    :cond_0
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->resolutionPopWindow:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->resolutionPopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 259
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->resolutionPopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 261
    :cond_1
    const/4 v1, 0x4

    if-ne p1, v1, :cond_3

    .line 267
    :cond_2
    :goto_0
    return v0

    .line 264
    :cond_3
    const/4 v1, 0x3

    if-eq p1, v1, :cond_2

    .line 267
    invoke-super {p0, p1, p2}, Lobject/p2pwificam/clientActivity/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 775
    const/4 v0, 0x0

    return v0
.end method

.method public quit()V
    .locals 2

    .prologue
    .line 676
    const-string v0, "ViewRecord"

    const-string v1, "555555555555555555555555555555555555555555555"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    const/4 v0, 0x1

    iput-boolean v0, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->bManualExit:Z

    .line 678
    iget-boolean v0, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->bProgress:Z

    if-nez v0, :cond_0

    .line 679
    iget-boolean v0, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->isTakeVideo:Z

    if-eqz v0, :cond_1

    .line 680
    const v0, 0x7f0601a6

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/CallVideoActivity;->showToast(I)V

    .line 698
    :cond_0
    :goto_0
    return-void

    .line 682
    :cond_1
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/CallVideoActivity;->returnLastBmp2Home()V

    .line 694
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/CallVideoActivity;->finish()V

    .line 695
    const v0, 0x7f040006

    const/high16 v1, 0x7f040000

    invoke-virtual {p0, v0, v1}, Lobject/p2pwificam/clientActivity/CallVideoActivity;->overridePendingTransition(II)V

    goto :goto_0
.end method

.method public showSureDialogPlay(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 235
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 238
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0601b8

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 239
    const v1, 0x7f06000c

    new-instance v2, Lobject/p2pwificam/clientActivity/CallVideoActivity$13;

    invoke-direct {v2, p0}, Lobject/p2pwificam/clientActivity/CallVideoActivity$13;-><init>(Lobject/p2pwificam/clientActivity/CallVideoActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 248
    const v1, 0x7f06000d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 249
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 250
    return-void
.end method

.method public stopMusicService()V
    .locals 3

    .prologue
    .line 702
    iget v1, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity;->playType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 704
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lobject/p2pwificam/clientActivity/DoorBellMusicService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 705
    .local v0, "service":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/CallVideoActivity;->stopService(Landroid/content/Intent;)Z

    .line 707
    .end local v0    # "service":Landroid/content/Intent;
    :cond_0
    return-void
.end method
