.class Lcom/tutk/IOTC/Camera$ThreadRecvAudio;
.super Ljava/lang/Thread;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tutk/IOTC/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ThreadRecvAudio"
.end annotation


# instance fields
.field private final MAX_BUF_SIZE:I

.field private bIsRunning:Z

.field private mAVChannel:Lcom/tutk/IOTC/Camera$AVChannel;

.field private nReadSize:I

.field final synthetic this$0:Lcom/tutk/IOTC/Camera;


# direct methods
.method public constructor <init>(Lcom/tutk/IOTC/Camera;Lcom/tutk/IOTC/Camera$AVChannel;)V
    .locals 2
    .param p2, "channel"    # Lcom/tutk/IOTC/Camera$AVChannel;

    .prologue
    const/4 v1, 0x0

    .line 2062
    iput-object p1, p0, Lcom/tutk/IOTC/Camera$ThreadRecvAudio;->this$0:Lcom/tutk/IOTC/Camera;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2056
    const/16 v0, 0x500

    iput v0, p0, Lcom/tutk/IOTC/Camera$ThreadRecvAudio;->MAX_BUF_SIZE:I

    .line 2057
    iput v1, p0, Lcom/tutk/IOTC/Camera$ThreadRecvAudio;->nReadSize:I

    .line 2058
    iput-boolean v1, p0, Lcom/tutk/IOTC/Camera$ThreadRecvAudio;->bIsRunning:Z

    .line 2063
    iput-object p2, p0, Lcom/tutk/IOTC/Camera$ThreadRecvAudio;->mAVChannel:Lcom/tutk/IOTC/Camera$AVChannel;

    .line 2064
    return-void
.end method


