.class Lcom/tutk/IOTC/Camera$ThreadDecodeVideo2;
.super Ljava/lang/Thread;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tutk/IOTC/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ThreadDecodeVideo2"
.end annotation


# static fields
.field static final MAX_FRAMEBUF:I = 0x2a3000


# instance fields
.field private mAVChannel:Lcom/tutk/IOTC/Camera$AVChannel;

.field private m_bIsRunning:Z

.field private out:Ljava/io/FileOutputStream;

.field final synthetic this$0:Lcom/tutk/IOTC/Camera;


# direct methods
.method public constructor <init>(Lcom/tutk/IOTC/Camera;Lcom/tutk/IOTC/Camera$AVChannel;)V
    .locals 1
    .param p2, "channel"    # Lcom/tutk/IOTC/Camera$AVChannel;

    .prologue
    .line 1790
    iput-object p1, p0, Lcom/tutk/IOTC/Camera$ThreadDecodeVideo2;->this$0:Lcom/tutk/IOTC/Camera;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1784
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tutk/IOTC/Camera$ThreadDecodeVideo2;->m_bIsRunning:Z

    .line 1788
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tutk/IOTC/Camera$ThreadDecodeVideo2;->out:Ljava/io/FileOutputStream;

    .line 1791
    iput-object p2, p0, Lcom/tutk/IOTC/Camera$ThreadDecodeVideo2;->mAVChannel:Lcom/tutk/IOTC/Camera$AVChannel;

    .line 1793
    return-void
.end method


