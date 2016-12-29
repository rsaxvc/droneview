.class Lobject/p2pwificam/clientActivity/MediaPlayerActivity$PlayerThread;
.super Ljava/lang/Thread;
.source "MediaPlayerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pwificam/clientActivity/MediaPlayerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PlayerThread"
.end annotation


# instance fields
.field private avi:Lobject/p2pipcam/nativecaller/Avi;

.field private decoder:Landroid/media/MediaCodec;

.field private extractor:Landroid/media/MediaExtractor;

.field private mediaCodec:Landroid/media/MediaCodec;

.field private surface:Landroid/view/Surface;

.field final synthetic this$0:Lobject/p2pwificam/clientActivity/MediaPlayerActivity;


# direct methods
.method public constructor <init>(Lobject/p2pwificam/clientActivity/MediaPlayerActivity;Landroid/view/Surface;)V
    .locals 1
    .param p2, "surface"    # Landroid/view/Surface;

    .prologue
    const/4 v0, 0x0

    .line 160
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/MediaPlayerActivity$PlayerThread;->this$0:Lobject/p2pwificam/clientActivity/MediaPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 158
    iput-object v0, p0, Lobject/p2pwificam/clientActivity/MediaPlayerActivity$PlayerThread;->mediaCodec:Landroid/media/MediaCodec;

    .line 159
    iput-object v0, p0, Lobject/p2pwificam/clientActivity/MediaPlayerActivity$PlayerThread;->avi:Lobject/p2pipcam/nativecaller/Avi;

    .line 161
    iput-object p2, p0, Lobject/p2pwificam/clientActivity/MediaPlayerActivity$PlayerThread;->surface:Landroid/view/Surface;

    .line 162
    return-void
.end method

.method static synthetic access$0(Lobject/p2pwificam/clientActivity/MediaPlayerActivity$PlayerThread;)Lobject/p2pwificam/clientActivity/MediaPlayerActivity;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/MediaPlayerActivity$PlayerThread;->this$0:Lobject/p2pwificam/clientActivity/MediaPlayerActivity;

    return-object v0
.end method


