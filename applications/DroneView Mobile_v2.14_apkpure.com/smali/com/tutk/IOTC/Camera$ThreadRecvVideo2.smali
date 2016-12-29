.class Lcom/tutk/IOTC/Camera$ThreadRecvVideo2;
.super Ljava/lang/Thread;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tutk/IOTC/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ThreadRecvVideo2"
.end annotation


# static fields
.field private static final MAX_BUF_SIZE:I = 0x2a3000


# instance fields
.field private bIsRunning:Z

.field private mAVChannel:Lcom/tutk/IOTC/Camera$AVChannel;

.field final synthetic this$0:Lcom/tutk/IOTC/Camera;


# direct methods
.method public constructor <init>(Lcom/tutk/IOTC/Camera;Lcom/tutk/IOTC/Camera$AVChannel;)V
    .locals 1
    .param p2, "channel"    # Lcom/tutk/IOTC/Camera$AVChannel;

    .prologue
    .line 1435
    iput-object p1, p0, Lcom/tutk/IOTC/Camera$ThreadRecvVideo2;->this$0:Lcom/tutk/IOTC/Camera;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1430
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tutk/IOTC/Camera$ThreadRecvVideo2;->bIsRunning:Z

    .line 1436
    iput-object p2, p0, Lcom/tutk/IOTC/Camera$ThreadRecvVideo2;->mAVChannel:Lcom/tutk/IOTC/Camera$AVChannel;

    .line 1438
    return-void
.end method


