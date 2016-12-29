.class public Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;
.super Lobject/p2pwificam/clientActivity/BaseActivity;
.source "ShowLocalVideoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Landroid/view/GestureDetector$OnDoubleTapListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity$PlayThread;
    }
.end annotation


# instance fields
.field private arrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private bottomLayout:Landroid/widget/RelativeLayout;

.field private btnBack:Landroid/widget/ImageButton;

.field private btnLeft:Landroid/widget/Button;

.field private btnPlay:Landroid/widget/Button;

.field private btnRight:Landroid/widget/Button;

.field private filePath:Ljava/lang/String;

.field private flag:Z

.field private frameCout:I

.field private gt:Landroid/view/GestureDetector;

.field private ht:I

.field private img:Landroid/widget/ImageView;

.field private imgPause:Landroid/widget/ImageView;

.field private isPause:Z

.field private isPlaying:Z

.field private isShowing:Z

.field private isStart:Z

.field private mHandler:Landroid/os/Handler;

.field private mPlayHandler:Landroid/os/Handler;

.field private mProgressHandler:Landroid/os/Handler;

.field private mTv_Prompt:Landroid/widget/TextView;

.field private myGLSurfaceView:Landroid/opengl/GLSurfaceView;

.field private myProRunnable:Ljava/lang/Runnable;

.field private myRender:Lobject/p2pwificam/clientActivity/MyRender;

.field private playThread:Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity$PlayThread;

.field private position:I

.field private progress:I

.field private seekBar:Landroid/widget/ProgressBar;

.field private strCameraName:Ljava/lang/String;

.field private sum:I

.field private sumTime:I

.field private topLayout:Landroid/widget/RelativeLayout;

.field private tvCurrentTime:Landroid/widget/TextView;

.field private tvSumTime:Landroid/widget/TextView;

.field private tvTime:Landroid/widget/TextView;

.field private tvTitle:Landroid/widget/TextView;

.field private videoSumTime:I

.field private wh:I

.field private x1:F

.field private x2:F

.field private y1:F

