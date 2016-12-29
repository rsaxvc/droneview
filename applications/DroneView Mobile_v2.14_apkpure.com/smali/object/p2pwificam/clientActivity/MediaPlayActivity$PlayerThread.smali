.class Lobject/p2pwificam/clientActivity/MediaPlayActivity$PlayerThread;
.super Ljava/lang/Thread;
.source "MediaPlayActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pwificam/clientActivity/MediaPlayActivity;
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

.field final synthetic this$0:Lobject/p2pwificam/clientActivity/MediaPlayActivity;


# direct methods
.method public constructor <init>(Lobject/p2pwificam/clientActivity/MediaPlayActivity;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 409
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/MediaPlayActivity$PlayerThread;->this$0:Lobject/p2pwificam/clientActivity/MediaPlayActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 407
    iput-object v0, p0, Lobject/p2pwificam/clientActivity/MediaPlayActivity$PlayerThread;->mediaCodec:Landroid/media/MediaCodec;

    .line 408
    iput-object v0, p0, Lobject/p2pwificam/clientActivity/MediaPlayActivity$PlayerThread;->avi:Lobject/p2pipcam/nativecaller/Avi;

    .line 411
    return-void
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
    .line 417
    new-instance v1, Lobject/p2pipcam/nativecaller/Avi;

    invoke-direct {v1}, Lobject/p2pipcam/nativecaller/Avi;-><init>()V

    .line 418
    .local v1, "avi":Lobject/p2pipcam/nativecaller/Avi;
    move-object/from16 v0, p0

    iget-object v12, v0, Lobject/p2pwificam/clientActivity/MediaPlayActivity$PlayerThread;->this$0:Lobject/p2pwificam/clientActivity/MediaPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/MediaPlayActivity;->strFilePath:Ljava/lang/String;
    invoke-static {v12}, Lobject/p2pwificam/clientActivity/MediaPlayActivity;->access$13(Lobject/p2pwificam/clientActivity/MediaPlayActivity;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Lobject/p2pipcam/nativecaller/Avi;->Open(Ljava/lang/String;)I

    .line 419
    invoke-virtual {v1}, Lobject/p2pipcam/nativecaller/Avi;->getWidth()I

    move-result v11

    .line 420
    .local v11, "width":I
    invoke-virtual {v1}, Lobject/p2pipcam/nativecaller/Avi;->getHeight()I

    move-result v7

    .line 421
    .local v7, "height":I
    invoke-virtual {v1}, Lobject/p2pipcam/nativecaller/Avi;->getBitRate()I

    move-result v2

    .line 422
    .local v2, "bitrate":I
    invoke-virtual {v1}, Lobject/p2pipcam/nativecaller/Avi;->getFrameRate()I

    move-result v6

    .line 423
    .local v6, "framerate":I
    invoke-virtual {v1}, Lobject/p2pipcam/nativecaller/Avi;->TotalDuration()I

    move-result v10

    .line 424
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

    .line 425
    move-object/from16 v0, p0

    iget-object v12, v0, Lobject/p2pwificam/clientActivity/MediaPlayActivity$PlayerThread;->this$0:Lobject/p2pwificam/clientActivity/MediaPlayActivity;

    new-instance v13, Lobject/p2pwificam/clientActivity/MediaPlayActivity$PlayerThread$1;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lobject/p2pwificam/clientActivity/MediaPlayActivity$PlayerThread$1;-><init>(Lobject/p2pwificam/clientActivity/MediaPlayActivity$PlayerThread;)V

    invoke-virtual {v12, v13}, Lobject/p2pwificam/clientActivity/MediaPlayActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 435
    const/4 v8, -0x1

    .line 437
    .local v8, "inIndex":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lobject/p2pwificam/clientActivity/MediaPlayActivity$PlayerThread;->this$0:Lobject/p2pwificam/clientActivity/MediaPlayActivity;

    const/4 v13, 0x1

    invoke-static {v12, v13}, Lobject/p2pwificam/clientActivity/MediaPlayActivity;->access$14(Lobject/p2pwificam/clientActivity/MediaPlayActivity;Z)V

    .line 439
    :cond_0
    :goto_0
    invoke-virtual {v1}, Lobject/p2pipcam/nativecaller/Avi;->EOF()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 483
    :goto_1
    invoke-virtual {v1}, Lobject/p2pipcam/nativecaller/Avi;->Close()V

    .line 485
    return-void

    .line 441
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lobject/p2pwificam/clientActivity/MediaPlayActivity$PlayerThread;->this$0:Lobject/p2pwificam/clientActivity/MediaPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/MediaPlayActivity;->thread_run:Z
    invoke-static {v12}, Lobject/p2pwificam/clientActivity/MediaPlayActivity;->access$15(Lobject/p2pwificam/clientActivity/MediaPlayActivity;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 443
    const-string v12, "DecodeActivity"

    const-string v13, "Play Abort"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 446
    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lobject/p2pwificam/clientActivity/MediaPlayActivity$PlayerThread;->this$0:Lobject/p2pwificam/clientActivity/MediaPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/MediaPlayActivity;->is_play:Z
    invoke-static {v12}, Lobject/p2pwificam/clientActivity/MediaPlayActivity;->access$16(Lobject/p2pwificam/clientActivity/MediaPlayActivity;)Z

    move-result v12

    if-nez v12, :cond_3

    .line 449
    const-wide/16 v12, 0x3e8

    :try_start_0
    invoke-static {v12, v13}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 450
    :catch_0
    move-exception v5

    .line 452
    .local v5, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v5}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 456
    .end local v5    # "e":Ljava/lang/InterruptedException;
    :cond_3
    invoke-virtual {v1}, Lobject/p2pipcam/nativecaller/Avi;->Frame()[B

    move-result-object v3

    .line 457
    .local v3, "data":[B
    invoke-virtual {v1}, Lobject/p2pipcam/nativecaller/Avi;->frameSize()I

    move-result v9

    .line 458
    .local v9, "size":I
    if-nez v9, :cond_4

    .line 460
    const-string v12, "DecodeActivity"

    const-string v13, "Play Finish!"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 463
    :cond_4
    invoke-virtual {v1}, Lobject/p2pipcam/nativecaller/Avi;->isAudioFrame()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 465
    move-object/from16 v0, p0

    iget-object v12, v0, Lobject/p2pwificam/clientActivity/MediaPlayActivity$PlayerThread;->this$0:Lobject/p2pwificam/clientActivity/MediaPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/MediaPlayActivity;->m_AudioTrack:Landroid/media/AudioTrack;
    invoke-static {v12}, Lobject/p2pwificam/clientActivity/MediaPlayActivity;->access$17(Lobject/p2pwificam/clientActivity/MediaPlayActivity;)Landroid/media/AudioTrack;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v3, v13, v9}, Landroid/media/AudioTrack;->write([BII)I

    goto :goto_0

    .line 466
    :cond_5
    invoke-virtual {v1}, Lobject/p2pipcam/nativecaller/Avi;->isVideoFrame()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 468
    const-string v12, "MediaPlayer"

    const-string v13, "duration:%d size:%d"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-virtual {v1}, Lobject/p2pipcam/nativecaller/Avi;->Duration()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    move-object/from16 v0, p0

    iget-object v12, v0, Lobject/p2pwificam/clientActivity/MediaPlayActivity$PlayerThread;->this$0:Lobject/p2pwificam/clientActivity/MediaPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/MediaPlayActivity;->myRender:Lobject/p2pwificam/clientActivity/MyRender;
    invoke-static {v12}, Lobject/p2pwificam/clientActivity/MediaPlayActivity;->access$1(Lobject/p2pwificam/clientActivity/MediaPlayActivity;)Lobject/p2pwificam/clientActivity/MyRender;

    move-result-object v12

    invoke-virtual {v12, v3, v11, v7}, Lobject/p2pwificam/clientActivity/MyRender;->writeSample([BII)I

    .line 470
    invoke-virtual {v1}, Lobject/p2pipcam/nativecaller/Avi;->Duration()I

    move-result v4

    .line 471
    .local v4, "duration":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lobject/p2pwificam/clientActivity/MediaPlayActivity$PlayerThread;->this$0:Lobject/p2pwificam/clientActivity/MediaPlayActivity;

    new-instance v13, Lobject/p2pwificam/clientActivity/MediaPlayActivity$PlayerThread$2;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v4}, Lobject/p2pwificam/clientActivity/MediaPlayActivity$PlayerThread$2;-><init>(Lobject/p2pwificam/clientActivity/MediaPlayActivity$PlayerThread;I)V

    invoke-virtual {v12, v13}, Lobject/p2pwificam/clientActivity/MediaPlayActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0
.end method

.method public run()V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 489
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/MediaPlayActivity$PlayerThread;->AvcEncoder()V

    .line 490
    return-void
.end method
