.class Lcom/tutk/IOTC/Camera$ThreadRecvRecord;
.super Ljava/lang/Thread;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tutk/IOTC/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ThreadRecvRecord"
.end annotation


# static fields
.field private static final MAX_BUF_SIZE:I = 0x2a3000


# instance fields
.field private bIsRunning:Z

.field private mAVChannel:I

.field final synthetic this$0:Lcom/tutk/IOTC/Camera;


# direct methods
.method public constructor <init>(Lcom/tutk/IOTC/Camera;I)V
    .locals 1
    .param p2, "channel"    # I

    .prologue
    .line 1687
    iput-object p1, p0, Lcom/tutk/IOTC/Camera$ThreadRecvRecord;->this$0:Lcom/tutk/IOTC/Camera;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1684
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tutk/IOTC/Camera$ThreadRecvRecord;->bIsRunning:Z

    .line 1688
    iput p2, p0, Lcom/tutk/IOTC/Camera$ThreadRecvRecord;->mAVChannel:I

    .line 1690
    return-void
.end method


# virtual methods
.method public run()V
    .locals 19

    .prologue
    .line 1698
    const-string v1, "Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "---------run---------------"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v3, v0, Lcom/tutk/IOTC/Camera$ThreadRecvRecord;->mAVChannel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1699
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 1701
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/tutk/IOTC/Camera$ThreadRecvRecord;->bIsRunning:Z

    .line 1703
    const v1, 0x2a3000

    new-array v8, v1, [B

    .line 1704
    .local v8, "buf":[B
    const/16 v1, 0x18

    new-array v12, v1, [B

    .line 1706
    .local v12, "pFrmInfoBuf":[B
    const/4 v1, 0x1

    new-array v15, v1, [I

    .line 1707
    .local v15, "pFrmNo":[I
    const/16 v18, 0x0

    .line 1708
    .local v18, "nReadSize":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1710
    const/4 v1, 0x1

    new-array v10, v1, [I

    .line 1711
    .local v10, "outBufSize":[I
    const/4 v1, 0x1

    new-array v11, v1, [I

    .line 1712
    .local v11, "outFrmSize":[I
    const/4 v1, 0x1

    new-array v14, v1, [I

    .line 1713
    .local v14, "outFrmInfoBufSize":[I
    const/4 v1, 0x1

    new-array v6, v1, [J

    .line 1714
    .local v6, "nServType":[J
    const/4 v1, 0x0

    const-wide/16 v2, -0x1

    aput-wide v2, v6, v1

    .line 1716
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tutk/IOTC/Camera$ThreadRecvRecord;->this$0:Lcom/tutk/IOTC/Camera;

    # getter for: Lcom/tutk/IOTC/Camera;->mSID:I
    invoke-static {v1}, Lcom/tutk/IOTC/Camera;->access$0(Lcom/tutk/IOTC/Camera;)I

    move-result v1

    const-string v2, "admin"

    const-string v3, "admin"

    const-wide/16 v4, 0x7d0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/tutk/IOTC/Camera$ThreadRecvRecord;->mAVChannel:I

    invoke-static/range {v1 .. v7}, Lcom/tutk/IOTC/AVAPIs;->avClientStart(ILjava/lang/String;Ljava/lang/String;J[JI)I

    move-result v7

    .line 1718
    .local v7, "avIndex":I
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/tutk/IOTC/Camera$ThreadRecvRecord;->bIsRunning:Z

    if-nez v1, :cond_1

    .line 1772
    const/4 v8, 0x0

    .line 1773
    invoke-static {v7}, Lcom/tutk/IOTC/AVAPIs;->avClientStop(I)V

    .line 1774
    const-string v1, "IOTCamera"

    const-string v2, "===ThreadRecvVideo exit==="

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1776
    return-void

    .line 1723
    :cond_1
    array-length v9, v8

    .line 1725
    array-length v13, v12

    .line 1722
    invoke-static/range {v7 .. v15}, Lcom/tutk/IOTC/AVAPIs;->avRecvFrameData2(I[BI[I[I[BI[I[I)I

    move-result v18

    .line 1726
    const/16 v1, -0x4e2c

    move/from16 v0, v18

    if-ne v0, v1, :cond_2

    .line 1729
    const-wide/16 v1, 0x3e8

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1730
    :catch_0
    move-exception v17

    .line 1731
    .local v17, "e":Ljava/lang/InterruptedException;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 1737
    .end local v17    # "e":Ljava/lang/InterruptedException;
    :cond_2
    if-ltz v18, :cond_0

    .line 1741
    const/4 v1, 0x0

    aget v1, v11, v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_3

    .line 1742
    const-string v1, "nReadSize"

    const-string v2, "+++++++++++++++++++++++++++"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1743
    const/4 v1, 0x3

    new-array v0, v1, [B

    move-object/from16 v16, v0

    fill-array-data v16, :array_0

    .line 1744
    .local v16, "byt":[B
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tutk/IOTC/Camera$ThreadRecvRecord;->this$0:Lcom/tutk/IOTC/Camera;

    const/4 v2, 0x0

    .line 1745
    const v3, -0xfffad9

    .line 1744
    move-object/from16 v0, v16

    invoke-virtual {v1, v2, v3, v0}, Lcom/tutk/IOTC/Camera;->sendIOCtrl(II[B)V

    .line 1746
    invoke-virtual/range {p0 .. p0}, Lcom/tutk/IOTC/Camera$ThreadRecvRecord;->interrupt()V

    .line 1748
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/tutk/IOTC/Camera$ThreadRecvRecord;->bIsRunning:Z

    .line 1751
    .end local v16    # "byt":[B
    :cond_3
    const/4 v1, 0x0

    aget v1, v11, v1

    const/16 v2, 0xa

    if-le v1, v2, :cond_4

    .line 1752
    const-string v1, "nReadSize"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "right nReadSize="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1754
    const/4 v1, 0x0

    aget v1, v11, v1

    new-array v1, v1, [B

    sput-object v1, Lcom/tutk/IOTC/Camera;->bytPic1:[B

    .line 1755
    const/4 v1, 0x0

    sget-object v2, Lcom/tutk/IOTC/Camera;->bytPic1:[B

    const/4 v3, 0x0

    const/4 v4, 0x0

    aget v4, v11, v4

    invoke-static {v8, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1756
    const/4 v1, 0x3

    new-array v0, v1, [B

    move-object/from16 v16, v0

    fill-array-data v16, :array_1

    .line 1758
    .restart local v16    # "byt":[B
    move-object/from16 v0, p0

    iget v1, v0, Lcom/tutk/IOTC/Camera$ThreadRecvRecord;->mAVChannel:I

    invoke-static {v1}, Lcom/tutk/IOTC/AVAPIs;->avClientStop(I)V

    .line 1759
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tutk/IOTC/Camera$ThreadRecvRecord;->this$0:Lcom/tutk/IOTC/Camera;

    const/4 v2, 0x0

    .line 1760
    const v3, -0xfffad9

    .line 1759
    move-object/from16 v0, v16

    invoke-virtual {v1, v2, v3, v0}, Lcom/tutk/IOTC/Camera;->sendIOCtrl(II[B)V

    .line 1763
    .end local v16    # "byt":[B
    :cond_4
    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v14, v1

    .line 1764
    const/4 v8, 0x0

    .line 1765
    const v1, 0x2a3000

    new-array v8, v1, [B

    goto/16 :goto_0

    .line 1743
    :array_0
    .array-data 1
        0x1t
        0x2t
        0x3t
    .end array-data

    .line 1756
    :array_1
    .array-data 1
        0x1t
        0x2t
        0x3t
    .end array-data
.end method

.method public stopThread()V
    .locals 1

    .prologue
    .line 1693
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tutk/IOTC/Camera$ThreadRecvRecord;->bIsRunning:Z

    .line 1694
    return-void
.end method
