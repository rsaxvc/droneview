.class Lcom/tutk/IOTC/Camera$ThreadSendAudio;
.super Ljava/lang/Thread;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tutk/IOTC/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ThreadSendAudio"
.end annotation


# static fields
.field private static final SAMPLE_RATE_IN_HZ:I = 0x1f40


# instance fields
.field private avIndexForSendAudio:I

.field private chIndexForSendAudio:I

.field private mAVChannel:Lcom/tutk/IOTC/Camera$AVChannel;

.field private m_bIsRunning:Z

.field final synthetic this$0:Lcom/tutk/IOTC/Camera;


# direct methods
.method public constructor <init>(Lcom/tutk/IOTC/Camera;Lcom/tutk/IOTC/Camera$AVChannel;)V
    .locals 2
    .param p2, "ch"    # Lcom/tutk/IOTC/Camera$AVChannel;

    .prologue
    const/4 v1, -0x1

    .line 2283
    iput-object p1, p0, Lcom/tutk/IOTC/Camera$ThreadSendAudio;->this$0:Lcom/tutk/IOTC/Camera;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2277
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tutk/IOTC/Camera$ThreadSendAudio;->m_bIsRunning:Z

    .line 2279
    iput v1, p0, Lcom/tutk/IOTC/Camera$ThreadSendAudio;->avIndexForSendAudio:I

    .line 2280
    iput v1, p0, Lcom/tutk/IOTC/Camera$ThreadSendAudio;->chIndexForSendAudio:I

    .line 2281
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tutk/IOTC/Camera$ThreadSendAudio;->mAVChannel:Lcom/tutk/IOTC/Camera$AVChannel;

    .line 2284
    iput-object p2, p0, Lcom/tutk/IOTC/Camera$ThreadSendAudio;->mAVChannel:Lcom/tutk/IOTC/Camera$AVChannel;

    .line 2285
    return-void
.end method


