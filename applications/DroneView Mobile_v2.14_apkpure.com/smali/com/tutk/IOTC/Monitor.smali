.class public Lcom/tutk/IOTC/Monitor;
.super Landroid/view/SurfaceView;
.source "Monitor.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Lcom/tutk/IOTC/IRegisterIOTCListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tutk/IOTC/Monitor$ThreadRender;
    }
.end annotation


# static fields
.field private static final DEFAULT_MAX_ZOOM_SCALE:F = 2.0f

.field private static final DRAG:I = 0x1

.field private static final FLING_MIN_DISTANCE:I = 0x64

.field private static final FLING_MIN_VELOCITY:I = 0x0

.field private static final NONE:I = 0x0

.field private static final PTZ_DELAY:I = 0x5dc

.field private static final PTZ_SPEED:I = 0x8

.field private static final ZOOM:I = 0x2


# instance fields
.field private mAVChannel:I

.field private mCamera:Lcom/tutk/IOTC/Camera;

.field private mCurVideoHeight:I

.field private mCurVideoWidth:I

.field private mCurrentMaxScale:F

.field private mCurrentScale:F

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mLastFrame:Landroid/graphics/Bitmap;

.field private mLastFrameLock:Ljava/util/concurrent/locks/Lock;

.field private mLastZoomTime:J

.field private mMidPoint:Landroid/graphics/PointF;

.field private mMidPointForCanvas:Landroid/graphics/PointF;

.field private mOrigDist:F

.field private mPinchedMode:I

.field private mRectCanvas:Landroid/graphics/Rect;

.field private mRectMonitor:Landroid/graphics/Rect;

.field private mStartPoint:Landroid/graphics/PointF;

.field private mSurHolder:Landroid/view/SurfaceHolder;

.field private mThreadRender:Lcom/tutk/IOTC/Monitor$ThreadRender;

