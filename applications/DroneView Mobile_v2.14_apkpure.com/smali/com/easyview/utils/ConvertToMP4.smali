.class public Lcom/easyview/utils/ConvertToMP4;
.super Ljava/lang/Object;
.source "ConvertToMP4.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MP4"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static AviToMP4(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 22
    .param p0, "avi_file"    # Ljava/lang/String;
    .param p1, "mp4_file"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 21
    const-string v14, "video/avc"

    .line 22
    .local v14, "mime":Ljava/lang/String;
    new-instance v3, Lobject/p2pipcam/nativecaller/Avi;

    invoke-direct {v3}, Lobject/p2pipcam/nativecaller/Avi;-><init>()V

    .line 23
    .local v3, "avi":Lobject/p2pipcam/nativecaller/Avi;
    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lobject/p2pipcam/nativecaller/Avi;->Open(Ljava/lang/String;)I

    .line 24
    invoke-virtual {v3}, Lobject/p2pipcam/nativecaller/Avi;->getWidth()I

    move-result v17

    .line 25
    .local v17, "width":I
    invoke-virtual {v3}, Lobject/p2pipcam/nativecaller/Avi;->getHeight()I

    move-result v9

    .line 26
    .local v9, "height":I
    invoke-virtual {v3}, Lobject/p2pipcam/nativecaller/Avi;->getBitRate()I

    move-result v4

    .line 27
    .local v4, "bitrate":I
    invoke-virtual {v3}, Lobject/p2pipcam/nativecaller/Avi;->getFrameRate()I

    move-result v8

    .line 28
    .local v8, "framerate":I
    invoke-virtual {v3}, Lobject/p2pipcam/nativecaller/Avi;->TotalDuration()I

    move-result v16

    .line 29
    .local v16, "total":I
    if-nez v16, :cond_0

    .line 31
    const-string v18, "MP4"

    const-string v19, "avi file error:%s"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object p0, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    const/16 v18, 0x0

    .line 90
    :goto_0
    return v18

    .line 34
    :cond_0
    new-instance v11, Landroid/media/MediaMuxer;

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-direct {v11, v0, v1}, Landroid/media/MediaMuxer;-><init>(Ljava/lang/String;I)V

    .line 35
    .local v11, "mMediaMuxer":Landroid/media/MediaMuxer;
    move/from16 v0, v17

    invoke-static {v14, v0, v9}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v13

    .line 37
    .local v13, "mediaFormat":Landroid/media/MediaFormat;
    const-string v18, "use-arbitrary-mode"

    const-wide/16 v19, 0x0

    move-object/from16 v0, v18

    move-wide/from16 v1, v19

    invoke-virtual {v13, v0, v1, v2}, Landroid/media/MediaFormat;->setLong(Ljava/lang/String;J)V

    .line 39
    const-string v18, "max-input-size"

    const-wide/32 v19, 0x7a120

    move-object/from16 v0, v18

    move-wide/from16 v1, v19

    invoke-virtual {v13, v0, v1, v2}, Landroid/media/MediaFormat;->setLong(Ljava/lang/String;J)V

    .line 40
    const/16 v18, 0x780

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    .line 42
    const/16 v18, 0x17

    move/from16 v0, v18

    new-array v6, v0, [B

    const/16 v18, 0x3

    const/16 v19, 0x1

    aput-byte v19, v6, v18

    const/16 v18, 0x4

    const/16 v19, 0x67

    aput-byte v19, v6, v18

    const/16 v18, 0x5

    const/16 v19, 0x4d

    aput-byte v19, v6, v18

    const/16 v18, 0x7

    const/16 v19, 0x2a

    aput-byte v19, v6, v18

    const/16 v18, 0x8

    const/16 v19, -0x6b

    aput-byte v19, v6, v18

    const/16 v18, 0x9

    const/16 v19, -0x48

    aput-byte v19, v6, v18

    const/16 v18, 0xa

    const/16 v19, 0x1e

    aput-byte v19, v6, v18

    const/16 v18, 0xc

    const/16 v19, -0x77

    aput-byte v19, v6, v18

    const/16 v18, 0xd

    .line 43
    const/16 v19, -0x7

    aput-byte v19, v6, v18

    const/16 v18, 0xe

    const/16 v19, 0x50

    aput-byte v19, v6, v18

    const/16 v18, 0x12

    const/16 v19, 0x1

    aput-byte v19, v6, v18

    const/16 v18, 0x13

    const/16 v19, 0x68

    aput-byte v19, v6, v18

    const/16 v18, 0x14

    const/16 v19, -0x12

    aput-byte v19, v6, v18

    const/16 v18, 0x15

    const/16 v19, 0x3c

    aput-byte v19, v6, v18

    const/16 v18, 0x16

    const/16 v19, -0x80

    aput-byte v19, v6, v18

    .line 44
    .local v6, "csd_info_1920":[B
    const-string v18, "csd-0"

    invoke-static {v6}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 53
    .end local v6    # "csd_info_1920":[B
    :goto_1
    invoke-virtual {v11, v13}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v12

    .line 54
    .local v12, "mVideoTrackIndex":I
    invoke-virtual {v11}, Landroid/media/MediaMuxer;->start()V

    .line 55
    new-instance v10, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v10}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 56
    .local v10, "info":Landroid/media/MediaCodec$BufferInfo;
    const-wide/16 v18, 0x0

    move-wide/from16 v0, v18

    iput-wide v0, v10, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 57
    const v18, 0x7d000

    invoke-static/range {v18 .. v18}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 60
    .local v5, "buffer":Ljava/nio/ByteBuffer;
    :cond_1
    :goto_2
    invoke-virtual {v3}, Lobject/p2pipcam/nativecaller/Avi;->Frame()[B

    move-result-object v7

    .line 61
    .local v7, "data":[B
    invoke-virtual {v3}, Lobject/p2pipcam/nativecaller/Avi;->frameSize()I

    move-result v15

    .line 62
    .local v15, "sampleSize":I
    if-gtz v15, :cond_3

    .line 63
    const-string v18, "MP4"

    const-string v19, "InputBuffer BUFFER_FLAG_END_OF_STREAM"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    invoke-virtual {v11}, Landroid/media/MediaMuxer;->stop()V

    .line 88
    invoke-virtual {v11}, Landroid/media/MediaMuxer;->release()V

    .line 90
    const/16 v18, 0x1

    goto/16 :goto_0

    .line 47
    .end local v5    # "buffer":Ljava/nio/ByteBuffer;
    .end local v7    # "data":[B
    .end local v10    # "info":Landroid/media/MediaCodec$BufferInfo;
    .end local v12    # "mVideoTrackIndex":I
    .end local v15    # "sampleSize":I
    :cond_2
    const/16 v18, 0x16

    move/from16 v0, v18

    new-array v0, v0, [B

    move-object/from16 v18, v0

    const/16 v19, 0x3

    const/16 v20, 0x1

    aput-byte v20, v18, v19

    const/16 v19, 0x4

    const/16 v20, 0x67

    aput-byte v20, v18, v19

    const/16 v19, 0x5

    const/16 v20, 0x4d

    aput-byte v20, v18, v19

    const/16 v19, 0x7

    const/16 v20, 0x1f

    aput-byte v20, v18, v19

    const/16 v19, 0x8

    const/16 v20, -0x6b

    aput-byte v20, v18, v19

    const/16 v19, 0x9

    const/16 v20, -0x48

    aput-byte v20, v18, v19

    const/16 v19, 0xa

    const/16 v20, 0x14

    aput-byte v20, v18, v19

    const/16 v19, 0xb

    const/16 v20, 0x1

    aput-byte v20, v18, v19

    const/16 v19, 0xc

    .line 48
    const/16 v20, 0x6e

    aput-byte v20, v18, v19

    const/16 v19, 0xd

    const/16 v20, 0x40

    aput-byte v20, v18, v19

    const/16 v19, 0x11

    const/16 v20, 0x1

    aput-byte v20, v18, v19

    const/16 v19, 0x12

    const/16 v20, 0x68

    aput-byte v20, v18, v19

    const/16 v19, 0x13

    const/16 v20, -0x12

    aput-byte v20, v18, v19

    const/16 v19, 0x14

    const/16 v20, 0x3c

    aput-byte v20, v18, v19

    const/16 v19, 0x15

    const/16 v20, -0x80

    aput-byte v20, v18, v19

    goto/16 :goto_1

    .line 66
    .restart local v5    # "buffer":Ljava/nio/ByteBuffer;
    .restart local v7    # "data":[B
    .restart local v10    # "info":Landroid/media/MediaCodec$BufferInfo;
    .restart local v12    # "mVideoTrackIndex":I
    .restart local v15    # "sampleSize":I
    :cond_3
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 69
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v18

    move/from16 v0, v18

    if-ge v0, v15, :cond_4

    .line 71
    invoke-static {v15}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 73
    :cond_4
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v5, v7, v0, v15}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 74
    invoke-virtual {v3}, Lobject/p2pipcam/nativecaller/Avi;->isAudioFrame()Z

    move-result v18

    if-nez v18, :cond_1

    .line 79
    const/16 v18, 0x0

    move/from16 v0, v18

    iput v0, v10, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 80
    iput v15, v10, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 81
    const/16 v18, 0x1

    move/from16 v0, v18

    iput v0, v10, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 82
    iget-wide v0, v10, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    move-wide/from16 v18, v0

    const v20, 0xf4240

    div-int v20, v20, v8

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    add-long v18, v18, v20

    move-wide/from16 v0, v18

    iput-wide v0, v10, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 83
    invoke-virtual {v11, v12, v5, v10}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    goto/16 :goto_2
.end method