# virtual methods
.method public run()V
    .locals 31

    .prologue
    .line 2301
    invoke-super/range {p0 .. p0}, Ljava/lang/Thread;->run()V

    .line 2303
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tutk/IOTC/Camera$ThreadSendAudio;->this$0:Lcom/tutk/IOTC/Camera;

    # getter for: Lcom/tutk/IOTC/Camera;->mSID:I
    invoke-static {v4}, Lcom/tutk/IOTC/Camera;->access$0(Lcom/tutk/IOTC/Camera;)I

    move-result v4

    if-gez v4, :cond_0

    .line 2304
    const-string v4, "IOTCamera"

    .line 2305
    const-string v5, "=== ThreadSendAudio exit because SID < 0 ==="

    .line 2304
    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2569
    :goto_0
    return-void

    .line 2309
    :cond_0
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/tutk/IOTC/Camera$ThreadSendAudio;->m_bIsRunning:Z

    .line 2311
    const/4 v15, 0x0

    .line 2312
    .local v15, "bInitSpeexEnc":Z
    const/4 v13, 0x0

    .line 2313
    .local v13, "bInitG726Enc":Z
    const/4 v11, 0x0

    .line 2314
    .local v11, "bInitADPCM":Z
    const/4 v12, 0x0

    .line 2315
    .local v12, "bInitG711A":Z
    const/4 v14, 0x0

    .line 2317
    .local v14, "bInitPCM":Z
    const/16 v24, 0x0

    .line 2318
    .local v24, "nMinBufSize":I
    const/16 v25, 0x0

    .line 2321
    .local v25, "nReadBytes":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tutk/IOTC/Camera$ThreadSendAudio;->this$0:Lcom/tutk/IOTC/Camera;

    # getter for: Lcom/tutk/IOTC/Camera;->mSID:I
    invoke-static {v4}, Lcom/tutk/IOTC/Camera;->access$0(Lcom/tutk/IOTC/Camera;)I

    move-result v4

    invoke-static {v4}, Lcom/tutk/IOTC/IOTCAPIs;->IOTC_Session_Get_Free_Channel(I)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/tutk/IOTC/Camera$ThreadSendAudio;->chIndexForSendAudio:I

    .line 2323
    move-object/from16 v0, p0

    iget v4, v0, Lcom/tutk/IOTC/Camera$ThreadSendAudio;->chIndexForSendAudio:I

    if-gez v4, :cond_1

    .line 2324
    const-string v4, "IOTCamera"

    .line 2325
    const-string v5, "=== ThreadSendAudio exit becuase no more channel for connection ==="

    .line 2324
    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2329
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tutk/IOTC/Camera$ThreadSendAudio;->this$0:Lcom/tutk/IOTC/Camera;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/tutk/IOTC/Camera$ThreadSendAudio;->mAVChannel:Lcom/tutk/IOTC/Camera$AVChannel;

    # getter for: Lcom/tutk/IOTC/Camera$AVChannel;->mChannel:I
    invoke-static {v5}, Lcom/tutk/IOTC/Camera$AVChannel;->access$0(Lcom/tutk/IOTC/Camera$AVChannel;)I

    move-result v5

    .line 2330
    const/16 v6, 0x350

    .line 2331
    move-object/from16 v0, p0

    iget v7, v0, Lcom/tutk/IOTC/Camera$ThreadSendAudio;->chIndexForSendAudio:I

    invoke-static {v7}, Lcom/tutk/IOTC/AVIOCTRLDEFs$SMsgAVIoctrlAVStream;->parseContent(I)[B

    move-result-object v7

    .line 2329
    invoke-virtual {v4, v5, v6, v7}, Lcom/tutk/IOTC/Camera;->sendIOCtrl(II[B)V

    .line 2333
    const-string v4, "IOTCamera"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "start avServerStart("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/tutk/IOTC/Camera$ThreadSendAudio;->this$0:Lcom/tutk/IOTC/Camera;

    # getter for: Lcom/tutk/IOTC/Camera;->mSID:I
    invoke-static {v6}, Lcom/tutk/IOTC/Camera;->access$0(Lcom/tutk/IOTC/Camera;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2334
    move-object/from16 v0, p0

    iget v6, v0, Lcom/tutk/IOTC/Camera$ThreadSendAudio;->chIndexForSendAudio:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2333
    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2336
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/tutk/IOTC/Camera$ThreadSendAudio;->m_bIsRunning:Z

    if-eqz v4, :cond_2

    .line 2337
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tutk/IOTC/Camera$ThreadSendAudio;->this$0:Lcom/tutk/IOTC/Camera;

    # getter for: Lcom/tutk/IOTC/Camera;->mSID:I
    invoke-static {v4}, Lcom/tutk/IOTC/Camera;->access$0(Lcom/tutk/IOTC/Camera;)I

    move-result v3

    const/4 v4, 0x0

    .line 2338
    const/4 v5, 0x0

    const-wide/16 v6, 0x3c

    const-wide/16 v8, 0x0

    move-object/from16 v0, p0

    iget v10, v0, Lcom/tutk/IOTC/Camera$ThreadSendAudio;->chIndexForSendAudio:I

    .line 2337
    invoke-static/range {v3 .. v10}, Lcom/tutk/IOTC/AVAPIs;->avServStart(I[B[BJJI)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/tutk/IOTC/Camera$ThreadSendAudio;->avIndexForSendAudio:I

    .line 2336
    if-ltz v4, :cond_f

    .line 2343
    :cond_2
    const-string v4, "IOTCamera"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "avServerStart("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/tutk/IOTC/Camera$ThreadSendAudio;->this$0:Lcom/tutk/IOTC/Camera;

    # getter for: Lcom/tutk/IOTC/Camera;->mSID:I
    invoke-static {v6}, Lcom/tutk/IOTC/Camera;->access$0(Lcom/tutk/IOTC/Camera;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2344
    move-object/from16 v0, p0

    iget v6, v0, Lcom/tutk/IOTC/Camera$ThreadSendAudio;->chIndexForSendAudio:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/tutk/IOTC/Camera$ThreadSendAudio;->avIndexForSendAudio:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2343
    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2347
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/tutk/IOTC/Camera$ThreadSendAudio;->m_bIsRunning:Z

    if-eqz v4, :cond_15

    .line 2348
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tutk/IOTC/Camera$ThreadSendAudio;->mAVChannel:Lcom/tutk/IOTC/Camera$AVChannel;

    invoke-virtual {v4}, Lcom/tutk/IOTC/Camera$AVChannel;->getAudioCodec()I

    move-result v4

    const/16 v5, 0x8d

    if-ne v4, v5, :cond_15

    .line 2349
    const/16 v4, 0x8

    invoke-static {v4}, Lcom/encoder/util/EncSpeex;->InitEncoder(I)I

    .line 2350
    const/4 v15, 0x1

    .line 2352
    const/16 v4, 0x1f40

    .line 2353
    const/16 v5, 0x10

    .line 2354
    const/4 v6, 0x2

    .line 2352
    invoke-static {v4, v5, v6}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v8

    .line 2357
    .end local v24    # "nMinBufSize":I
    .local v8, "nMinBufSize":I
    const-string v4, "IOTCamera"

    const-string v5, "Speex encoder init"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2361
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/tutk/IOTC/Camera$ThreadSendAudio;->m_bIsRunning:Z

    if-eqz v4, :cond_3

    .line 2362
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tutk/IOTC/Camera$ThreadSendAudio;->mAVChannel:Lcom/tutk/IOTC/Camera$AVChannel;

    invoke-virtual {v4}, Lcom/tutk/IOTC/Camera$AVChannel;->getAudioCodec()I

    move-result v4

    const/16 v5, 0x8b

    if-ne v4, v5, :cond_3

    .line 2363
    invoke-static {}, Lcom/encoder/util/EncADPCM;->ResetEncoder()I

    .line 2364
    const/4 v11, 0x1

    .line 2366
    const/16 v4, 0x1f40

    .line 2367
    const/16 v5, 0x10

    .line 2368
    const/4 v6, 0x2

    .line 2366
    invoke-static {v4, v5, v6}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v8

    .line 2371
    const-string v4, "IOTCamera"

    const-string v5, "ADPCM encoder init"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2374
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/tutk/IOTC/Camera$ThreadSendAudio;->m_bIsRunning:Z

    if-eqz v4, :cond_4

    .line 2375
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tutk/IOTC/Camera$ThreadSendAudio;->mAVChannel:Lcom/tutk/IOTC/Camera$AVChannel;

    invoke-virtual {v4}, Lcom/tutk/IOTC/Camera$AVChannel;->getAudioCodec()I

    move-result v4

    const/16 v5, 0x8a

    if-ne v4, v5, :cond_4

    .line 2377
    const/4 v12, 0x1

    .line 2379
    const/16 v4, 0x1f40

    .line 2380
    const/16 v5, 0x10

    .line 2381
    const/4 v6, 0x2

    .line 2379
    invoke-static {v4, v5, v6}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v8

    .line 2383
    const-string v4, "IOTCamera"

    const-string v5, "G711A encoder init"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2387
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/tutk/IOTC/Camera$ThreadSendAudio;->m_bIsRunning:Z

    if-eqz v4, :cond_5

    .line 2388
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tutk/IOTC/Camera$ThreadSendAudio;->mAVChannel:Lcom/tutk/IOTC/Camera$AVChannel;

    invoke-virtual {v4}, Lcom/tutk/IOTC/Camera$AVChannel;->getAudioCodec()I

    move-result v4

    const/16 v5, 0x8f

    if-ne v4, v5, :cond_5

    .line 2389
    const/4 v4, 0x0

    .line 2390
    const/4 v5, 0x2

    .line 2389
    invoke-static {v4, v5}, Lcom/encoder/util/EncG726;->g726_enc_state_create(BB)I

    .line 2391
    const/4 v13, 0x1

    .line 2393
    const/16 v4, 0x1f40

    .line 2394
    const/16 v5, 0x10

    .line 2395
    const/4 v6, 0x2

    .line 2393
    invoke-static {v4, v5, v6}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v8

    .line 2398
    const-string v4, "IOTCamera"

    const-string v5, "G726 encoder init"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2401
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/tutk/IOTC/Camera$ThreadSendAudio;->m_bIsRunning:Z

    if-eqz v4, :cond_6

    .line 2402
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tutk/IOTC/Camera$ThreadSendAudio;->mAVChannel:Lcom/tutk/IOTC/Camera$AVChannel;

    invoke-virtual {v4}, Lcom/tutk/IOTC/Camera$AVChannel;->getAudioCodec()I

    move-result v4

    const/16 v5, 0x8c

    if-ne v4, v5, :cond_6

    .line 2403
    const/4 v14, 0x1

    .line 2404
    const/16 v4, 0x1f40

    .line 2405
    const/16 v5, 0x10

    .line 2406
    const/4 v6, 0x2

    .line 2404
    invoke-static {v4, v5, v6}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v8

    .line 2410
    :cond_6
    const/4 v3, 0x0

    .line 2411
    .local v3, "recorder":Landroid/media/AudioRecord;
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/tutk/IOTC/Camera$ThreadSendAudio;->m_bIsRunning:Z

    if-eqz v4, :cond_8

    .line 2412
    if-nez v11, :cond_7

    if-nez v13, :cond_7

    if-nez v15, :cond_7

    if-nez v14, :cond_7

    if-eqz v12, :cond_8

    .line 2413
    :cond_7
    new-instance v3, Landroid/media/AudioRecord;

    .end local v3    # "recorder":Landroid/media/AudioRecord;
    const/4 v4, 0x1

    .line 2414
    const/16 v5, 0x1f40

    const/16 v6, 0x10

    .line 2415
    const/4 v7, 0x2

    .line 2413
    invoke-direct/range {v3 .. v8}, Landroid/media/AudioRecord;-><init>(IIIII)V

    .line 2416
    .restart local v3    # "recorder":Landroid/media/AudioRecord;
    invoke-virtual {v3}, Landroid/media/AudioRecord;->startRecording()V

    .line 2419
    :cond_8
    const/16 v4, 0xa0

    new-array v0, v4, [S

    move-object/from16 v22, v0

    .line 2420
    .local v22, "inSpeexBuf":[S
    const/16 v4, 0x280

    new-array v0, v4, [B

    move-object/from16 v18, v0

    .line 2421
    .local v18, "inADPCMBuf":[B
    const/16 v4, 0x280

    new-array v0, v4, [B

    move-object/from16 v19, v0

    .line 2422
    .local v19, "inG711ABuf":[B
    const/16 v4, 0x140

    new-array v0, v4, [B

    move-object/from16 v20, v0

    .line 2423
    .local v20, "inG726Buf":[B
    const/16 v4, 0x280

    new-array v0, v4, [B

    move-object/from16 v21, v0

    .line 2425
    .local v21, "inPCMBuf":[B
    const/16 v4, 0x26

    new-array v0, v4, [B

    move-object/from16 v30, v0

    .line 2426
    .local v30, "outSpeexBuf":[B
    const/16 v4, 0x140

    new-array v0, v4, [B

    move-object/from16 v26, v0

    .line 2427
    .local v26, "outADPCMBuf":[B
    const/16 v4, 0x280

    new-array v0, v4, [B

    move-object/from16 v27, v0

    .line 2428
    .local v27, "outG711ABuf":[B
    const/16 v4, 0x800

    new-array v0, v4, [B

    move-object/from16 v28, v0

    .line 2429
    .local v28, "outG726Buf":[B
    const/4 v4, 0x1

    new-array v0, v4, [J

    move-object/from16 v29, v0

    .line 2431
    .local v29, "outG726BufLen":[J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tutk/IOTC/Camera$ThreadSendAudio;->this$0:Lcom/tutk/IOTC/Camera;

    # getter for: Lcom/tutk/IOTC/Camera;->audio_sample_length:I
    invoke-static {v4}, Lcom/tutk/IOTC/Camera;->access$13(Lcom/tutk/IOTC/Camera;)I

    move-result v4

    const/16 v5, 0x280

    if-le v4, v5, :cond_9

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tutk/IOTC/Camera$ThreadSendAudio;->this$0:Lcom/tutk/IOTC/Camera;

    const/16 v5, 0x280

    invoke-static {v4, v5}, Lcom/tutk/IOTC/Camera;->access$11(Lcom/tutk/IOTC/Camera;I)V

    .line 2434
    :cond_9
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/tutk/IOTC/Camera$ThreadSendAudio;->m_bIsRunning:Z

    if-nez v4, :cond_10

    .line 2540
    if-eqz v15, :cond_a

    .line 2541
    invoke-static {}, Lcom/encoder/util/EncSpeex;->UninitEncoder()I

    .line 2545
    :cond_a
    if-eqz v13, :cond_b

    .line 2546
    invoke-static {}, Lcom/encoder/util/EncG726;->g726_enc_state_destroy()V

    .line 2550
    :cond_b
    if-eqz v3, :cond_c

    .line 2551
    invoke-virtual {v3}, Landroid/media/AudioRecord;->stop()V

    .line 2552
    invoke-virtual {v3}, Landroid/media/AudioRecord;->release()V

    .line 2553
    const/4 v3, 0x0

    .line 2557
    :cond_c
    move-object/from16 v0, p0

    iget v4, v0, Lcom/tutk/IOTC/Camera$ThreadSendAudio;->avIndexForSendAudio:I

    if-ltz v4, :cond_d

    .line 2558
    move-object/from16 v0, p0

    iget v4, v0, Lcom/tutk/IOTC/Camera$ThreadSendAudio;->avIndexForSendAudio:I

    invoke-static {v4}, Lcom/tutk/IOTC/AVAPIs;->avServStop(I)V

    .line 2561
    :cond_d
    move-object/from16 v0, p0

    iget v4, v0, Lcom/tutk/IOTC/Camera$ThreadSendAudio;->chIndexForSendAudio:I

    if-ltz v4, :cond_e

    .line 2562
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tutk/IOTC/Camera$ThreadSendAudio;->this$0:Lcom/tutk/IOTC/Camera;

    # getter for: Lcom/tutk/IOTC/Camera;->mSID:I
    invoke-static {v4}, Lcom/tutk/IOTC/Camera;->access$0(Lcom/tutk/IOTC/Camera;)I

    move-result v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/tutk/IOTC/Camera$ThreadSendAudio;->chIndexForSendAudio:I

    invoke-static {v4, v5}, Lcom/tutk/IOTC/IOTCAPIs;->IOTC_Session_Channel_OFF(II)I

    .line 2565
    :cond_e
    const/4 v4, -0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/tutk/IOTC/Camera$ThreadSendAudio;->avIndexForSendAudio:I

    .line 2566
    const/4 v4, -0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/tutk/IOTC/Camera$ThreadSendAudio;->chIndexForSendAudio:I

    .line 2568
    const-string v4, "IOTCamera"

    const-string v5, "===ThreadSendAudio exit==="

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2339
    .end local v3    # "recorder":Landroid/media/AudioRecord;
    .end local v8    # "nMinBufSize":I
    .end local v18    # "inADPCMBuf":[B
    .end local v19    # "inG711ABuf":[B
    .end local v20    # "inG726Buf":[B
    .end local v21    # "inPCMBuf":[B
    .end local v22    # "inSpeexBuf":[S
    .end local v26    # "outADPCMBuf":[B
    .end local v27    # "outG711ABuf":[B
    .end local v28    # "outG726Buf":[B
    .end local v29    # "outG726BufLen":[J
    .end local v30    # "outSpeexBuf":[B
    .restart local v24    # "nMinBufSize":I
    :cond_f
    const-string v4, "IOTCamera"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "avServerStart("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/tutk/IOTC/Camera$ThreadSendAudio;->this$0:Lcom/tutk/IOTC/Camera;

    # getter for: Lcom/tutk/IOTC/Camera;->mSID:I
    invoke-static {v6}, Lcom/tutk/IOTC/Camera;->access$0(Lcom/tutk/IOTC/Camera;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2340
    move-object/from16 v0, p0

    iget v6, v0, Lcom/tutk/IOTC/Camera$ThreadSendAudio;->chIndexForSendAudio:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/tutk/IOTC/Camera$ThreadSendAudio;->avIndexForSendAudio:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2339
    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2437
    .end local v24    # "nMinBufSize":I
    .restart local v3    # "recorder":Landroid/media/AudioRecord;
    .restart local v8    # "nMinBufSize":I
    .restart local v18    # "inADPCMBuf":[B
    .restart local v19    # "inG711ABuf":[B
    .restart local v20    # "inG726Buf":[B
    .restart local v21    # "inPCMBuf":[B
    .restart local v22    # "inSpeexBuf":[S
    .restart local v26    # "outADPCMBuf":[B
    .restart local v27    # "outG711ABuf":[B
    .restart local v28    # "outG726Buf":[B
    .restart local v29    # "outG726BufLen":[J
    .restart local v30    # "outSpeexBuf":[B
    :cond_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tutk/IOTC/Camera$ThreadSendAudio;->mAVChannel:Lcom/tutk/IOTC/Camera$AVChannel;

    invoke-virtual {v4}, Lcom/tutk/IOTC/Camera$AVChannel;->getAudioCodec()I

    move-result v4

    const/16 v5, 0x8d

    if-ne v4, v5, :cond_11

    .line 2440
    const/4 v4, 0x0

    move-object/from16 v0, v22

    array-length v5, v0

    move-object/from16 v0, v22

    invoke-virtual {v3, v0, v4, v5}, Landroid/media/AudioRecord;->read([SII)I

    move-result v25

    .line 2442
    if-lez v25, :cond_9

    .line 2443
    move-object/from16 v0, v22

    move/from16 v1, v25

    move-object/from16 v2, v30

    invoke-static {v0, v1, v2}, Lcom/encoder/util/EncSpeex;->Encode([SI[B)I

    move-result v23

    .line 2445
    .local v23, "len":I
    const/16 v16, 0x2

    .line 2450
    .local v16, "flag":B
    const/16 v4, 0x8d

    .line 2451
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 2452
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    long-to-int v7, v9

    .line 2449
    move/from16 v0, v16

    invoke-static {v4, v0, v5, v6, v7}, Lcom/tutk/IOTC/AVIOCTRLDEFs$SFrameInfo;->parseContent(SBBBI)[B

    move-result-object v17

    .line 2454
    .local v17, "frameInfo":[B
    move-object/from16 v0, p0

    iget v4, v0, Lcom/tutk/IOTC/Camera$ThreadSendAudio;->avIndexForSendAudio:I

    .line 2455
    const/16 v5, 0x10

    .line 2454
    move-object/from16 v0, v30

    move/from16 v1, v23

    move-object/from16 v2, v17

    invoke-static {v4, v0, v1, v2, v5}, Lcom/tutk/IOTC/AVAPIs;->avSendAudioData(I[BI[BI)I

    goto/16 :goto_3

    .line 2458
    .end local v16    # "flag":B
    .end local v17    # "frameInfo":[B
    .end local v23    # "len":I
    :cond_11
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tutk/IOTC/Camera$ThreadSendAudio;->mAVChannel:Lcom/tutk/IOTC/Camera$AVChannel;

    invoke-virtual {v4}, Lcom/tutk/IOTC/Camera$AVChannel;->getAudioCodec()I

    move-result v4

    const/16 v5, 0x8b

    if-ne v4, v5, :cond_12

    .line 2461
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/tutk/IOTC/Camera$ThreadSendAudio;->this$0:Lcom/tutk/IOTC/Camera;

    # getter for: Lcom/tutk/IOTC/Camera;->audio_sample_length:I
    invoke-static {v5}, Lcom/tutk/IOTC/Camera;->access$13(Lcom/tutk/IOTC/Camera;)I

    move-result v5

    move-object/from16 v0, v18

    invoke-virtual {v3, v0, v4, v5}, Landroid/media/AudioRecord;->read([BII)I

    move-result v25

    .line 2463
    if-lez v25, :cond_9

    .line 2464
    move-object/from16 v0, v18

    move/from16 v1, v25

    move-object/from16 v2, v26

    invoke-static {v0, v1, v2}, Lcom/encoder/util/EncADPCM;->Encode([BI[B)I

    .line 2465
    const/16 v16, 0x2

    .line 2470
    .restart local v16    # "flag":B
    const/16 v4, 0x8b

    .line 2471
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 2472
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    long-to-int v7, v9

    .line 2469
    move/from16 v0, v16

    invoke-static {v4, v0, v5, v6, v7}, Lcom/tutk/IOTC/AVIOCTRLDEFs$SFrameInfo;->parseContent(SBBBI)[B

    move-result-object v17

    .line 2474
    .restart local v17    # "frameInfo":[B
    move-object/from16 v0, p0

    iget v4, v0, Lcom/tutk/IOTC/Camera$ThreadSendAudio;->avIndexForSendAudio:I

    .line 2475
    div-int/lit8 v5, v25, 0x4

    const/16 v6, 0x10

    .line 2474
    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-static {v4, v0, v5, v1, v6}, Lcom/tutk/IOTC/AVAPIs;->avSendAudioData(I[BI[BI)I

    goto/16 :goto_3

    .line 2478
    .end local v16    # "flag":B
    .end local v17    # "frameInfo":[B
    :cond_12
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tutk/IOTC/Camera$ThreadSendAudio;->mAVChannel:Lcom/tutk/IOTC/Camera$AVChannel;

    invoke-virtual {v4}, Lcom/tutk/IOTC/Camera$AVChannel;->getAudioCodec()I

    move-result v4

    const/16 v5, 0x8a

    if-ne v4, v5, :cond_13

    .line 2481
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/tutk/IOTC/Camera$ThreadSendAudio;->this$0:Lcom/tutk/IOTC/Camera;

    # getter for: Lcom/tutk/IOTC/Camera;->audio_sample_length:I
    invoke-static {v5}, Lcom/tutk/IOTC/Camera;->access$13(Lcom/tutk/IOTC/Camera;)I

    move-result v5

    move-object/from16 v0, v19

    invoke-virtual {v3, v0, v4, v5}, Landroid/media/AudioRecord;->read([BII)I

    move-result v25

    .line 2483
    if-lez v25, :cond_9

    .line 2485
    move-object/from16 v0, v19

    move/from16 v1, v25

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2}, Lcom/decoder/util/DecG711A;->Encode([BI[B)I

    .line 2486
    const/16 v16, 0x2

    .line 2491
    .restart local v16    # "flag":B
    const/16 v4, 0x8a

    .line 2492
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 2493
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    long-to-int v7, v9

    .line 2490
    move/from16 v0, v16

    invoke-static {v4, v0, v5, v6, v7}, Lcom/tutk/IOTC/AVIOCTRLDEFs$SFrameInfo;->parseContent(SBBBI)[B

    move-result-object v17

    .line 2495
    .restart local v17    # "frameInfo":[B
    move-object/from16 v0, p0

    iget v4, v0, Lcom/tutk/IOTC/Camera$ThreadSendAudio;->avIndexForSendAudio:I

    .line 2496
    div-int/lit8 v5, v25, 0x2

    const/16 v6, 0x10

    .line 2495
    move-object/from16 v0, v27

    move-object/from16 v1, v17

    invoke-static {v4, v0, v5, v1, v6}, Lcom/tutk/IOTC/AVAPIs;->avSendAudioData(I[BI[BI)I

    goto/16 :goto_3

    .line 2498
    .end local v16    # "flag":B
    .end local v17    # "frameInfo":[B
    :cond_13
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tutk/IOTC/Camera$ThreadSendAudio;->mAVChannel:Lcom/tutk/IOTC/Camera$AVChannel;

    invoke-virtual {v4}, Lcom/tutk/IOTC/Camera$AVChannel;->getAudioCodec()I

    move-result v4

    const/16 v5, 0x8f

    if-ne v4, v5, :cond_14

    .line 2500
    const/4 v4, 0x0

    move-object/from16 v0, v20

    array-length v5, v0

    move-object/from16 v0, v20

    invoke-virtual {v3, v0, v4, v5}, Landroid/media/AudioRecord;->read([BII)I

    move-result v25

    .line 2502
    if-lez v25, :cond_9

    .line 2504
    move/from16 v0, v25

    int-to-long v4, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-static {v0, v4, v5, v1, v2}, Lcom/encoder/util/EncG726;->g726_encode([BJ[B[J)I

    .line 2506
    const/16 v16, 0x2

    .line 2511
    .restart local v16    # "flag":B
    const/16 v4, 0x8f

    .line 2512
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 2513
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    long-to-int v7, v9

    .line 2510
    move/from16 v0, v16

    invoke-static {v4, v0, v5, v6, v7}, Lcom/tutk/IOTC/AVIOCTRLDEFs$SFrameInfo;->parseContent(SBBBI)[B

    move-result-object v17

    .line 2515
    .restart local v17    # "frameInfo":[B
    move-object/from16 v0, p0

    iget v4, v0, Lcom/tutk/IOTC/Camera$ThreadSendAudio;->avIndexForSendAudio:I

    .line 2516
    const/4 v5, 0x0

    aget-wide v5, v29, v5

    long-to-int v5, v5

    const/16 v6, 0x10

    .line 2515
    move-object/from16 v0, v28

    move-object/from16 v1, v17

    invoke-static {v4, v0, v5, v1, v6}, Lcom/tutk/IOTC/AVAPIs;->avSendAudioData(I[BI[BI)I

    goto/16 :goto_3

    .line 2519
    .end local v16    # "flag":B
    .end local v17    # "frameInfo":[B
    :cond_14
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tutk/IOTC/Camera$ThreadSendAudio;->mAVChannel:Lcom/tutk/IOTC/Camera$AVChannel;

    invoke-virtual {v4}, Lcom/tutk/IOTC/Camera$AVChannel;->getAudioCodec()I

    move-result v4

    const/16 v5, 0x8c

    if-ne v4, v5, :cond_9

    .line 2521
    const/4 v4, 0x0

    move-object/from16 v0, v21

    array-length v5, v0

    move-object/from16 v0, v21

    invoke-virtual {v3, v0, v4, v5}, Landroid/media/AudioRecord;->read([BII)I

    move-result v25

    .line 2523
    if-lez v25, :cond_9

    .line 2524
    const/16 v16, 0x2

    .line 2529
    .restart local v16    # "flag":B
    const/16 v4, 0x8c

    .line 2530
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 2531
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    long-to-int v7, v9

    .line 2528
    move/from16 v0, v16

    invoke-static {v4, v0, v5, v6, v7}, Lcom/tutk/IOTC/AVIOCTRLDEFs$SFrameInfo;->parseContent(SBBBI)[B

    move-result-object v17

    .line 2533
    .restart local v17    # "frameInfo":[B
    move-object/from16 v0, p0

    iget v4, v0, Lcom/tutk/IOTC/Camera$ThreadSendAudio;->avIndexForSendAudio:I

    .line 2534
    const/16 v5, 0x10

    .line 2533
    move-object/from16 v0, v21

    move/from16 v1, v25

    move-object/from16 v2, v17

    invoke-static {v4, v0, v1, v2, v5}, Lcom/tutk/IOTC/AVAPIs;->avSendAudioData(I[BI[BI)I

    goto/16 :goto_3

    .end local v3    # "recorder":Landroid/media/AudioRecord;
    .end local v8    # "nMinBufSize":I
    .end local v16    # "flag":B
    .end local v17    # "frameInfo":[B
    .end local v18    # "inADPCMBuf":[B
    .end local v19    # "inG711ABuf":[B
    .end local v20    # "inG726Buf":[B
    .end local v21    # "inPCMBuf":[B
    .end local v22    # "inSpeexBuf":[S
    .end local v26    # "outADPCMBuf":[B
    .end local v27    # "outG711ABuf":[B
    .end local v28    # "outG726Buf":[B
    .end local v29    # "outG726BufLen":[J
    .end local v30    # "outSpeexBuf":[B
    .restart local v24    # "nMinBufSize":I
    :cond_15
    move/from16 v8, v24

    .end local v24    # "nMinBufSize":I
    .restart local v8    # "nMinBufSize":I
    goto/16 :goto_2
.end method

.method public stopThread()V
    .locals 4

    .prologue
    .line 2289
    iget-object v0, p0, Lcom/tutk/IOTC/Camera$ThreadSendAudio;->this$0:Lcom/tutk/IOTC/Camera;

    # getter for: Lcom/tutk/IOTC/Camera;->mSID:I
    invoke-static {v0}, Lcom/tutk/IOTC/Camera;->access$0(Lcom/tutk/IOTC/Camera;)I

    move-result v0

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/tutk/IOTC/Camera$ThreadSendAudio;->chIndexForSendAudio:I

    if-ltz v0, :cond_0

    .line 2290
    iget-object v0, p0, Lcom/tutk/IOTC/Camera$ThreadSendAudio;->this$0:Lcom/tutk/IOTC/Camera;

    # getter for: Lcom/tutk/IOTC/Camera;->mSID:I
    invoke-static {v0}, Lcom/tutk/IOTC/Camera;->access$0(Lcom/tutk/IOTC/Camera;)I

    move-result v0

    iget v1, p0, Lcom/tutk/IOTC/Camera$ThreadSendAudio;->chIndexForSendAudio:I

    invoke-static {v0, v1}, Lcom/tutk/IOTC/AVAPIs;->avServExit(II)V

    .line 2291
    iget-object v0, p0, Lcom/tutk/IOTC/Camera$ThreadSendAudio;->this$0:Lcom/tutk/IOTC/Camera;

    iget-object v1, p0, Lcom/tutk/IOTC/Camera$ThreadSendAudio;->mAVChannel:Lcom/tutk/IOTC/Camera$AVChannel;

    # getter for: Lcom/tutk/IOTC/Camera$AVChannel;->mChannel:I
    invoke-static {v1}, Lcom/tutk/IOTC/Camera$AVChannel;->access$0(Lcom/tutk/IOTC/Camera$AVChannel;)I

    move-result v1

    .line 2292
    const/16 v2, 0x351

    .line 2293
    iget v3, p0, Lcom/tutk/IOTC/Camera$ThreadSendAudio;->chIndexForSendAudio:I

    invoke-static {v3}, Lcom/tutk/IOTC/AVIOCTRLDEFs$SMsgAVIoctrlAVStream;->parseContent(I)[B

    move-result-object v3

    .line 2291
    invoke-virtual {v0, v1, v2, v3}, Lcom/tutk/IOTC/Camera;->sendIOCtrl(II[B)V

    .line 2296
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tutk/IOTC/Camera$ThreadSendAudio;->m_bIsRunning:Z

    .line 2297
    return-void
.end method
