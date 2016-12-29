.class Lobject/p2pwificam/clientActivity/DPlayActivity$StatusThread;
.super Ljava/lang/Thread;
.source "DPlayActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pwificam/clientActivity/DPlayActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StatusThread"
.end annotation


# instance fields
.field private storageCount:I

.field final synthetic this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/DPlayActivity;)V
    .locals 1

    .prologue
    .line 2429
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$StatusThread;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2431
    const/16 v0, 0x14

    iput v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$StatusThread;->storageCount:I

    return-void
.end method

.method static synthetic access$0(Lobject/p2pwificam/clientActivity/DPlayActivity$StatusThread;)Lobject/p2pwificam/clientActivity/DPlayActivity;
    .locals 1

    .prologue
    .line 2429
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$StatusThread;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    return-object v0
.end method

.method private check_video_data()V
    .locals 2

    .prologue
    .line 2476
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$StatusThread;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->_camera:Lcom/easyview/camera/EVBaseCamera;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$16(Lobject/p2pwificam/clientActivity/DPlayActivity;)Lcom/easyview/camera/EVBaseCamera;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2485
    :cond_0
    :goto_0
    return-void

    .line 2477
    :cond_1
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$StatusThread;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->_isPause:Z
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$19(Lobject/p2pwificam/clientActivity/DPlayActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2478
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$StatusThread;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->is_close_video:Z
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$98(Lobject/p2pwificam/clientActivity/DPlayActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2479
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$StatusThread;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->video_data_idle_count:I
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$133(Lobject/p2pwificam/clientActivity/DPlayActivity;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$61(Lobject/p2pwificam/clientActivity/DPlayActivity;I)V

    .line 2480
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$StatusThread;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->video_data_idle_count:I
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$133(Lobject/p2pwificam/clientActivity/DPlayActivity;)I

    move-result v0

    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    .line 2482
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$StatusThread;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$20(Lobject/p2pwificam/clientActivity/DPlayActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2483
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$StatusThread;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$61(Lobject/p2pwificam/clientActivity/DPlayActivity;I)V

    goto :goto_0
.end method

.method private hideNoSDShow()V
    .locals 2

    .prologue
    .line 2462
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$StatusThread;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->no_sd_show_count:I
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$132(Lobject/p2pwificam/clientActivity/DPlayActivity;)I

    move-result v0

    if-nez v0, :cond_1

    .line 2473
    :cond_0
    :goto_0
    return-void

    .line 2463
    :cond_1
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$StatusThread;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->no_sd_show_count:I
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$132(Lobject/p2pwificam/clientActivity/DPlayActivity;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$94(Lobject/p2pwificam/clientActivity/DPlayActivity;I)V

    .line 2464
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$StatusThread;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->no_sd_show_count:I
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$132(Lobject/p2pwificam/clientActivity/DPlayActivity;)I

    move-result v0

    if-nez v0, :cond_0

    .line 2466
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$StatusThread;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    new-instance v1, Lobject/p2pwificam/clientActivity/DPlayActivity$StatusThread$1;

    invoke-direct {v1, p0}, Lobject/p2pwificam/clientActivity/DPlayActivity$StatusThread$1;-><init>(Lobject/p2pwificam/clientActivity/DPlayActivity$StatusThread;)V

    invoke-virtual {v0, v1}, Lobject/p2pwificam/clientActivity/DPlayActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private queryStorageState()V
    .locals 5

    .prologue
    const/16 v4, 0x64

    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 2434
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$StatusThread;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->_isConnected:Z
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$130(Lobject/p2pwificam/clientActivity/DPlayActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2459
    :cond_0
    :goto_0
    return-void

    .line 2435
    :cond_1
    iget v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$StatusThread;->storageCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$StatusThread;->storageCount:I

    .line 2436
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$StatusThread;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->record_state:I
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$54(Lobject/p2pwificam/clientActivity/DPlayActivity;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$StatusThread;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->record_state:I
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$54(Lobject/p2pwificam/clientActivity/DPlayActivity;)I

    move-result v0

    if-ne v0, v3, :cond_3

    .line 2438
    :cond_2
    iget v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$StatusThread;->storageCount:I

    if-le v0, v3, :cond_3

    .line 2440
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$StatusThread;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->_camera:Lcom/easyview/camera/EVBaseCamera;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$16(Lobject/p2pwificam/clientActivity/DPlayActivity;)Lcom/easyview/camera/EVBaseCamera;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/easyview/camera/EVBaseCamera;->querystorageState(Lcom/easyview/basecamera/ICamera$IRespondListener;)V

    .line 2441
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$StatusThread;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$20(Lobject/p2pwificam/clientActivity/DPlayActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2442
    iput v2, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$StatusThread;->storageCount:I

    goto :goto_0

    .line 2446
    :cond_3
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$StatusThread;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->_camera:Lcom/easyview/camera/EVBaseCamera;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$16(Lobject/p2pwificam/clientActivity/DPlayActivity;)Lcom/easyview/camera/EVBaseCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easyview/camera/EVBaseCamera;->haveStorage()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2448
    iget v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$StatusThread;->storageCount:I

    const/16 v1, 0x28

    if-lt v0, v1, :cond_0

    .line 2449
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$StatusThread;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->_camera:Lcom/easyview/camera/EVBaseCamera;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$16(Lobject/p2pwificam/clientActivity/DPlayActivity;)Lcom/easyview/camera/EVBaseCamera;

    move-result-object v0

    const/16 v1, 0x200

    invoke-virtual {v0, v1}, Lcom/easyview/camera/EVBaseCamera;->isLowMemory(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2451
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$StatusThread;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    const-string v1, "The memory will be full"

    # invokes: Lobject/p2pwificam/clientActivity/DPlayActivity;->showMessage(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$131(Lobject/p2pwificam/clientActivity/DPlayActivity;Ljava/lang/String;)V

    .line 2457
    :cond_4
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$StatusThread;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$20(Lobject/p2pwificam/clientActivity/DPlayActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2458
    iput v2, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$StatusThread;->storageCount:I

    goto :goto_0

    .line 2455
    :cond_5
    iget v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$StatusThread;->storageCount:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_4

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    .line 2488
    iget-object v12, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$StatusThread;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    const/4 v13, 0x1

    invoke-static {v12, v13}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$134(Lobject/p2pwificam/clientActivity/DPlayActivity;Z)V

    .line 2489
    const/4 v11, 0x0

    .line 2490
    .local v11, "wifi_rssi_count":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 2491
    .local v9, "start_ms":J
    const/4 v2, 0x0

    .line 2492
    .local v2, "count":I
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 2493
    :goto_0
    iget-object v12, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$StatusThread;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->_connectRun:Z
    invoke-static {v12}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$135(Lobject/p2pwificam/clientActivity/DPlayActivity;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 2564
    const-string v12, "DPlay"

    const-string v13, "StatusThread Finish "

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2565
    return-void

    .line 2495
    :cond_0
    iget-object v12, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$StatusThread;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->handler:Landroid/os/Handler;
    invoke-static {v12}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$20(Lobject/p2pwificam/clientActivity/DPlayActivity;)Landroid/os/Handler;

    move-result-object v12

    const/16 v13, 0x65

    invoke-virtual {v12, v13}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2496
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/DPlayActivity$StatusThread;->hideNoSDShow()V

    .line 2497
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/DPlayActivity$StatusThread;->check_video_data()V

    .line 2498
    iget-object v12, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$StatusThread;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->_camera:Lcom/easyview/camera/EVBaseCamera;
    invoke-static {v12}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$16(Lobject/p2pwificam/clientActivity/DPlayActivity;)Lcom/easyview/camera/EVBaseCamera;

    move-result-object v12

    if-eqz v12, :cond_3

    .line 2500
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/DPlayActivity$StatusThread;->queryStorageState()V

    .line 2501
    iget-object v12, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$StatusThread;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->_control_idle_count:I
    invoke-static {v12}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$136(Lobject/p2pwificam/clientActivity/DPlayActivity;)I

    move-result v12

    if-lez v12, :cond_1

    .line 2503
    iget-object v12, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$StatusThread;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->_control_idle_count:I
    invoke-static {v12}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$136(Lobject/p2pwificam/clientActivity/DPlayActivity;)I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    invoke-static {v12, v13}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$31(Lobject/p2pwificam/clientActivity/DPlayActivity;I)V

    .line 2504
    iget-object v12, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$StatusThread;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->_control_idle_count:I
    invoke-static {v12}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$136(Lobject/p2pwificam/clientActivity/DPlayActivity;)I

    move-result v12

    if-nez v12, :cond_1

    .line 2506
    iget-object v12, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$StatusThread;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->handler:Landroid/os/Handler;
    invoke-static {v12}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$20(Lobject/p2pwificam/clientActivity/DPlayActivity;)Landroid/os/Handler;

    move-result-object v12

    const/16 v13, 0xa

    invoke-virtual {v12, v13}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2509
    :cond_1
    iget-object v12, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$StatusThread;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->_stop_record_count:I
    invoke-static {v12}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$99(Lobject/p2pwificam/clientActivity/DPlayActivity;)I

    move-result v12

    if-lez v12, :cond_2

    iget-object v12, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$StatusThread;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->_stop_record_count:I
    invoke-static {v12}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$99(Lobject/p2pwificam/clientActivity/DPlayActivity;)I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    invoke-static {v12, v13}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$137(Lobject/p2pwificam/clientActivity/DPlayActivity;I)V

    .line 2510
    :cond_2
    iget-object v12, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$StatusThread;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->_camera:Lcom/easyview/camera/EVBaseCamera;
    invoke-static {v12}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$16(Lobject/p2pwificam/clientActivity/DPlayActivity;)Lcom/easyview/camera/EVBaseCamera;

    move-result-object v12

    invoke-virtual {v12}, Lcom/easyview/camera/EVBaseCamera;->isRecording()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 2512
    iget-object v12, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$StatusThread;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    new-instance v13, Lobject/p2pwificam/clientActivity/DPlayActivity$StatusThread$2;

    invoke-direct {v13, p0}, Lobject/p2pwificam/clientActivity/DPlayActivity$StatusThread$2;-><init>(Lobject/p2pwificam/clientActivity/DPlayActivity$StatusThread;)V

    invoke-virtual {v12, v13}, Lobject/p2pwificam/clientActivity/DPlayActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2552
    :cond_3
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 2553
    .local v7, "now":J
    sub-long v5, v7, v9

    .line 2554
    .local v5, "ms":J
    mul-int/lit16 v12, v2, 0x3e8

    int-to-long v0, v12

    .line 2555
    .local v0, "c_ms":J
    const/16 v3, 0x14

    .line 2556
    .local v3, "delta_ms":I
    cmp-long v12, v0, v5

    if-lez v12, :cond_4

    const/4 v3, 0x0

    .line 2558
    :cond_4
    rsub-int v12, v3, 0x3e8

    int-to-long v12, v12

    :try_start_0
    invoke-static {v12, v13}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2562
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 2534
    .end local v0    # "c_ms":J
    .end local v3    # "delta_ms":I
    .end local v5    # "ms":J
    .end local v7    # "now":J
    :cond_5
    iget-object v12, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$StatusThread;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->is_record:Z
    invoke-static {v12}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$49(Lobject/p2pwificam/clientActivity/DPlayActivity;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 2536
    iget-object v12, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$StatusThread;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    new-instance v13, Lobject/p2pwificam/clientActivity/DPlayActivity$StatusThread$3;

    invoke-direct {v13, p0}, Lobject/p2pwificam/clientActivity/DPlayActivity$StatusThread$3;-><init>(Lobject/p2pwificam/clientActivity/DPlayActivity$StatusThread;)V

    invoke-virtual {v12, v13}, Lobject/p2pwificam/clientActivity/DPlayActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 2559
    .restart local v0    # "c_ms":J
    .restart local v3    # "delta_ms":I
    .restart local v5    # "ms":J
    .restart local v7    # "now":J
    :catch_0
    move-exception v4

    .line 2560
    .local v4, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v4}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2
.end method