.field private rotation:[Landroid/graphics/Bitmap;

.field private rotation_res:[I

.field private vBottom:I

.field private vLeft:I

.field private vRight:I

.field private vTop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 87
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    iput v5, p0, Lcom/tutk/IOTC/Monitor;->mPinchedMode:I

    .line 56
    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2}, Landroid/graphics/PointF;-><init>()V

    iput-object v2, p0, Lcom/tutk/IOTC/Monitor;->mStartPoint:Landroid/graphics/PointF;

    .line 57
    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2}, Landroid/graphics/PointF;-><init>()V

    iput-object v2, p0, Lcom/tutk/IOTC/Monitor;->mMidPoint:Landroid/graphics/PointF;

    .line 58
    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2}, Landroid/graphics/PointF;-><init>()V

    iput-object v2, p0, Lcom/tutk/IOTC/Monitor;->mMidPointForCanvas:Landroid/graphics/PointF;

    .line 59
    const/4 v2, 0x0

    iput v2, p0, Lcom/tutk/IOTC/Monitor;->mOrigDist:F

    .line 62
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lcom/tutk/IOTC/Monitor;->mCurrentScale:F

    .line 63
    const/high16 v2, 0x40000000    # 2.0f

    iput v2, p0, Lcom/tutk/IOTC/Monitor;->mCurrentMaxScale:F

    .line 66
    iput-object v8, p0, Lcom/tutk/IOTC/Monitor;->mSurHolder:Landroid/view/SurfaceHolder;

    .line 70
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/tutk/IOTC/Monitor;->mRectCanvas:Landroid/graphics/Rect;

    .line 71
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/tutk/IOTC/Monitor;->mRectMonitor:Landroid/graphics/Rect;

    .line 73
    new-array v2, v6, [I

    sget v3, Lcom/tutk/IOTC/R$drawable;->rotation_1:I

    aput v3, v2, v5

    sget v3, Lcom/tutk/IOTC/R$drawable;->rotation_2:I

    aput v3, v2, v7

    const/4 v3, 0x2

    sget v4, Lcom/tutk/IOTC/R$drawable;->rotation_3:I

    aput v4, v2, v3

    const/4 v3, 0x3

    sget v4, Lcom/tutk/IOTC/R$drawable;->rotation_4:I

    aput v4, v2, v3

    const/4 v3, 0x4

    .line 74
    sget v4, Lcom/tutk/IOTC/R$drawable;->rotation_5:I

    aput v4, v2, v3

    const/4 v3, 0x5

    sget v4, Lcom/tutk/IOTC/R$drawable;->rotation_6:I

    aput v4, v2, v3

    const/4 v3, 0x6

    sget v4, Lcom/tutk/IOTC/R$drawable;->rotation_7:I

    aput v4, v2, v3

    const/4 v3, 0x7

    sget v4, Lcom/tutk/IOTC/R$drawable;->rotation_8:I

    aput v4, v2, v3

    iput-object v2, p0, Lcom/tutk/IOTC/Monitor;->rotation_res:[I

    .line 75
    new-array v2, v6, [Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/tutk/IOTC/Monitor;->rotation:[Landroid/graphics/Bitmap;

    .line 76
    new-instance v2, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v2}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v2, p0, Lcom/tutk/IOTC/Monitor;->mLastFrameLock:Ljava/util/concurrent/locks/Lock;

    .line 78
    const/4 v2, -0x1

    iput v2, p0, Lcom/tutk/IOTC/Monitor;->mAVChannel:I

    .line 80
    iput v5, p0, Lcom/tutk/IOTC/Monitor;->mCurVideoWidth:I

    .line 81
    iput v5, p0, Lcom/tutk/IOTC/Monitor;->mCurVideoHeight:I

    .line 83
    iput-object v8, p0, Lcom/tutk/IOTC/Monitor;->mThreadRender:Lcom/tutk/IOTC/Monitor$ThreadRender;

    .line 89
    invoke-virtual {p0}, Lcom/tutk/IOTC/Monitor;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    iput-object v2, p0, Lcom/tutk/IOTC/Monitor;->mSurHolder:Landroid/view/SurfaceHolder;

    .line 90
    iget-object v2, p0, Lcom/tutk/IOTC/Monitor;->mSurHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v2, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 92
    new-instance v2, Landroid/view/GestureDetector;

    invoke-direct {v2, p0}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v2, p0, Lcom/tutk/IOTC/Monitor;->mGestureDetector:Landroid/view/GestureDetector;

    .line 93
    invoke-virtual {p0, p0}, Lcom/tutk/IOTC/Monitor;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 94
    invoke-virtual {p0, v7}, Lcom/tutk/IOTC/Monitor;->setLongClickable(Z)V

    .line 96
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v6, :cond_0

    .line 101
    return-void

    .line 98
    :cond_0
    invoke-virtual {p0}, Lcom/tutk/IOTC/Monitor;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/tutk/IOTC/Monitor;->rotation_res:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    .line 99
    .local v1, "is":Ljava/io/InputStream;
    iget-object v2, p0, Lcom/tutk/IOTC/Monitor;->rotation:[Landroid/graphics/Bitmap;

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v3

    aput-object v3, v2, v0

    .line 96
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/tutk/IOTC/Monitor;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/tutk/IOTC/Monitor;->mLastFrame:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$1(Lcom/tutk/IOTC/Monitor;)Landroid/view/SurfaceHolder;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/tutk/IOTC/Monitor;->mSurHolder:Landroid/view/SurfaceHolder;

    return-object v0
.end method

.method static synthetic access$2(Lcom/tutk/IOTC/Monitor;)Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/tutk/IOTC/Monitor;->mRectCanvas:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$3(Lcom/tutk/IOTC/Monitor;)[Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/tutk/IOTC/Monitor;->rotation:[Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$4(Lcom/tutk/IOTC/Monitor;)Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/tutk/IOTC/Monitor;->mRectMonitor:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$5(Lcom/tutk/IOTC/Monitor;)Lcom/tutk/IOTC/Camera;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/tutk/IOTC/Monitor;->mCamera:Lcom/tutk/IOTC/Camera;

    return-object v0
.end method

.method static synthetic access$6(Lcom/tutk/IOTC/Monitor;)I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/tutk/IOTC/Monitor;->mAVChannel:I

    return v0
.end method

.method private parseMidPoint(Landroid/graphics/PointF;FFFF)V
    .locals 3
    .param p1, "point"    # Landroid/graphics/PointF;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "right"    # F
    .param p5, "bottom"    # F

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 508
    add-float v0, p2, p4

    div-float/2addr v0, v2

    add-float v1, p3, p5

    div-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 509
    return-void
.end method

.method private spacing(Landroid/view/MotionEvent;)F
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "FloatMath"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 493
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    sub-float v0, v2, v3

    .line 494
    .local v0, "x":F
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    sub-float v1, v2, v3

    .line 495
    .local v1, "y":F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    return v2
.end method


# virtual methods
.method public attachCamera(Lcom/tutk/IOTC/Camera;I)V
    .locals 2
    .param p1, "camera"    # Lcom/tutk/IOTC/Camera;
    .param p2, "avChannel"    # I

    .prologue
    const/4 v0, 0x0

    .line 160
    iput v0, p0, Lcom/tutk/IOTC/Monitor;->mCurVideoWidth:I

    .line 161
    iput v0, p0, Lcom/tutk/IOTC/Monitor;->mCurVideoHeight:I

    .line 162
    iput-object p1, p0, Lcom/tutk/IOTC/Monitor;->mCamera:Lcom/tutk/IOTC/Camera;

    .line 163
    iget-object v0, p0, Lcom/tutk/IOTC/Monitor;->mCamera:Lcom/tutk/IOTC/Camera;

    invoke-virtual {v0, p0}, Lcom/tutk/IOTC/Camera;->registerIOTCListener(Lcom/tutk/IOTC/IRegisterIOTCListener;)Z

    .line 164
    iput p2, p0, Lcom/tutk/IOTC/Monitor;->mAVChannel:I

    .line 166
    iget-object v0, p0, Lcom/tutk/IOTC/Monitor;->mThreadRender:Lcom/tutk/IOTC/Monitor$ThreadRender;

    if-nez v0, :cond_0

    .line 167
    new-instance v0, Lcom/tutk/IOTC/Monitor$ThreadRender;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/tutk/IOTC/Monitor$ThreadRender;-><init>(Lcom/tutk/IOTC/Monitor;Lcom/tutk/IOTC/Monitor$ThreadRender;)V

    iput-object v0, p0, Lcom/tutk/IOTC/Monitor;->mThreadRender:Lcom/tutk/IOTC/Monitor$ThreadRender;

    .line 168
    const-string v0, "monitor"

    const-string v1, "mThreadRender.start-------------------------"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget-object v0, p0, Lcom/tutk/IOTC/Monitor;->mThreadRender:Lcom/tutk/IOTC/Monitor$ThreadRender;

    invoke-virtual {v0}, Lcom/tutk/IOTC/Monitor$ThreadRender;->start()V

    .line 171
    :cond_0
    return-void
.end method

.method public deattachCamera()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 175
    const/4 v1, -0x1

    iput v1, p0, Lcom/tutk/IOTC/Monitor;->mAVChannel:I

    .line 177
    iget-object v1, p0, Lcom/tutk/IOTC/Monitor;->mCamera:Lcom/tutk/IOTC/Camera;

    if-eqz v1, :cond_0

    .line 178
    iget-object v1, p0, Lcom/tutk/IOTC/Monitor;->mCamera:Lcom/tutk/IOTC/Camera;

    invoke-virtual {v1, p0}, Lcom/tutk/IOTC/Camera;->unregisterIOTCListener(Lcom/tutk/IOTC/IRegisterIOTCListener;)Z

    .line 179
    iput-object v2, p0, Lcom/tutk/IOTC/Monitor;->mCamera:Lcom/tutk/IOTC/Camera;

    .line 182
    :cond_0
    iget-object v1, p0, Lcom/tutk/IOTC/Monitor;->mThreadRender:Lcom/tutk/IOTC/Monitor$ThreadRender;

    if-eqz v1, :cond_1

    .line 183
    iget-object v1, p0, Lcom/tutk/IOTC/Monitor;->mThreadRender:Lcom/tutk/IOTC/Monitor$ThreadRender;

    invoke-virtual {v1}, Lcom/tutk/IOTC/Monitor$ThreadRender;->stopThread()V

    .line 186
    :try_start_0
    iget-object v1, p0, Lcom/tutk/IOTC/Monitor;->mThreadRender:Lcom/tutk/IOTC/Monitor$ThreadRender;

    invoke-virtual {v1}, Lcom/tutk/IOTC/Monitor$ThreadRender;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    :goto_0
    iput-object v2, p0, Lcom/tutk/IOTC/Monitor;->mThreadRender:Lcom/tutk/IOTC/Monitor$ThreadRender;

    .line 193
    :cond_1
    iput-object v2, p0, Lcom/tutk/IOTC/Monitor;->mLastFrame:Landroid/graphics/Bitmap;

    .line 194
    return-void

    .line 187
    :catch_0
    move-exception v0

    .line 188
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 426
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
    const/16 v8, 0x1001

    const/16 v1, 0x8

    const/high16 v6, 0x42c80000    # 100.0f

    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 431
    iget-object v0, p0, Lcom/tutk/IOTC/Monitor;->mRectCanvas:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget v3, p0, Lcom/tutk/IOTC/Monitor;->vLeft:I

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/tutk/IOTC/Monitor;->mRectCanvas:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget v3, p0, Lcom/tutk/IOTC/Monitor;->vTop:I

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/tutk/IOTC/Monitor;->mRectCanvas:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget v3, p0, Lcom/tutk/IOTC/Monitor;->vRight:I

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/tutk/IOTC/Monitor;->mRectCanvas:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget v3, p0, Lcom/tutk/IOTC/Monitor;->vBottom:I

    if-eq v0, v3, :cond_1

    .line 473
    :cond_0
    :goto_0
    return v2

    .line 434
    :cond_1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "velocityX: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", velocityY: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 436
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float/2addr v0, v3

    cmpl-float v0, v0, v6

    if-lez v0, :cond_3

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v5

    if-lez v0, :cond_3

    .line 439
    iget-object v0, p0, Lcom/tutk/IOTC/Monitor;->mCamera:Lcom/tutk/IOTC/Camera;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/tutk/IOTC/Monitor;->mAVChannel:I

    if-ltz v0, :cond_2

    .line 440
    iget-object v6, p0, Lcom/tutk/IOTC/Monitor;->mCamera:Lcom/tutk/IOTC/Camera;

    iget v7, p0, Lcom/tutk/IOTC/Monitor;->mAVChannel:I

    const/4 v0, 0x6

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-static/range {v0 .. v5}, Lcom/tutk/IOTC/AVIOCTRLDEFs$SMsgAVIoctrlPtzCmd;->parseContent(BBBBBB)[B

    move-result-object v0

    invoke-virtual {v6, v7, v8, v0}, Lcom/tutk/IOTC/Camera;->sendIOCtrl(II[B)V

    .line 463
    :cond_2
    :goto_1
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/tutk/IOTC/Monitor$1;

    invoke-direct {v1, p0}, Lcom/tutk/IOTC/Monitor$1;-><init>(Lcom/tutk/IOTC/Monitor;)V

    .line 471
    const-wide/16 v3, 0x5dc

    .line 463
    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 442
    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float/2addr v0, v3

    cmpl-float v0, v0, v6

    if-lez v0, :cond_4

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v5

    if-lez v0, :cond_4

    .line 445
    iget-object v0, p0, Lcom/tutk/IOTC/Monitor;->mCamera:Lcom/tutk/IOTC/Camera;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/tutk/IOTC/Monitor;->mAVChannel:I

    if-ltz v0, :cond_2

    .line 447
    iget-object v6, p0, Lcom/tutk/IOTC/Monitor;->mCamera:Lcom/tutk/IOTC/Camera;

    iget v7, p0, Lcom/tutk/IOTC/Monitor;->mAVChannel:I

    const/4 v0, 0x3

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-static/range {v0 .. v5}, Lcom/tutk/IOTC/AVIOCTRLDEFs$SMsgAVIoctrlPtzCmd;->parseContent(BBBBBB)[B

    move-result-object v0

    invoke-virtual {v6, v7, v8, v0}, Lcom/tutk/IOTC/Camera;->sendIOCtrl(II[B)V

    goto :goto_1

    .line 450
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sub-float/2addr v0, v3

    cmpl-float v0, v0, v6

    if-lez v0, :cond_5

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v5

    if-lez v0, :cond_5

    .line 453
    iget-object v0, p0, Lcom/tutk/IOTC/Monitor;->mCamera:Lcom/tutk/IOTC/Camera;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/tutk/IOTC/Monitor;->mAVChannel:I

    if-ltz v0, :cond_2

    .line 454
    iget-object v6, p0, Lcom/tutk/IOTC/Monitor;->mCamera:Lcom/tutk/IOTC/Camera;

    iget v7, p0, Lcom/tutk/IOTC/Monitor;->mAVChannel:I

    const/4 v0, 0x2

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-static/range {v0 .. v5}, Lcom/tutk/IOTC/AVIOCTRLDEFs$SMsgAVIoctrlPtzCmd;->parseContent(BBBBBB)[B

    move-result-object v0

    invoke-virtual {v6, v7, v8, v0}, Lcom/tutk/IOTC/Camera;->sendIOCtrl(II[B)V

    goto :goto_1

    .line 456
    :cond_5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sub-float/2addr v0, v3

    cmpl-float v0, v0, v6

    if-lez v0, :cond_2

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v5

    if-lez v0, :cond_2

    .line 459
    iget-object v0, p0, Lcom/tutk/IOTC/Monitor;->mCamera:Lcom/tutk/IOTC/Camera;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/tutk/IOTC/Monitor;->mAVChannel:I

    if-ltz v0, :cond_2

    .line 460
    iget-object v6, p0, Lcom/tutk/IOTC/Monitor;->mCamera:Lcom/tutk/IOTC/Camera;

    iget v7, p0, Lcom/tutk/IOTC/Monitor;->mAVChannel:I

    const/4 v0, 0x1

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-static/range {v0 .. v5}, Lcom/tutk/IOTC/AVIOCTRLDEFs$SMsgAVIoctrlPtzCmd;->parseContent(BBBBBB)[B

    move-result-object v0

    invoke-virtual {v6, v7, v8, v0}, Lcom/tutk/IOTC/Camera;->sendIOCtrl(II[B)V

    goto/16 :goto_1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 477
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    .line 480
    const/4 v0, 0x1

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 485
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 488
    const/4 v0, 0x0

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 27
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 255
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutk/IOTC/Monitor;->mGestureDetector:Landroid/view/GestureDetector;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 257
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v22

    move/from16 v0, v22

    and-int/lit16 v0, v0, 0xff

    move/from16 v22, v0

    packed-switch v22, :pswitch_data_0

    .line 422
    :cond_0
    :goto_0
    :pswitch_0
    const/16 v22, 0x1

    :goto_1
    return v22

    .line 260
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutk/IOTC/Monitor;->mRectCanvas:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tutk/IOTC/Monitor;->vLeft:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutk/IOTC/Monitor;->mRectCanvas:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tutk/IOTC/Monitor;->vTop:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutk/IOTC/Monitor;->mRectCanvas:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tutk/IOTC/Monitor;->vRight:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutk/IOTC/Monitor;->mRectCanvas:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tutk/IOTC/Monitor;->vBottom:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_2

    .line 261
    :cond_1
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tutk/IOTC/Monitor;->mPinchedMode:I

    .line 262
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutk/IOTC/Monitor;->mStartPoint:Landroid/graphics/PointF;

    move-object/from16 v22, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v23

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v24

    invoke-virtual/range {v22 .. v24}, Landroid/graphics/PointF;->set(FF)V

    .line 264
    :cond_2
    const-string v22, "test"

    const-string v23, "onDown(%f,%f)"

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x1

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v26

    aput-object v26, v24, v25

    invoke-static/range {v23 .. v24}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 269
    :pswitch_2
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/tutk/IOTC/Monitor;->spacing(Landroid/view/MotionEvent;)F

    move-result v5

    .line 271
    .local v5, "dist":F
    const/high16 v22, 0x41200000    # 10.0f

    cmpl-float v22, v5, v22

    if-lez v22, :cond_3

    .line 273
    const/16 v22, 0x2

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tutk/IOTC/Monitor;->mPinchedMode:I

    .line 274
    move-object/from16 v0, p0

    iput v5, v0, Lcom/tutk/IOTC/Monitor;->mOrigDist:F

    .line 276
    sget-object v22, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "Action_Pointer_Down -> origDist("

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tutk/IOTC/Monitor;->mOrigDist:F

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ")"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 278
    :cond_3
    const-string v22, "test"

    const-string v23, "ACTION_POINTER_DOWN(%f,%f)"

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x1

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v26

    aput-object v26, v24, v25

    invoke-static/range {v23 .. v24}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 284
    .end local v5    # "dist":F
    :pswitch_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tutk/IOTC/Monitor;->mPinchedMode:I

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_d

    .line 286
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/tutk/IOTC/Monitor;->mLastZoomTime:J

    move-wide/from16 v24, v0

    sub-long v22, v22, v24

    const-wide/16 v24, 0x21

    cmp-long v22, v22, v24

    if-gez v22, :cond_4

    .line 287
    const/16 v22, 0x1

    goto/16 :goto_1

    .line 289
    :cond_4
    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4}, Landroid/graphics/PointF;-><init>()V

    .line 290
    .local v4, "currentPoint":Landroid/graphics/PointF;
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v22

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v4, v0, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 292
    iget v0, v4, Landroid/graphics/PointF;->x:F

    move/from16 v22, v0

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutk/IOTC/Monitor;->mStartPoint:Landroid/graphics/PointF;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v23, v0

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    sub-int v11, v22, v23

    .line 293
    .local v11, "offsetX":I
    iget v0, v4, Landroid/graphics/PointF;->y:F

    move/from16 v22, v0

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutk/IOTC/Monitor;->mStartPoint:Landroid/graphics/PointF;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v23, v0

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    sub-int v12, v22, v23

    .line 295
    .local v12, "offsetY":I
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/tutk/IOTC/Monitor;->mStartPoint:Landroid/graphics/PointF;

    .line 297
    new-instance v16, Landroid/graphics/Rect;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Rect;-><init>()V

    .line 298
    .local v16, "rect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutk/IOTC/Monitor;->mRectCanvas:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 299
    move-object/from16 v0, v16

    invoke-virtual {v0, v11, v12}, Landroid/graphics/Rect;->offset(II)V

    .line 301
    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v22, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v23, v0

    sub-int v21, v22, v23

    .line 302
    .local v21, "width":I
    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v22, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    sub-int v6, v22, v23

    .line 304
    .local v6, "height":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutk/IOTC/Monitor;->mRectMonitor:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutk/IOTC/Monitor;->mRectMonitor:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutk/IOTC/Monitor;->mRectMonitor:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutk/IOTC/Monitor;->mRectMonitor:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_9

    .line 306
    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutk/IOTC/Monitor;->mRectMonitor:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_5

    .line 307
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutk/IOTC/Monitor;->mRectMonitor:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, v16

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 308
    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    add-int v22, v22, v21

    move/from16 v0, v22

    move-object/from16 v1, v16

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 311
    :cond_5
    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutk/IOTC/Monitor;->mRectMonitor:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_6

    .line 312
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutk/IOTC/Monitor;->mRectCanvas:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, v16

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 313
    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    add-int v22, v22, v6

    move/from16 v0, v22

    move-object/from16 v1, v16

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 316
    :cond_6
    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutk/IOTC/Monitor;->mRectMonitor:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_7

    .line 317
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutk/IOTC/Monitor;->mRectMonitor:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, v16

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 318
    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v22, v0

    sub-int v22, v22, v21

    move/from16 v0, v22

    move-object/from16 v1, v16

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 321
    :cond_7
    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutk/IOTC/Monitor;->mRectMonitor:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_8

    .line 322
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutk/IOTC/Monitor;->mRectCanvas:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, v16

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 323
    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v22, v0

    sub-int v22, v22, v6

    move/from16 v0, v22

    move-object/from16 v1, v16

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 349
    :cond_8
    :goto_2
    sget-object v22, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "offset ("

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "), after offset rect = ("

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ")"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 351
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutk/IOTC/Monitor;->mRectCanvas:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_0

    .line 328
    :cond_9
    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutk/IOTC/Monitor;->mRectMonitor:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_a

    .line 329
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutk/IOTC/Monitor;->mRectCanvas:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, v16

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 330
    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    add-int v22, v22, v21

    move/from16 v0, v22

    move-object/from16 v1, v16

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 333
    :cond_a
    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutk/IOTC/Monitor;->mRectMonitor:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_b

    .line 334
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutk/IOTC/Monitor;->mRectMonitor:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, v16

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 335
    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    add-int v22, v22, v6

    move/from16 v0, v22

    move-object/from16 v1, v16

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 338
    :cond_b
    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutk/IOTC/Monitor;->mRectMonitor:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_c

    .line 339
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutk/IOTC/Monitor;->mRectCanvas:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, v16

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 340
    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v22, v0

    sub-int v22, v22, v21

    move/from16 v0, v22

    move-object/from16 v1, v16

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 343
    :cond_c
    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutk/IOTC/Monitor;->mRectMonitor:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_8

    .line 344
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutk/IOTC/Monitor;->mRectMonitor:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, v16

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 345
    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v22, v0

    sub-int v22, v22, v6

    move/from16 v0, v22

    move-object/from16 v1, v16

    iput v0, v1, Landroid/graphics/Rect;->top:I

    goto/16 :goto_2

    .line 354
    .end local v4    # "currentPoint":Landroid/graphics/PointF;
    .end local v6    # "height":I
    .end local v11    # "offsetX":I
    .end local v12    # "offsetY":I
    .end local v16    # "rect":Landroid/graphics/Rect;
    .end local v21    # "width":I
    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tutk/IOTC/Monitor;->mPinchedMode:I

    move/from16 v22, v0

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_0

    .line 356
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/tutk/IOTC/Monitor;->mLastZoomTime:J

    move-wide/from16 v24, v0

    sub-long v22, v22, v24

    const-wide/16 v24, 0x21

    cmp-long v22, v22, v24

    if-gez v22, :cond_e

    .line 357
    const/16 v22, 0x1

    goto/16 :goto_1

    .line 359
    :cond_e
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_f

    .line 360
    const/16 v22, 0x1

    goto/16 :goto_1

    .line 362
    :cond_f
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/tutk/IOTC/Monitor;->spacing(Landroid/view/MotionEvent;)F

    move-result v10

    .line 363
    .local v10, "newDist":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tutk/IOTC/Monitor;->mOrigDist:F

    move/from16 v22, v0

    div-float v17, v10, v22

    .line 364
    .local v17, "scale":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tutk/IOTC/Monitor;->mCurrentScale:F

    move/from16 v22, v0

    mul-float v22, v22, v17

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tutk/IOTC/Monitor;->mCurrentScale:F

    .line 366
    move-object/from16 v0, p0

    iput v10, v0, Lcom/tutk/IOTC/Monitor;->mOrigDist:F

    .line 368
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tutk/IOTC/Monitor;->mCurrentScale:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tutk/IOTC/Monitor;->mCurrentMaxScale:F

    move/from16 v23, v0

    cmpl-float v22, v22, v23

    if-lez v22, :cond_10

    .line 369
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tutk/IOTC/Monitor;->mCurrentMaxScale:F

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tutk/IOTC/Monitor;->mCurrentScale:F

    .line 370
    const/16 v22, 0x1

    goto/16 :goto_1

    .line 373
    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tutk/IOTC/Monitor;->mCurrentScale:F

    move/from16 v22, v0

    const/high16 v23, 0x3f800000    # 1.0f

    cmpg-float v22, v22, v23

    if-gez v22, :cond_11

    .line 374
    const/high16 v22, 0x3f800000    # 1.0f

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tutk/IOTC/Monitor;->mCurrentScale:F

    .line 377
    :cond_11
    sget-object v22, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "newDist("

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ") / origDist("

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tutk/IOTC/Monitor;->mOrigDist:F

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ") = zoom scale("

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tutk/IOTC/Monitor;->mCurrentScale:F

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ")"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 379
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tutk/IOTC/Monitor;->vRight:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tutk/IOTC/Monitor;->vLeft:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    mul-int/lit8 v9, v22, 0x3

    .line 380
    .local v9, "maxWidth":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tutk/IOTC/Monitor;->vBottom:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tutk/IOTC/Monitor;->vTop:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    mul-int/lit8 v8, v22, 0x3

    .line 382
    .local v8, "maxHeight":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tutk/IOTC/Monitor;->vRight:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tutk/IOTC/Monitor;->vLeft:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tutk/IOTC/Monitor;->mCurrentScale:F

    move/from16 v23, v0

    mul-float v22, v22, v23

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v19, v0

    .line 383
    .local v19, "scaledWidth":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tutk/IOTC/Monitor;->vBottom:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tutk/IOTC/Monitor;->vTop:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tutk/IOTC/Monitor;->mCurrentScale:F

    move/from16 v23, v0

    mul-float v22, v22, v23

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v18, v0

    .line 384
    .local v18, "scaledHeight":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tutk/IOTC/Monitor;->vRight:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tutk/IOTC/Monitor;->vLeft:I

    move/from16 v23, v0

    sub-int v14, v22, v23

    .line 385
    .local v14, "origWidth":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tutk/IOTC/Monitor;->vBottom:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tutk/IOTC/Monitor;->vTop:I

    move/from16 v23, v0

    sub-int v13, v22, v23

    .line 387
    .local v13, "origHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutk/IOTC/Monitor;->mRectMonitor:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Rect;->width()I

    move-result v22

    div-int/lit8 v22, v22, 0x2

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutk/IOTC/Monitor;->mRectMonitor:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Rect;->width()I

    move-result v23

    div-int/lit8 v23, v23, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutk/IOTC/Monitor;->mRectCanvas:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    mul-float v23, v23, v17

    sub-float v22, v22, v23

    move/from16 v0, v22

    float-to-int v7, v0

    .line 388
    .local v7, "l":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutk/IOTC/Monitor;->mRectMonitor:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Rect;->height()I

    move-result v22

    div-int/lit8 v22, v22, 0x2

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutk/IOTC/Monitor;->mRectMonitor:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Rect;->height()I

    move-result v23

    div-int/lit8 v23, v23, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutk/IOTC/Monitor;->mRectCanvas:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    mul-float v23, v23, v17

    sub-float v22, v22, v23

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v20, v0

    .line 389
    .local v20, "t":I
    add-int v15, v7, v19

    .line 390
    .local v15, "r":I
    add-int v3, v20, v18

    .line 392
    .local v3, "b":I
    move/from16 v0, v19

    if-le v0, v14, :cond_12

    move/from16 v0, v18

    if-gt v0, v13, :cond_14

    .line 393
    :cond_12
    move-object/from16 v0, p0

    iget v7, v0, Lcom/tutk/IOTC/Monitor;->vLeft:I

    .line 394
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tutk/IOTC/Monitor;->vTop:I

    move/from16 v20, v0

    .line 395
    move-object/from16 v0, p0

    iget v15, v0, Lcom/tutk/IOTC/Monitor;->vRight:I

    .line 396
    move-object/from16 v0, p0

    iget v3, v0, Lcom/tutk/IOTC/Monitor;->vBottom:I

    .line 404
    :cond_13
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutk/IOTC/Monitor;->mRectCanvas:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v0, v7, v1, v15, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 406
    sget-object v22, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "zoom -> l: "

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", t: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", r: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", b: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ",  width: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", height: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 407
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/tutk/IOTC/Monitor;->mLastZoomTime:J

    goto/16 :goto_0

    .line 397
    :cond_14
    move/from16 v0, v19

    if-ge v0, v9, :cond_15

    move/from16 v0, v18

    if-lt v0, v8, :cond_13

    .line 398
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutk/IOTC/Monitor;->mRectCanvas:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v7, v0, Landroid/graphics/Rect;->left:I

    .line 399
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutk/IOTC/Monitor;->mRectCanvas:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    .line 400
    add-int v15, v7, v9

    .line 401
    add-int v3, v20, v8

    goto/16 :goto_3

    .line 414
    .end local v3    # "b":I
    .end local v7    # "l":I
    .end local v8    # "maxHeight":I
    .end local v9    # "maxWidth":I
    .end local v10    # "newDist":F
    .end local v13    # "origHeight":I
    .end local v14    # "origWidth":I
    .end local v15    # "r":I
    .end local v17    # "scale":F
    .end local v18    # "scaledHeight":I
    .end local v19    # "scaledWidth":I
    .end local v20    # "t":I
    :pswitch_4
    const-string v22, "test"

    const-string v23, "ACTION_UP(%f,%f)"

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x1

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v26

    aput-object v26, v24, v25

    invoke-static/range {v23 .. v24}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tutk/IOTC/Monitor;->mCurrentScale:F

    move/from16 v22, v0

    const/high16 v23, 0x3f800000    # 1.0f

    cmpl-float v22, v22, v23

    if-nez v22, :cond_0

    .line 416
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tutk/IOTC/Monitor;->mPinchedMode:I

    goto/16 :goto_0

    .line 257
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method public receiveChannelInfo(Lcom/tutk/IOTC/Camera;II)V
    .locals 0
    .param p1, "camera"    # Lcom/tutk/IOTC/Camera;
    .param p2, "sessionChannel"    # I
    .param p3, "resultCode"    # I

    .prologue
    .line 243
    return-void
.end method

.method public receiveFrameData(Lcom/tutk/IOTC/Camera;ILandroid/graphics/Bitmap;)V
    .locals 9
    .param p1, "camera"    # Lcom/tutk/IOTC/Camera;
    .param p2, "avChannel"    # I
    .param p3, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v8, 0x0

    .line 198
    iget v0, p0, Lcom/tutk/IOTC/Monitor;->mAVChannel:I

    if-ne v0, p2, :cond_2

    .line 200
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-lez v0, :cond_1

    .line 201
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/tutk/IOTC/Monitor;->mCurVideoWidth:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/tutk/IOTC/Monitor;->mCurVideoHeight:I

    if-eq v0, v1, :cond_1

    .line 203
    :cond_0
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/tutk/IOTC/Monitor;->mCurVideoWidth:I

    .line 204
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/tutk/IOTC/Monitor;->mCurVideoHeight:I

    .line 206
    iget-object v0, p0, Lcom/tutk/IOTC/Monitor;->mRectCanvas:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/tutk/IOTC/Monitor;->mRectMonitor:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/tutk/IOTC/Monitor;->mRectMonitor:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v8, v8, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 208
    iget-object v0, p0, Lcom/tutk/IOTC/Monitor;->mRectMonitor:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/tutk/IOTC/Monitor;->mRectMonitor:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/tutk/IOTC/Monitor;->mRectMonitor:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/tutk/IOTC/Monitor;->mRectMonitor:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_3

    .line 209
    const-string v0, "Monitor"

    const-string v1, "Landscape layout1"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iget v0, p0, Lcom/tutk/IOTC/Monitor;->mCurVideoWidth:I

    int-to-double v0, v0

    iget v2, p0, Lcom/tutk/IOTC/Monitor;->mCurVideoHeight:I

    int-to-double v2, v2

    div-double v6, v0, v2

    .line 211
    .local v6, "ratio":D
    iget-object v0, p0, Lcom/tutk/IOTC/Monitor;->mRectCanvas:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/tutk/IOTC/Monitor;->mRectMonitor:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-double v1, v1

    mul-double/2addr v1, v6

    double-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 212
    iget-object v0, p0, Lcom/tutk/IOTC/Monitor;->mRectCanvas:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/tutk/IOTC/Monitor;->mRectMonitor:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/tutk/IOTC/Monitor;->mRectCanvas:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1, v8}, Landroid/graphics/Rect;->offset(II)V

    .line 220
    :goto_0
    iget-object v0, p0, Lcom/tutk/IOTC/Monitor;->mRectCanvas:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iput v0, p0, Lcom/tutk/IOTC/Monitor;->vLeft:I

    .line 221
    iget-object v0, p0, Lcom/tutk/IOTC/Monitor;->mRectCanvas:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iput v0, p0, Lcom/tutk/IOTC/Monitor;->vTop:I

    .line 222
    iget-object v0, p0, Lcom/tutk/IOTC/Monitor;->mRectCanvas:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iput v0, p0, Lcom/tutk/IOTC/Monitor;->vRight:I

    .line 223
    iget-object v0, p0, Lcom/tutk/IOTC/Monitor;->mRectCanvas:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iput v0, p0, Lcom/tutk/IOTC/Monitor;->vBottom:I

    .line 225
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/tutk/IOTC/Monitor;->mCurrentScale:F

    .line 227
    iget-object v1, p0, Lcom/tutk/IOTC/Monitor;->mMidPoint:Landroid/graphics/PointF;

    iget v0, p0, Lcom/tutk/IOTC/Monitor;->vLeft:I

    int-to-float v2, v0

    iget v0, p0, Lcom/tutk/IOTC/Monitor;->vTop:I

    int-to-float v3, v0

    iget v0, p0, Lcom/tutk/IOTC/Monitor;->vRight:I

    int-to-float v4, v0

    iget v0, p0, Lcom/tutk/IOTC/Monitor;->vBottom:I

    int-to-float v5, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/tutk/IOTC/Monitor;->parseMidPoint(Landroid/graphics/PointF;FFFF)V

    .line 228
    iget-object v1, p0, Lcom/tutk/IOTC/Monitor;->mMidPointForCanvas:Landroid/graphics/PointF;

    iget v0, p0, Lcom/tutk/IOTC/Monitor;->vLeft:I

    int-to-float v2, v0

    iget v0, p0, Lcom/tutk/IOTC/Monitor;->vTop:I

    int-to-float v3, v0

    iget v0, p0, Lcom/tutk/IOTC/Monitor;->vRight:I

    int-to-float v4, v0

    iget v0, p0, Lcom/tutk/IOTC/Monitor;->vBottom:I

    int-to-float v5, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/tutk/IOTC/Monitor;->parseMidPoint(Landroid/graphics/PointF;FFFF)V

    .line 230
    const-string v0, "Monitor"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Change canvas size ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tutk/IOTC/Monitor;->mRectCanvas:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/tutk/IOTC/Monitor;->mRectCanvas:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tutk/IOTC/Monitor;->mRectCanvas:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lcom/tutk/IOTC/Monitor;->mRectCanvas:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    const-string v0, "Monitor"

    const-string v1, "canvas %d, %d,%d,%d"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/tutk/IOTC/Monitor;->mRectCanvas:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v8

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/tutk/IOTC/Monitor;->mRectCanvas:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/tutk/IOTC/Monitor;->mRectCanvas:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/tutk/IOTC/Monitor;->mRectCanvas:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    .end local v6    # "ratio":D
    :cond_1
    iput-object p3, p0, Lcom/tutk/IOTC/Monitor;->mLastFrame:Landroid/graphics/Bitmap;

    .line 235
    :cond_2
    return-void

    .line 214
    :cond_3
    const-string v0, "Monitor"

    const-string v1, "Portrait layout1"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iget v0, p0, Lcom/tutk/IOTC/Monitor;->mCurVideoWidth:I

    int-to-double v0, v0

    iget v2, p0, Lcom/tutk/IOTC/Monitor;->mCurVideoHeight:I

    int-to-double v2, v2

    div-double v6, v0, v2

    .line 216
    .restart local v6    # "ratio":D
    iget-object v0, p0, Lcom/tutk/IOTC/Monitor;->mRectCanvas:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/tutk/IOTC/Monitor;->mRectMonitor:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-double v1, v1

    div-double/2addr v1, v6

    double-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 217
    iget-object v0, p0, Lcom/tutk/IOTC/Monitor;->mRectCanvas:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/tutk/IOTC/Monitor;->mRectMonitor:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/tutk/IOTC/Monitor;->mRectCanvas:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v8, v1}, Landroid/graphics/Rect;->offset(II)V

    goto/16 :goto_0
.end method

.method public receiveFrameInfo(Lcom/tutk/IOTC/Camera;IJIIII)V
    .locals 0
    .param p1, "camera"    # Lcom/tutk/IOTC/Camera;
    .param p2, "sessionChannel"    # I
    .param p3, "bitRate"    # J
    .param p5, "frameRate"    # I
    .param p6, "onlineNm"    # I
    .param p7, "frameCount"    # I
    .param p8, "incompleteFrameCount"    # I

    .prologue
    .line 239
    return-void
.end method

.method public receiveIOCtrlData(Lcom/tutk/IOTC/Camera;II[B)V
    .locals 0
    .param p1, "camera"    # Lcom/tutk/IOTC/Camera;
    .param p2, "sessionChannel"    # I
    .param p3, "avIOCtrlMsgType"    # I
    .param p4, "data"    # [B

    .prologue
    .line 251
    return-void
.end method

.method public receiveOriginalFrameData(Lcom/tutk/IOTC/Camera;I[BI[BI)V
    .locals 0
    .param p1, "camera"    # Lcom/tutk/IOTC/Camera;
    .param p2, "avChannel"    # I
    .param p3, "framehead"    # [B
    .param p4, "headlen"    # I
    .param p5, "data"    # [B
    .param p6, "dataLen"    # I

    .prologue
    .line 609
    return-void
.end method

.method public receiveRGBData(Lcom/tutk/IOTC/Camera;I[BII)V
    .locals 0
    .param p1, "camera"    # Lcom/tutk/IOTC/Camera;
    .param p2, "avChannel"    # I
    .param p3, "RGBData"    # [B
    .param p4, "nWidth"    # I
    .param p5, "nHeight"    # I

    .prologue
    .line 616
    return-void
.end method

.method public receiveSessionInfo(Lcom/tutk/IOTC/Camera;I)V
    .locals 0
    .param p1, "camera"    # Lcom/tutk/IOTC/Camera;
    .param p2, "resultCode"    # I

    .prologue
    .line 247
    return-void
.end method

.method public setMaxZoom(F)V
    .locals 0
    .param p1, "value"    # F

    .prologue
    .line 104
    iput p1, p0, Lcom/tutk/IOTC/Monitor;->mCurrentMaxScale:F

    .line 105
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 9
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    const/4 v8, 0x0

    .line 109
    monitor-enter p0

    .line 111
    :try_start_0
    iget-object v0, p0, Lcom/tutk/IOTC/Monitor;->mRectMonitor:Landroid/graphics/Rect;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 112
    iget-object v0, p0, Lcom/tutk/IOTC/Monitor;->mRectCanvas:Landroid/graphics/Rect;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 114
    iget v0, p0, Lcom/tutk/IOTC/Monitor;->mCurVideoWidth:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/tutk/IOTC/Monitor;->mCurVideoHeight:I

    if-nez v0, :cond_2

    .line 115
    :cond_0
    if-ge p4, p3, :cond_1

    .line 116
    iget-object v0, p0, Lcom/tutk/IOTC/Monitor;->mRectCanvas:Landroid/graphics/Rect;

    mul-int/lit8 v1, p4, 0x10

    div-int/lit8 v1, v1, 0x9

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 117
    iget-object v0, p0, Lcom/tutk/IOTC/Monitor;->mRectCanvas:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/tutk/IOTC/Monitor;->mRectCanvas:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int v1, p3, v1

    div-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 136
    :goto_0
    iget-object v0, p0, Lcom/tutk/IOTC/Monitor;->mRectCanvas:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iput v0, p0, Lcom/tutk/IOTC/Monitor;->vLeft:I

    .line 137
    iget-object v0, p0, Lcom/tutk/IOTC/Monitor;->mRectCanvas:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iput v0, p0, Lcom/tutk/IOTC/Monitor;->vTop:I

    .line 138
    iget-object v0, p0, Lcom/tutk/IOTC/Monitor;->mRectCanvas:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iput v0, p0, Lcom/tutk/IOTC/Monitor;->vRight:I

    .line 139
    iget-object v0, p0, Lcom/tutk/IOTC/Monitor;->mRectCanvas:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iput v0, p0, Lcom/tutk/IOTC/Monitor;->vBottom:I

    .line 141
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/tutk/IOTC/Monitor;->mCurrentScale:F

    .line 143
    iget-object v1, p0, Lcom/tutk/IOTC/Monitor;->mMidPoint:Landroid/graphics/PointF;

    iget v0, p0, Lcom/tutk/IOTC/Monitor;->vLeft:I

    int-to-float v2, v0

    iget v0, p0, Lcom/tutk/IOTC/Monitor;->vTop:I

    int-to-float v3, v0

    iget v0, p0, Lcom/tutk/IOTC/Monitor;->vRight:I

    int-to-float v4, v0

    iget v0, p0, Lcom/tutk/IOTC/Monitor;->vBottom:I

    int-to-float v5, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/tutk/IOTC/Monitor;->parseMidPoint(Landroid/graphics/PointF;FFFF)V

    .line 144
    iget-object v1, p0, Lcom/tutk/IOTC/Monitor;->mMidPointForCanvas:Landroid/graphics/PointF;

    iget v0, p0, Lcom/tutk/IOTC/Monitor;->vLeft:I

    int-to-float v2, v0

    iget v0, p0, Lcom/tutk/IOTC/Monitor;->vTop:I

    int-to-float v3, v0

    iget v0, p0, Lcom/tutk/IOTC/Monitor;->vRight:I

    int-to-float v4, v0

    iget v0, p0, Lcom/tutk/IOTC/Monitor;->vBottom:I

    int-to-float v5, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/tutk/IOTC/Monitor;->parseMidPoint(Landroid/graphics/PointF;FFFF)V

    .line 109
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    const-string v0, "Monitor"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "surfaceChanged Change canvas size ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tutk/IOTC/Monitor;->mRectCanvas:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/tutk/IOTC/Monitor;->mRectCanvas:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tutk/IOTC/Monitor;->mRectCanvas:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lcom/tutk/IOTC/Monitor;->mRectCanvas:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    const-string v0, "Monitor"

    const-string v1, "canvas %d, %d,%d,%d"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/tutk/IOTC/Monitor;->mRectCanvas:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v8

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/tutk/IOTC/Monitor;->mRectCanvas:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/tutk/IOTC/Monitor;->mRectCanvas:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/tutk/IOTC/Monitor;->mRectCanvas:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    return-void

    .line 119
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/tutk/IOTC/Monitor;->mRectCanvas:Landroid/graphics/Rect;

    mul-int/lit8 v1, p3, 0x9

    div-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 120
    iget-object v0, p0, Lcom/tutk/IOTC/Monitor;->mRectCanvas:Landroid/graphics/Rect;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/tutk/IOTC/Monitor;->mRectCanvas:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v2, p4, v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    goto/16 :goto_0

    .line 109
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 123
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/tutk/IOTC/Monitor;->mRectMonitor:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/tutk/IOTC/Monitor;->mRectMonitor:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/tutk/IOTC/Monitor;->mRectMonitor:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/tutk/IOTC/Monitor;->mRectMonitor:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_3

    .line 124
    const-string v0, "Monitor"

    const-string v1, "Landscape layout"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget v0, p0, Lcom/tutk/IOTC/Monitor;->mCurVideoWidth:I

    int-to-double v0, v0

    iget v2, p0, Lcom/tutk/IOTC/Monitor;->mCurVideoHeight:I

    int-to-double v2, v2

    div-double v6, v0, v2

    .line 126
    .local v6, "ratio":D
    iget-object v0, p0, Lcom/tutk/IOTC/Monitor;->mRectCanvas:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/tutk/IOTC/Monitor;->mRectMonitor:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-double v1, v1

    mul-double/2addr v1, v6

    double-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 127
    iget-object v0, p0, Lcom/tutk/IOTC/Monitor;->mRectCanvas:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/tutk/IOTC/Monitor;->mRectMonitor:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/tutk/IOTC/Monitor;->mRectCanvas:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    goto/16 :goto_0

    .line 129
    .end local v6    # "ratio":D
    :cond_3
    const-string v0, "Monitor"

    const-string v1, "Portrait layout"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget v0, p0, Lcom/tutk/IOTC/Monitor;->mCurVideoWidth:I

    int-to-double v0, v0

    iget v2, p0, Lcom/tutk/IOTC/Monitor;->mCurVideoHeight:I

    int-to-double v2, v2

    div-double v6, v0, v2

    .line 131
    .restart local v6    # "ratio":D
    iget-object v0, p0, Lcom/tutk/IOTC/Monitor;->mRectCanvas:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/tutk/IOTC/Monitor;->mRectMonitor:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-double v1, v1

    div-double/2addr v1, v6

    double-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 132
    iget-object v0, p0, Lcom/tutk/IOTC/Monitor;->mRectCanvas:Landroid/graphics/Rect;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/tutk/IOTC/Monitor;->mRectMonitor:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lcom/tutk/IOTC/Monitor;->mRectCanvas:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 153
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 156
    return-void
.end method
