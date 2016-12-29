.class Lcom/tutk/IOTC/Monitor$ThreadRender;
.super Ljava/lang/Thread;
.source "Monitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tutk/IOTC/Monitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ThreadRender"
.end annotation


# instance fields
.field private mIsRunningThread:Z

.field private mWaitObjectForStopThread:Ljava/lang/Object;

.field final synthetic this$0:Lcom/tutk/IOTC/Monitor;


# direct methods
.method private constructor <init>(Lcom/tutk/IOTC/Monitor;)V
    .locals 1

    .prologue
    .line 511
    iput-object p1, p0, Lcom/tutk/IOTC/Monitor$ThreadRender;->this$0:Lcom/tutk/IOTC/Monitor;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 513
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tutk/IOTC/Monitor$ThreadRender;->mIsRunningThread:Z

    .line 514
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tutk/IOTC/Monitor$ThreadRender;->mWaitObjectForStopThread:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Lcom/tutk/IOTC/Monitor;Lcom/tutk/IOTC/Monitor$ThreadRender;)V
    .locals 0

    .prologue
    .line 511
    invoke-direct {p0, p1}, Lcom/tutk/IOTC/Monitor$ThreadRender;-><init>(Lcom/tutk/IOTC/Monitor;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 527
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/tutk/IOTC/Monitor$ThreadRender;->mIsRunningThread:Z

    .line 528
    const/4 v6, 0x0

    .line 529
    .local v6, "videoCanvas":Landroid/graphics/Canvas;
    const-string v5, "Connectting..."

    .line 530
    .local v5, "textConnect":Ljava/lang/String;
    const/4 v2, 0x0

    .line 531
    .local v2, "i":I
    :goto_0
    iget-boolean v7, p0, Lcom/tutk/IOTC/Monitor$ThreadRender;->mIsRunningThread:Z

    if-nez v7, :cond_0

    .line 600
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v8, "===ThreadRender exit==="

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 601
    return-void

    .line 535
    :cond_0
    iget-object v7, p0, Lcom/tutk/IOTC/Monitor$ThreadRender;->this$0:Lcom/tutk/IOTC/Monitor;

    # getter for: Lcom/tutk/IOTC/Monitor;->mLastFrame:Landroid/graphics/Bitmap;
    invoke-static {v7}, Lcom/tutk/IOTC/Monitor;->access$0(Lcom/tutk/IOTC/Monitor;)Landroid/graphics/Bitmap;

    move-result-object v7

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/tutk/IOTC/Monitor$ThreadRender;->this$0:Lcom/tutk/IOTC/Monitor;

    # getter for: Lcom/tutk/IOTC/Monitor;->mLastFrame:Landroid/graphics/Bitmap;
    invoke-static {v7}, Lcom/tutk/IOTC/Monitor;->access$0(Lcom/tutk/IOTC/Monitor;)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v7

    if-nez v7, :cond_4

    .line 537
    :try_start_0
    iget-object v7, p0, Lcom/tutk/IOTC/Monitor$ThreadRender;->this$0:Lcom/tutk/IOTC/Monitor;

    # getter for: Lcom/tutk/IOTC/Monitor;->mSurHolder:Landroid/view/SurfaceHolder;
    invoke-static {v7}, Lcom/tutk/IOTC/Monitor;->access$1(Lcom/tutk/IOTC/Monitor;)Landroid/view/SurfaceHolder;

    move-result-object v7

    invoke-interface {v7}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v6

    .line 539
    if-eqz v6, :cond_1

    .line 542
    const/high16 v7, -0x1000000

    invoke-virtual {v6, v7}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 543
    iget-object v7, p0, Lcom/tutk/IOTC/Monitor$ThreadRender;->this$0:Lcom/tutk/IOTC/Monitor;

    # getter for: Lcom/tutk/IOTC/Monitor;->mLastFrame:Landroid/graphics/Bitmap;
    invoke-static {v7}, Lcom/tutk/IOTC/Monitor;->access$0(Lcom/tutk/IOTC/Monitor;)Landroid/graphics/Bitmap;

    move-result-object v7

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/tutk/IOTC/Monitor$ThreadRender;->this$0:Lcom/tutk/IOTC/Monitor;

    # getter for: Lcom/tutk/IOTC/Monitor;->mRectCanvas:Landroid/graphics/Rect;
    invoke-static {v9}, Lcom/tutk/IOTC/Monitor;->access$2(Lcom/tutk/IOTC/Monitor;)Landroid/graphics/Rect;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 547
    :cond_1
    if-eqz v6, :cond_2

    .line 548
    iget-object v7, p0, Lcom/tutk/IOTC/Monitor$ThreadRender;->this$0:Lcom/tutk/IOTC/Monitor;

    # getter for: Lcom/tutk/IOTC/Monitor;->mSurHolder:Landroid/view/SurfaceHolder;
    invoke-static {v7}, Lcom/tutk/IOTC/Monitor;->access$1(Lcom/tutk/IOTC/Monitor;)Landroid/view/SurfaceHolder;

    move-result-object v7

    invoke-interface {v7, v6}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 549
    :cond_2
    const/4 v6, 0x0

    .line 592
    :goto_1
    :try_start_1
    iget-object v8, p0, Lcom/tutk/IOTC/Monitor$ThreadRender;->mWaitObjectForStopThread:Ljava/lang/Object;

    monitor-enter v8
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 593
    :try_start_2
    iget-object v7, p0, Lcom/tutk/IOTC/Monitor$ThreadRender;->mWaitObjectForStopThread:Ljava/lang/Object;

    const-wide/16 v9, 0x21

    invoke-virtual {v7, v9, v10}, Ljava/lang/Object;->wait(J)V

    .line 592
    monitor-exit v8

    goto :goto_0

    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v7
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    .line 595
    :catch_0
    move-exception v1

    .line 596
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 546
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catchall_1
    move-exception v7

    .line 547
    if-eqz v6, :cond_3

    .line 548
    iget-object v8, p0, Lcom/tutk/IOTC/Monitor$ThreadRender;->this$0:Lcom/tutk/IOTC/Monitor;

    # getter for: Lcom/tutk/IOTC/Monitor;->mSurHolder:Landroid/view/SurfaceHolder;
    invoke-static {v8}, Lcom/tutk/IOTC/Monitor;->access$1(Lcom/tutk/IOTC/Monitor;)Landroid/view/SurfaceHolder;

    move-result-object v8

    invoke-interface {v8, v6}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 549
    :cond_3
    const/4 v6, 0x0

    .line 550
    throw v7

    .line 554
    :cond_4
    :try_start_4
    iget-object v7, p0, Lcom/tutk/IOTC/Monitor$ThreadRender;->this$0:Lcom/tutk/IOTC/Monitor;

    # getter for: Lcom/tutk/IOTC/Monitor;->mSurHolder:Landroid/view/SurfaceHolder;
    invoke-static {v7}, Lcom/tutk/IOTC/Monitor;->access$1(Lcom/tutk/IOTC/Monitor;)Landroid/view/SurfaceHolder;

    move-result-object v7

    invoke-interface {v7}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v6

    .line 556
    if-eqz v6, :cond_5

    .line 558
    const/high16 v7, -0x1000000

    invoke-virtual {v6, v7}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 559
    iget-object v7, p0, Lcom/tutk/IOTC/Monitor$ThreadRender;->this$0:Lcom/tutk/IOTC/Monitor;

    # getter for: Lcom/tutk/IOTC/Monitor;->rotation:[Landroid/graphics/Bitmap;
    invoke-static {v7}, Lcom/tutk/IOTC/Monitor;->access$3(Lcom/tutk/IOTC/Monitor;)[Landroid/graphics/Bitmap;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result-object v7

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .local v3, "i":I
    :try_start_5
    div-int/lit8 v8, v2, 0x2

    rem-int/lit8 v8, v8, 0x8

    aget-object v0, v7, v8

    .line 560
    .local v0, "bmp":Landroid/graphics/Bitmap;
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 561
    .local v4, "mRectMicro":Landroid/graphics/Rect;
    iget-object v7, p0, Lcom/tutk/IOTC/Monitor$ThreadRender;->this$0:Lcom/tutk/IOTC/Monitor;

    # getter for: Lcom/tutk/IOTC/Monitor;->mRectMonitor:Landroid/graphics/Rect;
    invoke-static {v7}, Lcom/tutk/IOTC/Monitor;->access$4(Lcom/tutk/IOTC/Monitor;)Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->left:I

    iget-object v8, p0, Lcom/tutk/IOTC/Monitor$ThreadRender;->this$0:Lcom/tutk/IOTC/Monitor;

    # getter for: Lcom/tutk/IOTC/Monitor;->mRectMonitor:Landroid/graphics/Rect;
    invoke-static {v8}, Lcom/tutk/IOTC/Monitor;->access$4(Lcom/tutk/IOTC/Monitor;)Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    sub-int/2addr v7, v8

    iput v7, v4, Landroid/graphics/Rect;->left:I

    .line 562
    iget v7, v4, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    add-int/2addr v7, v8

    iput v7, v4, Landroid/graphics/Rect;->right:I

    .line 563
    iget-object v7, p0, Lcom/tutk/IOTC/Monitor$ThreadRender;->this$0:Lcom/tutk/IOTC/Monitor;

    # getter for: Lcom/tutk/IOTC/Monitor;->mRectMonitor:Landroid/graphics/Rect;
    invoke-static {v7}, Lcom/tutk/IOTC/Monitor;->access$4(Lcom/tutk/IOTC/Monitor;)Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->top:I

    iget-object v8, p0, Lcom/tutk/IOTC/Monitor$ThreadRender;->this$0:Lcom/tutk/IOTC/Monitor;

    # getter for: Lcom/tutk/IOTC/Monitor;->mRectMonitor:Landroid/graphics/Rect;
    invoke-static {v8}, Lcom/tutk/IOTC/Monitor;->access$4(Lcom/tutk/IOTC/Monitor;)Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    sub-int/2addr v7, v8

    iput v7, v4, Landroid/graphics/Rect;->top:I

    .line 564
    iget v7, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    add-int/2addr v7, v8

    iput v7, v4, Landroid/graphics/Rect;->bottom:I

    .line 565
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v6, v0, v7, v4, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    move v2, v3

    .line 584
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    .end local v3    # "i":I
    .end local v4    # "mRectMicro":Landroid/graphics/Rect;
    .restart local v2    # "i":I
    :cond_5
    if-eqz v6, :cond_6

    .line 585
    iget-object v7, p0, Lcom/tutk/IOTC/Monitor$ThreadRender;->this$0:Lcom/tutk/IOTC/Monitor;

    # getter for: Lcom/tutk/IOTC/Monitor;->mSurHolder:Landroid/view/SurfaceHolder;
    invoke-static {v7}, Lcom/tutk/IOTC/Monitor;->access$1(Lcom/tutk/IOTC/Monitor;)Landroid/view/SurfaceHolder;

    move-result-object v7

    invoke-interface {v7, v6}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 586
    :cond_6
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 583
    :catchall_2
    move-exception v7

    .line 584
    :goto_2
    if-eqz v6, :cond_7

    .line 585
    iget-object v8, p0, Lcom/tutk/IOTC/Monitor$ThreadRender;->this$0:Lcom/tutk/IOTC/Monitor;

    # getter for: Lcom/tutk/IOTC/Monitor;->mSurHolder:Landroid/view/SurfaceHolder;
    invoke-static {v8}, Lcom/tutk/IOTC/Monitor;->access$1(Lcom/tutk/IOTC/Monitor;)Landroid/view/SurfaceHolder;

    move-result-object v8

    invoke-interface {v8, v6}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 586
    :cond_7
    const/4 v6, 0x0

    .line 587
    throw v7

    .line 583
    .end local v2    # "i":I
    .restart local v3    # "i":I
    :catchall_3
    move-exception v7

    move v2, v3

    .end local v3    # "i":I
    .restart local v2    # "i":I
    goto :goto_2
.end method

.method public stopThread()V
    .locals 1

    .prologue
    .line 517
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tutk/IOTC/Monitor$ThreadRender;->mIsRunningThread:Z

    .line 519
    :try_start_0
    iget-object v0, p0, Lcom/tutk/IOTC/Monitor$ThreadRender;->mWaitObjectForStopThread:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 522
    :goto_0
    return-void

    .line 520
    :catch_0
    move-exception v0

    goto :goto_0
.end method
