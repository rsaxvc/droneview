.class Lcom/easyview/talkutils/CustomAudioRecorder$RecordThread;
.super Ljava/lang/Object;
.source "CustomAudioRecorder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/easyview/talkutils/CustomAudioRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RecordThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/easyview/talkutils/CustomAudioRecorder;


# direct methods
.method constructor <init>(Lcom/easyview/talkutils/CustomAudioRecorder;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcom/easyview/talkutils/CustomAudioRecorder$RecordThread;->this$0:Lcom/easyview/talkutils/CustomAudioRecorder;

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    .prologue
    .line 129
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/easyview/talkutils/CustomAudioRecorder$RecordThread;->this$0:Lcom/easyview/talkutils/CustomAudioRecorder;

    # getter for: Lcom/easyview/talkutils/CustomAudioRecorder;->m_in_rec:Landroid/media/AudioRecord;
    invoke-static {v13}, Lcom/easyview/talkutils/CustomAudioRecorder;->access$0(Lcom/easyview/talkutils/CustomAudioRecorder;)Landroid/media/AudioRecord;

    move-result-object v13

    invoke-virtual {v13}, Landroid/media/AudioRecord;->startRecording()V

    .line 130
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/easyview/talkutils/CustomAudioRecorder$RecordThread;->this$0:Lcom/easyview/talkutils/CustomAudioRecorder;

    const/4 v14, 0x0

    invoke-static {v13, v14}, Lcom/easyview/talkutils/CustomAudioRecorder;->access$1(Lcom/easyview/talkutils/CustomAudioRecorder;I)V

    .line 131
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/easyview/talkutils/CustomAudioRecorder$RecordThread;->this$0:Lcom/easyview/talkutils/CustomAudioRecorder;

    const/16 v14, 0x1770

    invoke-static {v13, v14}, Lcom/easyview/talkutils/CustomAudioRecorder;->access$2(Lcom/easyview/talkutils/CustomAudioRecorder;I)V

    .line 132
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/easyview/talkutils/CustomAudioRecorder$RecordThread;->this$0:Lcom/easyview/talkutils/CustomAudioRecorder;

    const/16 v14, 0x7d0

    invoke-static {v13, v14}, Lcom/easyview/talkutils/CustomAudioRecorder;->access$3(Lcom/easyview/talkutils/CustomAudioRecorder;I)V

    .line 133
    const/4 v6, 0x0

    .line 134
    .local v6, "last_peak_val":I
    const-wide/16 v4, 0x0

    .line 135
    .local v4, "last_peak_time":J
    const/4 v8, 0x0

    .line 136
    .local v8, "peak_val":I
    const/4 v9, 0x0

    .line 137
    .local v9, "peak_value":I
    const/4 v10, 0x0

    .line 138
    .local v10, "speak_val":I
    const/4 v1, 0x0

    .line 139
    .local v1, "adc_val":I
    const/4 v11, 0x0

    .line 141
    .local v11, "talk_time":I
    const/4 v2, 0x0

    .line 142
    .local v2, "bSineltime":I
    const/4 v12, 0x0

    .line 143
    .local v12, "tmp":S
    :goto_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/easyview/talkutils/CustomAudioRecorder$RecordThread;->this$0:Lcom/easyview/talkutils/CustomAudioRecorder;

    # getter for: Lcom/easyview/talkutils/CustomAudioRecorder;->bRecordThreadRuning:Z
    invoke-static {v13}, Lcom/easyview/talkutils/CustomAudioRecorder;->access$4(Lcom/easyview/talkutils/CustomAudioRecorder;)Z

    move-result v13

    if-nez v13, :cond_1

    .line 226
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/easyview/talkutils/CustomAudioRecorder$RecordThread;->this$0:Lcom/easyview/talkutils/CustomAudioRecorder;

    # getter for: Lcom/easyview/talkutils/CustomAudioRecorder;->m_in_rec:Landroid/media/AudioRecord;
    invoke-static {v13}, Lcom/easyview/talkutils/CustomAudioRecorder;->access$0(Lcom/easyview/talkutils/CustomAudioRecorder;)Landroid/media/AudioRecord;

    move-result-object v13

    invoke-virtual {v13}, Landroid/media/AudioRecord;->stop()V

    .line 227
    :cond_0
    return-void

    .line 145
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/easyview/talkutils/CustomAudioRecorder$RecordThread;->this$0:Lcom/easyview/talkutils/CustomAudioRecorder;

    # getter for: Lcom/easyview/talkutils/CustomAudioRecorder;->m_in_rec:Landroid/media/AudioRecord;
    invoke-static {v13}, Lcom/easyview/talkutils/CustomAudioRecorder;->access$0(Lcom/easyview/talkutils/CustomAudioRecorder;)Landroid/media/AudioRecord;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/easyview/talkutils/CustomAudioRecorder$RecordThread;->this$0:Lcom/easyview/talkutils/CustomAudioRecorder;

    # getter for: Lcom/easyview/talkutils/CustomAudioRecorder;->_data:[B
    invoke-static {v14}, Lcom/easyview/talkutils/CustomAudioRecorder;->access$5(Lcom/easyview/talkutils/CustomAudioRecorder;)[B

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x140

    invoke-virtual/range {v13 .. v16}, Landroid/media/AudioRecord;->read([BII)I

    move-result v7

    .line 146
    .local v7, "nRet":I
    if-eqz v7, :cond_0

    .line 150
    sget-boolean v13, Lcom/easyview/talkutils/AudioPlayer;->bFilter:Z

    if-eqz v13, :cond_4

    .line 152
    sget v13, Lcom/easyview/talkutils/AudioPlayer;->bMute:I

    if-eqz v13, :cond_2

    sget v13, Lcom/easyview/talkutils/AudioPlayer;->mute_inter:I

    if-lez v13, :cond_3

    .line 154
    :cond_2
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    const/16 v13, 0x140

    if-lt v3, v13, :cond_5

    .line 158
    const/4 v13, 0x0

    sput v13, Lcom/easyview/talkutils/CustomAudioRecorder;->bTalk:I

    .line 159
    const/4 v11, 0x0

    .line 160
    const/4 v2, 0x0

    .line 163
    .end local v3    # "i":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/easyview/talkutils/CustomAudioRecorder$RecordThread;->this$0:Lcom/easyview/talkutils/CustomAudioRecorder;

    # getter for: Lcom/easyview/talkutils/CustomAudioRecorder;->audioResult:Lcom/easyview/talkutils/CustomAudioRecorder$AudioRecordResult;
    invoke-static {v13}, Lcom/easyview/talkutils/CustomAudioRecorder;->access$6(Lcom/easyview/talkutils/CustomAudioRecorder;)Lcom/easyview/talkutils/CustomAudioRecorder$AudioRecordResult;

    move-result-object v13

    if-eqz v13, :cond_4

    .line 165
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/easyview/talkutils/CustomAudioRecorder$RecordThread;->this$0:Lcom/easyview/talkutils/CustomAudioRecorder;

    # getter for: Lcom/easyview/talkutils/CustomAudioRecorder;->_data:[B
    invoke-static {v13}, Lcom/easyview/talkutils/CustomAudioRecorder;->access$5(Lcom/easyview/talkutils/CustomAudioRecorder;)[B

    move-result-object v13

    const/4 v14, 0x1

    aget-byte v13, v13, v14

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x8

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/easyview/talkutils/CustomAudioRecorder$RecordThread;->this$0:Lcom/easyview/talkutils/CustomAudioRecorder;

    # getter for: Lcom/easyview/talkutils/CustomAudioRecorder;->_data:[B
    invoke-static {v14}, Lcom/easyview/talkutils/CustomAudioRecorder;->access$5(Lcom/easyview/talkutils/CustomAudioRecorder;)[B

    move-result-object v14

    const/4 v15, 0x0

    aget-byte v14, v14, v15

    and-int/lit16 v14, v14, 0xff

    add-int v8, v13, v14

    .line 166
    int-to-short v12, v8

    .line 167
    const v13, 0x8000

    and-int/2addr v13, v12

    const v14, 0x8000

    if-ne v13, v14, :cond_6

    .line 169
    xor-int/lit8 v1, v12, -0x1

    .line 170
    add-int/lit8 v1, v1, 0x1

    .line 177
    :goto_2
    sget v13, Lcom/easyview/talkutils/AudioPlayer;->bMute:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_a

    sget v13, Lcom/easyview/talkutils/AudioPlayer;->mute_inter:I

    if-nez v13, :cond_a

    .line 179
    sget v13, Lcom/easyview/talkutils/CustomAudioRecorder;->bTalk:I

    if-nez v13, :cond_8

    .line 181
    const/16 v13, 0x320

    if-le v1, v13, :cond_7

    .line 183
    const-string v13, "AUDIO"

    const-string v14, "talk_timeU2P: %d"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    add-int/lit8 v11, v11, 0x1

    .line 185
    const/4 v13, 0x5

    if-le v11, v13, :cond_4

    .line 187
    const/4 v13, 0x1

    sput v13, Lcom/easyview/talkutils/CustomAudioRecorder;->bTalk:I

    .line 188
    const/4 v11, 0x0

    .line 189
    const/4 v2, 0x0

    .line 223
    :cond_4
    :goto_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/easyview/talkutils/CustomAudioRecorder$RecordThread;->this$0:Lcom/easyview/talkutils/CustomAudioRecorder;

    # getter for: Lcom/easyview/talkutils/CustomAudioRecorder;->audioResult:Lcom/easyview/talkutils/CustomAudioRecorder$AudioRecordResult;
    invoke-static {v13}, Lcom/easyview/talkutils/CustomAudioRecorder;->access$6(Lcom/easyview/talkutils/CustomAudioRecorder;)Lcom/easyview/talkutils/CustomAudioRecorder$AudioRecordResult;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/easyview/talkutils/CustomAudioRecorder$RecordThread;->this$0:Lcom/easyview/talkutils/CustomAudioRecorder;

    # getter for: Lcom/easyview/talkutils/CustomAudioRecorder;->_data:[B
    invoke-static {v14}, Lcom/easyview/talkutils/CustomAudioRecorder;->access$5(Lcom/easyview/talkutils/CustomAudioRecorder;)[B

    move-result-object v14

    invoke-interface {v13, v14, v7}, Lcom/easyview/talkutils/CustomAudioRecorder$AudioRecordResult;->AudioRecordData([BI)V

    goto/16 :goto_0

    .line 156
    .restart local v3    # "i":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/easyview/talkutils/CustomAudioRecorder$RecordThread;->this$0:Lcom/easyview/talkutils/CustomAudioRecorder;

    # getter for: Lcom/easyview/talkutils/CustomAudioRecorder;->_data:[B
    invoke-static {v13}, Lcom/easyview/talkutils/CustomAudioRecorder;->access$5(Lcom/easyview/talkutils/CustomAudioRecorder;)[B

    move-result-object v13

    const/4 v14, 0x0

    aput-byte v14, v13, v3

    .line 154
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 174
    .end local v3    # "i":I
    :cond_6
    move v1, v12

    goto :goto_2

    .line 194
    :cond_7
    const/4 v13, 0x0

    sput v13, Lcom/easyview/talkutils/CustomAudioRecorder;->bTalk:I

    .line 195
    const/4 v11, 0x0

    .line 198
    goto :goto_3

    .line 199
    :cond_8
    const/16 v13, 0x9c4

    if-ge v1, v13, :cond_9

    .line 201
    const-string v13, "AUDIO"

    const-string v14, "talk_timeDN: %d"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    add-int/lit8 v2, v2, 0x1

    .line 203
    const/16 v13, 0x1e

    if-le v2, v13, :cond_4

    .line 205
    const/4 v13, 0x0

    sput v13, Lcom/easyview/talkutils/CustomAudioRecorder;->bTalk:I

    .line 206
    const/4 v11, 0x0

    .line 207
    const/4 v2, 0x0

    .line 209
    goto :goto_3

    .line 212
    :cond_9
    const/4 v2, 0x0

    .line 215
    goto :goto_3

    .line 218
    :cond_a
    const/4 v13, 0x0

    sput v13, Lcom/easyview/talkutils/CustomAudioRecorder;->bTalk:I

    .line 219
    const/4 v11, 0x0

    goto :goto_3
.end method
