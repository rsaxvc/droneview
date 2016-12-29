.class Lcom/tutk/IOTC/Camera$ThreadSendIOCtrl;
.super Ljava/lang/Thread;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tutk/IOTC/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ThreadSendIOCtrl"
.end annotation


# instance fields
.field private bIsRunning:Z

.field private mAVChannel:Lcom/tutk/IOTC/Camera$AVChannel;

.field final synthetic this$0:Lcom/tutk/IOTC/Camera;


# direct methods
.method public constructor <init>(Lcom/tutk/IOTC/Camera;Lcom/tutk/IOTC/Camera$AVChannel;)V
    .locals 1
    .param p2, "channel"    # Lcom/tutk/IOTC/Camera$AVChannel;

    .prologue
    .line 2577
    iput-object p1, p0, Lcom/tutk/IOTC/Camera$ThreadSendIOCtrl;->this$0:Lcom/tutk/IOTC/Camera;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2574
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tutk/IOTC/Camera$ThreadSendIOCtrl;->bIsRunning:Z

    .line 2578
    iput-object p2, p0, Lcom/tutk/IOTC/Camera$ThreadSendIOCtrl;->mAVChannel:Lcom/tutk/IOTC/Camera$AVChannel;

    .line 2579
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 2595
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/tutk/IOTC/Camera$ThreadSendIOCtrl;->bIsRunning:Z

    .line 2597
    :goto_0
    iget-boolean v4, p0, Lcom/tutk/IOTC/Camera$ThreadSendIOCtrl;->bIsRunning:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/tutk/IOTC/Camera$ThreadSendIOCtrl;->this$0:Lcom/tutk/IOTC/Camera;

    # getter for: Lcom/tutk/IOTC/Camera;->mSID:I
    invoke-static {v4}, Lcom/tutk/IOTC/Camera;->access$0(Lcom/tutk/IOTC/Camera;)I

    move-result v4

    if-ltz v4, :cond_2

    iget-object v4, p0, Lcom/tutk/IOTC/Camera$ThreadSendIOCtrl;->mAVChannel:Lcom/tutk/IOTC/Camera$AVChannel;

    invoke-virtual {v4}, Lcom/tutk/IOTC/Camera$AVChannel;->getAVIndex()I

    move-result v4

    if-ltz v4, :cond_2

    .line 2607
    :cond_0
    iget-boolean v4, p0, Lcom/tutk/IOTC/Camera$ThreadSendIOCtrl;->bIsRunning:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/tutk/IOTC/Camera$ThreadSendIOCtrl;->this$0:Lcom/tutk/IOTC/Camera;

    # getter for: Lcom/tutk/IOTC/Camera;->mSID:I
    invoke-static {v4}, Lcom/tutk/IOTC/Camera;->access$0(Lcom/tutk/IOTC/Camera;)I

    move-result v4

    if-ltz v4, :cond_1

    iget-object v4, p0, Lcom/tutk/IOTC/Camera$ThreadSendIOCtrl;->mAVChannel:Lcom/tutk/IOTC/Camera$AVChannel;

    invoke-virtual {v4}, Lcom/tutk/IOTC/Camera$AVChannel;->getAVIndex()I

    move-result v4

    if-ltz v4, :cond_1

    .line 2608
    const/4 v2, 0x0

    .line 2609
    .local v2, "nDelayTime_ms":I
    iget-object v4, p0, Lcom/tutk/IOTC/Camera$ThreadSendIOCtrl;->mAVChannel:Lcom/tutk/IOTC/Camera$AVChannel;

    invoke-virtual {v4}, Lcom/tutk/IOTC/Camera$AVChannel;->getAVIndex()I

    move-result v4

    .line 2610
    const/16 v5, 0xff

    .line 2611
    invoke-static {v2}, Lcom/tutk/IOTC/Packet;->intToByteArray_Little(I)[B

    move-result-object v6

    const/4 v7, 0x4

    .line 2609
    invoke-static {v4, v5, v6, v7}, Lcom/tutk/IOTC/AVAPIs;->avSendIOCtrl(II[BI)I

    .line 2624
    .end local v2    # "nDelayTime_ms":I
    :cond_1
    :goto_1
    iget-boolean v4, p0, Lcom/tutk/IOTC/Camera$ThreadSendIOCtrl;->bIsRunning:Z

    if-nez v4, :cond_3

    .line 2663
    const-string v4, "IOTCamera"

    const-string v5, "===ThreadSendIOCtrl exit==="

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2664
    return-void

    .line 2599
    :cond_2
    :try_start_0
    iget-object v4, p0, Lcom/tutk/IOTC/Camera$ThreadSendIOCtrl;->this$0:Lcom/tutk/IOTC/Camera;

    # getter for: Lcom/tutk/IOTC/Camera;->mWaitObjectForConnected:Ljava/lang/Object;
    invoke-static {v4}, Lcom/tutk/IOTC/Camera;->access$4(Lcom/tutk/IOTC/Camera;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2600
    :try_start_1
    iget-object v4, p0, Lcom/tutk/IOTC/Camera$ThreadSendIOCtrl;->this$0:Lcom/tutk/IOTC/Camera;

    # getter for: Lcom/tutk/IOTC/Camera;->mWaitObjectForConnected:Ljava/lang/Object;
    invoke-static {v4}, Lcom/tutk/IOTC/Camera;->access$4(Lcom/tutk/IOTC/Camera;)Ljava/lang/Object;

    move-result-object v4

    const-wide/16 v6, 0x3e8

    invoke-virtual {v4, v6, v7}, Ljava/lang/Object;->wait(J)V

    .line 2599
    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 2602
    :catch_0
    move-exception v1

    .line 2603
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 2626
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    iget-object v4, p0, Lcom/tutk/IOTC/Camera$ThreadSendIOCtrl;->this$0:Lcom/tutk/IOTC/Camera;

    # getter for: Lcom/tutk/IOTC/Camera;->mSID:I
    invoke-static {v4}, Lcom/tutk/IOTC/Camera;->access$0(Lcom/tutk/IOTC/Camera;)I

    move-result v4

    if-ltz v4, :cond_5

    iget-object v4, p0, Lcom/tutk/IOTC/Camera$ThreadSendIOCtrl;->mAVChannel:Lcom/tutk/IOTC/Camera$AVChannel;

    invoke-virtual {v4}, Lcom/tutk/IOTC/Camera$AVChannel;->getAVIndex()I

    move-result v4

    if-ltz v4, :cond_5

    .line 2627
    iget-object v4, p0, Lcom/tutk/IOTC/Camera$ThreadSendIOCtrl;->mAVChannel:Lcom/tutk/IOTC/Camera$AVChannel;

    iget-object v4, v4, Lcom/tutk/IOTC/Camera$AVChannel;->IOCtrlQueue:Lcom/tutk/IOTC/Camera$IOCtrlQueue;

    invoke-virtual {v4}, Lcom/tutk/IOTC/Camera$IOCtrlQueue;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    .line 2628
    const-string v4, "IOTCamera"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "avSendIOCtrl size : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/tutk/IOTC/Camera$ThreadSendIOCtrl;->mAVChannel:Lcom/tutk/IOTC/Camera$AVChannel;

    iget-object v6, v6, Lcom/tutk/IOTC/Camera$AVChannel;->IOCtrlQueue:Lcom/tutk/IOTC/Camera$IOCtrlQueue;

    iget-object v6, v6, Lcom/tutk/IOTC/Camera$IOCtrlQueue;->listData:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2630
    iget-object v4, p0, Lcom/tutk/IOTC/Camera$ThreadSendIOCtrl;->mAVChannel:Lcom/tutk/IOTC/Camera$AVChannel;

    iget-object v4, v4, Lcom/tutk/IOTC/Camera$AVChannel;->IOCtrlQueue:Lcom/tutk/IOTC/Camera$IOCtrlQueue;

    .line 2631
    invoke-virtual {v4}, Lcom/tutk/IOTC/Camera$IOCtrlQueue;->Dequeue()Lcom/tutk/IOTC/Camera$IOCtrlQueue$IOCtrlSet;

    move-result-object v0

    .line 2633
    .local v0, "data":Lcom/tutk/IOTC/Camera$IOCtrlQueue$IOCtrlSet;
    iget-boolean v4, p0, Lcom/tutk/IOTC/Camera$ThreadSendIOCtrl;->bIsRunning:Z

    if-eqz v4, :cond_1

    if-eqz v0, :cond_1

    .line 2635
    iget-object v4, p0, Lcom/tutk/IOTC/Camera$ThreadSendIOCtrl;->mAVChannel:Lcom/tutk/IOTC/Camera$AVChannel;

    invoke-virtual {v4}, Lcom/tutk/IOTC/Camera$AVChannel;->getAVIndex()I

    move-result v4

    .line 2636
    iget v5, v0, Lcom/tutk/IOTC/Camera$IOCtrlQueue$IOCtrlSet;->IOCtrlType:I

    iget-object v6, v0, Lcom/tutk/IOTC/Camera$IOCtrlQueue$IOCtrlSet;->IOCtrlBuf:[B

    .line 2637
    iget-object v7, v0, Lcom/tutk/IOTC/Camera$IOCtrlQueue$IOCtrlSet;->IOCtrlBuf:[B

    array-length v7, v7

    .line 2635
    invoke-static {v4, v5, v6, v7}, Lcom/tutk/IOTC/AVAPIs;->avSendIOCtrl(II[BI)I

    move-result v3

    .line 2639
    .local v3, "ret":I
    if-ltz v3, :cond_4

    .line 2640
    const-string v4, "IOTCamera"

    .line 2641
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "avSendIOCtrl("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2642
    iget-object v6, p0, Lcom/tutk/IOTC/Camera$ThreadSendIOCtrl;->mAVChannel:Lcom/tutk/IOTC/Camera$AVChannel;

    invoke-virtual {v6}, Lcom/tutk/IOTC/Camera$AVChannel;->getAVIndex()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2643
    const-string v6, ", 0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2645
    iget v6, v0, Lcom/tutk/IOTC/Camera$IOCtrlQueue$IOCtrlSet;->IOCtrlType:I

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    .line 2644
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2646
    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2647
    iget-object v6, v0, Lcom/tutk/IOTC/Camera$IOCtrlQueue$IOCtrlSet;->IOCtrlBuf:[B

    .line 2648
    iget-object v7, v0, Lcom/tutk/IOTC/Camera$IOCtrlQueue$IOCtrlSet;->IOCtrlBuf:[B

    array-length v7, v7

    .line 2647
    invoke-static {v6, v7}, Lcom/tutk/IOTC/Camera;->getHex([BI)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2649
    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2641
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2640
    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2651
    :cond_4
    const-string v4, "IOTCamera"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "avSendIOCtrl failed : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2656
    .end local v0    # "data":Lcom/tutk/IOTC/Camera$IOCtrlQueue$IOCtrlSet;
    .end local v3    # "ret":I
    :cond_5
    const-wide/16 v4, 0x32

    :try_start_3
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1

    .line 2657
    :catch_1
    move-exception v1

    .line 2658
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_1
.end method

.method public stopThread()V
    .locals 1

    .prologue
    .line 2583
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tutk/IOTC/Camera$ThreadSendIOCtrl;->bIsRunning:Z

    .line 2585
    iget-object v0, p0, Lcom/tutk/IOTC/Camera$ThreadSendIOCtrl;->mAVChannel:Lcom/tutk/IOTC/Camera$AVChannel;

    invoke-virtual {v0}, Lcom/tutk/IOTC/Camera$AVChannel;->getAVIndex()I

    move-result v0

    if-ltz v0, :cond_0

    .line 2588
    iget-object v0, p0, Lcom/tutk/IOTC/Camera$ThreadSendIOCtrl;->mAVChannel:Lcom/tutk/IOTC/Camera$AVChannel;

    invoke-virtual {v0}, Lcom/tutk/IOTC/Camera$AVChannel;->getAVIndex()I

    move-result v0

    invoke-static {v0}, Lcom/tutk/IOTC/AVAPIs;->avSendIOCtrlExit(I)I

    .line 2590
    :cond_0
    return-void
.end method