# virtual methods
.method public run()V
    .locals 45

    .prologue
    .line 1447
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 1449
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/tutk/IOTC/Camera$ThreadRecvVideo2;->bIsRunning:Z

    .line 1451
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/tutk/IOTC/Camera$ThreadRecvVideo2;->bIsRunning:Z

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tutk/IOTC/Camera$ThreadRecvVideo2;->this$0:Lcom/tutk/IOTC/Camera;

    # getter for: Lcom/tutk/IOTC/Camera;->mSID:I
    invoke-static {v4}, Lcom/tutk/IOTC/Camera;->access$0(Lcom/tutk/IOTC/Camera;)I

    move-result v4

    if-ltz v4, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tutk/IOTC/Camera$ThreadRecvVideo2;->mAVChannel:Lcom/tutk/IOTC/Camera$AVChannel;

    invoke-virtual {v4}, Lcom/tutk/IOTC/Camera$AVChannel;->getAVIndex()I

    move-result v4

    if-ltz v4, :cond_5

    .line 1461
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tutk/IOTC/Camera$ThreadRecvVideo2;->mAVChannel:Lcom/tutk/IOTC/Camera$AVChannel;

    const/4 v5, 0x0

    iput v5, v4, Lcom/tutk/IOTC/Camera$AVChannel;->VideoBPS:I

    .line 1463
    const v4, 0x2a3000

    new-array v0, v4, [B

    move-object/from16 v29, v0

    .line 1464
    .local v29, "buf":[B
    const/16 v4, 0x18

    new-array v0, v4, [B

    move-object/from16 v16, v0

    .line 1466
    .local v16, "pFrmInfoBuf":[B
    const/4 v4, 0x1

    new-array v0, v4, [I

    move-object/from16 v27, v0

    .line 1467
    .local v27, "pFrmNo":[I
    const/16 v34, 0x0

    .line 1468
    .local v34, "nCodecId":I
    const/16 v18, 0x0

    .line 1469
    .local v18, "nReadSize":I
    const/4 v10, 0x0

    .line 1470
    .local v10, "nFrmCount":I
    const/4 v11, 0x0

    .line 1471
    .local v11, "nIncompleteFrmCount":I
    const/4 v9, 0x0

    .line 1472
    .local v9, "nOnlineNumber":I
    const-wide/32 v35, 0xfffffff

    .line 1473
    .local v35, "nPrevFrmNo":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v32

    .line 1474
    .local v32, "lastTimeStamp":J
    const/16 v38, 0x0

    .line 1475
    .local v38, "nReqIframe":I
    const/16 v37, 0x0

    .line 1476
    .local v37, "nPrevQuestFrmNo":I
    const/4 v4, 0x1

    new-array v0, v4, [I

    move-object/from16 v40, v0

    .line 1477
    .local v40, "outBufSize":[I
    const/4 v4, 0x1

    new-array v0, v4, [I

    move-object/from16 v41, v0

    .line 1478
    .local v41, "outFrmSize":[I
    const/4 v4, 0x1

    new-array v0, v4, [I

    move-object/from16 v26, v0

    .line 1480
    .local v26, "outFrmInfoBufSize":[I
    const/4 v4, 0x5

    new-array v0, v4, [I

    move-object/from16 v42, v0

    .line 1481
    .local v42, "videoBPS":[I
    const/16 v43, 0x0

    .line 1482
    .local v43, "videoBPSIndex":I
    const/16 v39, 0x0

    .line 1484
    .local v39, "nTotalReqKeyFrameCount":I
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/tutk/IOTC/Camera$ThreadRecvVideo2;->bIsRunning:Z

    if-eqz v4, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tutk/IOTC/Camera$ThreadRecvVideo2;->this$0:Lcom/tutk/IOTC/Camera;

    # getter for: Lcom/tutk/IOTC/Camera;->mSID:I
    invoke-static {v4}, Lcom/tutk/IOTC/Camera;->access$0(Lcom/tutk/IOTC/Camera;)I

    move-result v4

    if-ltz v4, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tutk/IOTC/Camera$ThreadRecvVideo2;->mAVChannel:Lcom/tutk/IOTC/Camera$AVChannel;

    invoke-virtual {v4}, Lcom/tutk/IOTC/Camera$AVChannel;->getAVIndex()I

    move-result v4

    if-ltz v4, :cond_1

    .line 1485
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tutk/IOTC/Camera$ThreadRecvVideo2;->mAVChannel:Lcom/tutk/IOTC/Camera$AVChannel;

    iget-object v4, v4, Lcom/tutk/IOTC/Camera$AVChannel;->IOCtrlQueue:Lcom/tutk/IOTC/Camera$IOCtrlQueue;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/tutk/IOTC/Camera$ThreadRecvVideo2;->mAVChannel:Lcom/tutk/IOTC/Camera$AVChannel;

    invoke-virtual {v5}, Lcom/tutk/IOTC/Camera$AVChannel;->getAVIndex()I

    move-result v5

    .line 1486
    const/16 v6, 0x1ff

    .line 1487
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/tutk/IOTC/Camera$ThreadRecvVideo2;->this$0:Lcom/tutk/IOTC/Camera;

    # getter for: Lcom/tutk/IOTC/Camera;->mCamIndex:I
    invoke-static {v7}, Lcom/tutk/IOTC/Camera;->access$7(Lcom/tutk/IOTC/Camera;)I

    move-result v7

    invoke-static {v7}, Lcom/tutk/IOTC/Packet;->intToByteArray_Little(I)[B

    move-result-object v7

    .line 1485
    invoke-virtual {v4, v5, v6, v7}, Lcom/tutk/IOTC/Camera$IOCtrlQueue;->Enqueue(II[B)V

    .line 1489
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tutk/IOTC/Camera$ThreadRecvVideo2;->this$0:Lcom/tutk/IOTC/Camera;

    const/4 v5, 0x0

    .line 1490
    const/16 v6, 0x320

    .line 1492
    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/tutk/IOTC/Camera$ThreadRecvVideo2;->this$0:Lcom/tutk/IOTC/Camera;

    iget v8, v8, Lcom/tutk/IOTC/Camera;->videoQuality:I

    int-to-byte v8, v8

    invoke-static {v7, v8}, Lcom/tutk/IOTC/AVIOCTRLDEFs$SMsgAVIoctrlSetStreamCtrlReq;->parseContent(IB)[B

    move-result-object v7

    .line 1489
    invoke-virtual {v4, v5, v6, v7}, Lcom/tutk/IOTC/Camera;->sendIOCtrl(II[B)V

    .line 1496
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tutk/IOTC/Camera$ThreadRecvVideo2;->mAVChannel:Lcom/tutk/IOTC/Camera$AVChannel;

    iget-object v4, v4, Lcom/tutk/IOTC/Camera$AVChannel;->AudioFrameQueue:Lcom/tutk/IOTC/AVFrameQueue;

    invoke-virtual {v4}, Lcom/tutk/IOTC/AVFrameQueue;->removeAll()V

    .line 1497
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tutk/IOTC/Camera$ThreadRecvVideo2;->this$0:Lcom/tutk/IOTC/Camera;

    # getter for: Lcom/tutk/IOTC/Camera;->mSID:I
    invoke-static {v4}, Lcom/tutk/IOTC/Camera;->access$0(Lcom/tutk/IOTC/Camera;)I

    move-result v4

    if-ltz v4, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tutk/IOTC/Camera$ThreadRecvVideo2;->mAVChannel:Lcom/tutk/IOTC/Camera$AVChannel;

    invoke-virtual {v4}, Lcom/tutk/IOTC/Camera$AVChannel;->getAVIndex()I

    move-result v4

    if-ltz v4, :cond_2

    .line 1498
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tutk/IOTC/Camera$ThreadRecvVideo2;->mAVChannel:Lcom/tutk/IOTC/Camera$AVChannel;

    invoke-virtual {v4}, Lcom/tutk/IOTC/Camera$AVChannel;->getAVIndex()I

    move-result v4

    invoke-static {v4}, Lcom/tutk/IOTC/AVAPIs;->avClientCleanBuf(I)I

    .line 1500
    :cond_2
    const/16 v31, 0x0

    .local v31, "i":I
    :goto_1
    const/4 v4, 0x5

    move/from16 v0, v31

    if-lt v0, v4, :cond_6

    .line 1504
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/tutk/IOTC/Camera$ThreadRecvVideo2;->bIsRunning:Z

    .line 1505
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/tutk/IOTC/Camera$ThreadRecvVideo2;->bIsRunning:Z

    if-nez v4, :cond_7

    .line 1665
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tutk/IOTC/Camera$ThreadRecvVideo2;->mAVChannel:Lcom/tutk/IOTC/Camera$AVChannel;

    iget-object v4, v4, Lcom/tutk/IOTC/Camera$AVChannel;->VideoFrameQueue:Lcom/tutk/IOTC/AVFrameQueue;

    invoke-virtual {v4}, Lcom/tutk/IOTC/AVFrameQueue;->removeAll()V

    .line 1666
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tutk/IOTC/Camera$ThreadRecvVideo2;->this$0:Lcom/tutk/IOTC/Camera;

    # getter for: Lcom/tutk/IOTC/Camera;->mSID:I
    invoke-static {v4}, Lcom/tutk/IOTC/Camera;->access$0(Lcom/tutk/IOTC/Camera;)I

    move-result v4

    if-ltz v4, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tutk/IOTC/Camera$ThreadRecvVideo2;->mAVChannel:Lcom/tutk/IOTC/Camera$AVChannel;

    invoke-virtual {v4}, Lcom/tutk/IOTC/Camera$AVChannel;->getAVIndex()I

    move-result v4

    if-ltz v4, :cond_4

    .line 1667
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tutk/IOTC/Camera$ThreadRecvVideo2;->mAVChannel:Lcom/tutk/IOTC/Camera$AVChannel;

    iget-object v4, v4, Lcom/tutk/IOTC/Camera$AVChannel;->IOCtrlQueue:Lcom/tutk/IOTC/Camera$IOCtrlQueue;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/tutk/IOTC/Camera$ThreadRecvVideo2;->mAVChannel:Lcom/tutk/IOTC/Camera$AVChannel;

    invoke-virtual {v5}, Lcom/tutk/IOTC/Camera$AVChannel;->getAVIndex()I

    move-result v5

    .line 1668
    const/16 v6, 0x2ff

    .line 1669
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/tutk/IOTC/Camera$ThreadRecvVideo2;->this$0:Lcom/tutk/IOTC/Camera;

    # getter for: Lcom/tutk/IOTC/Camera;->mCamIndex:I
    invoke-static {v7}, Lcom/tutk/IOTC/Camera;->access$7(Lcom/tutk/IOTC/Camera;)I

    move-result v7

    invoke-static {v7}, Lcom/tutk/IOTC/Packet;->intToByteArray_Little(I)[B

    move-result-object v7

    .line 1667
    invoke-virtual {v4, v5, v6, v7}, Lcom/tutk/IOTC/Camera$IOCtrlQueue;->Enqueue(II[B)V

    .line 1670
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tutk/IOTC/Camera$ThreadRecvVideo2;->mAVChannel:Lcom/tutk/IOTC/Camera$AVChannel;

    invoke-virtual {v4}, Lcom/tutk/IOTC/Camera$AVChannel;->getAVIndex()I

    move-result v4

    invoke-static {v4}, Lcom/tutk/IOTC/AVAPIs;->avClientCleanBuf(I)I

    .line 1673
    :cond_4
    const/16 v29, 0x0

    .line 1675
    const-string v4, "IOTCamera"

    const-string v5, "===ThreadRecvVideo exit==="

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1676
    return-void

    .line 1453
    .end local v9    # "nOnlineNumber":I
    .end local v10    # "nFrmCount":I
    .end local v11    # "nIncompleteFrmCount":I
    .end local v16    # "pFrmInfoBuf":[B
    .end local v18    # "nReadSize":I
    .end local v26    # "outFrmInfoBufSize":[I
    .end local v27    # "pFrmNo":[I
    .end local v29    # "buf":[B
    .end local v31    # "i":I
    .end local v32    # "lastTimeStamp":J
    .end local v34    # "nCodecId":I
    .end local v35    # "nPrevFrmNo":J
    .end local v37    # "nPrevQuestFrmNo":I
    .end local v38    # "nReqIframe":I
    .end local v39    # "nTotalReqKeyFrameCount":I
    .end local v40    # "outBufSize":[I
    .end local v41    # "outFrmSize":[I
    .end local v42    # "videoBPS":[I
    .end local v43    # "videoBPSIndex":I
    :cond_5
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tutk/IOTC/Camera$ThreadRecvVideo2;->this$0:Lcom/tutk/IOTC/Camera;

    # getter for: Lcom/tutk/IOTC/Camera;->mWaitObjectForConnected:Ljava/lang/Object;
    invoke-static {v4}, Lcom/tutk/IOTC/Camera;->access$4(Lcom/tutk/IOTC/Camera;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1454
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tutk/IOTC/Camera$ThreadRecvVideo2;->this$0:Lcom/tutk/IOTC/Camera;

    # getter for: Lcom/tutk/IOTC/Camera;->mWaitObjectForConnected:Ljava/lang/Object;
    invoke-static {v4}, Lcom/tutk/IOTC/Camera;->access$4(Lcom/tutk/IOTC/Camera;)Ljava/lang/Object;

    move-result-object v4

    const-wide/16 v6, 0x64

    invoke-virtual {v4, v6, v7}, Ljava/lang/Object;->wait(J)V

    .line 1453
    monitor-exit v5

    goto/16 :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1456
    :catch_0
    move-exception v30

    .line 1457
    .local v30, "e":Ljava/lang/Exception;
    invoke-virtual/range {v30 .. v30}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 1502
    .end local v30    # "e":Ljava/lang/Exception;
    .restart local v9    # "nOnlineNumber":I
    .restart local v10    # "nFrmCount":I
    .restart local v11    # "nIncompleteFrmCount":I
    .restart local v16    # "pFrmInfoBuf":[B
    .restart local v18    # "nReadSize":I
    .restart local v26    # "outFrmInfoBufSize":[I
    .restart local v27    # "pFrmNo":[I
    .restart local v29    # "buf":[B
    .restart local v31    # "i":I
    .restart local v32    # "lastTimeStamp":J
    .restart local v34    # "nCodecId":I
    .restart local v35    # "nPrevFrmNo":J
    .restart local v37    # "nPrevQuestFrmNo":I
    .restart local v38    # "nReqIframe":I
    .restart local v39    # "nTotalReqKeyFrameCount":I
    .restart local v40    # "outBufSize":[I
    .restart local v41    # "outFrmSize":[I
    .restart local v42    # "videoBPS":[I
    .restart local v43    # "videoBPSIndex":I
    :cond_6
    const/16 v4, 0x200

    aput v4, v42, v31

    .line 1500
    add-int/lit8 v31, v31, 0x1

    goto/16 :goto_1

    .line 1507
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tutk/IOTC/Camera$ThreadRecvVideo2;->this$0:Lcom/tutk/IOTC/Camera;

    # getter for: Lcom/tutk/IOTC/Camera;->mSID:I
    invoke-static {v4}, Lcom/tutk/IOTC/Camera;->access$0(Lcom/tutk/IOTC/Camera;)I

    move-result v4

    if-ltz v4, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tutk/IOTC/Camera$ThreadRecvVideo2;->mAVChannel:Lcom/tutk/IOTC/Camera$AVChannel;

    invoke-virtual {v4}, Lcom/tutk/IOTC/Camera$AVChannel;->getAVIndex()I

    move-result v4

    if-ltz v4, :cond_3

    .line 1509
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v4, v4, v32

    const-wide/16 v6, 0x3e8

    cmp-long v4, v4, v6

    if-lez v4, :cond_9

    .line 1511
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v32

    .line 1512
    add-int/lit8 v44, v43, 0x1

    .end local v43    # "videoBPSIndex":I
    .local v44, "videoBPSIndex":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tutk/IOTC/Camera$ThreadRecvVideo2;->mAVChannel:Lcom/tutk/IOTC/Camera$AVChannel;

    iget v4, v4, Lcom/tutk/IOTC/Camera$AVChannel;->VideoBPS:I

    aput v4, v42, v43

    .line 1513
    const/4 v4, 0x5

    move/from16 v0, v44

    if-lt v0, v4, :cond_18

    const/16 v43, 0x0

    .line 1514
    .end local v44    # "videoBPSIndex":I
    .restart local v43    # "videoBPSIndex":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tutk/IOTC/Camera$ThreadRecvVideo2;->mAVChannel:Lcom/tutk/IOTC/Camera$AVChannel;

    const/4 v5, 0x0

    iput v5, v4, Lcom/tutk/IOTC/Camera$AVChannel;->VideoBPS:I

    .line 1515
    const/16 v31, 0x0

    :goto_4
    const/4 v4, 0x5

    move/from16 v0, v31

    if-lt v0, v4, :cond_d

    .line 1519
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tutk/IOTC/Camera$ThreadRecvVideo2;->mAVChannel:Lcom/tutk/IOTC/Camera$AVChannel;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/tutk/IOTC/Camera$ThreadRecvVideo2;->mAVChannel:Lcom/tutk/IOTC/Camera$AVChannel;

    iget v5, v5, Lcom/tutk/IOTC/Camera$AVChannel;->VideoBPS:I

    div-int/lit8 v5, v5, 0x5

    iput v5, v4, Lcom/tutk/IOTC/Camera$AVChannel;->VideoBPS:I

    .line 1520
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tutk/IOTC/Camera$ThreadRecvVideo2;->mAVChannel:Lcom/tutk/IOTC/Camera$AVChannel;

    iget v4, v4, Lcom/tutk/IOTC/Camera$AVChannel;->AudioBPS:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/tutk/IOTC/Camera$ThreadRecvVideo2;->mAVChannel:Lcom/tutk/IOTC/Camera$AVChannel;

    iget v5, v5, Lcom/tutk/IOTC/Camera$AVChannel;->VideoBPS:I

    add-int/2addr v4, v5

    div-int/lit16 v0, v4, 0x400

    move/from16 v28, v0

    .line 1521
    .local v28, "bps":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tutk/IOTC/Camera$ThreadRecvVideo2;->mAVChannel:Lcom/tutk/IOTC/Camera$AVChannel;

    iget v4, v4, Lcom/tutk/IOTC/Camera$AVChannel;->VideoBPS:I

    if-lez v4, :cond_8

    if-nez v28, :cond_8

    const/16 v28, 0x1

    .line 1522
    :cond_8
    const/16 v31, 0x0

    :goto_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tutk/IOTC/Camera$ThreadRecvVideo2;->this$0:Lcom/tutk/IOTC/Camera;

    # getter for: Lcom/tutk/IOTC/Camera;->mIOTCListeners:Ljava/util/List;
    invoke-static {v4}, Lcom/tutk/IOTC/Camera;->access$2(Lcom/tutk/IOTC/Camera;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    move/from16 v0, v31

    if-lt v0, v4, :cond_e

    .line 1534
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tutk/IOTC/Camera$ThreadRecvVideo2;->mAVChannel:Lcom/tutk/IOTC/Camera$AVChannel;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/tutk/IOTC/Camera$ThreadRecvVideo2;->mAVChannel:Lcom/tutk/IOTC/Camera$AVChannel;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/tutk/IOTC/Camera$ThreadRecvVideo2;->mAVChannel:Lcom/tutk/IOTC/Camera$AVChannel;

    const/4 v7, 0x0

    iput v7, v6, Lcom/tutk/IOTC/Camera$AVChannel;->AudioBPS:I

    iput v7, v5, Lcom/tutk/IOTC/Camera$AVChannel;->VideoBPS:I

    iput v7, v4, Lcom/tutk/IOTC/Camera$AVChannel;->VideoFPS:I

    .line 1538
    .end local v28    # "bps":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tutk/IOTC/Camera$ThreadRecvVideo2;->mAVChannel:Lcom/tutk/IOTC/Camera$AVChannel;

    invoke-virtual {v4}, Lcom/tutk/IOTC/Camera$AVChannel;->getAVIndex()I

    move-result v19

    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v21, v0

    .line 1540
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v25, v0

    move-object/from16 v20, v29

    move-object/from16 v22, v40

    move-object/from16 v23, v41

    move-object/from16 v24, v16

    .line 1537
    invoke-static/range {v19 .. v27}, Lcom/tutk/IOTC/AVAPIs;->avRecvFrameData2(I[BI[I[I[BI[I[I)I

    move-result v18

    .line 1544
    if-ltz v18, :cond_12

    .line 1546
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tutk/IOTC/Camera$ThreadRecvVideo2;->mAVChannel:Lcom/tutk/IOTC/Camera$AVChannel;

    iget v5, v4, Lcom/tutk/IOTC/Camera$AVChannel;->VideoBPS:I

    const/4 v6, 0x0

    aget v6, v40, v6

    add-int/2addr v5, v6

    iput v5, v4, Lcom/tutk/IOTC/Camera$AVChannel;->VideoBPS:I

    .line 1547
    add-int/lit8 v10, v10, 0x1

    .line 1549
    move/from16 v0, v18

    new-array v0, v0, [B

    move-object/from16 v17, v0

    .line 1550
    .local v17, "frameData":[B
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v4, v1, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1552
    new-instance v12, Lcom/tutk/IOTC/AVFrame;

    const/4 v4, 0x0

    aget v4, v27, v4

    int-to-long v13, v4

    .line 1553
    const/4 v15, 0x0

    .line 1552
    invoke-direct/range {v12 .. v18}, Lcom/tutk/IOTC/AVFrame;-><init>(JB[B[BI)V

    .line 1556
    .local v12, "frame":Lcom/tutk/IOTC/AVFrame;
    invoke-virtual {v12}, Lcom/tutk/IOTC/AVFrame;->getCodecId()S

    move-result v34

    .line 1557
    invoke-virtual {v12}, Lcom/tutk/IOTC/AVFrame;->getOnlineNum()B

    move-result v9

    .line 1559
    const/16 v4, 0x4e

    move/from16 v0, v34

    if-ne v0, v4, :cond_10

    .line 1560
    invoke-virtual {v12}, Lcom/tutk/IOTC/AVFrame;->isIFrame()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1562
    const-string v4, "IOTCamera"

    const-string v5, "frame no(%d) 0x%02X %d"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const/4 v8, 0x0

    aget v8, v27, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const/4 v8, 0x4

    aget-byte v8, v29, v8

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1563
    const/4 v4, 0x4

    aget-byte v4, v29, v4

    and-int/lit8 v4, v4, 0xf

    const/4 v5, 0x7

    if-ne v4, v5, :cond_a

    const/16 v39, 0x0

    .line 1566
    :cond_a
    invoke-virtual {v12}, Lcom/tutk/IOTC/AVFrame;->isIFrame()Z

    move-result v4

    if-nez v4, :cond_b

    .line 1567
    const/4 v4, 0x0

    aget v4, v27, v4

    int-to-long v4, v4

    const-wide/16 v6, 0x1

    add-long v6, v6, v35

    cmp-long v4, v4, v6

    if-nez v4, :cond_f

    .line 1568
    :cond_b
    const/4 v4, 0x0

    aget v4, v27, v4

    int-to-long v0, v4

    move-wide/from16 v35, v0

    .line 1569
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tutk/IOTC/Camera$ThreadRecvVideo2;->mAVChannel:Lcom/tutk/IOTC/Camera$AVChannel;

    iget-object v4, v4, Lcom/tutk/IOTC/Camera$AVChannel;->VideoFrameQueue:Lcom/tutk/IOTC/AVFrameQueue;

    invoke-virtual {v4}, Lcom/tutk/IOTC/AVFrameQueue;->getCount()I

    move-result v4

    const/16 v5, 0x14

    if-le v4, v5, :cond_c

    .line 1571
    invoke-virtual {v12}, Lcom/tutk/IOTC/AVFrame;->isIFrame()Z

    move-result v4

    if-eqz v4, :cond_c

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tutk/IOTC/Camera$ThreadRecvVideo2;->mAVChannel:Lcom/tutk/IOTC/Camera$AVChannel;

    iget-object v4, v4, Lcom/tutk/IOTC/Camera$AVChannel;->VideoFrameQueue:Lcom/tutk/IOTC/AVFrameQueue;

    invoke-virtual {v4}, Lcom/tutk/IOTC/AVFrameQueue;->removeAll()V

    .line 1573
    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tutk/IOTC/Camera$ThreadRecvVideo2;->mAVChannel:Lcom/tutk/IOTC/Camera$AVChannel;

    iget-object v4, v4, Lcom/tutk/IOTC/Camera$AVChannel;->VideoFrameQueue:Lcom/tutk/IOTC/AVFrameQueue;

    invoke-virtual {v4, v12}, Lcom/tutk/IOTC/AVFrameQueue;->addLast(Lcom/tutk/IOTC/AVFrame;)V

    .line 1575
    const/16 v31, 0x0

    :goto_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tutk/IOTC/Camera$ThreadRecvVideo2;->this$0:Lcom/tutk/IOTC/Camera;

    # getter for: Lcom/tutk/IOTC/Camera;->mIOTCListeners:Ljava/util/List;
    invoke-static {v4}, Lcom/tutk/IOTC/Camera;->access$2(Lcom/tutk/IOTC/Camera;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    move/from16 v0, v31

    if-ge v0, v4, :cond_3

    .line 1576
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tutk/IOTC/Camera$ThreadRecvVideo2;->this$0:Lcom/tutk/IOTC/Camera;

    # getter for: Lcom/tutk/IOTC/Camera;->mIOTCListeners:Ljava/util/List;
    invoke-static {v4}, Lcom/tutk/IOTC/Camera;->access$2(Lcom/tutk/IOTC/Camera;)Ljava/util/List;

    move-result-object v4

    .line 1577
    move/from16 v0, v31

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tutk/IOTC/IRegisterIOTCListener;

    .line 1579
    .local v3, "listener":Lcom/tutk/IOTC/IRegisterIOTCListener;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutk/IOTC/Camera$ThreadRecvVideo2;->this$0:Lcom/tutk/IOTC/Camera;

    move-object/from16 v20, v0

    .line 1580
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tutk/IOTC/Camera$ThreadRecvVideo2;->mAVChannel:Lcom/tutk/IOTC/Camera$AVChannel;

    invoke-virtual {v4}, Lcom/tutk/IOTC/Camera$AVChannel;->getChannel()I

    move-result v21

    .line 1582
    const/16 v23, 0x18

    move-object/from16 v19, v3

    move-object/from16 v22, v16

    move-object/from16 v24, v17

    move/from16 v25, v18

    .line 1578
    invoke-interface/range {v19 .. v25}, Lcom/tutk/IOTC/IRegisterIOTCListener;->receiveOriginalFrameData(Lcom/tutk/IOTC/Camera;I[BI[BI)V

    .line 1575
    add-int/lit8 v31, v31, 0x1

    goto :goto_6

    .line 1517
    .end local v3    # "listener":Lcom/tutk/IOTC/IRegisterIOTCListener;
    .end local v12    # "frame":Lcom/tutk/IOTC/AVFrame;
    .end local v17    # "frameData":[B
    :cond_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tutk/IOTC/Camera$ThreadRecvVideo2;->mAVChannel:Lcom/tutk/IOTC/Camera$AVChannel;

    iget v5, v4, Lcom/tutk/IOTC/Camera$AVChannel;->VideoBPS:I

    aget v6, v42, v31

    add-int/2addr v5, v6

    iput v5, v4, Lcom/tutk/IOTC/Camera$AVChannel;->VideoBPS:I

    .line 1515
    add-int/lit8 v31, v31, 0x1

    goto/16 :goto_4

    .line 1524
    .restart local v28    # "bps":I
    :cond_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tutk/IOTC/Camera$ThreadRecvVideo2;->this$0:Lcom/tutk/IOTC/Camera;

    # getter for: Lcom/tutk/IOTC/Camera;->mIOTCListeners:Ljava/util/List;
    invoke-static {v4}, Lcom/tutk/IOTC/Camera;->access$2(Lcom/tutk/IOTC/Camera;)Ljava/util/List;

    move-result-object v4

    .line 1525
    move/from16 v0, v31

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tutk/IOTC/IRegisterIOTCListener;

    .line 1527
    .restart local v3    # "listener":Lcom/tutk/IOTC/IRegisterIOTCListener;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tutk/IOTC/Camera$ThreadRecvVideo2;->this$0:Lcom/tutk/IOTC/Camera;

    .line 1528
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/tutk/IOTC/Camera$ThreadRecvVideo2;->mAVChannel:Lcom/tutk/IOTC/Camera$AVChannel;

    invoke-virtual {v5}, Lcom/tutk/IOTC/Camera$AVChannel;->getChannel()I

    move-result v5

    .line 1529
    move/from16 v0, v28

    int-to-long v6, v0

    .line 1530
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/tutk/IOTC/Camera$ThreadRecvVideo2;->mAVChannel:Lcom/tutk/IOTC/Camera$AVChannel;

    iget v8, v8, Lcom/tutk/IOTC/Camera$AVChannel;->VideoFPS:I

    .line 1526
    invoke-interface/range {v3 .. v11}, Lcom/tutk/IOTC/IRegisterIOTCListener;->receiveFrameInfo(Lcom/tutk/IOTC/Camera;IJIIII)V

    .line 1522
    add-int/lit8 v31, v31, 0x1

    goto/16 :goto_5

    .line 1588
    .end local v3    # "listener":Lcom/tutk/IOTC/IRegisterIOTCListener;
    .end local v28    # "bps":I
    .restart local v12    # "frame":Lcom/tutk/IOTC/AVFrame;
    .restart local v17    # "frameData":[B
    :cond_f
    add-int/lit8 v11, v11, 0x1

    .line 1589
    const-string v4, "IOTCamera"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Incorrect frame no("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1590
    const/4 v6, 0x0

    aget v6, v27, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "), prev:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v35

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1591
    const-string v6, " -> drop frame"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1589
    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1592
    const/4 v4, 0x0

    aget v4, v27, v4

    sub-int v4, v4, v37

    const/16 v5, 0xa

    if-le v4, v5, :cond_3

    .line 1594
    add-int/lit8 v39, v39, 0x1

    .line 1596
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tutk/IOTC/Camera$ThreadRecvVideo2;->mAVChannel:Lcom/tutk/IOTC/Camera$AVChannel;

    iget-object v4, v4, Lcom/tutk/IOTC/Camera$AVChannel;->IOCtrlQueue:Lcom/tutk/IOTC/Camera$IOCtrlQueue;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/tutk/IOTC/Camera$ThreadRecvVideo2;->mAVChannel:Lcom/tutk/IOTC/Camera$AVChannel;

    invoke-virtual {v5}, Lcom/tutk/IOTC/Camera$AVChannel;->getAVIndex()I

    move-result v5

    .line 1597
    const v6, -0xfffaa0

    .line 1598
    invoke-static/range {v39 .. v39}, Lcom/tutk/IOTC/Packet;->intToByteArray_Little(I)[B

    move-result-object v7

    .line 1596
    invoke-virtual {v4, v5, v6, v7}, Lcom/tutk/IOTC/Camera$IOCtrlQueue;->Enqueue(II[B)V

    .line 1599
    const/4 v4, 0x0

    aget v37, v27, v4

    .line 1600
    const-string v4, "IOTCamera"

    const-string v5, "Request Key Frame(%d) total:%d"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const/4 v8, 0x0

    aget v8, v27, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1604
    :cond_10
    const/16 v4, 0x4c

    move/from16 v0, v34

    if-ne v0, v4, :cond_3

    .line 1606
    invoke-virtual {v12}, Lcom/tutk/IOTC/AVFrame;->isIFrame()Z

    move-result v4

    if-nez v4, :cond_11

    .line 1607
    const/4 v4, 0x0

    aget v4, v27, v4

    int-to-long v4, v4

    const-wide/16 v6, 0x1

    add-long v6, v6, v35

    cmp-long v4, v4, v6

    if-nez v4, :cond_3

    .line 1608
    :cond_11
    const/4 v4, 0x0

    aget v4, v27, v4

    int-to-long v0, v4

    move-wide/from16 v35, v0

    .line 1614
    goto/16 :goto_2

    .end local v12    # "frame":Lcom/tutk/IOTC/AVFrame;
    .end local v17    # "frameData":[B
    :cond_12
    const/16 v4, -0x4e2f

    move/from16 v0, v18

    if-ne v0, v4, :cond_13

    .line 1616
    const-string v4, "IOTCamera"

    const-string v5, "AV_ER_SESSION_CLOSE_BY_REMOTE"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1619
    :cond_13
    const/16 v4, -0x4e30

    move/from16 v0, v18

    if-ne v0, v4, :cond_14

    .line 1621
    const-string v4, "IOTCamera"

    const-string v5, "AV_ER_REMOTE_TIMEOUT_DISCONNECT"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1624
    :cond_14
    const/16 v4, -0x4e2c

    move/from16 v0, v18

    if-ne v0, v4, :cond_15

    .line 1627
    const-wide/16 v4, 0x20

    :try_start_3
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_2

    .line 1628
    :catch_1
    move-exception v30

    .line 1629
    .local v30, "e":Ljava/lang/InterruptedException;
    invoke-virtual/range {v30 .. v30}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_2

    .line 1635
    .end local v30    # "e":Ljava/lang/InterruptedException;
    :cond_15
    const/16 v4, -0x4e21

    move/from16 v0, v18

    if-eq v0, v4, :cond_3

    .line 1637
    const/16 v4, -0x4e23

    move/from16 v0, v18

    if-ne v0, v4, :cond_16

    .line 1639
    add-int/lit8 v10, v10, 0x1

    .line 1640
    add-int/lit8 v11, v11, 0x1

    .line 1641
    const-string v4, "IOTCamera"

    const-string v5, "AV_ER_MEM_INSUFF"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1643
    :cond_16
    const/16 v4, -0x4e2e

    move/from16 v0, v18

    if-ne v0, v4, :cond_17

    .line 1645
    const-string v4, "IOTCamera"

    const-string v5, "AV_ER_LOSED_THIS_FRAME"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1648
    add-int/lit8 v10, v10, 0x1

    .line 1649
    add-int/lit8 v11, v11, 0x1

    .line 1651
    goto/16 :goto_2

    .line 1652
    :cond_17
    const/16 v4, -0x4e2d

    move/from16 v0, v18

    if-ne v0, v4, :cond_3

    .line 1655
    add-int/lit8 v10, v10, 0x1

    .line 1657
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tutk/IOTC/Camera$ThreadRecvVideo2;->mAVChannel:Lcom/tutk/IOTC/Camera$AVChannel;

    iget v5, v4, Lcom/tutk/IOTC/Camera$AVChannel;->VideoBPS:I

    const/4 v6, 0x0

    aget v6, v40, v6

    add-int/2addr v5, v6

    iput v5, v4, Lcom/tutk/IOTC/Camera$AVChannel;->VideoBPS:I

    goto/16 :goto_2

    .end local v43    # "videoBPSIndex":I
    .restart local v44    # "videoBPSIndex":I
    :cond_18
    move/from16 v43, v44

    .end local v44    # "videoBPSIndex":I
    .restart local v43    # "videoBPSIndex":I
    goto/16 :goto_3
.end method

.method public stopThread()V
    .locals 1

    .prologue
    .line 1441
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tutk/IOTC/Camera$ThreadRecvVideo2;->bIsRunning:Z

    .line 1442
    return-void
.end method
