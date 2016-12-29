.class Lobject/p2pwificam/clientActivity/DPlayActivity$PlayerThread;
.super Ljava/lang/Thread;
.source "DPlayActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pwificam/clientActivity/DPlayActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PlayerThread"
.end annotation


# instance fields
.field private csd_info_size:I

.field private decoder:Landroid/media/MediaCodec;

.field private set_csd_info:Z

.field private surface:Landroid/view/Surface;

.field final synthetic this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;


# direct methods
.method public constructor <init>(Lobject/p2pwificam/clientActivity/DPlayActivity;Landroid/view/Surface;)V
    .locals 1
    .param p2, "surface"    # Landroid/view/Surface;

    .prologue
    const/4 v0, 0x0

    .line 1314
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$PlayerThread;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1312
    iput v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$PlayerThread;->csd_info_size:I

    .line 1313
    iput-boolean v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$PlayerThread;->set_csd_info:Z

    .line 1315
    iput-object p2, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$PlayerThread;->surface:Landroid/view/Surface;

    .line 1316
    return-void
.end method


# virtual methods
.method public play()V
    .locals 31
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 1320
    const-string v22, "video/avc"

    .line 1321
    .local v22, "mime":Ljava/lang/String;
    const/16 v30, 0x280

    .line 1322
    .local v30, "width":I
    const/16 v17, 0x168

    .line 1323
    .local v17, "height":I
    move-object/from16 v0, v22

    move/from16 v1, v30

    move/from16 v2, v17

    invoke-static {v0, v1, v2}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v21

    .line 1324
    .local v21, "mediaFormat":Landroid/media/MediaFormat;
    const-string v3, "file-format"

    const-string v5, "video/avi"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v5}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1325
    const-string v3, "use-arbitrary-mode"

    const-wide/16 v5, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v5, v6}, Landroid/media/MediaFormat;->setLong(Ljava/lang/String;J)V

    .line 1327
    const-string v3, "max-input-size"

    const-wide/32 v5, 0xf4240

    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v5, v6}, Landroid/media/MediaFormat;->setLong(Ljava/lang/String;J)V

    .line 1328
    const/16 v3, 0x16

    new-array v12, v3, [B

    .line 1329
    .local v12, "csd_info_data":[B
    const/16 v3, 0x16

    new-array v11, v3, [B

    const/4 v3, 0x3

    const/4 v5, 0x1

    aput-byte v5, v11, v3

    const/4 v3, 0x4

    const/16 v5, 0x67

    aput-byte v5, v11, v3

    const/4 v3, 0x5

    const/16 v5, 0x4d

    aput-byte v5, v11, v3

    const/4 v3, 0x7

    const/16 v5, 0x1e

    aput-byte v5, v11, v3

    const/16 v3, 0x8

    const/16 v5, -0x6b

    aput-byte v5, v11, v3

    const/16 v3, 0x9

    const/16 v5, -0x50

    aput-byte v5, v11, v3

    const/16 v3, 0xa

    const/16 v5, 0x28

    aput-byte v5, v11, v3

    const/16 v3, 0xb

    const/16 v5, 0xb

    aput-byte v5, v11, v3

    const/16 v3, 0xc

    const/4 v5, -0x2

    aput-byte v5, v11, v3

    const/16 v3, 0xd

    const/16 v5, 0x54

    aput-byte v5, v11, v3

    const/16 v3, 0x11

    const/4 v5, 0x1

    aput-byte v5, v11, v3

    const/16 v3, 0x12

    const/16 v5, 0x68

    aput-byte v5, v11, v3

    const/16 v3, 0x13

    const/16 v5, -0x12

    aput-byte v5, v11, v3

    const/16 v3, 0x14

    const/16 v5, 0x3c

    aput-byte v5, v11, v3

    const/16 v3, 0x15

    const/16 v5, -0x80

    aput-byte v5, v11, v3

    .line 1333
    .local v11, "csd_info":[B
    :try_start_0
    invoke-static/range {v22 .. v22}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lobject/p2pwificam/clientActivity/DPlayActivity$PlayerThread;->decoder:Landroid/media/MediaCodec;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1338
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lobject/p2pwificam/clientActivity/DPlayActivity$PlayerThread;->decoder:Landroid/media/MediaCodec;

    move-object/from16 v0, p0

    iget-object v5, v0, Lobject/p2pwificam/clientActivity/DPlayActivity$PlayerThread;->surface:Landroid/view/Surface;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v3, v0, v5, v6, v7}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 1343
    move-object/from16 v0, p0

    iget-object v3, v0, Lobject/p2pwificam/clientActivity/DPlayActivity$PlayerThread;->decoder:Landroid/media/MediaCodec;

    if-nez v3, :cond_0

    .line 1344
    const-string v3, "DPlay"

    const-string v5, "Can\'t find video info!"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1502
    :goto_1
    return-void

    .line 1334
    :catch_0
    move-exception v15

    .line 1336
    .local v15, "e1":Ljava/io/IOException;
    invoke-virtual {v15}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 1348
    .end local v15    # "e1":Ljava/io/IOException;
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lobject/p2pwificam/clientActivity/DPlayActivity$PlayerThread;->decoder:Landroid/media/MediaCodec;

    invoke-virtual {v3}, Landroid/media/MediaCodec;->start()V

    .line 1350
    move-object/from16 v0, p0

    iget-object v3, v0, Lobject/p2pwificam/clientActivity/DPlayActivity$PlayerThread;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->_camera:Lcom/easyview/camera/EVBaseCamera;
    invoke-static {v3}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$16(Lobject/p2pwificam/clientActivity/DPlayActivity;)Lcom/easyview/camera/EVBaseCamera;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1352
    const-string v3, "DPlay"

    const-string v5, "Start Video!"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1353
    move-object/from16 v0, p0

    iget-object v3, v0, Lobject/p2pwificam/clientActivity/DPlayActivity$PlayerThread;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    const/4 v5, 0x0

    invoke-static {v3, v5}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$74(Lobject/p2pwificam/clientActivity/DPlayActivity;Z)V

    .line 1354
    move-object/from16 v0, p0

    iget-object v3, v0, Lobject/p2pwificam/clientActivity/DPlayActivity$PlayerThread;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->_videoDataQueue:Lobject/p2pipcam/utils/VideoDataQueue;
    invoke-static {v3}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$76(Lobject/p2pwificam/clientActivity/DPlayActivity;)Lobject/p2pipcam/utils/VideoDataQueue;

    move-result-object v3

    invoke-virtual {v3}, Lobject/p2pipcam/utils/VideoDataQueue;->clear()V

    .line 1355
    move-object/from16 v0, p0

    iget-object v3, v0, Lobject/p2pwificam/clientActivity/DPlayActivity$PlayerThread;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->_camera:Lcom/easyview/camera/EVBaseCamera;
    invoke-static {v3}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$16(Lobject/p2pwificam/clientActivity/DPlayActivity;)Lcom/easyview/camera/EVBaseCamera;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lobject/p2pwificam/clientActivity/DPlayActivity$PlayerThread;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->onVideoData:Lcom/easyview/basecamera/ICamera$IDataListener;
    invoke-static {v5}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$125(Lobject/p2pwificam/clientActivity/DPlayActivity;)Lcom/easyview/basecamera/ICamera$IDataListener;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/easyview/camera/EVBaseCamera;->StartVideo(Lcom/easyview/basecamera/ICamera$IDataListener;)V

    .line 1357
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lobject/p2pwificam/clientActivity/DPlayActivity$PlayerThread;->decoder:Landroid/media/MediaCodec;

    invoke-virtual {v3}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v19

    .line 1358
    .local v19, "inputBuffers":[Ljava/nio/ByteBuffer;
    move-object/from16 v0, p0

    iget-object v3, v0, Lobject/p2pwificam/clientActivity/DPlayActivity$PlayerThread;->decoder:Landroid/media/MediaCodec;

    invoke-virtual {v3}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v24

    .line 1359
    .local v24, "outputBuffers":[Ljava/nio/ByteBuffer;
    new-instance v18, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct/range {v18 .. v18}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 1360
    .local v18, "info":Landroid/media/MediaCodec$BufferInfo;
    const/16 v25, 0x0

    .line 1361
    .local v25, "render":Z
    const/16 v20, 0x0

    .line 1362
    .local v20, "isEOS":Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    .line 1363
    .local v26, "startMs":J
    const/4 v4, -0x1

    .line 1364
    .local v4, "inIndex":I
    :cond_2
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1496
    :goto_2
    const-string v3, "DPlay"

    const-string v5, "Play Thread Finish...."

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1497
    move-object/from16 v0, p0

    iget-object v3, v0, Lobject/p2pwificam/clientActivity/DPlayActivity$PlayerThread;->decoder:Landroid/media/MediaCodec;

    invoke-virtual {v3}, Landroid/media/MediaCodec;->stop()V

    .line 1498
    move-object/from16 v0, p0

    iget-object v3, v0, Lobject/p2pwificam/clientActivity/DPlayActivity$PlayerThread;->decoder:Landroid/media/MediaCodec;

    invoke-virtual {v3}, Landroid/media/MediaCodec;->release()V

    .line 1499
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lobject/p2pwificam/clientActivity/DPlayActivity$PlayerThread;->decoder:Landroid/media/MediaCodec;

    .line 1500
    move-object/from16 v0, p0

    iget-object v3, v0, Lobject/p2pwificam/clientActivity/DPlayActivity$PlayerThread;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->_camera:Lcom/easyview/camera/EVBaseCamera;
    invoke-static {v3}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$16(Lobject/p2pwificam/clientActivity/DPlayActivity;)Lcom/easyview/camera/EVBaseCamera;

    move-result-object v3

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lobject/p2pwificam/clientActivity/DPlayActivity$PlayerThread;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->_camera:Lcom/easyview/camera/EVBaseCamera;
    invoke-static {v3}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$16(Lobject/p2pwificam/clientActivity/DPlayActivity;)Lcom/easyview/camera/EVBaseCamera;

    move-result-object v3

    invoke-virtual {v3}, Lcom/easyview/camera/EVBaseCamera;->StopVideo()V

    .line 1501
    :cond_3
    const-string v3, "DPlay"

    const-string v5, "Play Thread Finish"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1366
    :cond_4
    if-gez v4, :cond_5

    .line 1367
    move-object/from16 v0, p0

    iget-object v3, v0, Lobject/p2pwificam/clientActivity/DPlayActivity$PlayerThread;->decoder:Landroid/media/MediaCodec;

    const-wide/16 v5, 0x2710

    invoke-virtual {v3, v5, v6}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v4

    .line 1368
    :cond_5
    if-ltz v4, :cond_6

    .line 1369
    move-object/from16 v0, p0

    iget-object v3, v0, Lobject/p2pwificam/clientActivity/DPlayActivity$PlayerThread;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->isRunning:Z
    invoke-static {v3}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$126(Lobject/p2pwificam/clientActivity/DPlayActivity;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 1370
    const-string v3, "DPlay"

    const-string v5, "Play Abort"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1371
    move-object/from16 v0, p0

    iget-object v3, v0, Lobject/p2pwificam/clientActivity/DPlayActivity$PlayerThread;->decoder:Landroid/media/MediaCodec;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x4

    invoke-virtual/range {v3 .. v9}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 1372
    const/4 v4, -0x1

    .line 1373
    const/16 v20, 0x1

    .line 1428
    :cond_6
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lobject/p2pwificam/clientActivity/DPlayActivity$PlayerThread;->decoder:Landroid/media/MediaCodec;

    const-wide/16 v5, 0x2710

    move-object/from16 v0, v18

    invoke-virtual {v3, v0, v5, v6}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v23

    .line 1430
    .local v23, "outIndex":I
    packed-switch v23, :pswitch_data_0

    .line 1446
    aget-object v10, v24, v23

    .line 1463
    .local v10, "buffer":Ljava/nio/ByteBuffer;
    :goto_4
    move-object/from16 v0, v18

    iget-wide v5, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    .line 1464
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 1463
    sub-long v7, v7, v26

    cmp-long v3, v5, v7

    if-gtz v3, :cond_a

    .line 1472
    :goto_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lobject/p2pwificam/clientActivity/DPlayActivity$PlayerThread;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->render_idle_count:I
    invoke-static {v3}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$127(Lobject/p2pwificam/clientActivity/DPlayActivity;)I

    move-result v3

    if-lez v3, :cond_b

    .line 1474
    move-object/from16 v0, p0

    iget-object v3, v0, Lobject/p2pwificam/clientActivity/DPlayActivity$PlayerThread;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->render_idle_count:I
    invoke-static {v3}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$127(Lobject/p2pwificam/clientActivity/DPlayActivity;)I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-static {v3, v5}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$128(Lobject/p2pwificam/clientActivity/DPlayActivity;I)V

    .line 1475
    const/16 v25, 0x0

    .line 1485
    :cond_7
    :goto_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lobject/p2pwificam/clientActivity/DPlayActivity$PlayerThread;->decoder:Landroid/media/MediaCodec;

    move/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v3, v0, v1}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 1491
    .end local v10    # "buffer":Ljava/nio/ByteBuffer;
    :goto_7
    :pswitch_0
    move-object/from16 v0, v18

    iget v3, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_2

    .line 1492
    const-string v3, "DPlay"

    const-string v5, "OutputBuffer BUFFER_FLAG_END_OF_STREAM"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1377
    .end local v23    # "outIndex":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lobject/p2pwificam/clientActivity/DPlayActivity$PlayerThread;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->_videoDataQueue:Lobject/p2pipcam/utils/VideoDataQueue;
    invoke-static {v3}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$76(Lobject/p2pwificam/clientActivity/DPlayActivity;)Lobject/p2pipcam/utils/VideoDataQueue;

    move-result-object v3

    invoke-virtual {v3}, Lobject/p2pipcam/utils/VideoDataQueue;->size()I

    move-result v3

    if-lez v3, :cond_9

    .line 1379
    move-object/from16 v0, p0

    iget-object v3, v0, Lobject/p2pwificam/clientActivity/DPlayActivity$PlayerThread;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->_videoDataQueue:Lobject/p2pipcam/utils/VideoDataQueue;
    invoke-static {v3}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$76(Lobject/p2pwificam/clientActivity/DPlayActivity;)Lobject/p2pipcam/utils/VideoDataQueue;

    move-result-object v3

    invoke-virtual {v3}, Lobject/p2pipcam/utils/VideoDataQueue;->get()Landroid/util/Pair;

    move-result-object v13

    .line 1380
    .local v13, "data":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;[B>;"
    aget-object v10, v19, v4

    .line 1381
    .restart local v10    # "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 1382
    iget-object v3, v13, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, [B

    const/4 v6, 0x0

    iget-object v5, v13, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v10, v3, v6, v5}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 1408
    const-wide/16 v28, 0x3e8

    .line 1410
    .local v28, "ts":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lobject/p2pwificam/clientActivity/DPlayActivity$PlayerThread;->decoder:Landroid/media/MediaCodec;

    const/4 v5, 0x0

    iget-object v6, v13, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const-wide/16 v7, 0x3e8

    const/4 v9, 0x0

    invoke-virtual/range {v3 .. v9}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 1412
    const/4 v4, -0x1

    .line 1413
    goto/16 :goto_3

    .line 1417
    .end local v10    # "buffer":Ljava/nio/ByteBuffer;
    .end local v13    # "data":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;[B>;"
    .end local v28    # "ts":J
    :cond_9
    const-wide/16 v5, 0xa

    :try_start_1
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_3

    .line 1418
    :catch_1
    move-exception v14

    .line 1420
    .local v14, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v14}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_3

    .line 1432
    .end local v14    # "e":Ljava/lang/InterruptedException;
    .restart local v23    # "outIndex":I
    :pswitch_1
    const-string v3, "DPlay"

    const-string v5, "INFO_OUTPUT_BUFFERS_CHANGED"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1433
    move-object/from16 v0, p0

    iget-object v3, v0, Lobject/p2pwificam/clientActivity/DPlayActivity$PlayerThread;->decoder:Landroid/media/MediaCodec;

    invoke-virtual {v3}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v24

    .line 1434
    goto :goto_7

    .line 1436
    :pswitch_2
    const/16 v25, 0x1

    .line 1439
    move-object/from16 v0, p0

    iget-object v3, v0, Lobject/p2pwificam/clientActivity/DPlayActivity$PlayerThread;->decoder:Landroid/media/MediaCodec;

    invoke-virtual {v3}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v16

    .line 1440
    .local v16, "format":Landroid/media/MediaFormat;
    const-string v3, "DPlay"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "New format "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 1466
    .end local v16    # "format":Landroid/media/MediaFormat;
    .restart local v10    # "buffer":Ljava/nio/ByteBuffer;
    :cond_a
    const-wide/16 v5, 0xa

    :try_start_2
    invoke-static {v5, v6}, Lobject/p2pwificam/clientActivity/DPlayActivity$PlayerThread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_4

    .line 1467
    :catch_2
    move-exception v14

    .line 1468
    .restart local v14    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v14}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_5

    .line 1478
    .end local v14    # "e":Ljava/lang/InterruptedException;
    :cond_b
    const/16 v25, 0x1

    .line 1479
    move-object/from16 v0, p0

    iget-object v3, v0, Lobject/p2pwificam/clientActivity/DPlayActivity$PlayerThread;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->bProgress:Z
    invoke-static {v3}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$21(Lobject/p2pwificam/clientActivity/DPlayActivity;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1481
    move-object/from16 v0, p0

    iget-object v3, v0, Lobject/p2pwificam/clientActivity/DPlayActivity$PlayerThread;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->handler:Landroid/os/Handler;
    invoke-static {v3}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$20(Lobject/p2pwificam/clientActivity/DPlayActivity;)Landroid/os/Handler;

    move-result-object v3

    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1482
    move-object/from16 v0, p0

    iget-object v3, v0, Lobject/p2pwificam/clientActivity/DPlayActivity$PlayerThread;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->handler:Landroid/os/Handler;
    invoke-static {v3}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$20(Lobject/p2pwificam/clientActivity/DPlayActivity;)Landroid/os/Handler;

    move-result-object v3

    const/16 v5, 0x66

    invoke-virtual {v3, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_6

    .line 1430
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public run()V
    .locals 3

    .prologue
    .line 1505
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$PlayerThread;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$129(Lobject/p2pwificam/clientActivity/DPlayActivity;Z)V

    .line 1508
    :goto_0
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$PlayerThread;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->isRunning:Z
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$126(Lobject/p2pwificam/clientActivity/DPlayActivity;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1522
    :cond_0
    :goto_1
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$PlayerThread;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->isRunning:Z
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$126(Lobject/p2pwificam/clientActivity/DPlayActivity;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1524
    const-string v1, "DPlay"

    const-string v2, "Play Thread Start..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1525
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$PlayerThread;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$20(Lobject/p2pwificam/clientActivity/DPlayActivity;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1526
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/DPlayActivity$PlayerThread;->play()V

    .line 1528
    :cond_1
    return-void

    .line 1510
    :cond_2
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$PlayerThread;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->_camera:Lcom/easyview/camera/EVBaseCamera;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$16(Lobject/p2pwificam/clientActivity/DPlayActivity;)Lcom/easyview/camera/EVBaseCamera;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1512
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$PlayerThread;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->_camera:Lcom/easyview/camera/EVBaseCamera;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$16(Lobject/p2pwificam/clientActivity/DPlayActivity;)Lcom/easyview/camera/EVBaseCamera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/easyview/camera/EVBaseCamera;->isOnline()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1516
    :cond_3
    const-wide/16 v1, 0xa

    :try_start_0
    invoke-static {v1, v2}, Lobject/p2pwificam/clientActivity/DPlayActivity$PlayerThread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1517
    :catch_0
    move-exception v0

    .line 1518
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1
.end method
