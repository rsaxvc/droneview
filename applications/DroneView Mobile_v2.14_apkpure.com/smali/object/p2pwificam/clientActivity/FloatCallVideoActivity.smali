.class public Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;
.super Lobject/p2pwificam/clientActivity/BaseActivity;
.source "FloatCallVideoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/GestureDetector$OnDoubleTapListener;
.implements Lobject/p2pwificam/clientActivity/BridgeService$PlayInterface;
.implements Lobject/p2pwificam/clientActivity/BridgeService$OpenLockInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lobject/p2pwificam/clientActivity/FloatCallVideoActivity$surfaceCallback;
    }
.end annotation


# static fields
.field private static final AUDIO_BUFFER_START_CODE:I = 0xff00ff

.field public static final FLAG_HOMEKEY_DISPATCHED:I = -0x80000000

.field private static final LOG_TAG:Ljava/lang/String; = "FloatCallVideoActivity"


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

.field private mFloatLayout:Landroid/widget/FrameLayout;

.field private mHandler:Landroid/os/Handler;

.field private mHandlerFramerate:Landroid/os/Handler;

.field private mHandlerVideo:Landroid/os/Handler;

.field private mPopupWindowProgress:Landroid/widget/PopupWindow;

.field private mSliderHandler:Landroid/os/Handler;

.field private mWindowManager:Landroid/view/WindowManager;

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

.field private videoCallback:Lobject/p2pwificam/clientActivity/FloatCallVideoActivity$surfaceCallback;