# virtual methods
.method public run()V
    .locals 41

    .prologue
    .line 1802
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 1804
    const/4 v5, 0x0

    .line 1806
    .local v5, "avFrameSize":I
    const/4 v14, 0x0

    .line 1808
    .local v14, "avFrame":Lcom/tutk/IOTC/AVFrame;
    const/4 v12, 0x0

    .line 1809
    .local v12, "videoWidth":I
    const/4 v13, 0x0

    .line 1811
    .local v13, "videoHeight":I
    const-wide/16 v21, 0x0

    .line 1812
    .local v21, "firstTimeStampFromDevice":J
    const-wide/16 v23, 0x0

    .line 1813
    .local v23, "firstTimeStampFromLocal":J
    const-wide/16 v34, 0x0

    .line 1814
    .local v34, "sleepTime":J
    const-wide/16 v26, 0x0

    .line 1815
    .local v26, "lastFrameTimeStamp":J
    const-wide/16 v18, 0x0

    .line 1817
    .local v18, "delayTime":J
    const/4 v4, 0x4

    new-array v6, v4, [I

    .line 1818
    .local v6, "framePara":[I
    const v4, 0x2a3000

    new-array v7, v4, [B

    .line 1819
    .local v7, "bufOut":[B
    const/16 v16, 0x0

    .line 1820
    .local v16, "bmpBuff":[B
    const/16 v17, 0x0

    .line 1821
    .local v17, "bytBuffer":Ljava/nio/ByteBuffer;
    const/4 v15, 0x0

    .line 1823
    .local v15, "bmp":Landroid/graphics/Bitmap;
    const/4 v4, 0x1

    new-array v0, v4, [I

    move-object/from16 v32, v0

    .line 1824
    .local v32, "out_width":[I
    const/4 v4, 0x1

    new-array v0, v4, [I

    move-object/from16 v30, v0

    .line 1825
    .local v30, "out_height":[I
    const/4 v4, 0x1

    new-array v0, v4, [I

    move-object/from16 v31, v0

    .line 1827
    .local v31, "out_size":[I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tutk/IOTC/Camera$ThreadDecodeVideo2;->mAVChannel:Lcom/tutk/IOTC/Camera$AVChannel;

    const/4 v9, 0x0

    iput v9, v4, Lcom/tutk/IOTC/Camera$AVChannel;->VideoFPS:I

    .line 1828
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/tutk/IOTC/Camera$ThreadDecodeVideo2;->m_bIsRunning:Z

    .line 1830
    const-wide/16 v28, 0x0

    .line 1832
    .local v28, "nLastFrameNo":J
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 1834
    const/4 v3, 0x0

    .line 1835
    .local v3, "H264DecHandle":I
    new-instance v2, Lcom/decoder/util/DecH264;

    invoke-direct {v2}, Lcom/decoder/util/DecH264;-><init>()V

    .line 1836
    .local v2, "decH264":Lcom/decoder/util/DecH264;
    invoke-virtual {v2}, Lcom/decoder/util/DecH264;->InitDecoder()I

    move-result v3

    .line 1838
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/tutk/IOTC/Camera$ThreadDecodeVideo2;->m_bIsRunning:Z

    if-nez v4, :cond_3

    .line 2037
    if-eqz v3, :cond_1

    .line 2038
    invoke-virtual {v2, v3}, Lcom/decoder/util/DecH264;->UninitDecoder(I)I

    .line 2039
    const/4 v2, 0x0

    .line 2042
    :cond_1
    const/4 v7, 0x0

    .line 2043
    const/16 v16, 0x0

    .line 2045
    if-eqz v15, :cond_2

    .line 2046
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->recycle()V

    .line 2047
    const/4 v15, 0x0

    .line 2050
    :cond_2
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 2051
    return-void

    .line 1840
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tutk/IOTC/Camera$ThreadDecodeVideo2;->mAVChannel:Lcom/tutk/IOTC/Camera$AVChannel;

    iget-object v4, v4, Lcom/tutk/IOTC/Camera$AVChannel;->VideoFrameQueue:Lcom/tutk/IOTC/AVFrameQueue;

    invoke-virtual {v4}, Lcom/tutk/IOTC/AVFrameQueue;->getCount()I

    move-result v4

    if-lez v4, :cond_13

    .line 1842
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tutk/IOTC/Camera$ThreadDecodeVideo2;->mAVChannel:Lcom/tutk/IOTC/Camera$AVChannel;

    iget-object v4, v4, Lcom/tutk/IOTC/Camera$AVChannel;->VideoFrameQueue:Lcom/tutk/IOTC/AVFrameQueue;

    invoke-virtual {v4}, Lcom/tutk/IOTC/AVFrameQueue;->removeHead()Lcom/tutk/IOTC/AVFrame;

    move-result-object v14

    .line 1844
    if-eqz v14, :cond_0

    .line 1849
    invoke-virtual {v14}, Lcom/tutk/IOTC/AVFrame;->getFrmSize()I

    move-result v5

    .line 1862
    :cond_4
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tutk/IOTC/Camera$ThreadDecodeVideo2;->mAVChannel:Lcom/tutk/IOTC/Camera$AVChannel;

    iget-object v4, v4, Lcom/tutk/IOTC/Camera$AVChannel;->VideoFrameQueue:Lcom/tutk/IOTC/AVFrameQueue;

    invoke-virtual {v4}, Lcom/tutk/IOTC/AVFrameQueue;->getCount()I

    move-result v4

    if-lez v4, :cond_5

    .line 1863
    const-wide/16 v9, 0x3e8

    .line 1862
    cmp-long v4, v18, v9

    if-gtz v4, :cond_14

    .line 1904
    :cond_5
    if-lez v5, :cond_12

    .line 1906
    const/4 v4, 0x0

    const/4 v9, 0x0

    aput v9, v31, v4

    .line 1907
    const/4 v4, 0x0

    const/4 v9, 0x0

    aput v9, v32, v4

    .line 1908
    const/4 v4, 0x0

    const/4 v9, 0x0

    aput v9, v30, v4

    .line 1910
    invoke-virtual {v14}, Lcom/tutk/IOTC/AVFrame;->getFlags()B

    move-result v4

    const/4 v9, 0x1

    if-ne v4, v9, :cond_17

    .line 1912
    invoke-virtual {v14}, Lcom/tutk/IOTC/AVFrame;->getFrmNo()J

    move-result-wide v28

    .line 1927
    :cond_6
    :goto_2
    invoke-virtual {v14}, Lcom/tutk/IOTC/AVFrame;->getCodecId()S

    move-result v4

    const/16 v9, 0x4e

    if-ne v4, v9, :cond_7

    .line 1929
    iget-object v4, v14, Lcom/tutk/IOTC/AVFrame;->frmData:[B

    invoke-virtual/range {v2 .. v7}, Lcom/decoder/util/DecH264;->DecoderNal(I[BI[I[B)I

    .line 1933
    :cond_7
    invoke-virtual {v14}, Lcom/tutk/IOTC/AVFrame;->getCodecId()S

    move-result v4

    const/16 v9, 0x4e

    if-ne v4, v9, :cond_8

    .line 1934
    const/4 v4, 0x0

    const/4 v9, 0x2

    aget v9, v6, v9

    aput v9, v32, v4

    .line 1935
    const/4 v4, 0x0

    const/4 v9, 0x3

    aget v9, v6, v9

    aput v9, v30, v4

    .line 1936
    const/4 v4, 0x0

    const/4 v9, 0x0

    aget v9, v32, v9

    const/4 v10, 0x0

    aget v10, v30, v10

    mul-int/2addr v9, v10

    mul-int/lit8 v9, v9, 0x2

    aput v9, v31, v4

    .line 1939
    :cond_8
    const/4 v4, 0x0

    aget v4, v31, v4

    if-lez v4, :cond_12

    const/4 v4, 0x0

    aget v4, v32, v4

    if-lez v4, :cond_12

    .line 1940
    const/4 v4, 0x0

    aget v4, v30, v4

    if-lez v4, :cond_12

    .line 1942
    const/4 v4, 0x0

    aget v4, v32, v4

    if-ne v12, v4, :cond_9

    .line 1943
    const/4 v4, 0x0

    aget v4, v30, v4

    if-eq v13, v4, :cond_a

    .line 1944
    :cond_9
    const/4 v4, 0x0

    aget v12, v32, v4

    .line 1945
    const/4 v4, 0x0

    aget v13, v30, v4

    .line 1946
    const/4 v4, 0x0

    aget v4, v31, v4

    new-array v0, v4, [B

    move-object/from16 v16, v0

    .line 1950
    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 1949
    invoke-static {v12, v13, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v15

    .line 1954
    :cond_a
    if-eqz v16, :cond_b

    .line 1955
    const/4 v4, 0x0

    const/4 v9, 0x0

    .line 1956
    mul-int v10, v12, v13

    mul-int/lit8 v10, v10, 0x2

    .line 1955
    move-object/from16 v0, v16

    invoke-static {v7, v4, v0, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1957
    invoke-static {v7}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v17

    .line 1959
    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 1964
    :cond_b
    if-eqz v14, :cond_f

    const-wide/16 v9, 0x0

    cmp-long v4, v21, v9

    if-eqz v4, :cond_f

    .line 1965
    const-wide/16 v9, 0x0

    cmp-long v4, v23, v9

    if-eqz v4, :cond_f

    .line 1967
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v36

    .line 1969
    .local v36, "t":J
    invoke-virtual {v14}, Lcom/tutk/IOTC/AVFrame;->getTimeStamp()I

    move-result v4

    int-to-long v9, v4

    sub-long v9, v9, v21

    .line 1968
    add-long v9, v9, v23

    sub-long v34, v9, v36

    .line 1971
    const-wide/16 v9, -0x1

    mul-long v18, v34, v9

    .line 1973
    const-wide/16 v9, 0x0

    cmp-long v4, v34, v9

    if-ltz v4, :cond_e

    .line 1977
    invoke-virtual {v14}, Lcom/tutk/IOTC/AVFrame;->getTimeStamp()I

    move-result v4

    int-to-long v9, v4

    sub-long v9, v9, v26

    const-wide/16 v39, 0x3e8

    cmp-long v4, v9, v39

    if-lez v4, :cond_c

    .line 1979
    invoke-virtual {v14}, Lcom/tutk/IOTC/AVFrame;->getTimeStamp()I

    move-result v4

    int-to-long v0, v4

    move-wide/from16 v21, v0

    .line 1980
    move-wide/from16 v23, v36

    .line 1983
    const-wide/16 v9, 0x3e8

    cmp-long v4, v34, v9

    if-lez v4, :cond_c

    .line 1984
    const-wide/16 v34, 0x21

    .line 1987
    :cond_c
    const-wide/16 v9, 0x3e8

    cmp-long v4, v34, v9

    if-lez v4, :cond_d

    .line 1988
    const-wide/16 v34, 0x3e8

    .line 1990
    :cond_d
    :try_start_0
    invoke-static/range {v34 .. v35}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1996
    :cond_e
    :goto_3
    invoke-virtual {v14}, Lcom/tutk/IOTC/AVFrame;->getTimeStamp()I

    move-result v4

    int-to-long v0, v4

    move-wide/from16 v26, v0

    .line 1999
    .end local v36    # "t":J
    :cond_f
    const-wide/16 v9, 0x0

    cmp-long v4, v21, v9

    if-eqz v4, :cond_10

    .line 2000
    const-wide/16 v9, 0x0

    cmp-long v4, v23, v9

    if-nez v4, :cond_11

    .line 2002
    :cond_10
    invoke-virtual {v14}, Lcom/tutk/IOTC/AVFrame;->getTimeStamp()I

    move-result v4

    int-to-long v0, v4

    move-wide/from16 v26, v0

    .line 2001
    move-wide/from16 v21, v26

    .line 2004
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v23

    .line 2007
    :cond_11
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tutk/IOTC/Camera$ThreadDecodeVideo2;->mAVChannel:Lcom/tutk/IOTC/Camera$AVChannel;

    iget v9, v4, Lcom/tutk/IOTC/Camera$AVChannel;->VideoFPS:I

    add-int/lit8 v9, v9, 0x1

    iput v9, v4, Lcom/tutk/IOTC/Camera$AVChannel;->VideoFPS:I

    .line 2009
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tutk/IOTC/Camera$ThreadDecodeVideo2;->this$0:Lcom/tutk/IOTC/Camera;

    # getter for: Lcom/tutk/IOTC/Camera;->mIOTCListeners:Ljava/util/List;
    invoke-static {v4}, Lcom/tutk/IOTC/Camera;->access$2(Lcom/tutk/IOTC/Camera;)Ljava/util/List;

    move-result-object v39

    monitor-enter v39

    .line 2010
    const/16 v25, 0x0

    .local v25, "i":I
    :goto_4
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tutk/IOTC/Camera$ThreadDecodeVideo2;->this$0:Lcom/tutk/IOTC/Camera;

    # getter for: Lcom/tutk/IOTC/Camera;->mIOTCListeners:Ljava/util/List;
    invoke-static {v4}, Lcom/tutk/IOTC/Camera;->access$2(Lcom/tutk/IOTC/Camera;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    move/from16 v0, v25

    if-lt v0, v4, :cond_19

    .line 2009
    monitor-exit v39
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2021
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tutk/IOTC/Camera$ThreadDecodeVideo2;->mAVChannel:Lcom/tutk/IOTC/Camera$AVChannel;

    iput-object v15, v4, Lcom/tutk/IOTC/Camera$AVChannel;->LastFrame:Landroid/graphics/Bitmap;

    .line 2029
    .end local v25    # "i":I
    :cond_12
    if-eqz v14, :cond_0

    .line 2030
    const/4 v4, 0x0

    iput-object v4, v14, Lcom/tutk/IOTC/AVFrame;->frmData:[B

    .line 2031
    const/4 v14, 0x0

    .line 2032
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 1854
    :cond_13
    const-wide/16 v9, 0x20

    :try_start_2
    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 1855
    :catch_0
    move-exception v20

    .line 1856
    .local v20, "e":Ljava/lang/InterruptedException;
    invoke-virtual/range {v20 .. v20}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_0

    .line 1865
    .end local v20    # "e":Ljava/lang/InterruptedException;
    :cond_14
    const/16 v33, 0x0

    .line 1868
    .local v33, "skipTime":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tutk/IOTC/Camera$ThreadDecodeVideo2;->mAVChannel:Lcom/tutk/IOTC/Camera$AVChannel;

    iget-object v4, v4, Lcom/tutk/IOTC/Camera$AVChannel;->VideoFrameQueue:Lcom/tutk/IOTC/AVFrameQueue;

    invoke-virtual {v4}, Lcom/tutk/IOTC/AVFrameQueue;->removeHead()Lcom/tutk/IOTC/AVFrame;

    move-result-object v38

    .line 1869
    .local v38, "tmp":Lcom/tutk/IOTC/AVFrame;
    if-eqz v38, :cond_4

    .line 1871
    move/from16 v0, v33

    int-to-long v9, v0

    invoke-virtual/range {v38 .. v38}, Lcom/tutk/IOTC/AVFrame;->getTimeStamp()I

    move-result v4

    int-to-long v0, v4

    move-wide/from16 v39, v0

    sub-long v39, v39, v26

    add-long v9, v9, v39

    long-to-int v0, v9

    move/from16 v33, v0

    .line 1878
    invoke-virtual/range {v38 .. v38}, Lcom/tutk/IOTC/AVFrame;->getTimeStamp()I

    move-result v4

    int-to-long v0, v4

    move-wide/from16 v26, v0

    .line 1883
    :goto_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tutk/IOTC/Camera$ThreadDecodeVideo2;->mAVChannel:Lcom/tutk/IOTC/Camera$AVChannel;

    iget-object v4, v4, Lcom/tutk/IOTC/Camera$AVChannel;->VideoFrameQueue:Lcom/tutk/IOTC/AVFrameQueue;

    invoke-virtual {v4}, Lcom/tutk/IOTC/AVFrameQueue;->isFirstIFrame()Z

    move-result v4

    if-nez v4, :cond_15

    .line 1884
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tutk/IOTC/Camera$ThreadDecodeVideo2;->mAVChannel:Lcom/tutk/IOTC/Camera$AVChannel;

    iget-object v4, v4, Lcom/tutk/IOTC/Camera$AVChannel;->VideoFrameQueue:Lcom/tutk/IOTC/AVFrameQueue;

    invoke-virtual {v4}, Lcom/tutk/IOTC/AVFrameQueue;->removeHead()Lcom/tutk/IOTC/AVFrame;

    move-result-object v38

    .line 1885
    if-nez v38, :cond_16

    .line 1900
    :cond_15
    move/from16 v0, v33

    int-to-long v9, v0

    sub-long v18, v18, v9

    .line 1901
    const-string v4, "IOTCamera"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "delayTime: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v0, v18

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1887
    :cond_16
    move/from16 v0, v33

    int-to-long v9, v0

    invoke-virtual/range {v38 .. v38}, Lcom/tutk/IOTC/AVFrame;->getTimeStamp()I

    move-result v4

    int-to-long v0, v4

    move-wide/from16 v39, v0

    sub-long v39, v39, v26

    add-long v9, v9, v39

    long-to-int v0, v9

    move/from16 v33, v0

    .line 1894
    invoke-virtual/range {v38 .. v38}, Lcom/tutk/IOTC/AVFrame;->getTimeStamp()I

    move-result v4

    int-to-long v0, v4

    move-wide/from16 v26, v0

    .line 1881
    goto :goto_5

    .line 1914
    .end local v33    # "skipTime":I
    .end local v38    # "tmp":Lcom/tutk/IOTC/AVFrame;
    :cond_17
    invoke-virtual {v14}, Lcom/tutk/IOTC/AVFrame;->getFlags()B

    move-result v4

    if-nez v4, :cond_6

    .line 1916
    invoke-virtual {v14}, Lcom/tutk/IOTC/AVFrame;->getFrmNo()J

    move-result-wide v9

    const-wide/16 v39, 0x1

    add-long v39, v39, v28

    cmp-long v4, v9, v39

    if-eqz v4, :cond_18

    .line 1918
    const/4 v4, 0x0

    iput-object v4, v14, Lcom/tutk/IOTC/AVFrame;->frmData:[B

    .line 1919
    const/4 v14, 0x0

    .line 1920
    const/4 v5, 0x0

    .line 1922
    goto/16 :goto_0

    .line 1924
    :cond_18
    invoke-virtual {v14}, Lcom/tutk/IOTC/AVFrame;->getFrmNo()J

    move-result-wide v28

    goto/16 :goto_2

    .line 2012
    .restart local v25    # "i":I
    :cond_19
    :try_start_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tutk/IOTC/Camera$ThreadDecodeVideo2;->this$0:Lcom/tutk/IOTC/Camera;

    # getter for: Lcom/tutk/IOTC/Camera;->mIOTCListeners:Ljava/util/List;
    invoke-static {v4}, Lcom/tutk/IOTC/Camera;->access$2(Lcom/tutk/IOTC/Camera;)Ljava/util/List;

    move-result-object v4

    .line 2013
    move/from16 v0, v25

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/tutk/IOTC/IRegisterIOTCListener;

    .line 2014
    .local v8, "listener":Lcom/tutk/IOTC/IRegisterIOTCListener;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/tutk/IOTC/Camera$ThreadDecodeVideo2;->this$0:Lcom/tutk/IOTC/Camera;

    .line 2015
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tutk/IOTC/Camera$ThreadDecodeVideo2;->mAVChannel:Lcom/tutk/IOTC/Camera$AVChannel;

    invoke-virtual {v4}, Lcom/tutk/IOTC/Camera$AVChannel;->getChannel()I

    move-result v10

    move-object v11, v7

    .line 2014
    invoke-interface/range {v8 .. v13}, Lcom/tutk/IOTC/IRegisterIOTCListener;->receiveRGBData(Lcom/tutk/IOTC/Camera;I[BII)V

    .line 2017
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tutk/IOTC/Camera$ThreadDecodeVideo2;->this$0:Lcom/tutk/IOTC/Camera;

    .line 2018
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/tutk/IOTC/Camera$ThreadDecodeVideo2;->mAVChannel:Lcom/tutk/IOTC/Camera$AVChannel;

    invoke-virtual {v9}, Lcom/tutk/IOTC/Camera$AVChannel;->getChannel()I

    move-result v9

    .line 2017
    invoke-interface {v8, v4, v9, v15}, Lcom/tutk/IOTC/IRegisterIOTCListener;->receiveFrameData(Lcom/tutk/IOTC/Camera;ILandroid/graphics/Bitmap;)V

    .line 2010
    add-int/lit8 v25, v25, 0x1

    goto/16 :goto_4

    .line 2009
    .end local v8    # "listener":Lcom/tutk/IOTC/IRegisterIOTCListener;
    :catchall_0
    move-exception v4

    monitor-exit v39
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4

    .line 1991
    .end local v25    # "i":I
    .restart local v36    # "t":J
    :catch_1
    move-exception v4

    goto/16 :goto_3
.end method

.method public stopThread()V
    .locals 1

    .prologue
    .line 1796
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tutk/IOTC/Camera$ThreadDecodeVideo2;->m_bIsRunning:Z

    .line 1797
    return-void
.end method
