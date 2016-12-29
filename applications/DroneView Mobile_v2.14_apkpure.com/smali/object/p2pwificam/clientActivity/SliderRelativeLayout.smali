.class public Lobject/p2pwificam/clientActivity/SliderRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "SliderRelativeLayout.java"


# static fields
.field private static BACK_DURATION:I

.field public static MSG_CALL_AUDIO:I

.field public static MSG_CALL_OFF:I

.field public static MSG_CALL_ON:I

.field private static TAG:Ljava/lang/String;

.field private static VE_HORIZONTAL:F


# instance fields
.field private BackDragImgTask:Ljava/lang/Runnable;

.field private call_record:Landroid/widget/ImageView;

.field private call_start:Landroid/widget/ImageView;

.field private call_stop:Landroid/widget/ImageView;

.field private call_stop2:Landroid/widget/ImageView;

.field private dragBitmap:Landroid/graphics/Bitmap;

.field drawXCor:I

.field drawYCor:I

.field private image:[Landroid/widget/ImageView;

.field private imageId:[I

.field isHit:Z

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mLastMoveX:I

.field private mLastMovey:I

.field private mainHandler:Landroid/os/Handler;

.field private tv_slider_icon:Landroid/widget/ImageView;

.field upXCor:I

.field upYCor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x1

    sput v0, Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->MSG_CALL_ON:I

    .line 26
    const/4 v0, 0x2

    sput v0, Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->MSG_CALL_OFF:I

    .line 27
    const/4 v0, 0x3

    sput v0, Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->MSG_CALL_AUDIO:I

    .line 29
    const-string v0, "SliderRelativeLayout"

    sput-object v0, Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->TAG:Ljava/lang/String;

    .line 178
    const/16 v0, 0x14

    sput v0, Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->BACK_DURATION:I

    .line 180
    const v0, 0x3f333333    # 0.7f

    sput v0, Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->VE_HORIZONTAL:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v6, 0x2710

    const/4 v5, 0x4

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 41
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 31
    iput-object v3, p0, Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->tv_slider_icon:Landroid/widget/ImageView;

    .line 33
    new-array v0, v5, [Landroid/widget/ImageView;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->call_start:Landroid/widget/ImageView;

    aput-object v1, v0, v4

    const/4 v1, 0x1

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->call_stop:Landroid/widget/ImageView;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->call_record:Landroid/widget/ImageView;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->call_stop2:Landroid/widget/ImageView;

    aput-object v2, v0, v1

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->image:[Landroid/widget/ImageView;

    .line 34
    iput-object v3, p0, Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->dragBitmap:Landroid/graphics/Bitmap;

    .line 35
    iput-object v3, p0, Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->mContext:Landroid/content/Context;

    .line 37
    iput-boolean v4, p0, Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->isHit:Z

    .line 38
    iput-object v3, p0, Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->mainHandler:Landroid/os/Handler;

    .line 65
    new-array v0, v5, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->imageId:[I

    .line 91
    iput v6, p0, Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->mLastMoveX:I

    .line 92
    iput v6, p0, Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->mLastMovey:I

    .line 260
    new-instance v0, Lobject/p2pwificam/clientActivity/SliderRelativeLayout$1;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/SliderRelativeLayout$1;-><init>(Lobject/p2pwificam/clientActivity/SliderRelativeLayout;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->BackDragImgTask:Ljava/lang/Runnable;

    .line 279
    new-instance v0, Lobject/p2pwificam/clientActivity/SliderRelativeLayout$2;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/SliderRelativeLayout$2;-><init>(Lobject/p2pwificam/clientActivity/SliderRelativeLayout;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->mHandler:Landroid/os/Handler;

    .line 42
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->mContext:Landroid/content/Context;

    .line 43
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->initDragBitmap()V

    .line 44
    return-void

    .line 65
    :array_0
    .array-data 4
        0x7f08008f
        0x7f080084
        0x7f080083
        0x7f080085
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/16 v6, 0x2710

    const/4 v5, 0x4

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 47
    invoke-direct {p0, p1, p2, v4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    iput-object v3, p0, Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->tv_slider_icon:Landroid/widget/ImageView;

    .line 33
    new-array v0, v5, [Landroid/widget/ImageView;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->call_start:Landroid/widget/ImageView;

    aput-object v1, v0, v4

    const/4 v1, 0x1

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->call_stop:Landroid/widget/ImageView;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->call_record:Landroid/widget/ImageView;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->call_stop2:Landroid/widget/ImageView;

    aput-object v2, v0, v1

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->image:[Landroid/widget/ImageView;

    .line 34
    iput-object v3, p0, Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->dragBitmap:Landroid/graphics/Bitmap;

    .line 35
    iput-object v3, p0, Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->mContext:Landroid/content/Context;

    .line 37
    iput-boolean v4, p0, Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->isHit:Z

    .line 38
    iput-object v3, p0, Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->mainHandler:Landroid/os/Handler;

    .line 65
    new-array v0, v5, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->imageId:[I

    .line 91
    iput v6, p0, Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->mLastMoveX:I

    .line 92
    iput v6, p0, Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->mLastMovey:I

    .line 260
    new-instance v0, Lobject/p2pwificam/clientActivity/SliderRelativeLayout$1;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/SliderRelativeLayout$1;-><init>(Lobject/p2pwificam/clientActivity/SliderRelativeLayout;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->BackDragImgTask:Ljava/lang/Runnable;

    .line 279
    new-instance v0, Lobject/p2pwificam/clientActivity/SliderRelativeLayout$2;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/SliderRelativeLayout$2;-><init>(Lobject/p2pwificam/clientActivity/SliderRelativeLayout;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->mHandler:Landroid/os/Handler;

    .line 48
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->mContext:Landroid/content/Context;

    .line 49
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->initDragBitmap()V

    .line 50
    return-void

    .line 65
    :array_0
    .array-data 4
        0x7f08008f
        0x7f080084
        0x7f080083
        0x7f080085
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/16 v6, 0x2710

    const/4 v5, 0x4

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 54
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    iput-object v3, p0, Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->tv_slider_icon:Landroid/widget/ImageView;

    .line 33
    new-array v0, v5, [Landroid/widget/ImageView;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->call_start:Landroid/widget/ImageView;

    aput-object v1, v0, v4

    const/4 v1, 0x1

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->call_stop:Landroid/widget/ImageView;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->call_record:Landroid/widget/ImageView;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->call_stop2:Landroid/widget/ImageView;

    aput-object v2, v0, v1

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->image:[Landroid/widget/ImageView;

    .line 34
    iput-object v3, p0, Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->dragBitmap:Landroid/graphics/Bitmap;

    .line 35
    iput-object v3, p0, Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->mContext:Landroid/content/Context;

    .line 37
    iput-boolean v4, p0, Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->isHit:Z

    .line 38
    iput-object v3, p0, Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->mainHandler:Landroid/os/Handler;

    .line 65
    new-array v0, v5, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->imageId:[I

    .line 91
    iput v6, p0, Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->mLastMoveX:I

    .line 92
    iput v6, p0, Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->mLastMovey:I

    .line 260
    new-instance v0, Lobject/p2pwificam/clientActivity/SliderRelativeLayout$1;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/SliderRelativeLayout$1;-><init>(Lobject/p2pwificam/clientActivity/SliderRelativeLayout;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->BackDragImgTask:Ljava/lang/Runnable;

    .line 279
    new-instance v0, Lobject/p2pwificam/clientActivity/SliderRelativeLayout$2;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/SliderRelativeLayout$2;-><init>(Lobject/p2pwificam/clientActivity/SliderRelativeLayout;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->mHandler:Landroid/os/Handler;

    .line 55
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->mContext:Landroid/content/Context;

    .line 56
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->initDragBitmap()V

    .line 57
    return-void

    .line 65
    :array_0
    .array-data 4
        0x7f08008f
        0x7f080084
        0x7f080083
        0x7f080085
    .end array-data
.end method

.method static synthetic access$0(Lobject/p2pwificam/clientActivity/SliderRelativeLayout;)I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->mLastMoveX:I

    return v0
.end method

.method static synthetic access$1()I
    .locals 1

    .prologue
    .line 178
    sget v0, Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->BACK_DURATION:I

    return v0
.end method

.method static synthetic access$10(Lobject/p2pwificam/clientActivity/SliderRelativeLayout;)V
    .locals 0

    .prologue
    .line 252
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->resetViewState()V

    return-void
.end method

.method static synthetic access$2()F
    .locals 1

    .prologue
    .line 180
    sget v0, Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->VE_HORIZONTAL:F

    return v0
.end method

.method static synthetic access$3(Lobject/p2pwificam/clientActivity/SliderRelativeLayout;I)V
    .locals 0

    .prologue
    .line 91
    iput p1, p0, Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->mLastMoveX:I

    return-void
.end method

.method static synthetic access$4(Lobject/p2pwificam/clientActivity/SliderRelativeLayout;)I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->mLastMovey:I

    return v0
.end method

.method static synthetic access$5(Lobject/p2pwificam/clientActivity/SliderRelativeLayout;I)V
    .locals 0

    .prologue
    .line 92
    iput p1, p0, Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->mLastMovey:I

    return-void
.end method

.method static synthetic access$6()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7(Lobject/p2pwificam/clientActivity/SliderRelativeLayout;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->tv_slider_icon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$8(Lobject/p2pwificam/clientActivity/SliderRelativeLayout;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$9(Lobject/p2pwificam/clientActivity/SliderRelativeLayout;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->BackDragImgTask:Ljava/lang/Runnable;

    return-object v0
.end method

.method private handleActionDownEvenet(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 167
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 168
    .local v0, "rect":Landroid/graphics/Rect;
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->tv_slider_icon:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->getHitRect(Landroid/graphics/Rect;)V

    .line 169
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    iput-boolean v1, p0, Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->isHit:Z

    .line 171
    iget-boolean v1, p0, Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->isHit:Z

    if-eqz v1, :cond_0

    .line 172
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->tv_slider_icon:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 174
    :cond_0
    iget-boolean v1, p0, Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->isHit:Z

    return v1
.end method

.method private handleActionUpEvent(Landroid/view/MotionEvent;)V
    .locals 14
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 201
    iget v6, p0, Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->upXCor:I

    .line 202
    .local v6, "y":I
    iget v5, p0, Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->upYCor:I

    .line 203
    .local v5, "x":I
    const/16 v4, 0x46

    .line 204
    .local v4, "r":I
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 205
    .local v0, "hit":Ljava/lang/Boolean;
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 206
    .local v1, "hit1":Ljava/lang/Boolean;
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 207
    .local v2, "hit2":Ljava/lang/Boolean;
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 209
    .local v3, "hit3":Ljava/lang/Boolean;
    sget-object v7, Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->TAG:Ljava/lang/String;

    const-string v10, "X:%d start(%d,%d) stop(%d,%d) w:%d"

    const/4 v11, 0x6

    new-array v11, v11, [Ljava/lang/Object;

    iget v12, p0, Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->upXCor:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v9

    iget-object v12, p0, Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->call_record:Landroid/widget/ImageView;

    invoke-virtual {v12}, Landroid/widget/ImageView;->getLeft()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v8

    const/4 v12, 0x2

    iget-object v13, p0, Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->call_record:Landroid/widget/ImageView;

    invoke-virtual {v13}, Landroid/widget/ImageView;->getRight()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x3

    iget-object v13, p0, Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->call_stop:Landroid/widget/ImageView;

    invoke-virtual {v13}, Landroid/widget/ImageView;->getLeft()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x4

    iget-object v13, p0, Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->call_stop:Landroid/widget/ImageView;

    invoke-virtual {v13}, Landroid/widget/ImageView;->getRight()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x5

    iget-object v13, p0, Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->dragBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    div-int/lit8 v13, v13, 0x2

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iget-object v7, p0, Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->call_start:Landroid/widget/ImageView;

    if-eqz v7, :cond_2

    .line 212
    iget-object v7, p0, Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->call_start:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getLeft()I

    move-result v7

    sub-int v7, v6, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    if-le v7, v4, :cond_0

    iget-object v7, p0, Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->call_start:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getRight()I

    move-result v7

    sub-int v7, v6, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    if-gt v7, v4, :cond_11

    :cond_0
    iget-object v7, p0, Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->call_start:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getTop()I

    move-result v7

    sub-int v7, v5, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    if-le v7, v4, :cond_1

    iget-object v7, p0, Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->call_start:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getBottom()I

    move-result v7

    sub-int v7, v5, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    if-gt v7, v4, :cond_11

    :cond_1
    move v7, v8

    :goto_0
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 213
    :cond_2
    iget-object v7, p0, Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->call_stop:Landroid/widget/ImageView;

    if-eqz v7, :cond_5

    .line 214
    iget-object v7, p0, Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->call_stop:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getLeft()I

    move-result v7

    sub-int v7, v6, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    if-le v7, v4, :cond_3

    iget-object v7, p0, Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->call_stop:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getRight()I

    move-result v7

    sub-int v7, v6, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    if-gt v7, v4, :cond_12

    :cond_3
    iget-object v7, p0, Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->call_stop:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getTop()I

    move-result v7

    sub-int v7, v5, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    if-le v7, v4, :cond_4

    iget-object v7, p0, Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->call_stop:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getBottom()I

    move-result v7

    sub-int v7, v5, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    if-gt v7, v4, :cond_12

    :cond_4
    move v7, v8

    :goto_1
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 215
    :cond_5
    iget-object v7, p0, Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->call_record:Landroid/widget/ImageView;

    if-eqz v7, :cond_8

    .line 216
    iget-object v7, p0, Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->call_record:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getLeft()I

    move-result v7

    sub-int v7, v6, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    if-le v7, v4, :cond_6

    iget-object v7, p0, Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->call_record:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getRight()I

    move-result v7

    sub-int v7, v6, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    if-gt v7, v4, :cond_13

    :cond_6
    iget-object v7, p0, Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->call_record:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getTop()I

    move-result v7

    sub-int v7, v5, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    if-le v7, v4, :cond_7

    iget-object v7, p0, Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->call_record:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getBottom()I

    move-result v7

    sub-int v7, v5, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    if-gt v7, v4, :cond_13

    :cond_7
    move v7, v8

    :goto_2
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 217
    :cond_8
    iget-object v7, p0, Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->call_stop2:Landroid/widget/ImageView;

    if-eqz v7, :cond_b

    .line 218
    iget-object v7, p0, Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->call_stop2:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getLeft()I

    move-result v7

    sub-int v7, v6, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    if-le v7, v4, :cond_9

    iget-object v7, p0, Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->call_stop2:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getRight()I

    move-result v7

    sub-int v7, v6, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    if-gt v7, v4, :cond_14

    :cond_9
    iget-object v7, p0, Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->call_stop2:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getTop()I

    move-result v7

    sub-int v7, v5, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    if-le v7, v4, :cond_a

    iget-object v7, p0, Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->call_stop2:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getBottom()I

    move-result v7

    sub-int v7, v5, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    if-gt v7, v4, :cond_14

    :cond_a
    :goto_3
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 221
    :cond_b
    sget-object v7, Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "handleActionUpEvent : x -->"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " y "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " hit == "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "  hit1 == "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "  hit2 == "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "   hit3 == "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_c

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_c

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_c

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_15

    .line 226
    :cond_c
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->resetViewState()V

    .line 228
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_d

    .line 229
    iget-object v7, p0, Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->mainHandler:Landroid/os/Handler;

    sget v8, Lobject/p2pwificam/clientActivity/CallActivity;->MSG_CALL_AUDIO:I

    invoke-virtual {v7, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    .line 230
    :cond_d
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_e

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_f

    .line 231
    :cond_e
    iget-object v7, p0, Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->mainHandler:Landroid/os/Handler;

    sget v8, Lobject/p2pwificam/clientActivity/CallActivity;->MSG_CALL_OFF:I

    invoke-virtual {v7, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    .line 232
    :cond_f
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_10

    .line 233
    iget-object v7, p0, Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->mainHandler:Landroid/os/Handler;

    sget v8, Lobject/p2pwificam/clientActivity/CallActivity;->MSG_CALL_ON:I

    invoke-virtual {v7, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    .line 250
    :cond_10
    :goto_4
    return-void

    :cond_11
    move v7, v9

    .line 212
    goto/16 :goto_0

    :cond_12
    move v7, v9

    .line 214
    goto/16 :goto_1

    :cond_13
    move v7, v9

    .line 216
    goto/16 :goto_2

    :cond_14
    move v8, v9

    .line 218
    goto/16 :goto_3

    .line 238
    :cond_15
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->resetViewState()V

    goto :goto_4
.end method

.method private initDragBitmap()V
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->dragBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 61
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 62
    const v1, 0x7f020033

    .line 61
    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->dragBitmap:Landroid/graphics/Bitmap;

    .line 63
    :cond_0
    return-void
.end method

.method private invalidateDragImg(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v5, 0x5

    .line 142
    iget v3, p0, Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->mLastMoveX:I

    iget-object v4, p0, Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->dragBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iput v3, p0, Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->drawXCor:I

    .line 144
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->tv_slider_icon:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getTop()I

    move-result v0

    .line 148
    .local v0, "drawYCor":I
    iget v3, p0, Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->mLastMovey:I

    const/16 v4, 0x2710

    if-ne v3, v4, :cond_0

    const/16 v0, 0x2710

    .line 150
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x3

    iget-object v4, p0, Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->dragBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    add-int/lit8 v1, v3, -0x16

    .line 151
    .local v1, "height":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    iget-object v4, p0, Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->dragBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    add-int/lit8 v2, v3, -0x5

    .line 155
    .local v2, "width":I
    iget-boolean v3, p0, Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->isHit:Z

    if-eqz v3, :cond_3

    .line 157
    iget v3, p0, Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->drawXCor:I

    if-ge v3, v5, :cond_1

    iput v5, p0, Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->drawXCor:I

    .line 158
    :cond_1
    iget v3, p0, Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->drawXCor:I

    if-le v3, v2, :cond_2

    iput v2, p0, Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->drawXCor:I

    .line 159
    :cond_2
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->dragBitmap:Landroid/graphics/Bitmap;

    iget v4, p0, Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->drawXCor:I

    int-to-float v4, v4

    int-to-float v5, v0

    const/4 v6, 0x0

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 160
    iget v3, p0, Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->mLastMoveX:I

    iput v3, p0, Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->upXCor:I

    .line 161
    iput v0, p0, Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->upYCor:I

    .line 163
    :cond_3
    return-void
.end method

.method private resetViewState()V
    .locals 2

    .prologue
    const/16 v0, 0x2710

    .line 253
    iput v0, p0, Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->mLastMoveX:I

    .line 254
    iput v0, p0, Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->mLastMovey:I

    .line 255
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->tv_slider_icon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 256
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->invalidate()V

    .line 257
    return-void
.end method

.method private virbate()V
    .locals 3

    .prologue
    .line 289
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->mContext:Landroid/content/Context;

    const-string v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 290
    .local v0, "vibrator":Landroid/os/Vibrator;
    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 291
    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 122
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 128
    invoke-direct {p0, p1}, Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->invalidateDragImg(Landroid/graphics/Canvas;)V

    .line 129
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 70
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 72
    const v0, 0x7f080089

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->tv_slider_icon:Landroid/widget/ImageView;

    .line 74
    const v0, 0x7f08008f

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->call_start:Landroid/widget/ImageView;

    .line 75
    const v0, 0x7f080084

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->call_stop:Landroid/widget/ImageView;

    .line 76
    const v0, 0x7f080083

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->call_record:Landroid/widget/ImageView;

    .line 77
    const v0, 0x7f080085

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->call_stop2:Landroid/widget/ImageView;

    .line 87
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    .line 96
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v0, v3

    .line 97
    .local v0, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v1, v3

    .line 98
    .local v1, "y":I
    sget-object v3, Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "onTouchEvent X is "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Y is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 117
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    :goto_0
    return v2

    .line 101
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->mLastMoveX:I

    .line 102
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->mLastMovey:I

    .line 105
    invoke-direct {p0, p1}, Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->handleActionDownEvenet(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_0

    .line 107
    :pswitch_1
    iput v0, p0, Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->mLastMoveX:I

    .line 108
    iput v1, p0, Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->mLastMovey:I

    .line 110
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->invalidate()V

    goto :goto_0

    .line 114
    :pswitch_2
    invoke-direct {p0, p1}, Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->handleActionUpEvent(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 99
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setMainHandler(Landroid/os/Handler;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 293
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->mainHandler:Landroid/os/Handler;

    .line 294
    return-void
.end method