.field private y2:F


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 45
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/BaseActivity;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->filePath:Ljava/lang/String;

    .line 56
    new-instance v0, Landroid/view/GestureDetector;

    invoke-direct {v0, p0}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->gt:Landroid/view/GestureDetector;

    .line 57
    iput-boolean v1, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->isPlaying:Z

    .line 58
    iput-boolean v3, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->flag:Z

    .line 61
    iput v2, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->x1:F

    iput v2, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->x2:F

    iput v2, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->y1:F

    iput v2, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->y2:F

    .line 62
    iput-boolean v1, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->isShowing:Z

    .line 63
    iput-boolean v3, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->isStart:Z

    .line 65
    iput v1, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->progress:I

    .line 66
    iput v1, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->frameCout:I

    .line 74
    iput-boolean v1, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->isPause:Z

    .line 77
    new-instance v0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity$1;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity$1;-><init>(Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->mHandler:Landroid/os/Handler;

    .line 489
    new-instance v0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity$2;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity$2;-><init>(Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->mPlayHandler:Landroid/os/Handler;

    .line 502
    new-instance v0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity$3;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity$3;-><init>(Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->mProgressHandler:Landroid/os/Handler;

    .line 526
    new-instance v0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity$4;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity$4;-><init>(Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->myProRunnable:Ljava/lang/Runnable;

    .line 45
    return-void
.end method

.method static synthetic access$0(Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;Z)V
    .locals 0

    .prologue
    .line 62
    iput-boolean p1, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->isShowing:Z

    return-void
.end method

.method static synthetic access$1(Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;)Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->topLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$10(Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->tvCurrentTime:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$11(Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->imgPause:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$12(Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->btnPlay:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$13(Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;)I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->sumTime:I

    return v0
.end method

.method static synthetic access$14(Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 502
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->mProgressHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$15(Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 526
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->myProRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$16(Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$17(Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;I)V
    .locals 0

    .prologue
    .line 66
    iput p1, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->frameCout:I

    return-void
.end method

.method static synthetic access$18(Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;I)V
    .locals 0

    .prologue
    .line 75
    iput p1, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->sumTime:I

    return-void
.end method

.method static synthetic access$19(Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;Z)V
    .locals 0

    .prologue
    .line 58
    iput-boolean p1, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->flag:Z

    return-void
.end method

.method static synthetic access$2(Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;)Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->bottomLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$20(Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;)Z
    .locals 1

    .prologue
    .line 58
    iget-boolean v0, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->flag:Z

    return v0
.end method

.method static synthetic access$21(Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;)Z
    .locals 1

    .prologue
    .line 57
    iget-boolean v0, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->isPlaying:Z

    return v0
.end method

.method static synthetic access$22(Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;)I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->frameCout:I

    return v0
.end method

.method static synthetic access$23(Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;Z)V
    .locals 0

    .prologue
    .line 63
    iput-boolean p1, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->isStart:Z

    return-void
.end method

.method static synthetic access$24(Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;Z)V
    .locals 0

    .prologue
    .line 57
    iput-boolean p1, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->isPlaying:Z

    return-void
.end method

.method static synthetic access$25(Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;)Lobject/p2pwificam/clientActivity/MyRender;
    .locals 1

    .prologue
    .line 539
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->myRender:Lobject/p2pwificam/clientActivity/MyRender;

    return-object v0
.end method

.method static synthetic access$26(Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 489
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->mPlayHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$27(Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;Z)V
    .locals 0

    .prologue
    .line 74
    iput-boolean p1, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->isPause:Z

    return-void
.end method

.method static synthetic access$28(Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;I)V
    .locals 0

    .prologue
    .line 64
    iput p1, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->videoSumTime:I

    return-void
.end method

.method static synthetic access$29(Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3(Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;)I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->videoSumTime:I

    return v0
.end method

.method static synthetic access$30(Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;)Landroid/opengl/GLSurfaceView;
    .locals 1

    .prologue
    .line 538
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->myGLSurfaceView:Landroid/opengl/GLSurfaceView;

    return-object v0
.end method

.method static synthetic access$4(Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->tvSumTime:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$5(Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->seekBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$6(Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 215
    invoke-direct {p0, p1}, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->getTime(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7(Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;)V
    .locals 0

    .prologue
    .line 674
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->startVideo()V

    return-void
.end method

.method static synthetic access$8(Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->img:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$9(Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;)I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->progress:I

    return v0
.end method

.method public static byteToInt([B)I
    .locals 6
    .param p0, "b"    # [B

    .prologue
    .line 554
    const/4 v0, 0x0

    .line 555
    .local v0, "s":I
    const/4 v5, 0x0

    aget-byte v5, p0, v5

    and-int/lit16 v1, v5, 0xff

    .line 556
    .local v1, "s0":I
    const/4 v5, 0x1

    aget-byte v5, p0, v5

    and-int/lit16 v2, v5, 0xff

    .line 557
    .local v2, "s1":I
    const/4 v5, 0x2

    aget-byte v5, p0, v5

    and-int/lit16 v3, v5, 0xff

    .line 558
    .local v3, "s2":I
    const/4 v5, 0x3

    aget-byte v5, p0, v5

    and-int/lit16 v4, v5, 0xff

    .line 559
    .local v4, "s3":I
    shl-int/lit8 v4, v4, 0x18

    .line 560
    shl-int/lit8 v3, v3, 0x10

    .line 561
    shl-int/lit8 v2, v2, 0x8

    .line 562
    or-int v5, v1, v2

    or-int/2addr v5, v3

    or-int v0, v5, v4

    .line 563
    return v0
.end method

.method public static byteToLong([B)J
    .locals 22
    .param p0, "b"    # [B

    .prologue
    .line 578
    const-wide/16 v2, 0x0

    .line 579
    .local v2, "s":J
    const/16 v20, 0x0

    aget-byte v20, p0, v20

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-long v4, v0

    .line 580
    .local v4, "s0":J
    const/16 v20, 0x1

    aget-byte v20, p0, v20

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-long v6, v0

    .line 581
    .local v6, "s1":J
    const/16 v20, 0x2

    aget-byte v20, p0, v20

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-long v8, v0

    .line 582
    .local v8, "s2":J
    const/16 v20, 0x3

    aget-byte v20, p0, v20

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-long v10, v0

    .line 583
    .local v10, "s3":J
    const/16 v20, 0x4

    aget-byte v20, p0, v20

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-long v12, v0

    .line 584
    .local v12, "s4":J
    const/16 v20, 0x5

    aget-byte v20, p0, v20

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-long v14, v0

    .line 585
    .local v14, "s5":J
    const/16 v20, 0x6

    aget-byte v20, p0, v20

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v16, v0

    .line 586
    .local v16, "s6":J
    const/16 v20, 0x7

    aget-byte v20, p0, v20

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v18, v0

    .line 587
    .local v18, "s7":J
    const/16 v20, 0x8

    shl-long v6, v6, v20

    .line 588
    const/16 v20, 0x10

    shl-long v8, v8, v20

    .line 589
    const/16 v20, 0x18

    shl-long v10, v10, v20

    .line 590
    const/16 v20, 0x20

    shl-long v12, v12, v20

    .line 591
    const/16 v20, 0x28

    shl-long v14, v14, v20

    .line 592
    const/16 v20, 0x30

    shl-long v16, v16, v20

    .line 593
    const/16 v20, 0x38

    shl-long v18, v18, v20

    .line 594
    or-long v20, v4, v6

    or-long v20, v20, v8

    or-long v20, v20, v10

    or-long v20, v20, v12

    or-long v20, v20, v14

    or-long v20, v20, v16

    or-long v2, v20, v18

    .line 595
    return-wide v2
.end method

.method private findView()V
    .locals 6

    .prologue
    const/16 v5, 0x11

    .line 143
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    iput v1, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->wh:I

    .line 144
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    iput v1, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->ht:I

    .line 145
    const v1, 0x7f080019

    invoke-virtual {p0, v1}, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->btnBack:Landroid/widget/ImageButton;

    .line 146
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->btnBack:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    const v1, 0x7f080309

    invoke-virtual {p0, v1}, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->tvTitle:Landroid/widget/TextView;

    .line 148
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->tvTitle:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->strCameraName:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 149
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f06005f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 150
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f06005d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 148
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    const v1, 0x7f08030c

    invoke-virtual {p0, v1}, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->tvTime:Landroid/widget/TextView;

    .line 152
    const v1, 0x7f080307

    invoke-virtual {p0, v1}, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->img:Landroid/widget/ImageView;

    .line 153
    const v1, 0x7f080308

    invoke-virtual {p0, v1}, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->imgPause:Landroid/widget/ImageView;

    .line 154
    const v1, 0x7f080018

    invoke-virtual {p0, v1}, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->topLayout:Landroid/widget/RelativeLayout;

    .line 155
    const v1, 0x7f08002d

    invoke-virtual {p0, v1}, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->bottomLayout:Landroid/widget/RelativeLayout;

    .line 156
    const v1, 0x7f080034

    invoke-virtual {p0, v1}, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->seekBar:Landroid/widget/ProgressBar;

    .line 157
    const v1, 0x7f08030a

    invoke-virtual {p0, v1}, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->tvSumTime:Landroid/widget/TextView;

    .line 158
    const v1, 0x7f08030b

    invoke-virtual {p0, v1}, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->tvCurrentTime:Landroid/widget/TextView;

    .line 159
    const v1, 0x7f08030e

    invoke-virtual {p0, v1}, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->btnPlay:Landroid/widget/Button;

    .line 160
    const v1, 0x7f08030d

    invoke-virtual {p0, v1}, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->btnLeft:Landroid/widget/Button;

    .line 161
    const v1, 0x7f08030f

    invoke-virtual {p0, v1}, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->btnRight:Landroid/widget/Button;

    .line 163
    const v1, 0x7f080306

    invoke-virtual {p0, v1}, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/opengl/GLSurfaceView;

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->myGLSurfaceView:Landroid/opengl/GLSurfaceView;

    .line 164
    new-instance v1, Lobject/p2pwificam/clientActivity/MyRender;

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->myGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-direct {v1, v2}, Lobject/p2pwificam/clientActivity/MyRender;-><init>(Landroid/opengl/GLSurfaceView;)V

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->myRender:Lobject/p2pwificam/clientActivity/MyRender;

    .line 165
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->myGLSurfaceView:Landroid/opengl/GLSurfaceView;

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->myRender:Lobject/p2pwificam/clientActivity/MyRender;

    invoke-virtual {v1, v2}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 167
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 168
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->wh:I

    .line 169
    iget v2, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->wh:I

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x4

    .line 168
    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 170
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iput v5, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 171
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->myGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v1, v0}, Landroid/opengl/GLSurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 172
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->img:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 173
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->tvTime:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 181
    .end local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    :goto_0
    return-void

    .line 174
    :cond_1
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 175
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->tvTime:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 176
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->wh:I

    iget v2, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->ht:I

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 177
    .restart local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    iput v5, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 178
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->img:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 179
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->myGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v1, v0}, Landroid/opengl/GLSurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private firstPicture()V
    .locals 1

    .prologue
    .line 415
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->filePath:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 416
    new-instance v0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity$5;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity$5;-><init>(Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;)V

    .line 482
    invoke-virtual {v0}, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity$5;->start()V

    .line 484
    :cond_0
    return-void
.end method

.method private getContent(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    const/16 v8, 0x10

    const/4 v7, 0x0

    .line 205
    const-string v4, "tag"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "filePath:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    const-string v4, "/"

    invoke-virtual {p1, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 207
    .local v2, "s":Ljava/lang/String;
    const/16 v4, 0xa

    invoke-virtual {v2, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 208
    .local v0, "date":Ljava/lang/String;
    const/16 v4, 0xb

    invoke-virtual {v2, v4, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string v5, "_"

    const-string v6, ":"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 209
    .local v3, "time":Ljava/lang/String;
    move-object v1, v3

    .line 210
    .local v1, "result":Ljava/lang/String;
    const-string v4, "tag"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "result:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    const-string v4, "tag"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "sss:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    return-object v1
.end method

.method private getDataFromOther()V
    .locals 4

    .prologue
    .line 133
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 134
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "filepath"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->filePath:Ljava/lang/String;

    .line 135
    const-string v1, "camera_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->strCameraName:Ljava/lang/String;

    .line 137
    const-string v1, "arrayList"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 136
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->arrayList:Ljava/util/ArrayList;

    .line 138
    const-string v1, "position"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->position:I

    .line 139
    const-string v1, "tag"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "strDID:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->filePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    return-void
.end method

.method private getTime(I)Ljava/lang/String;
    .locals 9
    .param p1, "time"    # I

    .prologue
    const/16 v8, 0xa

    .line 216
    rem-int/lit8 v2, p1, 0x3c

    .line 217
    .local v2, "second":I
    div-int/lit8 v1, p1, 0x3c

    .line 218
    .local v1, "minute":I
    div-int/lit8 v0, v1, 0x3c

    .line 219
    .local v0, "hour":I
    const-string v5, ""

    .line 220
    .local v5, "strSecond":Ljava/lang/String;
    const-string v4, ""

    .line 221
    .local v4, "strMinute":Ljava/lang/String;
    const-string v3, ""

    .line 222
    .local v3, "strHour":Ljava/lang/String;
    if-ge v2, v8, :cond_0

    .line 223
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "0"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 227
    :goto_0
    if-ge v1, v8, :cond_1

    .line 228
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "0"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 232
    :goto_1
    if-ge v0, v8, :cond_2

    .line 233
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "0"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 238
    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 225
    :cond_0
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 230
    :cond_1
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 235
    :cond_2
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_2
.end method

.method public static intToByte(I)[B
    .locals 5
    .param p0, "number"    # I

    .prologue
    .line 544
    move v2, p0

    .line 545
    .local v2, "temp":I
    const/4 v3, 0x4

    new-array v0, v3, [B

    .line 546
    .local v0, "b":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v0

    if-lt v1, v3, :cond_0

    .line 550
    return-object v0

    .line 547
    :cond_0
    new-instance v3, Ljava/lang/Integer;

    and-int/lit16 v4, v2, 0xff

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3}, Ljava/lang/Integer;->byteValue()B

    move-result v3

    aput-byte v3, v0, v1

    .line 548
    shr-int/lit8 v2, v2, 0x8

    .line 546
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static longToByte(J)[B
    .locals 8
    .param p0, "number"    # J

    .prologue
    const/16 v7, 0x8

    .line 567
    move-wide v2, p0

    .line 568
    .local v2, "temp":J
    new-array v0, v7, [B

    .line 569
    .local v0, "b":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v0

    if-lt v1, v4, :cond_0

    .line 573
    return-object v0

    .line 570
    :cond_0
    new-instance v4, Ljava/lang/Long;

    const-wide/16 v5, 0xff

    and-long/2addr v5, v2

    invoke-direct {v4, v5, v6}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v4}, Ljava/lang/Long;->byteValue()B

    move-result v4

    aput-byte v4, v0, v1

    .line 571
    shr-long/2addr v2, v7

    .line 569
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private pVideo()V
    .locals 1

    .prologue
    .line 406
    monitor-enter p0

    .line 407
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 406
    monitor-exit p0

    .line 409
    return-void

    .line 406
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setListener()V
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->btnPlay:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->btnLeft:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->btnRight:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->img:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 128
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->topLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 129
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->bottomLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 130
    return-void
.end method

.method private startVideo()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 675
    const-string v0, "tag"

    const-string v1, "\u5f00\u59cb\u64ad\u653e\u5f55\u50cf"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->imgPause:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 677
    iput-boolean v2, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->isStart:Z

    .line 678
    const/4 v0, 0x1

    iput-boolean v0, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->isPlaying:Z

    .line 679
    iput v2, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->progress:I

    .line 680
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->seekBar:Landroid/widget/ProgressBar;

    iget v1, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->progress:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 681
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->tvCurrentTime:Landroid/widget/TextView;

    iget v1, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->progress:I

    invoke-direct {p0, v1}, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->getTime(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 682
    new-instance v0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity$PlayThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity$PlayThread;-><init>(Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity$PlayThread;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->playThread:Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity$PlayThread;

    .line 683
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->playThread:Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity$PlayThread;

    invoke-virtual {v0}, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity$PlayThread;->start()V

    .line 684
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v6, 0x7f060183

    const/16 v5, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 600
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 672
    :goto_0
    return-void

    .line 602
    :sswitch_0
    iput-boolean v3, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->flag:Z

    .line 603
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->finish()V

    .line 604
    const v1, 0x7f040006

    const/high16 v2, 0x7f040000

    invoke-virtual {p0, v1, v2}, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->overridePendingTransition(II)V

    goto :goto_0

    .line 607
    :sswitch_1
    iget v1, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->position:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->position:I

    .line 608
    iget v1, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->position:I

    if-ltz v1, :cond_0

    .line 609
    iput-boolean v3, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->flag:Z

    .line 610
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->arrayList:Ljava/util/ArrayList;

    iget v2, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->position:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 611
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "path"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->filePath:Ljava/lang/String;

    .line 612
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->tvTime:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 614
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->filePath:Ljava/lang/String;

    invoke-direct {p0, v3}, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->getContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 612
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 615
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->firstPicture()V

    .line 622
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->startVideo()V

    goto :goto_0

    .line 624
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    iget v1, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->position:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->position:I

    .line 625
    const-string v1, "\u5df2\u7ecf\u662f\u7b2c\u4e00\u4e2a\u5f55\u50cf"

    invoke-virtual {p0, v1}, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 629
    :sswitch_2
    iget v1, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->position:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->position:I

    .line 630
    iget v1, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->position:I

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 631
    iput-boolean v3, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->flag:Z

    .line 632
    iput-boolean v4, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->isStart:Z

    .line 633
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->arrayList:Ljava/util/ArrayList;

    iget v2, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->position:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 634
    .restart local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "path"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->filePath:Ljava/lang/String;

    .line 635
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->tvTime:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 637
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->filePath:Ljava/lang/String;

    invoke-direct {p0, v3}, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->getContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 635
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 638
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->firstPicture()V

    .line 645
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->startVideo()V

    goto/16 :goto_0

    .line 647
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    iget v1, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->position:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->position:I

    .line 648
    const-string v1, "\u5df2\u7ecf\u662f\u6700\u540e\u4e00\u4e2a\u5f55\u50cf"

    invoke-virtual {p0, v1}, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->showToast(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 652
    :sswitch_3
    iget-boolean v1, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->isPlaying:Z

    if-eqz v1, :cond_2

    .line 653
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->btnPlay:Landroid/widget/Button;

    const v2, 0x7f02016b

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 654
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->imgPause:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 655
    const-string v1, "tag"

    const-string v2, "pause"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    iput-boolean v3, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->isPlaying:Z

    goto/16 :goto_0

    .line 658
    :cond_2
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->btnPlay:Landroid/widget/Button;

    const v2, 0x7f02016e

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 659
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->imgPause:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 660
    iget-boolean v1, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->isStart:Z

    if-eqz v1, :cond_3

    .line 661
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->startVideo()V

    goto/16 :goto_0

    .line 663
    :cond_3
    iput-boolean v4, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->isPlaying:Z

    .line 664
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->pVideo()V

    goto/16 :goto_0

    .line 600
    :sswitch_data_0
    .sparse-switch
        0x7f080019 -> :sswitch_0
        0x7f08030d -> :sswitch_1
        0x7f08030e -> :sswitch_3
        0x7f08030f -> :sswitch_2
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/16 v3, 0x11

    .line 185
    invoke-super {p0, p1}, Lobject/p2pwificam/clientActivity/BaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 186
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    iput v1, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->wh:I

    .line 187
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    iput v1, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->ht:I

    .line 188
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 189
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->wh:I

    .line 190
    iget v2, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->wh:I

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x4

    .line 189
    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 191
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 192
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->myGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v1, v0}, Landroid/opengl/GLSurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 193
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->img:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 202
    .end local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    :goto_0
    return-void

    .line 195
    :cond_1
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 197
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->wh:I

    iget v2, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->ht:I

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 198
    .restart local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 199
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->img:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 200
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->myGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v1, v0}, Landroid/opengl/GLSurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v1, 0x400

    const/4 v4, 0x1

    .line 103
    invoke-super {p0, p1}, Lobject/p2pwificam/clientActivity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 104
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->getDataFromOther()V

    .line 105
    invoke-virtual {p0, v4}, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->requestWindowFeature(I)Z

    .line 106
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 109
    const v0, 0x7f03006f

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->setContentView(I)V

    .line 110
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->findView()V

    .line 111
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->setListener()V

    .line 112
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->tvTime:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060183

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 113
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->filePath:Ljava/lang/String;

    invoke-direct {p0, v2}, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->getContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 112
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->firstPicture()V

    .line 115
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 121
    return-void
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 746
    const-string v0, "tag"

    const-string v1, "onDoubleTap"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    const/4 v0, 0x0

    return v0
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/view/MotionEvent;

    .prologue
    .line 753
    const/4 v0, 0x0

    return v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "arg0"    # Landroid/view/MotionEvent;

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 705
    iget-boolean v0, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->isShowing:Z

    if-eqz v0, :cond_0

    .line 706
    iput-boolean v1, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->isShowing:Z

    .line 707
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->topLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 708
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->bottomLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 714
    :goto_0
    return v1

    .line 710
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->isShowing:Z

    .line 711
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->topLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 712
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->bottomLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "arg0"    # Landroid/view/MotionEvent;
    .param p2, "arg1"    # Landroid/view/MotionEvent;
    .param p3, "arg2"    # F
    .param p4, "arg3"    # F

    .prologue
    .line 720
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "arg0"    # I
    .param p2, "arg1"    # Landroid/view/KeyEvent;

    .prologue
    .line 688
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 689
    const/4 v0, 0x0

    iput-boolean v0, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->flag:Z

    .line 690
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->finish()V

    .line 691
    const v0, 0x7f040006

    const/high16 v1, 0x7f040000

    invoke-virtual {p0, v0, v1}, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->overridePendingTransition(II)V

    .line 692
    const/4 v0, 0x1

    .line 694
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lobject/p2pwificam/clientActivity/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/MotionEvent;

    .prologue
    .line 726
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "arg0"    # Landroid/view/MotionEvent;
    .param p2, "arg1"    # Landroid/view/MotionEvent;
    .param p3, "arg2"    # F
    .param p4, "arg3"    # F

    .prologue
    .line 731
    const/4 v0, 0x0

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/MotionEvent;

    .prologue
    .line 737
    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "arg0"    # Landroid/view/MotionEvent;

    .prologue
    .line 758
    const-string v0, "tag"

    const-string v1, "onSingleTapConfirmed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    const/4 v0, 0x0

    return v0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/view/MotionEvent;

    .prologue
    .line 741
    const/4 v0, 0x0

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/16 v3, 0x8

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 765
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    move v0, v1

    .line 793
    :goto_0
    :sswitch_0
    return v0

    .line 771
    :sswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 773
    :pswitch_0
    iget-boolean v2, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->isShowing:Z

    if-eqz v2, :cond_0

    .line 774
    iput-boolean v1, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->isShowing:Z

    .line 775
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->topLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 776
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->bottomLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 778
    :cond_0
    iput-boolean v0, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->isShowing:Z

    .line 779
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->topLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 780
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->bottomLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 765
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f080018 -> :sswitch_0
        0x7f08002d -> :sswitch_0
        0x7f080307 -> :sswitch_1
    .end sparse-switch

    .line 771
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 700
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->gt:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