.field private videodata:[B

.field private vidoeView:Landroid/widget/ImageView;

.field private viewHandler:Landroid/os/Handler;

.field private wmParams:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 67
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/BaseActivity;-><init>()V

    .line 73
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->playSurface:Landroid/view/SurfaceView;

    .line 74
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->playHolder:Landroid/view/SurfaceHolder;

    .line 75
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->videodata:[B

    .line 76
    iput v2, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->nVideoWidth:I

    .line 77
    iput v2, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->nVideoHeight:I

    .line 79
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->progressView:Landroid/view/View;

    .line 80
    iput-boolean v3, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->bProgress:Z

    .line 82
    iput-boolean v2, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->bInitCameraParam:Z

    .line 83
    iput-boolean v2, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->bManualExit:Z

    .line 85
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->strName:Ljava/lang/String;

    .line 86
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->strDID:Ljava/lang/String;

    .line 87
    const/4 v0, 0x3

    iput v0, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->streamType:I

    .line 89
    iput-boolean v3, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->bDisplayFinished:Z

    .line 90
    new-instance v0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity$surfaceCallback;

    invoke-direct {v0, p0, v1}, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity$surfaceCallback;-><init>(Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;Lobject/p2pwificam/clientActivity/FloatCallVideoActivity$surfaceCallback;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->videoCallback:Lobject/p2pwificam/clientActivity/FloatCallVideoActivity$surfaceCallback;

    .line 92
    iput v2, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->nPlayCount:I

    .line 94
    iput v3, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->nP2PMode:I

    .line 96
    iput v2, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->playType:I

    .line 97
    iput v2, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->playMode:I

    .line 98
    iput-boolean v2, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->bTimeoutStarted:Z

    .line 99
    const/16 v0, 0xb4

    iput v0, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->nTimeoutRemain:I

    .line 101
    iput-boolean v2, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->isTakeVideo:Z

    .line 103
    iput v3, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->BRIGHT:I

    .line 104
    const/4 v0, 0x2

    iput v0, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->CONTRAST:I

    .line 107
    iput-boolean v2, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->isExit:Z

    .line 111
    iput-boolean v2, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->isH264:Z

    .line 114
    iput v2, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->isTypeI:I

    .line 115
    iput-boolean v2, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->isT:Z

    .line 116
    iput-boolean v2, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->isstart:Z

    .line 117
    iput-boolean v2, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->isPictSave:Z

    .line 119
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->imgViewRecord:Landroid/widget/ImageView;

    .line 120
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->imgViewSnap:Landroid/widget/ImageView;

    .line 121
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->imgViewOpenLock:Landroid/widget/ImageView;

    .line 123
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->h264JpegVideoDate:Ljava/util/LinkedList;

    .line 124
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->IorP:Ljava/util/LinkedList;

    .line 125
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->button_back:Landroid/widget/ImageButton;

    .line 126
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->textViewTitle:Landroid/widget/TextView;

    .line 128
    iput-boolean v2, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->bgetCameraParamsThreadRuning:Z

    .line 130
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->sliderLayout:Lobject/p2pwificam/clientActivity/SliderRelativeLayout;

    .line 187
    new-instance v0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity$1;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity$1;-><init>(Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->timeoutHandle:Landroid/os/Handler;

    .line 224
    new-instance v0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity$2;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity$2;-><init>(Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->mHandlerFramerate:Landroid/os/Handler;

    .line 238
    new-instance v0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity$3;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity$3;-><init>(Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->handler:Landroid/os/Handler;

    .line 251
    new-instance v0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity$4;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity$4;-><init>(Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->mHandlerVideo:Landroid/os/Handler;

    .line 293
    new-instance v0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity$5;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity$5;-><init>(Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->mHandler:Landroid/os/Handler;

    .line 430
    new-instance v0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity$6;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity$6;-><init>(Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->msgHandler:Landroid/os/Handler;

    .line 443
    new-instance v0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity$7;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity$7;-><init>(Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->msgStreamCodecHandler:Landroid/os/Handler;

    .line 656
    new-instance v0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity$8;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity$8;-><init>(Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->viewHandler:Landroid/os/Handler;

    .line 781
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->myRender:Lobject/p2pwificam/clientActivity/MyRender;

    .line 782
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->myGlSurfaceView:Landroid/opengl/GLSurfaceView;

    .line 856
    new-instance v0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity$9;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity$9;-><init>(Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->mSliderHandler:Landroid/os/Handler;

    .line 917
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->lastTimeStamp:J

    .line 923
    iput v2, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->VideoFPS:I

    .line 925
    iput v2, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->Video_fps:I

    .line 926
    iput v2, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->Video_bps:I

    .line 1025
    new-instance v0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity$10;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity$10;-><init>(Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->runnableHangup:Ljava/lang/Runnable;

    .line 1034
    new-instance v0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity$11;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity$11;-><init>(Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->mBatInfoReceiver:Landroid/content/BroadcastReceiver;

    .line 67
    return-void
.end method

.method private Hangup()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 841
    const-string v1, "isFirst"

    invoke-virtual {p0, v1, v2}, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->preference:Landroid/content/SharedPreferences;

    .line 842
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->preference:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 843
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "activity"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 844
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 845
    sget-object v1, Lobject/p2pwificam/clientActivity/BridgeService;->lockFlag:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 846
    sget-object v1, Lobject/p2pwificam/clientActivity/BridgeService;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    if-eqz v1, :cond_0

    .line 847
    sget-object v1, Lobject/p2pwificam/clientActivity/BridgeService;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    invoke-virtual {v1}, Landroid/app/KeyguardManager$KeyguardLock;->reenableKeyguard()V

    .line 848
    const/4 v1, 0x0

    sput-object v1, Lobject/p2pwificam/clientActivity/BridgeService;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    .line 853
    :cond_0
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->stopService()V

    .line 854
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->runnableHangup:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 855
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
    .line 574
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 575
    .local v0, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 576
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->textViewTitle:Landroid/widget/TextView;

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->strName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 577
    return-void
.end method

.method static synthetic access$0(Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;)I
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->nTimeoutRemain:I

    return v0
.end method

.method static synthetic access$1(Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;I)V
    .locals 0

    .prologue
    .line 99
    iput p1, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->nTimeoutRemain:I

    return-void
.end method

.method static synthetic access$10(Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;)V
    .locals 0

    .prologue
    .line 215
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->setViewVisible()V

    return-void
.end method

.method static synthetic access$11(Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;)I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->nVideoHeight:I

    return v0
.end method

.method static synthetic access$12(Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;)I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->nVideoWidth:I

    return v0
.end method

.method static synthetic access$13(Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;)Landroid/opengl/GLSurfaceView;
    .locals 1

    .prologue
    .line 782
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->myGlSurfaceView:Landroid/opengl/GLSurfaceView;

    return-object v0
.end method

.method static synthetic access$14(Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;)Lobject/p2pwificam/clientActivity/MyRender;
    .locals 1

    .prologue
    .line 781
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->myRender:Lobject/p2pwificam/clientActivity/MyRender;

    return-object v0
.end method

.method static synthetic access$15(Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;)[B
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->videodata:[B

    return-object v0
.end method

.method static synthetic access$16(Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;Z)V
    .locals 0

    .prologue
    .line 89
    iput-boolean p1, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->bDisplayFinished:Z

    return-void
.end method

.method static synthetic access$17(Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;)I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->nPlayCount:I

    return v0
.end method

.method static synthetic access$18(Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;I)V
    .locals 0

    .prologue
    .line 92
    iput p1, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->nPlayCount:I

    return-void
.end method

.method static synthetic access$19(Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;)V
    .locals 0

    .prologue
    .line 831
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->stopService()V

    return-void
.end method

.method static synthetic access$2(Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->timeoutHandle:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$20(Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;)I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->nStreamCodecType:I

    return v0
.end method

.method static synthetic access$21(Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;Landroid/content/SharedPreferences;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->preference:Landroid/content/SharedPreferences;

    return-void
.end method

.method static synthetic access$22(Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;)Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->preference:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$23(Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->imgViewSnap:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$24(Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->imgViewRecord:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$25(Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->imgViewOpenLock:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$26(Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;)Lcom/easyview/camera/EVBaseCamera;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->_camera:Lcom/easyview/camera/EVBaseCamera;

    return-object v0
.end method

.method static synthetic access$27(Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->strDID:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$28(Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$29(Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 1025
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->runnableHangup:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$3(Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;)Z
    .locals 1

    .prologue
    .line 107
    iget-boolean v0, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->isExit:Z

    return v0
.end method

.method static synthetic access$30(Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;)V
    .locals 0

    .prologue
    .line 839
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->Hangup()V

    return-void
.end method

.method static synthetic access$31(Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;)Landroid/view/SurfaceHolder;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->playHolder:Landroid/view/SurfaceHolder;

    return-object v0
.end method

.method static synthetic access$32(Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$33(Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 357
    invoke-direct {p0, p1}, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->savePicToSDcard(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$4(Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;)Landroid/view/WindowManager;
    .locals 1

    .prologue
    .line 457
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic access$5(Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 454
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->mFloatLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$6(Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;)V
    .locals 0

    .prologue
    .line 421
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->getCameraParams()V

    return-void
.end method

.method static synthetic access$7(Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;I)V
    .locals 0

    .prologue
    .line 87
    iput p1, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->streamType:I

    return-void
.end method

.method static synthetic access$8(Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->strDID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$9(Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;)I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->streamType:I

    return v0
.end method

.method private dismissBrightAndContrastProgress()V
    .locals 1

    .prologue
    .line 708
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->mPopupWindowProgress:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->mPopupWindowProgress:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 709
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->mPopupWindowProgress:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 710
    const/4 v0, 0x0

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->mPopupWindowProgress:Landroid/widget/PopupWindow;

    .line 712
    :cond_0
    return-void
.end method

.method private findView()V
    .locals 3

    .prologue
    .line 581
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->mFloatLayout:Landroid/widget/FrameLayout;

    const v2, 0x7f080080

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->textViewTitle:Landroid/widget/TextView;

    .line 582
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->mFloatLayout:Landroid/widget/FrameLayout;

    const v2, 0x7f08007d

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->progressView:Landroid/view/View;

    .line 584
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->mFloatLayout:Landroid/widget/FrameLayout;

    const v2, 0x7f08007b

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/SurfaceView;

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->playSurface:Landroid/view/SurfaceView;

    .line 585
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->playSurface:Landroid/view/SurfaceView;

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/view/SurfaceView;->setBackgroundColor(I)V

    .line 586
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->mFloatLayout:Landroid/widget/FrameLayout;

    const v2, 0x7f080197

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->button_back:Landroid/widget/ImageButton;

    .line 587
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->mFloatLayout:Landroid/widget/FrameLayout;

    const v2, 0x7f08007c

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/opengl/GLSurfaceView;

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->myGlSurfaceView:Landroid/opengl/GLSurfaceView;

    .line 588
    new-instance v1, Lobject/p2pwificam/clientActivity/MyRender;

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->myGlSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-direct {v1, v2}, Lobject/p2pwificam/clientActivity/MyRender;-><init>(Landroid/opengl/GLSurfaceView;)V

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->myRender:Lobject/p2pwificam/clientActivity/MyRender;

    .line 589
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->myGlSurfaceView:Landroid/opengl/GLSurfaceView;

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->myRender:Lobject/p2pwificam/clientActivity/MyRender;

    invoke-virtual {v1, v2}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 590
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->mFloatLayout:Landroid/widget/FrameLayout;

    const v2, 0x7f08007e

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 591
    .local v0, "image":Landroid/widget/ImageView;
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->_camera:Lcom/easyview/camera/EVBaseCamera;

    invoke-virtual {v1}, Lcom/easyview/camera/EVBaseCamera;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 592
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->mFloatLayout:Landroid/widget/FrameLayout;

    const v2, 0x7f080082

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lobject/p2pwificam/clientActivity/SliderRelativeLayout;

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->sliderLayout:Lobject/p2pwificam/clientActivity/SliderRelativeLayout;

    .line 593
    return-void
.end method

.method private getCameraParams()V
    .locals 3

    .prologue
    .line 423
    const-string v0, "playactivitytest"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "strDID  === "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->strDID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->strDID:Ljava/lang/String;

    .line 427
    const/4 v1, 0x2

    .line 426
    invoke-static {v0, v1}, Lobject/p2pipcam/nativecaller/NativeCaller;->PPPPGetSystemParams(Ljava/lang/String;I)I

    .line 428
    return-void
.end method

.method private getDataFromOther()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 554
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 555
    .local v0, "in":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 556
    const-string v1, "stream_type"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->streamType:I

    .line 557
    const-string v1, "cameraid"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->strDID:Ljava/lang/String;

    .line 558
    invoke-static {}, Lcom/easyview/camera/CameraList;->GetInstance()Lcom/easyview/camera/CameraList;

    move-result-object v1

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->strDID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/easyview/camera/CameraList;->getCamera(Ljava/lang/String;)Lcom/easyview/basecamera/BaseCamera;

    move-result-object v1

    check-cast v1, Lcom/easyview/camera/EVBaseCamera;

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->_camera:Lcom/easyview/camera/EVBaseCamera;

    .line 559
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->_camera:Lcom/easyview/camera/EVBaseCamera;

    invoke-virtual {v1}, Lcom/easyview/camera/EVBaseCamera;->StopAudio()V

    .line 560
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->_camera:Lcom/easyview/camera/EVBaseCamera;

    invoke-virtual {v1}, Lcom/easyview/camera/EVBaseCamera;->StopTalk()V

    .line 561
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->_camera:Lcom/easyview/camera/EVBaseCamera;

    invoke-virtual {v1}, Lcom/easyview/camera/EVBaseCamera;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->strName:Ljava/lang/String;

    .line 562
    const-string v1, "camera_type"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->nP2PMode:I

    .line 564
    const-string v1, "play_type"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->playType:I

    .line 565
    const-string v1, "play_mode"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->playMode:I

    .line 567
    const-string v1, "FloatCallVideoActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "strDID: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->strDID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    const-string v1, "strDIDtag"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "strName:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->strName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "strDID:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->strDID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "streamType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->streamType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "nP2PMode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->nP2PMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    :cond_0
    return-void
.end method

.method private getDateTime()Ljava/lang/String;
    .locals 6

    .prologue
    .line 758
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 759
    .local v0, "d":Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyyMMdd_HHmmss"

    invoke-direct {v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 760
    .local v1, "f":Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 761
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

    .line 762
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->strDID:Ljava/lang/String;

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
    .line 416
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 417
    .local v0, "d":Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd_HH_mm"

    invoke-direct {v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 418
    .local v1, "f":Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 419
    .local v2, "strDate":Ljava/lang/String;
    return-object v2
.end method

.method private declared-synchronized savePicToSDcard(Landroid/graphics/Bitmap;)V
    .locals 12
    .param p1, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 358
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->getStrDate()Ljava/lang/String;

    move-result-object v7

    .line 359
    .local v7, "strDate":Ljava/lang/String;
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->helper:Lobject/p2pipcam/utils/DataBaseHelper;

    iget-object v9, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->strDID:Ljava/lang/String;

    .line 360
    const-string v10, "picture"

    .line 359
    invoke-virtual {v8, v9, v7, v10}, Lobject/p2pipcam/utils/DataBaseHelper;->queryVideoOrPictureByDate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 361
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    add-int/lit8 v6, v8, 0x1

    .line 362
    .local v6, "seri":I
    const/4 v4, 0x0

    .line 364
    .local v4, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v8

    .line 365
    const-string v9, "IPcamer/pic"

    .line 364
    invoke-direct {v1, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 366
    .local v1, "div":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_0

    .line 367
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 369
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

    iget-object v9, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->strDID:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "!"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 370
    const-string v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".jpg"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 369
    invoke-direct {v3, v1, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 371
    .local v3, "file":Ljava/io/File;
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 372
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .local v5, "fos":Ljava/io/FileOutputStream;
    :try_start_2
    sget-object v8, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v9, 0x64

    invoke-virtual {p1, v8, v9, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 373
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->flush()V

    .line 374
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->helper:Lobject/p2pipcam/utils/DataBaseHelper;

    iget-object v9, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->strDID:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    .line 375
    const-string v11, "picture"

    .line 374
    invoke-virtual {v8, v9, v10, v11, v7}, Lobject/p2pipcam/utils/DataBaseHelper;->createVideoOrPic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    .line 376
    new-instance v8, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity$13;

    invoke-direct {v8, p0}, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity$13;-><init>(Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;)V

    invoke-virtual {p0, v8}, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 402
    :cond_1
    const/4 v8, 0x0

    :try_start_3
    iput-boolean v8, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->isPictSave:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 403
    if-eqz v5, :cond_4

    .line 405
    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 409
    :goto_0
    const/4 v4, 0x0

    .line 413
    .end local v1    # "div":Ljava/io/File;
    .end local v3    # "file":Ljava/io/File;
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    .line 388
    :catch_0
    move-exception v2

    .line 389
    .local v2, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_5
    new-instance v8, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity$14;

    invoke-direct {v8, p0}, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity$14;-><init>(Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;)V

    invoke-virtual {p0, v8}, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 399
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

    .line 400
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 402
    const/4 v8, 0x0

    :try_start_6
    iput-boolean v8, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->isPictSave:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 403
    if-eqz v4, :cond_2

    .line 405
    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 409
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_3
    const/4 v4, 0x0

    goto :goto_1

    .line 406
    .restart local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 407
    .local v2, "e":Ljava/io/IOException;
    :try_start_8
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_3

    .line 358
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .end local v6    # "seri":I
    .end local v7    # "strDate":Ljava/lang/String;
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .line 401
    .restart local v0    # "cursor":Landroid/database/Cursor;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "seri":I
    .restart local v7    # "strDate":Ljava/lang/String;
    :catchall_1
    move-exception v8

    .line 402
    :goto_4
    const/4 v9, 0x0

    :try_start_9
    iput-boolean v9, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->isPictSave:Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 403
    if-eqz v4, :cond_3

    .line 405
    :try_start_a
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 409
    :goto_5
    const/4 v4, 0x0

    .line 411
    :cond_3
    :try_start_b
    throw v8

    .line 406
    :catch_2
    move-exception v2

    .line 407
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 406
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "div":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v2

    .line 407
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_0

    .line 401
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_2
    move-exception v8

    move-object v4, v5

    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    goto :goto_4

    .line 388
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
    .line 216
    iget-boolean v0, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->bProgress:Z

    if-eqz v0, :cond_0

    .line 217
    const/4 v0, 0x0

    iput-boolean v0, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->bProgress:Z

    .line 218
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->progressView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 220
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->getCameraParams()V

    .line 222
    :cond_0
    return-void
.end method

.method private showResolutionPopWindow()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const v11, 0x7f08016c

    const/16 v10, 0x11

    const/4 v9, -0x2

    const/4 v8, 0x0

    .line 715
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->resolutionPopWindow:Landroid/widget/PopupWindow;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->resolutionPopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v6}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 755
    :goto_0
    return-void

    .line 718
    :cond_0
    iget v6, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->nStreamCodecType:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    .line 720
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    .line 721
    const v7, 0x7f03004a

    invoke-virtual {v6, v7, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 720
    check-cast v0, Landroid/widget/LinearLayout;

    .line 723
    .local v0, "layout":Landroid/widget/LinearLayout;
    const v6, 0x7f0801fa

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 722
    check-cast v4, Landroid/widget/TextView;

    .line 725
    .local v4, "qvga":Landroid/widget/TextView;
    const v6, 0x7f0801fb

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 724
    check-cast v5, Landroid/widget/TextView;

    .line 726
    .local v5, "vga":Landroid/widget/TextView;
    invoke-virtual {v4, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 727
    invoke-virtual {v5, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 728
    new-instance v6, Landroid/widget/PopupWindow;

    const/16 v7, 0x64

    .line 729
    invoke-direct {v6, v0, v7, v9}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 728
    iput-object v6, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->resolutionPopWindow:Landroid/widget/PopupWindow;

    .line 730
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->resolutionPopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p0, v11}, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v6, v7, v10, v8, v8}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0

    .line 734
    .end local v0    # "layout":Landroid/widget/LinearLayout;
    .end local v4    # "qvga":Landroid/widget/TextView;
    .end local v5    # "vga":Landroid/widget/TextView;
    :cond_1
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    .line 735
    const v7, 0x7f030049

    invoke-virtual {v6, v7, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 734
    check-cast v0, Landroid/widget/LinearLayout;

    .line 737
    .restart local v0    # "layout":Landroid/widget/LinearLayout;
    const v6, 0x7f0801f5

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 736
    check-cast v4, Landroid/widget/TextView;

    .line 739
    .restart local v4    # "qvga":Landroid/widget/TextView;
    const v6, 0x7f0801f6

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 738
    check-cast v5, Landroid/widget/TextView;

    .line 741
    .restart local v5    # "vga":Landroid/widget/TextView;
    const v6, 0x7f0801f7

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 740
    check-cast v3, Landroid/widget/TextView;

    .line 742
    .local v3, "p720":Landroid/widget/TextView;
    const v6, 0x7f0801f8

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 743
    .local v1, "low":Landroid/widget/TextView;
    const v6, 0x7f0801f9

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 744
    .local v2, "lowest":Landroid/widget/TextView;
    invoke-virtual {v4, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 745
    invoke-virtual {v5, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 746
    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 747
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 748
    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 749
    new-instance v6, Landroid/widget/PopupWindow;

    const/16 v7, 0x96

    .line 750
    invoke-direct {v6, v0, v7, v9}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 749
    iput-object v6, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->resolutionPopWindow:Landroid/widget/PopupWindow;

    .line 751
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->resolutionPopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p0, v11}, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v6, v7, v10, v8, v8}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto/16 :goto_0
.end method

.method private startTimeout()V
    .locals 4

    .prologue
    .line 208
    iget-boolean v1, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->bTimeoutStarted:Z

    if-nez v1, :cond_0

    .line 209
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 210
    .local v0, "msgMessage":Landroid/os/Message;
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->timeoutHandle:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 211
    const/4 v1, 0x1

    iput-boolean v1, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->bTimeoutStarted:Z

    .line 213
    .end local v0    # "msgMessage":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private stopService()V
    .locals 3

    .prologue
    .line 833
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lobject/p2pwificam/clientActivity/DoorBellMusicService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 834
    .local v0, "service":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->stopService(Landroid/content/Intent;)Z

    .line 835
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->mFloatLayout:Landroid/widget/FrameLayout;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 836
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->finish()V

    .line 837
    return-void
.end method

.method private takePicture(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 344
    iget-boolean v0, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->isPictSave:Z

    if-nez v0, :cond_0

    .line 345
    const/4 v0, 0x1

    iput-boolean v0, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->isPictSave:Z

    .line 346
    new-instance v0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity$12;

    invoke-direct {v0, p0, p1}, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity$12;-><init>(Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;Landroid/graphics/Bitmap;)V

    .line 350
    invoke-virtual {v0}, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity$12;->start()V

    .line 355
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

    .line 933
    iget-boolean v1, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->bDisplayFinished:Z

    if-nez v1, :cond_0

    .line 934
    const-string v1, "FloatCallVideoActivity"

    const-string v2, "return bDisplayFinished"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    :goto_0
    return-void

    .line 939
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->bDisplayFinished:Z

    .line 941
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->videodata:[B

    .line 942
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 943
    .local v0, "msg":Landroid/os/Message;
    if-ne p2, v2, :cond_2

    .line 944
    iput p4, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->nVideoWidth:I

    .line 945
    iput p5, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->nVideoHeight:I

    .line 946
    iput-boolean v2, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->isH264:Z

    .line 947
    iput v2, v0, Landroid/os/Message;->what:I

    .line 956
    :cond_1
    :goto_1
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 950
    :cond_2
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 951
    iget-boolean v1, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->isstart:Z

    if-eqz v1, :cond_1

    .line 952
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->h264JpegVideoDate:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public callBackAudioData([BI)V
    .locals 0
    .param p1, "pcm"    # [B
    .param p2, "len"    # I

    .prologue
    .line 1000
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
    .line 823
    const-string v0, "FloatCallVideoActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CameraParamNotify...did:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " brightness: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 824
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

    .line 825
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

    .line 826
    const-string v2, " flip: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 823
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
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

    .line 828
    const/4 v0, 0x1

    iput-boolean v0, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->bInitCameraParam:Z

    .line 830
    return-void
.end method

.method public callBackH264Data([BII)V
    .locals 0
    .param p1, "h264"    # [B
    .param p2, "type"    # I
    .param p3, "size"    # I

    .prologue
    .line 1009
    return-void
.end method

.method public callBackMessageNotify(Ljava/lang/String;II)V
    .locals 5
    .param p1, "did"    # Ljava/lang/String;
    .param p2, "msgType"    # I
    .param p3, "param"    # I

    .prologue
    .line 965
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

    .line 966
    const-string v4, " param: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 965
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    iget-boolean v2, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->bManualExit:Z

    if-eqz v2, :cond_1

    .line 991
    :cond_0
    :goto_0
    return-void

    .line 970
    :cond_1
    const/4 v2, 0x2

    if-ne p2, v2, :cond_2

    .line 971
    iput p3, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->nStreamCodecType:I

    .line 972
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 973
    .local v1, "msgMessage":Landroid/os/Message;
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->msgStreamCodecHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 977
    .end local v1    # "msgMessage":Landroid/os/Message;
    :cond_2
    if-nez p2, :cond_0

    .line 981
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->strDID:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 985
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 986
    .local v0, "msg":Landroid/os/Message;
    const/4 v2, 0x1

    iput v2, v0, Landroid/os/Message;->what:I

    .line 988
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

    .line 989
    const-string v4, " param: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 988
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->msgHandler:Landroid/os/Handler;

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

    .line 1013
    new-array v1, v3, [B

    .line 1014
    .local v1, "ret":[B
    invoke-static {p2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1015
    new-instance v0, Lobject/p2pipcam/bean/LockBean;

    invoke-direct {v0}, Lobject/p2pipcam/bean/LockBean;-><init>()V

    .line 1016
    .local v0, "lockbean":Lobject/p2pipcam/bean/LockBean;
    invoke-static {v1}, Lobject/p2pipcam/bean/LockBean;->byteArrayToInt_Little([B)I

    .line 1018
    invoke-static {p2, v3, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1019
    invoke-static {v1}, Lobject/p2pipcam/bean/LockBean;->byteArrayToInt_Little([B)I

    move-result v2

    .line 1022
    .local v2, "retcode":I
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->viewHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1023
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 653
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v3, -0x1

    .line 598
    invoke-super {p0, p1}, Lobject/p2pwificam/clientActivity/BaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 599
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 600
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 603
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v1, 0x3

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 604
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->ptzPlatform:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 612
    .end local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    :goto_0
    return-void

    .line 605
    :cond_1
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 606
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 609
    .restart local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 610
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->ptzPlatform:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ServiceCast"
        }
    .end annotation

    .prologue
    const/4 v10, -0x1

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 463
    invoke-super {p0, p1}, Lobject/p2pwificam/clientActivity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 464
    const-string v5, "isFirst"

    invoke-virtual {p0, v5, v8}, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    iput-object v5, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->preference:Landroid/content/SharedPreferences;

    .line 465
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->preference:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 466
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v5, "activity"

    invoke-interface {v0, v5, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 467
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 469
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->getDataFromOther()V

    .line 471
    new-instance v5, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v5}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v5, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->wmParams:Landroid/view/WindowManager$LayoutParams;

    .line 473
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->getApplication()Landroid/app/Application;

    move-result-object v5

    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->getApplication()Landroid/app/Application;

    const-string v6, "window"

    invoke-virtual {v5, v6}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;

    iput-object v5, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->mWindowManager:Landroid/view/WindowManager;

    .line 474
    const-string v5, "tag"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "mWindowManager--->"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->mWindowManager:Landroid/view/WindowManager;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v6, 0x7d2

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 478
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iput v9, v5, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 482
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v6, 0x11

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 488
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iput v10, v5, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 489
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iput v10, v5, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 495
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->getApplication()Landroid/app/Application;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 497
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v5, 0x7f030014

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout;

    iput-object v5, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->mFloatLayout:Landroid/widget/FrameLayout;

    .line 499
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->mWindowManager:Landroid/view/WindowManager;

    iget-object v6, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->mFloatLayout:Landroid/widget/FrameLayout;

    iget-object v7, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->wmParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v5, v6, v7}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 503
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->mFloatLayout:Landroid/widget/FrameLayout;

    invoke-static {v8, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 504
    invoke-static {v8, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 503
    invoke-virtual {v5, v6, v7}, Landroid/widget/FrameLayout;->measure(II)V

    .line 506
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->findView()V

    .line 518
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->InitParams()V

    .line 519
    invoke-static {p0}, Lobject/p2pipcam/utils/DataBaseHelper;->getInstance(Landroid/content/Context;)Lobject/p2pipcam/utils/DataBaseHelper;

    move-result-object v5

    iput-object v5, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->helper:Lobject/p2pipcam/utils/DataBaseHelper;

    .line 520
    invoke-static {p0}, Lobject/p2pwificam/clientActivity/BridgeService;->setPlayInterface(Lobject/p2pwificam/clientActivity/BridgeService$PlayInterface;)V

    .line 521
    invoke-static {p0}, Lobject/p2pwificam/clientActivity/BridgeService;->setOpenLockInterface(Lobject/p2pwificam/clientActivity/BridgeService$OpenLockInterface;)V

    .line 523
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->playSurface:Landroid/view/SurfaceView;

    invoke-virtual {v5}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v5

    iput-object v5, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->playHolder:Landroid/view/SurfaceHolder;

    .line 524
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->playHolder:Landroid/view/SurfaceHolder;

    const/4 v6, 0x4

    invoke-interface {v5, v6}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 525
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->playHolder:Landroid/view/SurfaceHolder;

    iget-object v6, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->videoCallback:Lobject/p2pwificam/clientActivity/FloatCallVideoActivity$surfaceCallback;

    invoke-interface {v5, v6}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 527
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->getCameraParams()V

    .line 530
    const-string v5, "ptzcontrol"

    invoke-virtual {p0, v5, v8}, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 534
    .local v4, "sharePreferences":Landroid/content/SharedPreferences;
    iget v5, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->playType:I

    if-ne v5, v9, :cond_0

    .line 536
    new-instance v3, Landroid/content/Intent;

    const-class v5, Lobject/p2pwificam/clientActivity/DoorBellMusicService;

    invoke-direct {v3, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 537
    .local v3, "service":Landroid/content/Intent;
    const-string v5, "playMode"

    iget v6, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->playMode:I

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 538
    invoke-virtual {p0, v3}, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 539
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->runnableHangup:Ljava/lang/Runnable;

    const-wide/16 v7, 0x7530

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 545
    .end local v3    # "service":Landroid/content/Intent;
    :cond_0
    iput-boolean v9, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->bgetCameraParamsThreadRuning:Z

    .line 546
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->sliderLayout:Lobject/p2pwificam/clientActivity/SliderRelativeLayout;

    iget-object v6, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->mSliderHandler:Landroid/os/Handler;

    invoke-virtual {v5, v6}, Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->setMainHandler(Landroid/os/Handler;)V

    .line 548
    new-instance v1, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.SCREEN_OFF"

    invoke-direct {v1, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 549
    .local v1, "filter":Landroid/content/IntentFilter;
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->mBatInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v5, v1}, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 551
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

    .line 787
    invoke-static {}, Lobject/p2pipcam/nativecaller/NativeCaller;->CloseAvi()I

    .line 788
    iput-boolean v2, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->isTakeVideo:Z

    .line 789
    iput-boolean v2, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->isstart:Z

    .line 790
    iput-boolean v2, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->isT:Z

    .line 791
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->strDID:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 793
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->strDID:Ljava/lang/String;

    invoke-static {v1}, Lobject/p2pipcam/nativecaller/NativeCaller;->StopPPPPLivestream(Ljava/lang/String;)I

    .line 795
    :cond_0
    iput-boolean v2, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->bgetCameraParamsThreadRuning:Z

    .line 797
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->myRender:Lobject/p2pwificam/clientActivity/MyRender;

    if-eqz v1, :cond_1

    .line 798
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->myRender:Lobject/p2pwificam/clientActivity/MyRender;

    invoke-virtual {v1}, Lobject/p2pwificam/clientActivity/MyRender;->destroyShaders()J

    .line 800
    :cond_1
    const-string v1, "isFirst"

    invoke-virtual {p0, v1, v2}, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->preference:Landroid/content/SharedPreferences;

    .line 801
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->preference:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 802
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "activity"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 803
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 805
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->mBatInfoReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_2

    .line 807
    :try_start_0
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->mBatInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 812
    :cond_2
    :goto_0
    const-string v1, "tag"

    const-string v2, "FloatCallVideoActivity onDestroy"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    invoke-super {p0}, Lobject/p2pwificam/clientActivity/BaseActivity;->onDestroy()V

    .line 814
    return-void

    .line 808
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 768
    const/4 v0, 0x0

    return v0
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 773
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 172
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->mPopupWindowProgress:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->mPopupWindowProgress:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 173
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->mPopupWindowProgress:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 176
    :cond_0
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->resolutionPopWindow:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->resolutionPopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 177
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->resolutionPopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 179
    :cond_1
    const/4 v1, 0x4

    if-ne p1, v1, :cond_3

    .line 185
    :cond_2
    :goto_0
    return v0

    .line 182
    :cond_3
    const/4 v1, 0x3

    if-eq p1, v1, :cond_2

    .line 185
    invoke-super {p0, p1, p2}, Lobject/p2pwificam/clientActivity/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 778
    const/4 v0, 0x0

    return v0
.end method

.method public quit()V
    .locals 2

    .prologue
    .line 617
    const-string v0, "ViewRecord"

    const-string v1, "555555555555555555555555555555555555555555555"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    const/4 v0, 0x1

    iput-boolean v0, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->bManualExit:Z

    .line 619
    iget-boolean v0, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->bProgress:Z

    if-nez v0, :cond_0

    .line 620
    iget-boolean v0, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->isTakeVideo:Z

    if-eqz v0, :cond_1

    .line 621
    const v0, 0x7f0601a6

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->showToast(I)V

    .line 640
    :cond_0
    :goto_0
    return-void

    .line 634
    :cond_1
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->mFloatLayout:Landroid/widget/FrameLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 636
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->finish()V

    .line 637
    const v0, 0x7f040006

    const/high16 v1, 0x7f040000

    invoke-virtual {p0, v0, v1}, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->overridePendingTransition(II)V

    goto :goto_0
.end method

.method public stopMusicService()V
    .locals 3

    .prologue
    .line 644
    iget v1, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->playType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 646
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lobject/p2pwificam/clientActivity/DoorBellMusicService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 647
    .local v0, "service":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->stopService(Landroid/content/Intent;)Z

    .line 649
    .end local v0    # "service":Landroid/content/Intent;
    :cond_0
    return-void
.end method