# virtual methods
.method public AvcEncoder()V
    .locals 17
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 167
    new-instance v1, Lobject/p2pipcam/nativecaller/Avi;

    invoke-direct {v1}, Lobject/p2pipcam/nativecaller/Avi;-><init>()V

    .line 168
    .local v1, "avi":Lobject/p2pipcam/nativecaller/Avi;
    move-object/from16 v0, p0

    iget-object v12, v0, Lobject/p2pwificam/clientActivity/MediaPlayerActivity$PlayerThread;->this$0:Lobject/p2pwificam/clientActivity/MediaPlayerActivity;

    # getter for: Lobject/p2pwificam/clientActivity/MediaPlayerActivity;->_filePath:Ljava/lang/String;
    invoke-static {v12}, Lobject/p2pwificam/clientActivity/MediaPlayerActivity;->access$0(Lobject/p2pwificam/clientActivity/MediaPlayerActivity;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Lobject/p2pipcam/nativecaller/Avi;->Open(Ljava/lang/String;)I

    .line 169
    invoke-virtual {v1}, Lobject/p2pipcam/nativecaller/Avi;->getWidth()I

    move-result v11

    .line 170
    .local v11, "width":I
    invoke-virtual {v1}, Lobject/p2pipcam/nativecaller/Avi;->getHeight()I

    move-result v7

    .line 171
    .local v7, "height":I
    invoke-virtual {v1}, Lobject/p2pipcam/nativecaller/Avi;->getBitRate()I

    move-result v2

    .line 172
    .local v2, "bitrate":I
    invoke-virtual {v1}, Lobject/p2pipcam/nativecaller/Avi;->getFrameRate()I

    move-result v6

    .line 173
    .local v6, "framerate":I
    invoke-virtual {v1}, Lobject/p2pipcam/nativecaller/Avi;->TotalDuration()I

    move-result v10

    .line 174
    .local v10, "total":I
    const-string v12, "MediaPlayer"

    const-string v13, "avi h:%d w:%d total:%d"

    const/4 v14, 0x3

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x2

    invoke-virtual {v1}, Lobject/p2pipcam/nativecaller/Avi;->TotalDuration()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    move-object/from16 v0, p0

    iget-object v12, v0, Lobject/p2pwificam/clientActivity/MediaPlayerActivity$PlayerThread;->this$0:Lobject/p2pwificam/clientActivity/MediaPlayerActivity;

    new-instance v13, Lobject/p2pwificam/clientActivity/MediaPlayerActivity$PlayerThread$1;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v10}, Lobject/p2pwificam/clientActivity/MediaPlayerActivity$PlayerThread$1;-><init>(Lobject/p2pwificam/clientActivity/MediaPlayerActivity$PlayerThread;I)V

    invoke-virtual {v12, v13}, Lobject/p2pwificam/clientActivity/MediaPlayerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 221
    const/4 v8, -0x1

    .line 223
    .local v8, "inIndex":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lobject/p2pwificam/clientActivity/MediaPlayerActivity$PlayerThread;->this$0:Lobject/p2pwificam/clientActivity/MediaPlayerActivity;

    const/4 v13, 0x1

    invoke-static {v12, v13}, Lobject/p2pwificam/clientActivity/MediaPlayerActivity;->access$3(Lobject/p2pwificam/clientActivity/MediaPlayerActivity;Z)V

    .line 225
    :cond_0
    :goto_0
    invoke-virtual {v1}, Lobject/p2pipcam/nativecaller/Avi;->EOF()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 269
    :goto_1
    invoke-virtual {v1}, Lobject/p2pipcam/nativecaller/Avi;->Close()V

    .line 271
    return-void

    .line 227
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lobject/p2pwificam/clientActivity/MediaPlayerActivity$PlayerThread;->this$0:Lobject/p2pwificam/clientActivity/MediaPlayerActivity;

    # getter for: Lobject/p2pwificam/clientActivity/MediaPlayerActivity;->thread_run:Z
    invoke-static {v12}, Lobject/p2pwificam/clientActivity/MediaPlayerActivity;->access$4(Lobject/p2pwificam/clientActivity/MediaPlayerActivity;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 229
    const-string v12, "DecodeActivity"

    const-string v13, "Play Abort"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 232
    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lobject/p2pwificam/clientActivity/MediaPlayerActivity$PlayerThread;->this$0:Lobject/p2pwificam/clientActivity/MediaPlayerActivity;

    # getter for: Lobject/p2pwificam/clientActivity/MediaPlayerActivity;->is_play:Z
    invoke-static {v12}, Lobject/p2pwificam/clientActivity/MediaPlayerActivity;->access$5(Lobject/p2pwificam/clientActivity/MediaPlayerActivity;)Z

    move-result v12

    if-nez v12, :cond_3

    .line 235
    const-wide/16 v12, 0x3e8

    :try_start_0
    invoke-static {v12, v13}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 236
    :catch_0
    move-exception v5

    .line 238
    .local v5, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v5}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 242
    .end local v5    # "e":Ljava/lang/InterruptedException;
    :cond_3
    invoke-virtual {v1}, Lobject/p2pipcam/nativecaller/Avi;->Frame()[B

    move-result-object v3

    .line 243
    .local v3, "data":[B
    invoke-virtual {v1}, Lobject/p2pipcam/nativecaller/Avi;->frameSize()I

    move-result v9

    .line 244
    .local v9, "size":I
    if-nez v9, :cond_4

    .line 246
    const-string v12, "DecodeActivity"

    const-string v13, "Play Finish!"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 250
    :cond_4
    invoke-virtual {v1}, Lobject/p2pipcam/nativecaller/Avi;->isAudioFrame()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 252
    move-object/from16 v0, p0

    iget-object v12, v0, Lobject/p2pwificam/clientActivity/MediaPlayerActivity$PlayerThread;->this$0:Lobject/p2pwificam/clientActivity/MediaPlayerActivity;

    # getter for: Lobject/p2pwificam/clientActivity/MediaPlayerActivity;->m_AudioTrack:Landroid/media/AudioTrack;
    invoke-static {v12}, Lobject/p2pwificam/clientActivity/MediaPlayerActivity;->access$6(Lobject/p2pwificam/clientActivity/MediaPlayerActivity;)Landroid/media/AudioTrack;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v3, v13, v9}, Landroid/media/AudioTrack;->write([BII)I

    goto :goto_0

    .line 253
    :cond_5
    invoke-virtual {v1}, Lobject/p2pipcam/nativecaller/Avi;->isVideoFrame()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 255
    move-object/from16 v0, p0

    iget-object v12, v0, Lobject/p2pwificam/clientActivity/MediaPlayerActivity$PlayerThread;->this$0:Lobject/p2pwificam/clientActivity/MediaPlayerActivity;

    # getter for: Lobject/p2pwificam/clientActivity/MediaPlayerActivity;->myRender:Lobject/p2pwificam/clientActivity/MyRender;
    invoke-static {v12}, Lobject/p2pwificam/clientActivity/MediaPlayerActivity;->access$7(Lobject/p2pwificam/clientActivity/MediaPlayerActivity;)Lobject/p2pwificam/clientActivity/MyRender;

    move-result-object v12

    invoke-virtual {v12, v3, v11, v7}, Lobject/p2pwificam/clientActivity/MyRender;->writeSample([BII)I

    .line 256
    invoke-virtual {v1}, Lobject/p2pipcam/nativecaller/Avi;->Duration()I

    move-result v4

    .line 257
    .local v4, "duration":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lobject/p2pwificam/clientActivity/MediaPlayerActivity$PlayerThread;->this$0:Lobject/p2pwificam/clientActivity/MediaPlayerActivity;

    new-instance v13, Lobject/p2pwificam/clientActivity/MediaPlayerActivity$PlayerThread$2;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v4}, Lobject/p2pwificam/clientActivity/MediaPlayerActivity$PlayerThread$2;-><init>(Lobject/p2pwificam/clientActivity/MediaPlayerActivity$PlayerThread;I)V

    invoke-virtual {v12, v13}, Lobject/p2pwificam/clientActivity/MediaPlayerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public run()V
    .locals 36
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 276
    new-instance v4, Landroid/media/MediaExtractor;

    invoke-direct {v4}, Landroid/media/MediaExtractor;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lobject/p2pwificam/clientActivity/MediaPlayerActivity$PlayerThread;->extractor:Landroid/media/MediaExtractor;

    .line 278
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lobject/p2pwificam/clientActivity/MediaPlayerActivity$PlayerThread;->extractor:Landroid/media/MediaExtractor;

    move-object/from16 v0, p0

    iget-object v6, v0, Lobject/p2pwificam/clientActivity/MediaPlayerActivity$PlayerThread;->this$0:Lobject/p2pwificam/clientActivity/MediaPlayerActivity;

    # getter for: Lobject/p2pwificam/clientActivity/MediaPlayerActivity;->_filePath:Ljava/lang/String;
    invoke-static {v6}, Lobject/p2pwificam/clientActivity/MediaPlayerActivity;->access$0(Lobject/p2pwificam/clientActivity/MediaPlayerActivity;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 283
    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lobject/p2pwificam/clientActivity/MediaPlayerActivity$PlayerThread;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v4}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v31

    .line 284
    .local v31, "trackCount":I
    const/16 v20, 0x0

    .line 285
    .local v20, "have_audio":Z
    const/16 v21, 0x0

    .local v21, "i":I
    :goto_1
    move/from16 v0, v21

    move/from16 v1, v31

    if-lt v0, v1, :cond_0

    .line 322
    move-object/from16 v0, p0

    iget-object v4, v0, Lobject/p2pwificam/clientActivity/MediaPlayerActivity$PlayerThread;->decoder:Landroid/media/MediaCodec;

    if-nez v4, :cond_3

    .line 323
    const-string v4, "DecodeActivity"

    const-string v6, "Can\'t find video info!"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    :goto_2
    return-void

    .line 279
    .end local v20    # "have_audio":Z
    .end local v21    # "i":I
    .end local v31    # "trackCount":I
    :catch_0
    move-exception v18

    .line 281
    .local v18, "e1":Ljava/io/IOException;
    invoke-virtual/range {v18 .. v18}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 286
    .end local v18    # "e1":Ljava/io/IOException;
    .restart local v20    # "have_audio":Z
    .restart local v21    # "i":I
    .restart local v31    # "trackCount":I
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lobject/p2pwificam/clientActivity/MediaPlayerActivity$PlayerThread;->extractor:Landroid/media/MediaExtractor;

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v19

    .line 287
    .local v19, "format":Landroid/media/MediaFormat;
    const-string v4, "csd-0"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v11

    .line 288
    .local v11, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v14

    .line 289
    .local v14, "data":[B
    const-string v4, "MediaPlayer"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "csd-0:"

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    const-string v4, "mime"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 292
    .local v25, "mime":Ljava/lang/String;
    const-string v4, "video/"

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 293
    const-string v4, "durationUs"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/media/MediaFormat;->getLong(Ljava/lang/String;)J

    move-result-wide v15

    .line 294
    .local v15, "duration":J
    const-wide/32 v8, 0xf4240

    div-long v8, v15, v8

    long-to-int v0, v8

    move/from16 v28, v0

    .line 295
    .local v28, "sec":I
    const-string v4, "MediaPlayer"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "Duration:"

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide v0, v15

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    move-object/from16 v0, p0

    iget-object v4, v0, Lobject/p2pwificam/clientActivity/MediaPlayerActivity$PlayerThread;->this$0:Lobject/p2pwificam/clientActivity/MediaPlayerActivity;

    new-instance v6, Lobject/p2pwificam/clientActivity/MediaPlayerActivity$PlayerThread$3;

    move-object/from16 v0, p0

    move-wide v1, v15

    move/from16 v3, v28

    invoke-direct {v6, v0, v1, v2, v3}, Lobject/p2pwificam/clientActivity/MediaPlayerActivity$PlayerThread$3;-><init>(Lobject/p2pwificam/clientActivity/MediaPlayerActivity$PlayerThread;JI)V

    invoke-virtual {v4, v6}, Lobject/p2pwificam/clientActivity/MediaPlayerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 305
    move-object/from16 v0, p0

    iget-object v4, v0, Lobject/p2pwificam/clientActivity/MediaPlayerActivity$PlayerThread;->extractor:Landroid/media/MediaExtractor;

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 307
    :try_start_1
    invoke-static/range {v25 .. v25}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lobject/p2pwificam/clientActivity/MediaPlayerActivity$PlayerThread;->decoder:Landroid/media/MediaCodec;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 312
    :goto_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lobject/p2pwificam/clientActivity/MediaPlayerActivity$PlayerThread;->decoder:Landroid/media/MediaCodec;

    move-object/from16 v0, p0

    iget-object v6, v0, Lobject/p2pwificam/clientActivity/MediaPlayerActivity$PlayerThread;->surface:Landroid/view/Surface;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v4, v0, v6, v8, v9}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 315
    .end local v15    # "duration":J
    .end local v28    # "sec":I
    :cond_1
    const-string v4, "audio/"

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 317
    const/16 v20, 0x1

    .line 318
    move-object/from16 v0, p0

    iget-object v4, v0, Lobject/p2pwificam/clientActivity/MediaPlayerActivity$PlayerThread;->extractor:Landroid/media/MediaExtractor;

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 285
    :cond_2
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_1

    .line 308
    .restart local v15    # "duration":J
    .restart local v28    # "sec":I
    :catch_1
    move-exception v17

    .line 310
    .local v17, "e":Ljava/io/IOException;
    invoke-virtual/range {v17 .. v17}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 332
    .end local v11    # "buf":Ljava/nio/ByteBuffer;
    .end local v14    # "data":[B
    .end local v15    # "duration":J
    .end local v17    # "e":Ljava/io/IOException;
    .end local v19    # "format":Landroid/media/MediaFormat;
    .end local v25    # "mime":Ljava/lang/String;
    .end local v28    # "sec":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lobject/p2pwificam/clientActivity/MediaPlayerActivity$PlayerThread;->this$0:Lobject/p2pwificam/clientActivity/MediaPlayerActivity;

    const/4 v6, 0x1

    invoke-static {v4, v6}, Lobject/p2pwificam/clientActivity/MediaPlayerActivity;->access$3(Lobject/p2pwificam/clientActivity/MediaPlayerActivity;Z)V

    .line 333
    move-object/from16 v0, p0

    iget-object v4, v0, Lobject/p2pwificam/clientActivity/MediaPlayerActivity$PlayerThread;->decoder:Landroid/media/MediaCodec;

    invoke-virtual {v4}, Landroid/media/MediaCodec;->start()V

    .line 335
    move-object/from16 v0, p0

    iget-object v4, v0, Lobject/p2pwificam/clientActivity/MediaPlayerActivity$PlayerThread;->decoder:Landroid/media/MediaCodec;

    invoke-virtual {v4}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v23

    .line 336
    .local v23, "inputBuffers":[Ljava/nio/ByteBuffer;
    move-object/from16 v0, p0

    iget-object v4, v0, Lobject/p2pwificam/clientActivity/MediaPlayerActivity$PlayerThread;->decoder:Landroid/media/MediaCodec;

    invoke-virtual {v4}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v27

    .line 337
    .local v27, "outputBuffers":[Ljava/nio/ByteBuffer;
    new-instance v22, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct/range {v22 .. v22}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 338
    .local v22, "info":Landroid/media/MediaCodec$BufferInfo;
    const/16 v24, 0x0

    .line 339
    .local v24, "isEOS":Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v29

    .line 340
    .local v29, "startMs":J
    const/4 v5, -0x1

    .line 341
    .local v5, "inIndex":I
    :cond_4
    :goto_4
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 452
    :goto_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lobject/p2pwificam/clientActivity/MediaPlayerActivity$PlayerThread;->this$0:Lobject/p2pwificam/clientActivity/MediaPlayerActivity;

    const/4 v6, 0x0

    invoke-static {v4, v6}, Lobject/p2pwificam/clientActivity/MediaPlayerActivity;->access$3(Lobject/p2pwificam/clientActivity/MediaPlayerActivity;Z)V

    .line 453
    const-string v4, "DecodeActivity"

    const-string v6, "Play Finish"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    move-object/from16 v0, p0

    iget-object v4, v0, Lobject/p2pwificam/clientActivity/MediaPlayerActivity$PlayerThread;->this$0:Lobject/p2pwificam/clientActivity/MediaPlayerActivity;

    # getter for: Lobject/p2pwificam/clientActivity/MediaPlayerActivity;->m_AudioTrack:Landroid/media/AudioTrack;
    invoke-static {v4}, Lobject/p2pwificam/clientActivity/MediaPlayerActivity;->access$6(Lobject/p2pwificam/clientActivity/MediaPlayerActivity;)Landroid/media/AudioTrack;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/AudioTrack;->stop()V

    .line 455
    move-object/from16 v0, p0

    iget-object v4, v0, Lobject/p2pwificam/clientActivity/MediaPlayerActivity$PlayerThread;->decoder:Landroid/media/MediaCodec;

    invoke-virtual {v4}, Landroid/media/MediaCodec;->stop()V

    .line 456
    move-object/from16 v0, p0

    iget-object v4, v0, Lobject/p2pwificam/clientActivity/MediaPlayerActivity$PlayerThread;->decoder:Landroid/media/MediaCodec;

    invoke-virtual {v4}, Landroid/media/MediaCodec;->release()V

    .line 457
    move-object/from16 v0, p0

    iget-object v4, v0, Lobject/p2pwificam/clientActivity/MediaPlayerActivity$PlayerThread;->avi:Lobject/p2pipcam/nativecaller/Avi;

    if-eqz v4, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lobject/p2pwificam/clientActivity/MediaPlayerActivity$PlayerThread;->avi:Lobject/p2pipcam/nativecaller/Avi;

    invoke-virtual {v4}, Lobject/p2pipcam/nativecaller/Avi;->Close()V

    .line 458
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lobject/p2pwificam/clientActivity/MediaPlayerActivity$PlayerThread;->this$0:Lobject/p2pwificam/clientActivity/MediaPlayerActivity;

    # getter for: Lobject/p2pwificam/clientActivity/MediaPlayerActivity;->msgHandler:Landroid/os/Handler;
    invoke-static {v4}, Lobject/p2pwificam/clientActivity/MediaPlayerActivity;->access$10(Lobject/p2pwificam/clientActivity/MediaPlayerActivity;)Landroid/os/Handler;

    move-result-object v4

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_2

    .line 342
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lobject/p2pwificam/clientActivity/MediaPlayerActivity$PlayerThread;->this$0:Lobject/p2pwificam/clientActivity/MediaPlayerActivity;

    # getter for: Lobject/p2pwificam/clientActivity/MediaPlayerActivity;->thread_run:Z
    invoke-static {v4}, Lobject/p2pwificam/clientActivity/MediaPlayerActivity;->access$4(Lobject/p2pwificam/clientActivity/MediaPlayerActivity;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 344
    const-string v4, "DecodeActivity"

    const-string v6, "Play Abort"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 347
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lobject/p2pwificam/clientActivity/MediaPlayerActivity$PlayerThread;->this$0:Lobject/p2pwificam/clientActivity/MediaPlayerActivity;

    # getter for: Lobject/p2pwificam/clientActivity/MediaPlayerActivity;->is_play:Z
    invoke-static {v4}, Lobject/p2pwificam/clientActivity/MediaPlayerActivity;->access$5(Lobject/p2pwificam/clientActivity/MediaPlayerActivity;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 350
    const-wide/16 v8, 0x3e8

    :try_start_2
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    .line 351
    :catch_2
    move-exception v17

    .line 353
    .local v17, "e":Ljava/lang/InterruptedException;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_4

    .line 357
    .end local v17    # "e":Ljava/lang/InterruptedException;
    :cond_8
    if-nez v24, :cond_a

    .line 358
    if-gez v5, :cond_9

    move-object/from16 v0, p0

    iget-object v4, v0, Lobject/p2pwificam/clientActivity/MediaPlayerActivity$PlayerThread;->decoder:Landroid/media/MediaCodec;

    const-wide/16 v8, 0x2710

    invoke-virtual {v4, v8, v9}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v5

    .line 359
    :cond_9
    if-ltz v5, :cond_a

    .line 360
    aget-object v12, v23, v5

    .line 361
    .local v12, "buffer":Ljava/nio/ByteBuffer;
    move-object/from16 v0, p0

    iget-object v4, v0, Lobject/p2pwificam/clientActivity/MediaPlayerActivity$PlayerThread;->extractor:Landroid/media/MediaExtractor;

    const/4 v6, 0x0

    invoke-virtual {v4, v12, v6}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v7

    .line 362
    .local v7, "sampleSize":I
    if-gez v7, :cond_b

    .line 366
    const-string v4, "DecodeActivity"

    const-string v6, "InputBuffer BUFFER_FLAG_END_OF_STREAM"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    move-object/from16 v0, p0

    iget-object v4, v0, Lobject/p2pwificam/clientActivity/MediaPlayerActivity$PlayerThread;->decoder:Landroid/media/MediaCodec;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x4

    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 368
    .end local v7    # "sampleSize":I
    const/4 v5, -0x1

    .line 369
    const/16 v24, 0x1

    .line 416
    .end local v12    # "buffer":Ljava/nio/ByteBuffer;
    :cond_a
    :goto_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lobject/p2pwificam/clientActivity/MediaPlayerActivity$PlayerThread;->decoder:Landroid/media/MediaCodec;

    const-wide/16 v8, 0x2710

    move-object/from16 v0, v22

    invoke-virtual {v4, v0, v8, v9}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v26

    .line 417
    .local v26, "outIndex":I
    packed-switch v26, :pswitch_data_0

    .line 429
    aget-object v12, v27, v26

    .line 434
    .restart local v12    # "buffer":Ljava/nio/ByteBuffer;
    :goto_7
    move-object/from16 v0, v22

    iget-wide v8, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const-wide/16 v34, 0x3e8

    div-long v8, v8, v34

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v34

    sub-long v34, v34, v29

    cmp-long v4, v8, v34

    if-gtz v4, :cond_d

    .line 442
    :goto_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lobject/p2pwificam/clientActivity/MediaPlayerActivity$PlayerThread;->decoder:Landroid/media/MediaCodec;

    const/4 v6, 0x1

    move/from16 v0, v26

    invoke-virtual {v4, v0, v6}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 447
    .end local v12    # "buffer":Ljava/nio/ByteBuffer;
    :goto_9
    :pswitch_0
    move-object/from16 v0, v22

    iget v4, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_4

    .line 448
    const-string v4, "DecodeActivity"

    const-string v6, "OutputBuffer BUFFER_FLAG_END_OF_STREAM"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 371
    .end local v26    # "outIndex":I
    .restart local v7    # "sampleSize":I
    .restart local v12    # "buffer":Ljava/nio/ByteBuffer;
    :cond_b
    const-string v4, "DecodeActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "InputBuffer size:"

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    const/16 v4, 0xa0

    if-ne v7, v4, :cond_c

    .line 374
    new-array v13, v7, [B

    .line 375
    .local v13, "chunk":[B
    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 376
    invoke-virtual {v12, v13}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 379
    move-object/from16 v0, p0

    iget-object v4, v0, Lobject/p2pwificam/clientActivity/MediaPlayerActivity$PlayerThread;->this$0:Lobject/p2pwificam/clientActivity/MediaPlayerActivity;

    # getter for: Lobject/p2pwificam/clientActivity/MediaPlayerActivity;->g711aOutBuf:[B
    invoke-static {v4}, Lobject/p2pwificam/clientActivity/MediaPlayerActivity;->access$9(Lobject/p2pwificam/clientActivity/MediaPlayerActivity;)[B

    move-result-object v4

    invoke-static {v13, v7, v4}, Lcom/decoder/util/DecG711A;->Decode([BI[B)I

    .line 380
    move-object/from16 v0, p0

    iget-object v4, v0, Lobject/p2pwificam/clientActivity/MediaPlayerActivity$PlayerThread;->this$0:Lobject/p2pwificam/clientActivity/MediaPlayerActivity;

    # getter for: Lobject/p2pwificam/clientActivity/MediaPlayerActivity;->m_AudioTrack:Landroid/media/AudioTrack;
    invoke-static {v4}, Lobject/p2pwificam/clientActivity/MediaPlayerActivity;->access$6(Lobject/p2pwificam/clientActivity/MediaPlayerActivity;)Landroid/media/AudioTrack;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lobject/p2pwificam/clientActivity/MediaPlayerActivity$PlayerThread;->this$0:Lobject/p2pwificam/clientActivity/MediaPlayerActivity;

    # getter for: Lobject/p2pwificam/clientActivity/MediaPlayerActivity;->g711aOutBuf:[B
    invoke-static {v6}, Lobject/p2pwificam/clientActivity/MediaPlayerActivity;->access$9(Lobject/p2pwificam/clientActivity/MediaPlayerActivity;)[B

    move-result-object v6

    const/4 v8, 0x0

    mul-int/lit8 v9, v7, 0x2

    invoke-virtual {v4, v6, v8, v9}, Landroid/media/AudioTrack;->write([BII)I

    .line 400
    .end local v13    # "chunk":[B
    :goto_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lobject/p2pwificam/clientActivity/MediaPlayerActivity$PlayerThread;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v4}, Landroid/media/MediaExtractor;->advance()Z

    goto/16 :goto_6

    .line 384
    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lobject/p2pwificam/clientActivity/MediaPlayerActivity$PlayerThread;->decoder:Landroid/media/MediaCodec;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lobject/p2pwificam/clientActivity/MediaPlayerActivity$PlayerThread;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v8}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v8

    const/4 v10, 0x0

    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 385
    move-object/from16 v0, p0

    iget-object v4, v0, Lobject/p2pwificam/clientActivity/MediaPlayerActivity$PlayerThread;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v4}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v32

    .line 386
    .local v32, "ts":J
    const-wide/32 v8, 0xf4240

    div-long v8, v32, v8

    long-to-int v0, v8

    move/from16 v28, v0

    .line 387
    .restart local v28    # "sec":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lobject/p2pwificam/clientActivity/MediaPlayerActivity$PlayerThread;->this$0:Lobject/p2pwificam/clientActivity/MediaPlayerActivity;

    new-instance v6, Lobject/p2pwificam/clientActivity/MediaPlayerActivity$PlayerThread$4;

    move-object/from16 v0, p0

    move-wide/from16 v1, v32

    move/from16 v3, v28

    invoke-direct {v6, v0, v1, v2, v3}, Lobject/p2pwificam/clientActivity/MediaPlayerActivity$PlayerThread$4;-><init>(Lobject/p2pwificam/clientActivity/MediaPlayerActivity$PlayerThread;JI)V

    invoke-virtual {v4, v6}, Lobject/p2pwificam/clientActivity/MediaPlayerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 397
    const-string v4, "MediaPlayer"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "time:"

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v0, v32

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    const/4 v5, -0x1

    goto :goto_a

    .line 419
    .end local v7    # "sampleSize":I
    .end local v12    # "buffer":Ljava/nio/ByteBuffer;
    .end local v28    # "sec":I
    .end local v32    # "ts":J
    .restart local v26    # "outIndex":I
    :pswitch_1
    const-string v4, "DecodeActivity"

    const-string v6, "INFO_OUTPUT_BUFFERS_CHANGED"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    move-object/from16 v0, p0

    iget-object v4, v0, Lobject/p2pwificam/clientActivity/MediaPlayerActivity$PlayerThread;->decoder:Landroid/media/MediaCodec;

    invoke-virtual {v4}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v27

    .line 421
    goto/16 :goto_9

    .line 423
    :pswitch_2
    const-string v4, "DecodeActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "New format "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v8, v0, Lobject/p2pwificam/clientActivity/MediaPlayerActivity$PlayerThread;->decoder:Landroid/media/MediaCodec;

    invoke-virtual {v8}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 436
    .restart local v12    # "buffer":Ljava/nio/ByteBuffer;
    :cond_d
    const-wide/16 v8, 0xa

    :try_start_3
    invoke-static {v8, v9}, Lobject/p2pwificam/clientActivity/MediaPlayerActivity$PlayerThread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_7

    .line 437
    :catch_3
    move-exception v17

    .line 438
    .restart local v17    # "e":Ljava/lang/InterruptedException;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_8

    .line 417
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
