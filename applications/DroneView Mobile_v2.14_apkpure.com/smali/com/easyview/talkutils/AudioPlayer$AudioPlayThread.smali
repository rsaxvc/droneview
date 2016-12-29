.class Lcom/easyview/talkutils/AudioPlayer$AudioPlayThread;
.super Ljava/lang/Object;
.source "AudioPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/easyview/talkutils/AudioPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AudioPlayThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/easyview/talkutils/AudioPlayer;


# direct methods
.method constructor <init>(Lcom/easyview/talkutils/AudioPlayer;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/easyview/talkutils/AudioPlayer$AudioPlayThread;->this$0:Lcom/easyview/talkutils/AudioPlayer;

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    return-void
.end method

.method private sendmutedata()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x140

    .line 127
    new-array v0, v3, [B

    .line 128
    .local v0, "data":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v3, :cond_0

    .line 132
    sget-object v2, Lcom/easyview/talkutils/AudioPlayer;->m_AudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v2, v0, v4, v3}, Landroid/media/AudioTrack;->write([BII)I

    .line 133
    return-void

    .line 130
    :cond_0
    aput-byte v4, v0, v1

    .line 128
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 20

    .prologue
    .line 137
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/easyview/talkutils/AudioPlayer$AudioPlayThread;->this$0:Lcom/easyview/talkutils/AudioPlayer;

    invoke-virtual {v15}, Lcom/easyview/talkutils/AudioPlayer;->initAudioDev()Z

    move-result v15

    if-nez v15, :cond_0

    .line 250
    :goto_0
    return-void

    .line 141
    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/easyview/talkutils/AudioPlayer$AudioPlayThread;->this$0:Lcom/easyview/talkutils/AudioPlayer;

    const/16 v16, 0x7d0

    move/from16 v0, v16

    iput v0, v15, Lcom/easyview/talkutils/AudioPlayer;->_ao_continue_thred:I

    .line 142
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/easyview/talkutils/AudioPlayer$AudioPlayThread;->this$0:Lcom/easyview/talkutils/AudioPlayer;

    const/16 v16, 0x1770

    move/from16 v0, v16

    iput v0, v15, Lcom/easyview/talkutils/AudioPlayer;->_ao_start_thred:I

    .line 144
    const/4 v5, 0x0

    .line 145
    .local v5, "last_a0":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 146
    .local v6, "last_time":J
    const/4 v12, 0x0

    .line 147
    .local v12, "speak_val":I
    const/16 v2, 0x19

    .line 148
    .local v2, "cache_count":I
    const/4 v10, 0x0

    .line 150
    .local v10, "mute_time":I
    const/4 v13, 0x0

    .line 152
    .local v13, "sum_value":I
    const/4 v3, 0x0

    .line 153
    .local v3, "dac_val":I
    const/4 v1, 0x0

    .line 154
    .local v1, "a0":I
    const/4 v14, 0x0

    .line 155
    .local v14, "val":S
    const/4 v11, 0x0

    .line 156
    .local v11, "play_data":Lcom/easyview/talkutils/CustomBufferData;
    :goto_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/easyview/talkutils/AudioPlayer$AudioPlayThread;->this$0:Lcom/easyview/talkutils/AudioPlayer;

    # getter for: Lcom/easyview/talkutils/AudioPlayer;->bAudioPlaying:Z
    invoke-static {v15}, Lcom/easyview/talkutils/AudioPlayer;->access$0(Lcom/easyview/talkutils/AudioPlayer;)Z

    move-result v15

    if-nez v15, :cond_1

    .line 247
    sget-object v15, Lcom/easyview/talkutils/AudioPlayer;->m_AudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v15}, Landroid/media/AudioTrack;->stop()V

    .line 248
    sget-object v15, Lcom/easyview/talkutils/AudioPlayer;->m_AudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v15}, Landroid/media/AudioTrack;->release()V

    .line 249
    const/4 v15, 0x0

    sput-object v15, Lcom/easyview/talkutils/AudioPlayer;->m_AudioTrack:Landroid/media/AudioTrack;

    goto :goto_0

    .line 158
    :cond_1
    sget v15, Lcom/easyview/talkutils/AudioPlayer;->mute_inter:I

    if-lez v15, :cond_2

    .line 160
    sget v15, Lcom/easyview/talkutils/AudioPlayer;->mute_inter:I

    add-int/lit8 v15, v15, -0x1

    sput v15, Lcom/easyview/talkutils/AudioPlayer;->mute_inter:I

    .line 163
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/easyview/talkutils/AudioPlayer$AudioPlayThread;->this$0:Lcom/easyview/talkutils/AudioPlayer;

    # getter for: Lcom/easyview/talkutils/AudioPlayer;->audioBuffer:Lcom/easyview/talkutils/CustomBuffer;
    invoke-static {v15}, Lcom/easyview/talkutils/AudioPlayer;->access$1(Lcom/easyview/talkutils/AudioPlayer;)Lcom/easyview/talkutils/CustomBuffer;

    move-result-object v15

    invoke-virtual {v15, v2}, Lcom/easyview/talkutils/CustomBuffer;->GetData(I)Lcom/easyview/talkutils/CustomBufferData;

    move-result-object v4

    .line 164
    .local v4, "data":Lcom/easyview/talkutils/CustomBufferData;
    if-nez v4, :cond_4

    .line 166
    const/4 v14, 0x0

    .line 174
    :goto_2
    sget-boolean v15, Lcom/easyview/talkutils/AudioPlayer;->bFilter:Z

    if-eqz v15, :cond_9

    .line 176
    const v15, 0x8000

    and-int/2addr v15, v14

    const v16, 0x8000

    move/from16 v0, v16

    if-ne v15, v0, :cond_5

    .line 178
    xor-int/lit8 v3, v14, -0x1

    .line 179
    add-int/lit8 v3, v3, 0x1

    .line 186
    :goto_3
    move v1, v14

    .line 188
    sub-int v15, v1, v5

    invoke-static {v15}, Ljava/lang/Math;->abs(I)I

    move-result v13

    .line 189
    move v5, v1

    .line 190
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 191
    .local v8, "ms":J
    sget v15, Lcom/easyview/talkutils/AudioPlayer;->bMute:I

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_6

    .line 193
    sget v15, Lcom/easyview/talkutils/AudioPlayer;->mute_inter:I

    if-nez v15, :cond_3

    sget v15, Lcom/easyview/talkutils/CustomAudioRecorder;->bTalk:I

    if-nez v15, :cond_3

    .line 195
    const/16 v15, 0x708

    if-le v3, v15, :cond_3

    const/16 v15, 0x6a4

    if-le v13, v15, :cond_3

    .line 197
    const/4 v2, 0x5

    .line 198
    const/16 v15, 0x19

    sput v15, Lcom/easyview/talkutils/AudioPlayer;->inhibition_count:I

    .line 199
    const/4 v15, 0x0

    sput v15, Lcom/easyview/talkutils/AudioPlayer;->bMute:I

    .line 200
    const/4 v10, 0x0

    .line 201
    move v12, v1

    .line 202
    const-string v15, "AUDIO"

    const-string v16, "******AO_STA0: %d, %d, %d"

    const/16 v17, 0x3

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    .end local v8    # "ms":J
    :cond_3
    :goto_4
    sget v15, Lcom/easyview/talkutils/AudioPlayer;->bMute:I

    if-nez v15, :cond_a

    if-eqz v4, :cond_a

    .line 230
    sget-object v15, Lcom/easyview/talkutils/AudioPlayer;->m_AudioTrack:Landroid/media/AudioTrack;

    iget-object v0, v11, Lcom/easyview/talkutils/CustomBufferData;->data:[B

    move-object/from16 v16, v0

    const/16 v17, 0x0

    iget-object v0, v11, Lcom/easyview/talkutils/CustomBufferData;->head:Lcom/easyview/talkutils/CustomBufferHead;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/easyview/talkutils/CustomBufferHead;->length:I

    move/from16 v18, v0

    invoke-virtual/range {v15 .. v18}, Landroid/media/AudioTrack;->write([BII)I

    .line 239
    :goto_5
    const-wide/16 v15, 0x13

    :try_start_0
    invoke-static/range {v15 .. v16}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 241
    :catch_0
    move-exception v15

    goto/16 :goto_1

    .line 170
    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/easyview/talkutils/AudioPlayer$AudioPlayThread;->this$0:Lcom/easyview/talkutils/AudioPlayer;

    # getter for: Lcom/easyview/talkutils/AudioPlayer;->audioBuffer:Lcom/easyview/talkutils/CustomBuffer;
    invoke-static {v15}, Lcom/easyview/talkutils/AudioPlayer;->access$1(Lcom/easyview/talkutils/AudioPlayer;)Lcom/easyview/talkutils/CustomBuffer;

    move-result-object v15

    invoke-virtual {v15}, Lcom/easyview/talkutils/CustomBuffer;->RemoveData()Lcom/easyview/talkutils/CustomBufferData;

    move-result-object v11

    .line 172
    iget-object v15, v4, Lcom/easyview/talkutils/CustomBufferData;->data:[B

    const/16 v16, 0x0

    invoke-static/range {v15 .. v16}, Lcom/easyview/talkutils/AudioPlayer;->byte2short([BI)S

    move-result v14

    goto/16 :goto_2

    .line 183
    :cond_5
    move v3, v14

    goto/16 :goto_3

    .line 208
    .restart local v8    # "ms":J
    :cond_6
    const/16 v15, 0x708

    if-lt v3, v15, :cond_7

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/easyview/talkutils/AudioPlayer$AudioPlayThread;->this$0:Lcom/easyview/talkutils/AudioPlayer;

    iget v15, v15, Lcom/easyview/talkutils/AudioPlayer;->_ao_stop_thred:I

    if-ge v13, v15, :cond_8

    .line 210
    :cond_7
    const/4 v2, 0x5

    .line 211
    const/16 v15, 0x19

    sput v15, Lcom/easyview/talkutils/AudioPlayer;->inhibition_count:I

    .line 213
    add-int/lit8 v10, v10, 0x1

    .line 214
    const/16 v15, 0x1e

    if-le v10, v15, :cond_3

    .line 216
    const/4 v15, 0x1

    sput v15, Lcom/easyview/talkutils/AudioPlayer;->bMute:I

    .line 217
    const/4 v10, 0x0

    .line 218
    const/16 v15, 0xa

    sput v15, Lcom/easyview/talkutils/AudioPlayer;->mute_inter:I

    .line 219
    const-string v15, "AUDIO"

    const-string v16, "******AO_SLInte: %d, %d, %d"

    const/16 v17, 0x3

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 225
    :cond_8
    const/4 v10, 0x0

    .line 227
    goto/16 :goto_4

    .end local v8    # "ms":J
    :cond_9
    const/4 v15, 0x0

    sput v15, Lcom/easyview/talkutils/AudioPlayer;->bMute:I

    goto/16 :goto_4

    .line 234
    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/easyview/talkutils/AudioPlayer$AudioPlayThread;->sendmutedata()V

    goto :goto_5
.end method
