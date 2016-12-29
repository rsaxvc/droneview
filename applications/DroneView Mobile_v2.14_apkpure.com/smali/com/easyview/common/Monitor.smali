.class public Lcom/easyview/common/Monitor;
.super Landroid/view/SurfaceView;
.source "Monitor.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Lcom/easyview/common/IAVListener;


# instance fields
.field private m_lastBmp:Landroid/graphics/Bitmap;

.field private final m_videoPaint:Landroid/graphics/Paint;

.field private rectVideo:Landroid/graphics/Rect;

.field private surHolder:Landroid/view/SurfaceHolder;

.field private vHeight:I

.field private vWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/16 v1, 0xa

    .line 22
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    iput-object v3, p0, Lcom/easyview/common/Monitor;->surHolder:Landroid/view/SurfaceHolder;

    .line 16
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/easyview/common/Monitor;->m_videoPaint:Landroid/graphics/Paint;

    .line 17
    iput-object v3, p0, Lcom/easyview/common/Monitor;->m_lastBmp:Landroid/graphics/Bitmap;

    .line 18
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v2, v2, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/easyview/common/Monitor;->rectVideo:Landroid/graphics/Rect;

    .line 19
    iput v1, p0, Lcom/easyview/common/Monitor;->vWidth:I

    iput v1, p0, Lcom/easyview/common/Monitor;->vHeight:I

    .line 24
    invoke-virtual {p0}, Lcom/easyview/common/Monitor;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/easyview/common/Monitor;->surHolder:Landroid/view/SurfaceHolder;

    .line 25
    iget-object v0, p0, Lcom/easyview/common/Monitor;->surHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 26
    return-void
.end method


# virtual methods
.method public drawVideo()V
    .locals 5

    .prologue
    .line 55
    const/4 v0, 0x0

    .line 56
    .local v0, "videoCanvas":Landroid/graphics/Canvas;
    monitor-enter p0

    .line 57
    :try_start_0
    iget-object v1, p0, Lcom/easyview/common/Monitor;->surHolder:Landroid/view/SurfaceHolder;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v0

    .line 58
    if-eqz v0, :cond_1

    .line 59
    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 60
    iget-object v1, p0, Lcom/easyview/common/Monitor;->m_lastBmp:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/easyview/common/Monitor;->m_lastBmp:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/easyview/common/Monitor;->rectVideo:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/easyview/common/Monitor;->m_videoPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 61
    :cond_0
    iget-object v1, p0, Lcom/easyview/common/Monitor;->surHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v1, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 62
    const/4 v0, 0x0

    .line 56
    :cond_1
    monitor-exit p0

    .line 65
    return-void

    .line 56
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 3
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 30
    iget v0, p0, Lcom/easyview/common/Monitor;->vWidth:I

    if-ne v0, p3, :cond_0

    iget v0, p0, Lcom/easyview/common/Monitor;->vHeight:I

    if-eq v0, p4, :cond_1

    .line 31
    :cond_0
    iput p3, p0, Lcom/easyview/common/Monitor;->vWidth:I

    .line 32
    iput p4, p0, Lcom/easyview/common/Monitor;->vHeight:I

    .line 34
    monitor-enter p0

    .line 35
    :try_start_0
    iget-object v0, p0, Lcom/easyview/common/Monitor;->rectVideo:Landroid/graphics/Rect;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 37
    iget-object v0, p0, Lcom/easyview/common/Monitor;->rectVideo:Landroid/graphics/Rect;

    mul-int/lit8 v1, p4, 0x3

    div-int/lit8 v1, v1, 0x4

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 38
    iget-object v0, p0, Lcom/easyview/common/Monitor;->rectVideo:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/easyview/common/Monitor;->rectVideo:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int v1, p3, v1

    div-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 34
    monitor-exit p0

    .line 41
    :cond_1
    return-void

    .line 34
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 46
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 51
    return-void
.end method

.method public updateAVInfo(IILjava/lang/String;)V
    .locals 0
    .param p1, "codeInfo"    # I
    .param p2, "errCode"    # I
    .param p3, "strInfo"    # Ljava/lang/String;

    .prologue
    .line 75
    return-void
.end method

.method public updateVFrame(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/easyview/common/Monitor;->m_lastBmp:Landroid/graphics/Bitmap;

    .line 70
    invoke-virtual {p0}, Lcom/easyview/common/Monitor;->drawVideo()V

    .line 71
    return-void
.end method
