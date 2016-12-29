.class Lobject/p2pipcam/utils/AudioUtil$AudioTrackRecordThread;
.super Ljava/lang/Object;
.source "AudioUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pipcam/utils/AudioUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AudioTrackRecordThread"
.end annotation


# instance fields
.field private sendFrameCount:I

.field final synthetic this$0:Lobject/p2pipcam/utils/AudioUtil;

.field private write_data:Z


# direct methods
.method constructor <init>(Lobject/p2pipcam/utils/AudioUtil;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 257
    iput-object p1, p0, Lobject/p2pipcam/utils/AudioUtil$AudioTrackRecordThread;->this$0:Lobject/p2pipcam/utils/AudioUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 258
    iput-boolean v0, p0, Lobject/p2pipcam/utils/AudioUtil$AudioTrackRecordThread;->write_data:Z

    .line 259
    iput v0, p0, Lobject/p2pipcam/utils/AudioUtil$AudioTrackRecordThread;->sendFrameCount:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    const/4 v14, 0x3

    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 263
    iget-object v6, p0, Lobject/p2pipcam/utils/AudioUtil$AudioTrackRecordThread;->this$0:Lobject/p2pipcam/utils/AudioUtil;

    # getter for: Lobject/p2pipcam/utils/AudioUtil;->_record:Landroid/media/AudioRecord;
    invoke-static {v6}, Lobject/p2pipcam/utils/AudioUtil;->access$5(Lobject/p2pipcam/utils/AudioUtil;)Landroid/media/AudioRecord;

    move-result-object v6

    invoke-virtual {v6}, Landroid/media/AudioRecord;->startRecording()V

    .line 264
    iget-object v6, p0, Lobject/p2pipcam/utils/AudioUtil$AudioTrackRecordThread;->this$0:Lobject/p2pipcam/utils/AudioUtil;

    # getter for: Lobject/p2pipcam/utils/AudioUtil;->_track:Landroid/media/AudioTrack;
    invoke-static {v6}, Lobject/p2pipcam/utils/AudioUtil;->access$2(Lobject/p2pipcam/utils/AudioUtil;)Landroid/media/AudioTrack;

    move-result-object v6

    invoke-virtual {v6}, Landroid/media/AudioTrack;->play()V

    .line 265
    :cond_0
    :goto_0
    iget-object v6, p0, Lobject/p2pipcam/utils/AudioUtil$AudioTrackRecordThread;->this$0:Lobject/p2pipcam/utils/AudioUtil;

    # getter for: Lobject/p2pipcam/utils/AudioUtil;->_isTrackAndRecord:Z
    invoke-static {v6}, Lobject/p2pipcam/utils/AudioUtil;->access$10(Lobject/p2pipcam/utils/AudioUtil;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 337
    const-string v6, "AudioUtil"

    const-string v7, "track record stop"

    new-array v8, v11, [Ljava/lang/Object;

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    iget-object v6, p0, Lobject/p2pipcam/utils/AudioUtil$AudioTrackRecordThread;->this$0:Lobject/p2pipcam/utils/AudioUtil;

    # getter for: Lobject/p2pipcam/utils/AudioUtil;->_record:Landroid/media/AudioRecord;
    invoke-static {v6}, Lobject/p2pipcam/utils/AudioUtil;->access$5(Lobject/p2pipcam/utils/AudioUtil;)Landroid/media/AudioRecord;

    move-result-object v6

    invoke-virtual {v6}, Landroid/media/AudioRecord;->stop()V

    .line 340
    iget-object v6, p0, Lobject/p2pipcam/utils/AudioUtil$AudioTrackRecordThread;->this$0:Lobject/p2pipcam/utils/AudioUtil;

    # getter for: Lobject/p2pipcam/utils/AudioUtil;->_track:Landroid/media/AudioTrack;
    invoke-static {v6}, Lobject/p2pipcam/utils/AudioUtil;->access$2(Lobject/p2pipcam/utils/AudioUtil;)Landroid/media/AudioTrack;

    move-result-object v6

    invoke-virtual {v6}, Landroid/media/AudioTrack;->stop()V

    .line 341
    return-void

    .line 266
    :cond_1
    iget-object v6, p0, Lobject/p2pipcam/utils/AudioUtil$AudioTrackRecordThread;->this$0:Lobject/p2pipcam/utils/AudioUtil;

    # getter for: Lobject/p2pipcam/utils/AudioUtil;->_renderBuffer:Lobject/p2pipcam/utils/AudioBuffer;
    invoke-static {v6}, Lobject/p2pipcam/utils/AudioUtil;->access$1(Lobject/p2pipcam/utils/AudioUtil;)Lobject/p2pipcam/utils/AudioBuffer;

    move-result-object v6

    invoke-virtual {v6}, Lobject/p2pipcam/utils/AudioBuffer;->get()[B

    move-result-object v2

    .line 267
    .local v2, "play_data":[B
    if-eqz v2, :cond_2

    .line 268
    invoke-static {}, Lobject/p2pipcam/utils/AudioDataUtil;->getInstance()Lobject/p2pipcam/utils/AudioDataUtil;

    move-result-object v6

    invoke-virtual {v6}, Lobject/p2pipcam/utils/AudioDataUtil;->BeginWrite()V

    .line 269
    invoke-static {}, Lobject/p2pipcam/utils/AudioDataUtil;->getInstance()Lobject/p2pipcam/utils/AudioDataUtil;

    move-result-object v6

    invoke-virtual {v6, v11, v2}, Lobject/p2pipcam/utils/AudioDataUtil;->WriteData(I[B)V

    .line 270
    iget-object v6, p0, Lobject/p2pipcam/utils/AudioUtil$AudioTrackRecordThread;->this$0:Lobject/p2pipcam/utils/AudioUtil;

    # getter for: Lobject/p2pipcam/utils/AudioUtil;->apm_handle:I
    invoke-static {v6}, Lobject/p2pipcam/utils/AudioUtil;->access$11(Lobject/p2pipcam/utils/AudioUtil;)I

    move-result v6

    array-length v7, v2

    div-int/lit8 v7, v7, 0x2

    invoke-static {v6, v2, v7}, Lcom/webrtc/audio/Apm;->Farend(I[BI)I

    .line 276
    iget-object v6, p0, Lobject/p2pipcam/utils/AudioUtil$AudioTrackRecordThread;->this$0:Lobject/p2pipcam/utils/AudioUtil;

    # getter for: Lobject/p2pipcam/utils/AudioUtil;->_track:Landroid/media/AudioTrack;
    invoke-static {v6}, Lobject/p2pipcam/utils/AudioUtil;->access$2(Lobject/p2pipcam/utils/AudioUtil;)Landroid/media/AudioTrack;

    move-result-object v6

    array-length v7, v2

    invoke-virtual {v6, v2, v11, v7}, Landroid/media/AudioTrack;->write([BII)I

    .line 279
    :cond_2
    iget-object v6, p0, Lobject/p2pipcam/utils/AudioUtil$AudioTrackRecordThread;->this$0:Lobject/p2pipcam/utils/AudioUtil;

    # getter for: Lobject/p2pipcam/utils/AudioUtil;->sample_length:I
    invoke-static {v6}, Lobject/p2pipcam/utils/AudioUtil;->access$8(Lobject/p2pipcam/utils/AudioUtil;)I

    move-result v6

    new-array v5, v6, [B

    .line 282
    .local v5, "send_data":[B
    iget-object v6, p0, Lobject/p2pipcam/utils/AudioUtil$AudioTrackRecordThread;->this$0:Lobject/p2pipcam/utils/AudioUtil;

    # getter for: Lobject/p2pipcam/utils/AudioUtil;->_record:Landroid/media/AudioRecord;
    invoke-static {v6}, Lobject/p2pipcam/utils/AudioUtil;->access$5(Lobject/p2pipcam/utils/AudioUtil;)Landroid/media/AudioRecord;

    move-result-object v6

    iget-object v7, p0, Lobject/p2pipcam/utils/AudioUtil$AudioTrackRecordThread;->this$0:Lobject/p2pipcam/utils/AudioUtil;

    # getter for: Lobject/p2pipcam/utils/AudioUtil;->recordBuffer:[B
    invoke-static {v7}, Lobject/p2pipcam/utils/AudioUtil;->access$7(Lobject/p2pipcam/utils/AudioUtil;)[B

    move-result-object v7

    iget-object v8, p0, Lobject/p2pipcam/utils/AudioUtil$AudioTrackRecordThread;->this$0:Lobject/p2pipcam/utils/AudioUtil;

    # getter for: Lobject/p2pipcam/utils/AudioUtil;->sample_length:I
    invoke-static {v8}, Lobject/p2pipcam/utils/AudioUtil;->access$8(Lobject/p2pipcam/utils/AudioUtil;)I

    move-result v8

    invoke-virtual {v6, v7, v11, v8}, Landroid/media/AudioRecord;->read([BII)I

    move-result v3

    .line 283
    .local v3, "ret":I
    iget-object v6, p0, Lobject/p2pipcam/utils/AudioUtil$AudioTrackRecordThread;->this$0:Lobject/p2pipcam/utils/AudioUtil;

    # getter for: Lobject/p2pipcam/utils/AudioUtil;->sample_length:I
    invoke-static {v6}, Lobject/p2pipcam/utils/AudioUtil;->access$8(Lobject/p2pipcam/utils/AudioUtil;)I

    move-result v6

    if-eq v3, v6, :cond_3

    iget-object v6, p0, Lobject/p2pipcam/utils/AudioUtil$AudioTrackRecordThread;->this$0:Lobject/p2pipcam/utils/AudioUtil;

    invoke-static {v6, v3}, Lobject/p2pipcam/utils/AudioUtil;->access$12(Lobject/p2pipcam/utils/AudioUtil;I)V

    .line 285
    :cond_3
    iget-object v6, p0, Lobject/p2pipcam/utils/AudioUtil$AudioTrackRecordThread;->this$0:Lobject/p2pipcam/utils/AudioUtil;

    # getter for: Lobject/p2pipcam/utils/AudioUtil;->recordBuffer:[B
    invoke-static {v6}, Lobject/p2pipcam/utils/AudioUtil;->access$7(Lobject/p2pipcam/utils/AudioUtil;)[B

    move-result-object v6

    invoke-static {v6}, Lobject/p2pipcam/utils/AudioBuffer;->get_peak_val([B)I

    move-result v1

    .line 286
    .local v1, "peak_val":I
    iget-object v6, p0, Lobject/p2pipcam/utils/AudioUtil$AudioTrackRecordThread;->this$0:Lobject/p2pipcam/utils/AudioUtil;

    # getter for: Lobject/p2pipcam/utils/AudioUtil;->_renderBuffer:Lobject/p2pipcam/utils/AudioBuffer;
    invoke-static {v6}, Lobject/p2pipcam/utils/AudioUtil;->access$1(Lobject/p2pipcam/utils/AudioUtil;)Lobject/p2pipcam/utils/AudioBuffer;

    move-result-object v6

    iget v6, v6, Lobject/p2pipcam/utils/AudioBuffer;->VALID_LIMIT:I

    if-le v1, v6, :cond_4

    .line 287
    invoke-static {}, Lobject/p2pipcam/utils/AudioDataUtil;->getInstance()Lobject/p2pipcam/utils/AudioDataUtil;

    move-result-object v6

    invoke-virtual {v6}, Lobject/p2pipcam/utils/AudioDataUtil;->BeginWrite()V

    .line 288
    :cond_4
    invoke-static {}, Lobject/p2pipcam/utils/AudioDataUtil;->getInstance()Lobject/p2pipcam/utils/AudioDataUtil;

    move-result-object v6

    const/4 v7, 0x4

    iget-object v8, p0, Lobject/p2pipcam/utils/AudioUtil$AudioTrackRecordThread;->this$0:Lobject/p2pipcam/utils/AudioUtil;

    # getter for: Lobject/p2pipcam/utils/AudioUtil;->recordBuffer:[B
    invoke-static {v8}, Lobject/p2pipcam/utils/AudioUtil;->access$7(Lobject/p2pipcam/utils/AudioUtil;)[B

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lobject/p2pipcam/utils/AudioDataUtil;->WriteData(I[B)V

    .line 296
    iget-object v6, p0, Lobject/p2pipcam/utils/AudioUtil$AudioTrackRecordThread;->this$0:Lobject/p2pipcam/utils/AudioUtil;

    # getter for: Lobject/p2pipcam/utils/AudioUtil;->recordData:Lobject/p2pipcam/utils/AudioUtil$IRecordData;
    invoke-static {v6}, Lobject/p2pipcam/utils/AudioUtil;->access$9(Lobject/p2pipcam/utils/AudioUtil;)Lobject/p2pipcam/utils/AudioUtil$IRecordData;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 299
    iget-object v6, p0, Lobject/p2pipcam/utils/AudioUtil$AudioTrackRecordThread;->this$0:Lobject/p2pipcam/utils/AudioUtil;

    # getter for: Lobject/p2pipcam/utils/AudioUtil;->apm_handle:I
    invoke-static {v6}, Lobject/p2pipcam/utils/AudioUtil;->access$11(Lobject/p2pipcam/utils/AudioUtil;)I

    move-result v6

    iget-object v7, p0, Lobject/p2pipcam/utils/AudioUtil$AudioTrackRecordThread;->this$0:Lobject/p2pipcam/utils/AudioUtil;

    # getter for: Lobject/p2pipcam/utils/AudioUtil;->recordBuffer:[B
    invoke-static {v7}, Lobject/p2pipcam/utils/AudioUtil;->access$7(Lobject/p2pipcam/utils/AudioUtil;)[B

    move-result-object v7

    iget-object v8, p0, Lobject/p2pipcam/utils/AudioUtil$AudioTrackRecordThread;->this$0:Lobject/p2pipcam/utils/AudioUtil;

    # getter for: Lobject/p2pipcam/utils/AudioUtil;->sample_length:I
    invoke-static {v8}, Lobject/p2pipcam/utils/AudioUtil;->access$8(Lobject/p2pipcam/utils/AudioUtil;)I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    const/16 v9, 0xc8

    invoke-static {v6, v7, v5, v8, v9}, Lcom/webrtc/audio/Apm;->Process(I[B[BII)I

    .line 301
    invoke-static {}, Lobject/p2pipcam/utils/AudioDataUtil;->getInstance()Lobject/p2pipcam/utils/AudioDataUtil;

    move-result-object v6

    iget-object v7, p0, Lobject/p2pipcam/utils/AudioUtil$AudioTrackRecordThread;->this$0:Lobject/p2pipcam/utils/AudioUtil;

    # getter for: Lobject/p2pipcam/utils/AudioUtil;->recordBuffer:[B
    invoke-static {v7}, Lobject/p2pipcam/utils/AudioUtil;->access$7(Lobject/p2pipcam/utils/AudioUtil;)[B

    move-result-object v7

    invoke-virtual {v6, v12, v7}, Lobject/p2pipcam/utils/AudioDataUtil;->WriteData(I[B)V

    .line 302
    invoke-static {}, Lobject/p2pipcam/utils/AudioDataUtil;->getInstance()Lobject/p2pipcam/utils/AudioDataUtil;

    move-result-object v6

    invoke-virtual {v6, v13, v5}, Lobject/p2pipcam/utils/AudioDataUtil;->WriteData(I[B)V

    .line 305
    :try_start_0
    iget-object v6, p0, Lobject/p2pipcam/utils/AudioUtil$AudioTrackRecordThread;->this$0:Lobject/p2pipcam/utils/AudioUtil;

    # getter for: Lobject/p2pipcam/utils/AudioUtil;->_sendQueue:Ljava/util/concurrent/BlockingQueue;
    invoke-static {v6}, Lobject/p2pipcam/utils/AudioUtil;->access$13(Lobject/p2pipcam/utils/AudioUtil;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 311
    :goto_1
    invoke-static {v5}, Lobject/p2pipcam/utils/AudioBuffer;->get_peak_val([B)I

    move-result v1

    .line 312
    iget-object v6, p0, Lobject/p2pipcam/utils/AudioUtil$AudioTrackRecordThread;->this$0:Lobject/p2pipcam/utils/AudioUtil;

    # getter for: Lobject/p2pipcam/utils/AudioUtil;->_renderBuffer:Lobject/p2pipcam/utils/AudioBuffer;
    invoke-static {v6}, Lobject/p2pipcam/utils/AudioUtil;->access$1(Lobject/p2pipcam/utils/AudioUtil;)Lobject/p2pipcam/utils/AudioBuffer;

    move-result-object v6

    iget v6, v6, Lobject/p2pipcam/utils/AudioBuffer;->VALID_LIMIT:I

    if-le v1, v6, :cond_5

    .line 316
    const/16 v6, 0xa

    iput v6, p0, Lobject/p2pipcam/utils/AudioUtil$AudioTrackRecordThread;->sendFrameCount:I

    .line 318
    :cond_5
    iget-object v6, p0, Lobject/p2pipcam/utils/AudioUtil$AudioTrackRecordThread;->this$0:Lobject/p2pipcam/utils/AudioUtil;

    # getter for: Lobject/p2pipcam/utils/AudioUtil;->_sendQueue:Ljava/util/concurrent/BlockingQueue;
    invoke-static {v6}, Lobject/p2pipcam/utils/AudioUtil;->access$13(Lobject/p2pipcam/utils/AudioUtil;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v6

    if-lt v6, v14, :cond_0

    .line 322
    :try_start_1
    iget-object v6, p0, Lobject/p2pipcam/utils/AudioUtil$AudioTrackRecordThread;->this$0:Lobject/p2pipcam/utils/AudioUtil;

    # getter for: Lobject/p2pipcam/utils/AudioUtil;->_sendQueue:Ljava/util/concurrent/BlockingQueue;
    invoke-static {v6}, Lobject/p2pipcam/utils/AudioUtil;->access$13(Lobject/p2pipcam/utils/AudioUtil;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    .line 323
    .local v4, "s_data":[B
    iget v6, p0, Lobject/p2pipcam/utils/AudioUtil$AudioTrackRecordThread;->sendFrameCount:I

    if-lez v6, :cond_0

    .line 325
    iget v6, p0, Lobject/p2pipcam/utils/AudioUtil$AudioTrackRecordThread;->sendFrameCount:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lobject/p2pipcam/utils/AudioUtil$AudioTrackRecordThread;->sendFrameCount:I

    .line 326
    const-string v6, "AudioUtil"

    const-string v7, "record peak:%d %d"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    iget v10, p0, Lobject/p2pipcam/utils/AudioUtil$AudioTrackRecordThread;->sendFrameCount:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    iget-object v6, p0, Lobject/p2pipcam/utils/AudioUtil$AudioTrackRecordThread;->this$0:Lobject/p2pipcam/utils/AudioUtil;

    # getter for: Lobject/p2pipcam/utils/AudioUtil;->recordData:Lobject/p2pipcam/utils/AudioUtil$IRecordData;
    invoke-static {v6}, Lobject/p2pipcam/utils/AudioUtil;->access$9(Lobject/p2pipcam/utils/AudioUtil;)Lobject/p2pipcam/utils/AudioUtil$IRecordData;

    move-result-object v6

    iget-object v7, p0, Lobject/p2pipcam/utils/AudioUtil$AudioTrackRecordThread;->this$0:Lobject/p2pipcam/utils/AudioUtil;

    # getter for: Lobject/p2pipcam/utils/AudioUtil;->sample_length:I
    invoke-static {v7}, Lobject/p2pipcam/utils/AudioUtil;->access$8(Lobject/p2pipcam/utils/AudioUtil;)I

    move-result v7

    invoke-interface {v6, v4, v7}, Lobject/p2pipcam/utils/AudioUtil$IRecordData;->OnAudioData([BI)V

    .line 328
    invoke-static {}, Lobject/p2pipcam/utils/AudioDataUtil;->getInstance()Lobject/p2pipcam/utils/AudioDataUtil;

    move-result-object v6

    const/4 v7, 0x3

    invoke-virtual {v6, v7, v4}, Lobject/p2pipcam/utils/AudioDataUtil;->WriteData(I[B)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 330
    .end local v4    # "s_data":[B
    :catch_0
    move-exception v0

    .line 332
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_0

    .line 306
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 308
    .restart local v0    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1
.end method