# virtual methods
.method public run()V
    .locals 32

    .prologue
    .line 2073
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/tutk/IOTC/Camera$ThreadRecvAudio;->bIsRunning:Z

    .line 2075
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/tutk/IOTC/Camera$ThreadRecvAudio;->bIsRunning:Z

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tutk/IOTC/Camera$ThreadRecvAudio;->this$0:Lcom/tutk/IOTC/Camera;

    # getter for: Lcom/tutk/IOTC/Camera;->mSID:I
    invoke-static {v4}, Lcom/tutk/IOTC/Camera;->access$0(Lcom/tutk/IOTC/Camera;)I

    move-result v4

    if-ltz v4, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tutk/IOTC/Camera$ThreadRecvAudio;->mAVChannel:Lcom/tutk/IOTC/Camera$AVChannel;

    invoke-virtual {v4}, Lcom/tutk/IOTC/Camera$AVChannel;->getAVIndex()I

    move-result v4

    if-ltz v4, :cond_4

    .line 2086
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tutk/IOTC/Camera$ThreadRecvAudio;->mAVChannel:Lcom/tutk/IOTC/Camera$AVChannel;

    const/4 v6, 0x0

    iput v6, v4, Lcom/tutk/IOTC/Camera$AVChannel;->AudioBPS:I

    .line 2087
    const/16 v4, 0x500

    new-array v5, v4, [B

    .line 2088
    .local v5, "recvBuf":[B
    const/16 v4, 0x18

    new-array v7, v4, [B

    .line 2089
    .local v7, "bytAVFrame":[B
    const/4 v4, 0x1

    new-array v9, v4, [I

    .line 2091
    .local v9, "pFrmNo":[I
    const v4, 0xffff

    new-array v0, v4, [B

    move-object/from16 v25, v0

    .line 2092
    .local v25, "mp3OutBuf":[B
    const/16 v4, 0xa0

    new-array v0, v4, [S

    move-object/from16 v31, v0

    .line 2093
    .local v31, "speexOutBuf":[S
    const/16 v4, 0x280

    new-array v0, v4, [B

    move-object/from16 v19, v0

    .line 2094
    .local v19, "adpcmOutBuf":[B
    const/16 v4, 0x280

    new-array v0, v4, [B

    move-object/from16 v23, v0

    .line 2095
    .local v23, "g711aOutBuf":[B
    const/16 v4, 0x800

    new-array v0, v4, [B

    move-object/from16 v17, v0

    .line 2096
    .local v17, "G726OutBuf":[B
    const/4 v4, 0x1

    new-array v0, v4, [J

    move-object/from16 v18, v0

    .line 2098
    .local v18, "G726OutBufLen":[J
    const/16 v20, 0x1

    .line 2099
    .local v20, "bFirst":Z
    const/16 v21, 0x0

    .line 2101
    .local v21, "bInitAudio":Z
    const v30, 0xac44

    .line 2102
    .local v30, "nSamplerate":I
    const/16 v28, 0x1

    .line 2103
    .local v28, "nDatabits":I
    const/16 v26, 0x1

    .line 2104
    .local v26, "nChannel":I
    const/16 v27, 0x0

    .line 2105
    .local v27, "nCodecId":I
    const/16 v29, 0x0

    .line 2107
    .local v29, "nFPS":I
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/tutk/IOTC/Camera$ThreadRecvAudio;->bIsRunning:Z

    if-eqz v4, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tutk/IOTC/Camera$ThreadRecvAudio;->this$0:Lcom/tutk/IOTC/Camera;

    # getter for: Lcom/tutk/IOTC/Camera;->mSID:I
    invoke-static {v4}, Lcom/tutk/IOTC/Camera;->access$0(Lcom/tutk/IOTC/Camera;)I

    move-result v4

    if-ltz v4, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tutk/IOTC/Camera$ThreadRecvAudio;->mAVChannel:Lcom/tutk/IOTC/Camera$AVChannel;

    invoke-virtual {v4}, Lcom/tutk/IOTC/Camera$AVChannel;->getAVIndex()I

    move-result v4

    if-ltz v4, :cond_1

    .line 2108
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tutk/IOTC/Camera$ThreadRecvAudio;->mAVChannel:Lcom/tutk/IOTC/Camera$AVChannel;

    iget-object v4, v4, Lcom/tutk/IOTC/Camera$AVChannel;->IOCtrlQueue:Lcom/tutk/IOTC/Camera$IOCtrlQueue;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/tutk/IOTC/Camera$ThreadRecvAudio;->mAVChannel:Lcom/tutk/IOTC/Camera$AVChannel;

    invoke-virtual {v6}, Lcom/tutk/IOTC/Camera$AVChannel;->getAVIndex()I

    move-result v6

    .line 2109
    const/16 v8, 0x300

    .line 2110
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/tutk/IOTC/Camera$ThreadRecvAudio;->this$0:Lcom/tutk/IOTC/Camera;

    # getter for: Lcom/tutk/IOTC/Camera;->mCamIndex:I
    invoke-static {v11}, Lcom/tutk/IOTC/Camera;->access$7(Lcom/tutk/IOTC/Camera;)I

    move-result v11

    invoke-static {v11}, Lcom/tutk/IOTC/Packet;->intToByteArray_Little(I)[B

    move-result-object v11

    .line 2108
    invoke-virtual {v4, v6, v8, v11}, Lcom/tutk/IOTC/Camera$IOCtrlQueue;->Enqueue(II[B)V

    .line 2112
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/tutk/IOTC/Camera$ThreadRecvAudio;->bIsRunning:Z

    if-nez v4, :cond_5

    .line 2263
    :cond_2
    if-eqz v21, :cond_3

    .line 2264
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tutk/IOTC/Camera$ThreadRecvAudio;->this$0:Lcom/tutk/IOTC/Camera;

    move/from16 v0, v27

    # invokes: Lcom/tutk/IOTC/Camera;->audioDev_stop(I)V
    invoke-static {v4, v0}, Lcom/tutk/IOTC/Camera;->access$12(Lcom/tutk/IOTC/Camera;I)V

    .line 2266
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tutk/IOTC/Camera$ThreadRecvAudio;->mAVChannel:Lcom/tutk/IOTC/Camera$AVChannel;

    iget-object v4, v4, Lcom/tutk/IOTC/Camera$AVChannel;->IOCtrlQueue:Lcom/tutk/IOTC/Camera$IOCtrlQueue;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/tutk/IOTC/Camera$ThreadRecvAudio;->mAVChannel:Lcom/tutk/IOTC/Camera$AVChannel;

    invoke-virtual {v6}, Lcom/tutk/IOTC/Camera$AVChannel;->getAVIndex()I

    move-result v6

    .line 2267
    const/16 v8, 0x301

    .line 2268
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/tutk/IOTC/Camera$ThreadRecvAudio;->this$0:Lcom/tutk/IOTC/Camera;

    # getter for: Lcom/tutk/IOTC/Camera;->mCamIndex:I
    invoke-static {v11}, Lcom/tutk/IOTC/Camera;->access$7(Lcom/tutk/IOTC/Camera;)I

    move-result v11

    invoke-static {v11}, Lcom/tutk/IOTC/Packet;->intToByteArray_Little(I)[B

    move-result-object v11

    .line 2266
    invoke-virtual {v4, v6, v8, v11}, Lcom/tutk/IOTC/Camera$IOCtrlQueue;->Enqueue(II[B)V

    .line 2270
    const-string v4, "IOTCamera"

    const-string v6, "===ThreadRecvAudio exit==="

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2271
    return-void

    .line 2078
    .end local v5    # "recvBuf":[B
    .end local v7    # "bytAVFrame":[B
    .end local v9    # "pFrmNo":[I
    .end local v17    # "G726OutBuf":[B
    .end local v18    # "G726OutBufLen":[J
    .end local v19    # "adpcmOutBuf":[B
    .end local v20    # "bFirst":Z
    .end local v21    # "bInitAudio":Z
    .end local v23    # "g711aOutBuf":[B
    .end local v25    # "mp3OutBuf":[B
    .end local v26    # "nChannel":I
    .end local v27    # "nCodecId":I
    .end local v28    # "nDatabits":I
    .end local v29    # "nFPS":I
    .end local v30    # "nSamplerate":I
    .end local v31    # "speexOutBuf":[S
    :cond_4
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tutk/IOTC/Camera$ThreadRecvAudio;->this$0:Lcom/tutk/IOTC/Camera;

    # getter for: Lcom/tutk/IOTC/Camera;->mWaitObjectForConnected:Ljava/lang/Object;
    invoke-static {v4}, Lcom/tutk/IOTC/Camera;->access$4(Lcom/tutk/IOTC/Camera;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2079
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tutk/IOTC/Camera$ThreadRecvAudio;->this$0:Lcom/tutk/IOTC/Camera;

    # getter for: Lcom/tutk/IOTC/Camera;->mWaitObjectForConnected:Ljava/lang/Object;
    invoke-static {v4}, Lcom/tutk/IOTC/Camera;->access$4(Lcom/tutk/IOTC/Camera;)Ljava/lang/Object;

    move-result-object v4

    const-wide/16 v11, 0x64

    invoke-virtual {v4, v11, v12}, Ljava/lang/Object;->wait(J)V

    .line 2078
    monitor-exit v6

    goto/16 :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 2081
    :catch_0
    move-exception v22

    .line 2082
    .local v22, "e":Ljava/lang/Exception;
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 2114
    .end local v22    # "e":Ljava/lang/Exception;
    .restart local v5    # "recvBuf":[B
    .restart local v7    # "bytAVFrame":[B
    .restart local v9    # "pFrmNo":[I
    .restart local v17    # "G726OutBuf":[B
    .restart local v18    # "G726OutBufLen":[J
    .restart local v19    # "adpcmOutBuf":[B
    .restart local v20    # "bFirst":Z
    .restart local v21    # "bInitAudio":Z
    .restart local v23    # "g711aOutBuf":[B
    .restart local v25    # "mp3OutBuf":[B
    .restart local v26    # "nChannel":I
    .restart local v27    # "nCodecId":I
    .restart local v28    # "nDatabits":I
    .restart local v29    # "nFPS":I
    .restart local v30    # "nSamplerate":I
    .restart local v31    # "speexOutBuf":[S
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tutk/IOTC/Camera$ThreadRecvAudio;->this$0:Lcom/tutk/IOTC/Camera;

    # getter for: Lcom/tutk/IOTC/Camera;->mSID:I
    invoke-static {v4}, Lcom/tutk/IOTC/Camera;->access$0(Lcom/tutk/IOTC/Camera;)I

    move-result v4

    if-ltz v4, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tutk/IOTC/Camera$ThreadRecvAudio;->mAVChannel:Lcom/tutk/IOTC/Camera$AVChannel;

    invoke-virtual {v4}, Lcom/tutk/IOTC/Camera$AVChannel;->getAVIndex()I

    move-result v4

    if-ltz v4, :cond_1

    .line 2116
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tutk/IOTC/Camera$ThreadRecvAudio;->mAVChannel:Lcom/tutk/IOTC/Camera$AVChannel;

    invoke-virtual {v4}, Lcom/tutk/IOTC/Camera$AVChannel;->getAVIndex()I

    move-result v4

    .line 2117
    array-length v6, v5

    .line 2118
    const/16 v8, 0x18

    .line 2116
    invoke-static/range {v4 .. v9}, Lcom/tutk/IOTC/AVAPIs;->avRecvAudioData(I[BI[BI[I)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/tutk/IOTC/Camera$ThreadRecvAudio;->nReadSize:I

    .line 2120
    move-object/from16 v0, p0

    iget v4, v0, Lcom/tutk/IOTC/Camera$ThreadRecvAudio;->nReadSize:I

    if-gez v4, :cond_6

    move-object/from16 v0, p0

    iget v4, v0, Lcom/tutk/IOTC/Camera$ThreadRecvAudio;->nReadSize:I

    const/16 v6, -0x4e2c

    if-eq v4, v6, :cond_6

    .line 2121
    const-string v4, "IOTCamera"

    const-string v6, "avRecvAudioData < 0"

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2123
    :cond_6
    move-object/from16 v0, p0

    iget v4, v0, Lcom/tutk/IOTC/Camera$ThreadRecvAudio;->nReadSize:I

    if-lez v4, :cond_24

    .line 2125
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tutk/IOTC/Camera$ThreadRecvAudio;->mAVChannel:Lcom/tutk/IOTC/Camera$AVChannel;

    iget v6, v4, Lcom/tutk/IOTC/Camera$AVChannel;->AudioBPS:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/tutk/IOTC/Camera$ThreadRecvAudio;->nReadSize:I

    add-int/2addr v6, v8

    iput v6, v4, Lcom/tutk/IOTC/Camera$AVChannel;->AudioBPS:I

    .line 2127
    move-object/from16 v0, p0

    iget v4, v0, Lcom/tutk/IOTC/Camera$ThreadRecvAudio;->nReadSize:I

    new-array v15, v4, [B

    .line 2128
    .local v15, "frameData":[B
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v8, v0, Lcom/tutk/IOTC/Camera$ThreadRecvAudio;->nReadSize:I

    invoke-static {v5, v4, v15, v6, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2130
    new-instance v10, Lcom/tutk/IOTC/AVFrame;

    const/4 v4, 0x0

    aget v4, v9, v4

    int-to-long v11, v4

    .line 2131
    const/4 v13, 0x0

    .line 2132
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tutk/IOTC/Camera$ThreadRecvAudio;->nReadSize:I

    move/from16 v16, v0

    move-object v14, v7

    .line 2130
    invoke-direct/range {v10 .. v16}, Lcom/tutk/IOTC/AVFrame;-><init>(JB[B[BI)V

    .line 2134
    .local v10, "frame":Lcom/tutk/IOTC/AVFrame;
    invoke-virtual {v10}, Lcom/tutk/IOTC/AVFrame;->getCodecId()S

    move-result v27

    .line 2136
    if-eqz v20, :cond_9

    .line 2138
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tutk/IOTC/Camera$ThreadRecvAudio;->this$0:Lcom/tutk/IOTC/Camera;

    # getter for: Lcom/tutk/IOTC/Camera;->mInitAudio:Z
    invoke-static {v4}, Lcom/tutk/IOTC/Camera;->access$8(Lcom/tutk/IOTC/Camera;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 2139
    const/16 v4, 0x8e

    move/from16 v0, v27

    if-eq v0, v4, :cond_7

    .line 2140
    const/16 v4, 0x8d

    move/from16 v0, v27

    if-eq v0, v4, :cond_7

    .line 2141
    const/16 v4, 0x8b

    move/from16 v0, v27

    if-eq v0, v4, :cond_7

    .line 2142
    const/16 v4, 0x8c

    move/from16 v0, v27

    if-eq v0, v4, :cond_7

    .line 2143
    const/16 v4, 0x8a

    move/from16 v0, v27

    if-eq v0, v4, :cond_7

    .line 2144
    const/16 v4, 0x8f

    move/from16 v0, v27

    if-ne v0, v4, :cond_9

    .line 2146
    :cond_7
    const/16 v20, 0x0

    .line 2148
    invoke-virtual {v10}, Lcom/tutk/IOTC/AVFrame;->getFlags()B

    move-result v4

    invoke-static {v4}, Lcom/tutk/IOTC/AVFrame;->getSamplerate(B)I

    move-result v30

    .line 2149
    invoke-virtual {v10}, Lcom/tutk/IOTC/AVFrame;->getFlags()B

    move-result v4

    and-int/lit8 v28, v4, 0x2

    .line 2150
    const/4 v4, 0x2

    move/from16 v0, v28

    if-ne v0, v4, :cond_a

    const/16 v28, 0x1

    .line 2151
    :goto_2
    invoke-virtual {v10}, Lcom/tutk/IOTC/AVFrame;->getFlags()B

    move-result v4

    and-int/lit8 v26, v4, 0x1

    .line 2153
    const/16 v4, 0x8d

    move/from16 v0, v27

    if-ne v0, v4, :cond_d

    .line 2155
    if-nez v26, :cond_b

    const/4 v4, 0x1

    .line 2154
    :goto_3
    mul-int v6, v30, v4

    .line 2156
    if-nez v28, :cond_c

    const/16 v4, 0x8

    .line 2154
    :goto_4
    mul-int/2addr v4, v6

    div-int/lit8 v4, v4, 0x8

    div-int/lit16 v0, v4, 0xa0

    move/from16 v29, v0

    .line 2175
    :cond_8
    :goto_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tutk/IOTC/Camera$ThreadRecvAudio;->this$0:Lcom/tutk/IOTC/Camera;

    move/from16 v0, v30

    move/from16 v1, v26

    move/from16 v2, v28

    move/from16 v3, v27

    # invokes: Lcom/tutk/IOTC/Camera;->audioDev_init(IIII)Z
    invoke-static {v4, v0, v1, v2, v3}, Lcom/tutk/IOTC/Camera;->access$9(Lcom/tutk/IOTC/Camera;IIII)Z

    move-result v21

    .line 2178
    if-eqz v21, :cond_2

    .line 2184
    :cond_9
    const/16 v4, 0x8d

    move/from16 v0, v27

    if-ne v0, v4, :cond_16

    .line 2185
    move-object/from16 v0, p0

    iget v4, v0, Lcom/tutk/IOTC/Camera$ThreadRecvAudio;->nReadSize:I

    move-object/from16 v0, v31

    invoke-static {v5, v4, v0}, Lcom/decoder/util/DecSpeex;->Decode([BI[S)I

    .line 2187
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tutk/IOTC/Camera$ThreadRecvAudio;->mAVChannel:Lcom/tutk/IOTC/Camera$AVChannel;

    iget-boolean v4, v4, Lcom/tutk/IOTC/Camera$AVChannel;->mbMute:Z

    if-nez v4, :cond_1

    .line 2188
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tutk/IOTC/Camera$ThreadRecvAudio;->this$0:Lcom/tutk/IOTC/Camera;

    # getter for: Lcom/tutk/IOTC/Camera;->mAudioTrack:Landroid/media/AudioTrack;
    invoke-static {v4}, Lcom/tutk/IOTC/Camera;->access$10(Lcom/tutk/IOTC/Camera;)Landroid/media/AudioTrack;

    move-result-object v4

    const/4 v6, 0x0

    const/16 v8, 0xa0

    move-object/from16 v0, v31

    invoke-virtual {v4, v0, v6, v8}, Landroid/media/AudioTrack;->write([SII)I

    goto/16 :goto_1

    .line 2150
    :cond_a
    const/16 v28, 0x0

    goto :goto_2

    .line 2156
    :cond_b
    const/4 v4, 0x2

    goto :goto_3

    .line 2157
    :cond_c
    const/16 v4, 0x10

    goto :goto_4

    .line 2158
    :cond_d
    const/16 v4, 0x8b

    move/from16 v0, v27

    if-ne v0, v4, :cond_10

    .line 2160
    if-nez v26, :cond_e

    const/4 v4, 0x1

    .line 2159
    :goto_6
    mul-int v6, v30, v4

    .line 2161
    if-nez v28, :cond_f

    const/16 v4, 0x8

    .line 2159
    :goto_7
    mul-int/2addr v4, v6

    div-int/lit8 v4, v4, 0x8

    div-int/lit16 v0, v4, 0x280

    move/from16 v29, v0

    .line 2162
    goto :goto_5

    .line 2161
    :cond_e
    const/4 v4, 0x2

    goto :goto_6

    .line 2162
    :cond_f
    const/16 v4, 0x10

    goto :goto_7

    .line 2163
    :cond_10
    const/16 v4, 0x8a

    move/from16 v0, v27

    if-ne v0, v4, :cond_13

    .line 2165
    if-nez v26, :cond_11

    const/4 v4, 0x1

    .line 2164
    :goto_8
    mul-int v6, v30, v4

    .line 2166
    if-nez v28, :cond_12

    const/16 v4, 0x8

    .line 2164
    :goto_9
    mul-int/2addr v4, v6

    div-int/lit8 v4, v4, 0x8

    div-int/lit16 v0, v4, 0x140

    move/from16 v29, v0

    .line 2167
    goto :goto_5

    .line 2166
    :cond_11
    const/4 v4, 0x2

    goto :goto_8

    .line 2167
    :cond_12
    const/16 v4, 0x10

    goto :goto_9

    .line 2168
    :cond_13
    const/16 v4, 0x8c

    move/from16 v0, v27

    if-ne v0, v4, :cond_8

    .line 2170
    if-nez v26, :cond_14

    const/4 v4, 0x1

    .line 2169
    :goto_a
    mul-int v6, v30, v4

    .line 2171
    if-nez v28, :cond_15

    const/16 v4, 0x8

    .line 2169
    :goto_b
    mul-int/2addr v4, v6

    div-int/lit8 v4, v4, 0x8

    .line 2173
    invoke-virtual {v10}, Lcom/tutk/IOTC/AVFrame;->getFrmSize()I

    move-result v6

    .line 2169
    div-int v29, v4, v6

    goto/16 :goto_5

    .line 2171
    :cond_14
    const/4 v4, 0x2

    goto :goto_a

    .line 2172
    :cond_15
    const/16 v4, 0x10

    goto :goto_b

    .line 2191
    :cond_16
    const/16 v4, 0x8e

    move/from16 v0, v27

    if-ne v0, v4, :cond_1a

    .line 2192
    move-object/from16 v0, p0

    iget v4, v0, Lcom/tutk/IOTC/Camera$ThreadRecvAudio;->nReadSize:I

    move-object/from16 v0, v25

    invoke-static {v5, v4, v0}, Lcom/decoder/util/DecMp3;->Decode([BI[B)I

    move-result v24

    .line 2195
    .local v24, "len":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tutk/IOTC/Camera$ThreadRecvAudio;->mAVChannel:Lcom/tutk/IOTC/Camera$AVChannel;

    iget-boolean v4, v4, Lcom/tutk/IOTC/Camera$AVChannel;->mbMute:Z

    if-nez v4, :cond_17

    .line 2196
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tutk/IOTC/Camera$ThreadRecvAudio;->this$0:Lcom/tutk/IOTC/Camera;

    # getter for: Lcom/tutk/IOTC/Camera;->mAudioTrack:Landroid/media/AudioTrack;
    invoke-static {v4}, Lcom/tutk/IOTC/Camera;->access$10(Lcom/tutk/IOTC/Camera;)Landroid/media/AudioTrack;

    move-result-object v4

    const/4 v6, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v24

    invoke-virtual {v4, v0, v6, v1}, Landroid/media/AudioTrack;->write([BII)I

    .line 2200
    :cond_17
    if-nez v26, :cond_18

    const/4 v4, 0x1

    .line 2199
    :goto_c
    mul-int v6, v30, v4

    .line 2201
    if-nez v28, :cond_19

    const/16 v4, 0x8

    .line 2199
    :goto_d
    mul-int/2addr v4, v6

    div-int/lit8 v4, v4, 0x8

    div-int v29, v4, v24

    .line 2204
    goto/16 :goto_1

    .line 2201
    :cond_18
    const/4 v4, 0x2

    goto :goto_c

    .line 2202
    :cond_19
    const/16 v4, 0x10

    goto :goto_d

    .line 2204
    .end local v24    # "len":I
    :cond_1a
    const/16 v4, 0x8b

    move/from16 v0, v27

    if-ne v0, v4, :cond_1c

    .line 2205
    move-object/from16 v0, p0

    iget v4, v0, Lcom/tutk/IOTC/Camera$ThreadRecvAudio;->nReadSize:I

    move-object/from16 v0, v19

    invoke-static {v5, v4, v0}, Lcom/decoder/util/DecADPCM;->Decode([BI[B)I

    .line 2207
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tutk/IOTC/Camera$ThreadRecvAudio;->mAVChannel:Lcom/tutk/IOTC/Camera$AVChannel;

    iget-boolean v4, v4, Lcom/tutk/IOTC/Camera$AVChannel;->mbMute:Z

    if-nez v4, :cond_1b

    .line 2208
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tutk/IOTC/Camera$ThreadRecvAudio;->this$0:Lcom/tutk/IOTC/Camera;

    # getter for: Lcom/tutk/IOTC/Camera;->mAudioTrack:Landroid/media/AudioTrack;
    invoke-static {v4}, Lcom/tutk/IOTC/Camera;->access$10(Lcom/tutk/IOTC/Camera;)Landroid/media/AudioTrack;

    move-result-object v4

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v8, v0, Lcom/tutk/IOTC/Camera$ThreadRecvAudio;->nReadSize:I

    mul-int/lit8 v8, v8, 0x4

    move-object/from16 v0, v19

    invoke-virtual {v4, v0, v6, v8}, Landroid/media/AudioTrack;->write([BII)I

    .line 2210
    :cond_1b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tutk/IOTC/Camera$ThreadRecvAudio;->this$0:Lcom/tutk/IOTC/Camera;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/tutk/IOTC/Camera$ThreadRecvAudio;->nReadSize:I

    mul-int/lit8 v6, v6, 0x4

    invoke-static {v4, v6}, Lcom/tutk/IOTC/Camera;->access$11(Lcom/tutk/IOTC/Camera;I)V

    goto/16 :goto_1

    .line 2212
    :cond_1c
    const/16 v4, 0x8a

    move/from16 v0, v27

    if-ne v0, v4, :cond_1e

    .line 2213
    move-object/from16 v0, p0

    iget v4, v0, Lcom/tutk/IOTC/Camera$ThreadRecvAudio;->nReadSize:I

    move-object/from16 v0, v23

    invoke-static {v5, v4, v0}, Lcom/decoder/util/DecG711A;->Decode([BI[B)I

    .line 2215
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tutk/IOTC/Camera$ThreadRecvAudio;->mAVChannel:Lcom/tutk/IOTC/Camera$AVChannel;

    iget-boolean v4, v4, Lcom/tutk/IOTC/Camera$AVChannel;->mbMute:Z

    if-nez v4, :cond_1d

    .line 2216
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tutk/IOTC/Camera$ThreadRecvAudio;->this$0:Lcom/tutk/IOTC/Camera;

    # getter for: Lcom/tutk/IOTC/Camera;->mAudioTrack:Landroid/media/AudioTrack;
    invoke-static {v4}, Lcom/tutk/IOTC/Camera;->access$10(Lcom/tutk/IOTC/Camera;)Landroid/media/AudioTrack;

    move-result-object v4

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v8, v0, Lcom/tutk/IOTC/Camera$ThreadRecvAudio;->nReadSize:I

    mul-int/lit8 v8, v8, 0x2

    move-object/from16 v0, v23

    invoke-virtual {v4, v0, v6, v8}, Landroid/media/AudioTrack;->write([BII)I

    .line 2218
    :cond_1d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tutk/IOTC/Camera$ThreadRecvAudio;->this$0:Lcom/tutk/IOTC/Camera;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/tutk/IOTC/Camera$ThreadRecvAudio;->nReadSize:I

    mul-int/lit8 v6, v6, 0x2

    invoke-static {v4, v6}, Lcom/tutk/IOTC/Camera;->access$11(Lcom/tutk/IOTC/Camera;I)V

    goto/16 :goto_1

    .line 2219
    :cond_1e
    const/16 v4, 0x8c

    move/from16 v0, v27

    if-ne v0, v4, :cond_20

    .line 2221
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tutk/IOTC/Camera$ThreadRecvAudio;->mAVChannel:Lcom/tutk/IOTC/Camera$AVChannel;

    iget-boolean v4, v4, Lcom/tutk/IOTC/Camera$AVChannel;->mbMute:Z

    if-nez v4, :cond_1f

    .line 2222
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tutk/IOTC/Camera$ThreadRecvAudio;->this$0:Lcom/tutk/IOTC/Camera;

    # getter for: Lcom/tutk/IOTC/Camera;->mAudioTrack:Landroid/media/AudioTrack;
    invoke-static {v4}, Lcom/tutk/IOTC/Camera;->access$10(Lcom/tutk/IOTC/Camera;)Landroid/media/AudioTrack;

    move-result-object v4

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v8, v0, Lcom/tutk/IOTC/Camera$ThreadRecvAudio;->nReadSize:I

    invoke-virtual {v4, v5, v6, v8}, Landroid/media/AudioTrack;->write([BII)I

    .line 2224
    :cond_1f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tutk/IOTC/Camera$ThreadRecvAudio;->this$0:Lcom/tutk/IOTC/Camera;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/tutk/IOTC/Camera$ThreadRecvAudio;->nReadSize:I

    invoke-static {v4, v6}, Lcom/tutk/IOTC/Camera;->access$11(Lcom/tutk/IOTC/Camera;I)V

    goto/16 :goto_1

    .line 2225
    :cond_20
    const/16 v4, 0x8f

    move/from16 v0, v27

    if-ne v0, v4, :cond_1

    .line 2226
    move-object/from16 v0, p0

    iget v4, v0, Lcom/tutk/IOTC/Camera$ThreadRecvAudio;->nReadSize:I

    int-to-long v11, v4

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v5, v11, v12, v0, v1}, Lcom/decoder/util/DecG726;->g726_decode([BJ[B[J)I

    .line 2228
    const-string v4, "IOTCamera"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "G726 decode size:"

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2229
    const/4 v8, 0x0

    aget-wide v11, v18, v8

    invoke-virtual {v6, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2228
    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2231
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tutk/IOTC/Camera$ThreadRecvAudio;->mAVChannel:Lcom/tutk/IOTC/Camera$AVChannel;

    iget-boolean v4, v4, Lcom/tutk/IOTC/Camera$AVChannel;->mbMute:Z

    if-nez v4, :cond_21

    .line 2232
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tutk/IOTC/Camera$ThreadRecvAudio;->this$0:Lcom/tutk/IOTC/Camera;

    # getter for: Lcom/tutk/IOTC/Camera;->mAudioTrack:Landroid/media/AudioTrack;
    invoke-static {v4}, Lcom/tutk/IOTC/Camera;->access$10(Lcom/tutk/IOTC/Camera;)Landroid/media/AudioTrack;

    move-result-object v4

    const/4 v6, 0x0

    .line 2233
    const/4 v8, 0x0

    aget-wide v11, v18, v8

    long-to-int v8, v11

    .line 2232
    move-object/from16 v0, v17

    invoke-virtual {v4, v0, v6, v8}, Landroid/media/AudioTrack;->write([BII)I

    .line 2237
    :cond_21
    if-nez v26, :cond_22

    const/4 v4, 0x1

    .line 2236
    :goto_e
    mul-int v6, v30, v4

    .line 2238
    if-nez v28, :cond_23

    const/16 v4, 0x8

    .line 2236
    :goto_f
    mul-int/2addr v4, v6

    div-int/lit8 v4, v4, 0x8

    .line 2240
    const/4 v6, 0x0

    aget-wide v11, v18, v6

    long-to-int v6, v11

    .line 2236
    div-int v29, v4, v6

    .line 2242
    goto/16 :goto_1

    .line 2238
    :cond_22
    const/4 v4, 0x2

    goto :goto_e

    .line 2239
    :cond_23
    const/16 v4, 0x10

    goto :goto_f

    .line 2242
    .end local v10    # "frame":Lcom/tutk/IOTC/AVFrame;
    .end local v15    # "frameData":[B
    :cond_24
    move-object/from16 v0, p0

    iget v4, v0, Lcom/tutk/IOTC/Camera$ThreadRecvAudio;->nReadSize:I

    const/16 v6, -0x4e2c

    if-ne v4, v6, :cond_26

    .line 2244
    if-nez v29, :cond_25

    const/16 v4, 0x21

    :goto_10
    int-to-long v11, v4

    :try_start_3
    invoke-static {v11, v12}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1

    .line 2245
    :catch_1
    move-exception v22

    .line 2246
    .local v22, "e":Ljava/lang/InterruptedException;
    invoke-virtual/range {v22 .. v22}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_1

    .line 2244
    .end local v22    # "e":Ljava/lang/InterruptedException;
    :cond_25
    const/16 v4, 0x3e8

    :try_start_4
    div-int v4, v4, v29
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_10

    .line 2248
    :cond_26
    move-object/from16 v0, p0

    iget v4, v0, Lcom/tutk/IOTC/Camera$ThreadRecvAudio;->nReadSize:I

    const/16 v6, -0x4e2e

    if-ne v4, v6, :cond_27

    .line 2249
    const-string v4, "IOTCamera"

    .line 2250
    const-string v6, "avRecvAudioData returns AV_ER_LOSED_THIS_FRAME"

    .line 2249
    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2253
    :cond_27
    if-nez v29, :cond_28

    const/16 v4, 0x21

    :goto_11
    int-to-long v11, v4

    :try_start_5
    invoke-static {v11, v12}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_2

    .line 2257
    :goto_12
    const-string v4, "IOTCamera"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "avRecvAudioData returns "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2258
    move-object/from16 v0, p0

    iget v8, v0, Lcom/tutk/IOTC/Camera$ThreadRecvAudio;->nReadSize:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2257
    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2253
    :cond_28
    const/16 v4, 0x3e8

    :try_start_6
    div-int v4, v4, v29
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_11

    .line 2254
    :catch_2
    move-exception v22

    .line 2255
    .restart local v22    # "e":Ljava/lang/InterruptedException;
    invoke-virtual/range {v22 .. v22}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_12
.end method

.method public stopThread()V
    .locals 1

    .prologue
    .line 2067
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tutk/IOTC/Camera$ThreadRecvAudio;->bIsRunning:Z

    .line 2068
    return-void
.end method
