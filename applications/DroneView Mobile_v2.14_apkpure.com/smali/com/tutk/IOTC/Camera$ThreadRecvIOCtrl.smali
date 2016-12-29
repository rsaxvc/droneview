.class Lcom/tutk/IOTC/Camera$ThreadRecvIOCtrl;
.super Ljava/lang/Thread;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tutk/IOTC/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ThreadRecvIOCtrl"
.end annotation


# instance fields
.field private final TIME_OUT:I

.field private bIsRunning:Z

.field private mAVChannel:Lcom/tutk/IOTC/Camera$AVChannel;

.field final synthetic this$0:Lcom/tutk/IOTC/Camera;


# direct methods
.method public constructor <init>(Lcom/tutk/IOTC/Camera;Lcom/tutk/IOTC/Camera$AVChannel;)V
    .locals 1
    .param p2, "channel"    # Lcom/tutk/IOTC/Camera$AVChannel;

    .prologue
    const/4 v0, 0x0

    .line 2674
    iput-object p1, p0, Lcom/tutk/IOTC/Camera$ThreadRecvIOCtrl;->this$0:Lcom/tutk/IOTC/Camera;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2669
    iput v0, p0, Lcom/tutk/IOTC/Camera$ThreadRecvIOCtrl;->TIME_OUT:I

    .line 2670
    iput-boolean v0, p0, Lcom/tutk/IOTC/Camera$ThreadRecvIOCtrl;->bIsRunning:Z

    .line 2675
    iput-object p2, p0, Lcom/tutk/IOTC/Camera$ThreadRecvIOCtrl;->mAVChannel:Lcom/tutk/IOTC/Camera$AVChannel;

    .line 2676
    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 2685
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/tutk/IOTC/Camera$ThreadRecvIOCtrl;->bIsRunning:Z

    .line 2687
    :goto_0
    iget-boolean v10, p0, Lcom/tutk/IOTC/Camera$ThreadRecvIOCtrl;->bIsRunning:Z

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/tutk/IOTC/Camera$ThreadRecvIOCtrl;->this$0:Lcom/tutk/IOTC/Camera;

    # getter for: Lcom/tutk/IOTC/Camera;->mSID:I
    invoke-static {v10}, Lcom/tutk/IOTC/Camera;->access$0(Lcom/tutk/IOTC/Camera;)I

    move-result v10

    if-ltz v10, :cond_1

    iget-object v10, p0, Lcom/tutk/IOTC/Camera$ThreadRecvIOCtrl;->mAVChannel:Lcom/tutk/IOTC/Camera$AVChannel;

    invoke-virtual {v10}, Lcom/tutk/IOTC/Camera$AVChannel;->getAVIndex()I

    move-result v10

    if-ltz v10, :cond_1

    .line 2697
    :cond_0
    :goto_1
    iget-boolean v10, p0, Lcom/tutk/IOTC/Camera$ThreadRecvIOCtrl;->bIsRunning:Z

    if-nez v10, :cond_2

    .line 2778
    const-string v10, "IOTCamera"

    const-string v11, "===ThreadRecvIOCtrl exit==="

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2779
    return-void

    .line 2689
    :cond_1
    :try_start_0
    iget-object v10, p0, Lcom/tutk/IOTC/Camera$ThreadRecvIOCtrl;->this$0:Lcom/tutk/IOTC/Camera;

    # getter for: Lcom/tutk/IOTC/Camera;->mWaitObjectForConnected:Ljava/lang/Object;
    invoke-static {v10}, Lcom/tutk/IOTC/Camera;->access$4(Lcom/tutk/IOTC/Camera;)Ljava/lang/Object;

    move-result-object v11

    monitor-enter v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2690
    :try_start_1
    iget-object v10, p0, Lcom/tutk/IOTC/Camera$ThreadRecvIOCtrl;->this$0:Lcom/tutk/IOTC/Camera;

    # getter for: Lcom/tutk/IOTC/Camera;->mWaitObjectForConnected:Ljava/lang/Object;
    invoke-static {v10}, Lcom/tutk/IOTC/Camera;->access$4(Lcom/tutk/IOTC/Camera;)Ljava/lang/Object;

    move-result-object v10

    const-wide/16 v12, 0x3e8

    invoke-virtual {v10, v12, v13}, Ljava/lang/Object;->wait(J)V

    .line 2689
    monitor-exit v11

    goto :goto_0

    :catchall_0
    move-exception v10

    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v10
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 2692
    :catch_0
    move-exception v3

    .line 2693
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 2699
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_2
    iget-object v10, p0, Lcom/tutk/IOTC/Camera$ThreadRecvIOCtrl;->this$0:Lcom/tutk/IOTC/Camera;

    # getter for: Lcom/tutk/IOTC/Camera;->mSID:I
    invoke-static {v10}, Lcom/tutk/IOTC/Camera;->access$0(Lcom/tutk/IOTC/Camera;)I

    move-result v10

    if-ltz v10, :cond_0

    iget-object v10, p0, Lcom/tutk/IOTC/Camera$ThreadRecvIOCtrl;->mAVChannel:Lcom/tutk/IOTC/Camera$AVChannel;

    invoke-virtual {v10}, Lcom/tutk/IOTC/Camera$AVChannel;->getAVIndex()I

    move-result v10

    if-ltz v10, :cond_0

    .line 2701
    const/4 v10, 0x1

    new-array v7, v10, [I

    .line 2702
    .local v7, "ioCtrlType":[I
    const/16 v10, 0x400

    new-array v6, v10, [B

    .line 2704
    .local v6, "ioCtrlBuf":[B
    iget-object v10, p0, Lcom/tutk/IOTC/Camera$ThreadRecvIOCtrl;->mAVChannel:Lcom/tutk/IOTC/Camera$AVChannel;

    invoke-virtual {v10}, Lcom/tutk/IOTC/Camera$AVChannel;->getAVIndex()I

    move-result v10

    .line 2705
    array-length v11, v6

    const/4 v12, 0x0

    .line 2704
    invoke-static {v10, v7, v6, v11, v12}, Lcom/tutk/IOTC/AVAPIs;->avRecvIOCtrl(I[I[BII)I

    move-result v9

    .line 2707
    .local v9, "nRet":I
    if-ltz v9, :cond_6

    .line 2709
    const-string v10, "IOTCamera"

    .line 2710
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "avRecvIOCtrl("

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v12, p0, Lcom/tutk/IOTC/Camera$ThreadRecvIOCtrl;->mAVChannel:Lcom/tutk/IOTC/Camera$AVChannel;

    invoke-virtual {v12}, Lcom/tutk/IOTC/Camera$AVChannel;->getAVIndex()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 2711
    const-string v12, ", 0x"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 2712
    const/4 v12, 0x0

    aget v12, v7, v12

    invoke-static {v12}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 2713
    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v6, v9}, Lcom/tutk/IOTC/Camera;->getHex([BI)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 2710
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 2709
    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2715
    new-array v2, v9, [B

    .line 2716
    .local v2, "data":[B
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v6, v10, v2, v11, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2744
    const/4 v10, 0x0

    aget v10, v7, v10

    const/16 v11, 0x32b

    if-ne v10, v11, :cond_4

    .line 2746
    const/4 v10, 0x0

    invoke-static {v2, v10}, Lcom/tutk/IOTC/Packet;->byteArrayToInt_Little([BI)I

    move-result v1

    .line 2747
    .local v1, "channel":I
    const/4 v10, 0x4

    invoke-static {v2, v10}, Lcom/tutk/IOTC/Packet;->byteArrayToInt_Little([BI)I

    move-result v4

    .line 2749
    .local v4, "format":I
    iget-object v10, p0, Lcom/tutk/IOTC/Camera$ThreadRecvIOCtrl;->this$0:Lcom/tutk/IOTC/Camera;

    # getter for: Lcom/tutk/IOTC/Camera;->mAVChannels:Ljava/util/List;
    invoke-static {v10}, Lcom/tutk/IOTC/Camera;->access$14(Lcom/tutk/IOTC/Camera;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_5

    .line 2758
    .end local v1    # "channel":I
    .end local v4    # "format":I
    :cond_4
    :goto_2
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_3
    iget-object v10, p0, Lcom/tutk/IOTC/Camera$ThreadRecvIOCtrl;->this$0:Lcom/tutk/IOTC/Camera;

    # getter for: Lcom/tutk/IOTC/Camera;->mIOTCListeners:Ljava/util/List;
    invoke-static {v10}, Lcom/tutk/IOTC/Camera;->access$2(Lcom/tutk/IOTC/Camera;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v5, v10, :cond_0

    .line 2759
    iget-object v10, p0, Lcom/tutk/IOTC/Camera$ThreadRecvIOCtrl;->this$0:Lcom/tutk/IOTC/Camera;

    # getter for: Lcom/tutk/IOTC/Camera;->mIOTCListeners:Ljava/util/List;
    invoke-static {v10}, Lcom/tutk/IOTC/Camera;->access$2(Lcom/tutk/IOTC/Camera;)Ljava/util/List;

    move-result-object v10

    .line 2760
    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/tutk/IOTC/IRegisterIOTCListener;

    .line 2761
    .local v8, "listener":Lcom/tutk/IOTC/IRegisterIOTCListener;
    iget-object v10, p0, Lcom/tutk/IOTC/Camera$ThreadRecvIOCtrl;->this$0:Lcom/tutk/IOTC/Camera;

    .line 2762
    iget-object v11, p0, Lcom/tutk/IOTC/Camera$ThreadRecvIOCtrl;->mAVChannel:Lcom/tutk/IOTC/Camera$AVChannel;

    invoke-virtual {v11}, Lcom/tutk/IOTC/Camera$AVChannel;->getChannel()I

    move-result v11

    const/4 v12, 0x0

    aget v12, v7, v12

    .line 2761
    invoke-interface {v8, v10, v11, v12, v2}, Lcom/tutk/IOTC/IRegisterIOTCListener;->receiveIOCtrlData(Lcom/tutk/IOTC/Camera;II[B)V

    .line 2758
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 2749
    .end local v5    # "i":I
    .end local v8    # "listener":Lcom/tutk/IOTC/IRegisterIOTCListener;
    .restart local v1    # "channel":I
    .restart local v4    # "format":I
    :cond_5
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tutk/IOTC/Camera$AVChannel;

    .line 2750
    .local v0, "ch":Lcom/tutk/IOTC/Camera$AVChannel;
    invoke-virtual {v0}, Lcom/tutk/IOTC/Camera$AVChannel;->getChannel()I

    move-result v11

    if-ne v11, v1, :cond_3

    .line 2751
    invoke-virtual {v0, v4}, Lcom/tutk/IOTC/Camera$AVChannel;->setAudioCodec(I)V

    goto :goto_2

    .line 2770
    .end local v0    # "ch":Lcom/tutk/IOTC/Camera$AVChannel;
    .end local v1    # "channel":I
    .end local v2    # "data":[B
    .end local v4    # "format":I
    :cond_6
    const-wide/16 v10, 0x64

    :try_start_3
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1

    .line 2771
    :catch_1
    move-exception v3

    .line 2772
    .local v3, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_1
.end method

.method public stopThread()V
    .locals 1

    .prologue
    .line 2679
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tutk/IOTC/Camera$ThreadRecvIOCtrl;->bIsRunning:Z

    .line 2680
    return-void
.end method
