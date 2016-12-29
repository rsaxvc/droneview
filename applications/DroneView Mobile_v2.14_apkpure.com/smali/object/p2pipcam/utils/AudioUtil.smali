.class public Lobject/p2pipcam/utils/AudioUtil;
.super Ljava/lang/Object;
.source "AudioUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lobject/p2pipcam/utils/AudioUtil$AudioRecordThread;,
        Lobject/p2pipcam/utils/AudioUtil$AudioTrackRecordThread;,
        Lobject/p2pipcam/utils/AudioUtil$AudioTrackThread;,
        Lobject/p2pipcam/utils/AudioUtil$IRecordData;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AudioUtil"


# instance fields
.field private _isTrackAndRecord:Z

.field private _play_data:Lobject/p2pipcam/utils/TrackData;

.field private _record:Landroid/media/AudioRecord;

.field private _renderBuffer:Lobject/p2pipcam/utils/AudioBuffer;

.field private _sendQueue:Ljava/util/concurrent/BlockingQueue;

.field private _thread:Ljava/lang/Thread;

.field private _track:Landroid/media/AudioTrack;

.field private apm_handle:I

.field audioFormat:I

.field channelConfig:I

.field private frequency:I

.field private isRecord:Z

.field private isTrack:Z

.field private recordBuffer:[B

.field private recordData:Lobject/p2pipcam/utils/AudioUtil$IRecordData;

.field private recordThread:Ljava/lang/Thread;

.field private sample_length:I

.field private trackThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object v2, p0, Lobject/p2pipcam/utils/AudioUtil;->_record:Landroid/media/AudioRecord;

    .line 26
    iput-object v2, p0, Lobject/p2pipcam/utils/AudioUtil;->recordBuffer:[B

    .line 27
    iput-object v2, p0, Lobject/p2pipcam/utils/AudioUtil;->recordThread:Ljava/lang/Thread;

    .line 28
    iput-object v2, p0, Lobject/p2pipcam/utils/AudioUtil;->recordData:Lobject/p2pipcam/utils/AudioUtil$IRecordData;

    .line 29
    iput-boolean v3, p0, Lobject/p2pipcam/utils/AudioUtil;->isRecord:Z

    .line 30
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lobject/p2pipcam/utils/AudioUtil;->_sendQueue:Ljava/util/concurrent/BlockingQueue;

    .line 31
    iput-object v2, p0, Lobject/p2pipcam/utils/AudioUtil;->_track:Landroid/media/AudioTrack;

    .line 32
    iput-object v2, p0, Lobject/p2pipcam/utils/AudioUtil;->trackThread:Ljava/lang/Thread;

    .line 33
    iput-object v2, p0, Lobject/p2pipcam/utils/AudioUtil;->_renderBuffer:Lobject/p2pipcam/utils/AudioBuffer;

    .line 34
    iput-object v2, p0, Lobject/p2pipcam/utils/AudioUtil;->_play_data:Lobject/p2pipcam/utils/TrackData;

    .line 35
    iput-boolean v3, p0, Lobject/p2pipcam/utils/AudioUtil;->isTrack:Z

    .line 37
    iput-boolean v3, p0, Lobject/p2pipcam/utils/AudioUtil;->_isTrackAndRecord:Z

    .line 38
    iput-object v2, p0, Lobject/p2pipcam/utils/AudioUtil;->_thread:Ljava/lang/Thread;

    .line 39
    iput v3, p0, Lobject/p2pipcam/utils/AudioUtil;->apm_handle:I

    .line 40
    const/16 v0, 0xa0

    iput v0, p0, Lobject/p2pipcam/utils/AudioUtil;->sample_length:I

    .line 41
    const/16 v0, 0x1f40

    iput v0, p0, Lobject/p2pipcam/utils/AudioUtil;->frequency:I

    .line 44
    iput v4, p0, Lobject/p2pipcam/utils/AudioUtil;->audioFormat:I

    .line 45
    iput v4, p0, Lobject/p2pipcam/utils/AudioUtil;->channelConfig:I

    .line 50
    iget v0, p0, Lobject/p2pipcam/utils/AudioUtil;->frequency:I

    invoke-static {v0}, Lcom/webrtc/audio/Apm;->Create(I)I

    move-result v0

    iput v0, p0, Lobject/p2pipcam/utils/AudioUtil;->apm_handle:I

    .line 54
    return-void
.end method

.method static synthetic access$0(Lobject/p2pipcam/utils/AudioUtil;)Z
    .locals 1

    .prologue
    .line 35
    iget-boolean v0, p0, Lobject/p2pipcam/utils/AudioUtil;->isTrack:Z

    return v0
.end method

.method static synthetic access$1(Lobject/p2pipcam/utils/AudioUtil;)Lobject/p2pipcam/utils/AudioBuffer;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lobject/p2pipcam/utils/AudioUtil;->_renderBuffer:Lobject/p2pipcam/utils/AudioBuffer;

    return-object v0
.end method

.method static synthetic access$10(Lobject/p2pipcam/utils/AudioUtil;)Z
    .locals 1

    .prologue
    .line 37
    iget-boolean v0, p0, Lobject/p2pipcam/utils/AudioUtil;->_isTrackAndRecord:Z

    return v0
.end method

.method static synthetic access$11(Lobject/p2pipcam/utils/AudioUtil;)I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lobject/p2pipcam/utils/AudioUtil;->apm_handle:I

    return v0
.end method

.method static synthetic access$12(Lobject/p2pipcam/utils/AudioUtil;I)V
    .locals 0

    .prologue
    .line 40
    iput p1, p0, Lobject/p2pipcam/utils/AudioUtil;->sample_length:I

    return-void
.end method

.method static synthetic access$13(Lobject/p2pipcam/utils/AudioUtil;)Ljava/util/concurrent/BlockingQueue;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lobject/p2pipcam/utils/AudioUtil;->_sendQueue:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method

.method static synthetic access$2(Lobject/p2pipcam/utils/AudioUtil;)Landroid/media/AudioTrack;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lobject/p2pipcam/utils/AudioUtil;->_track:Landroid/media/AudioTrack;

    return-object v0
.end method

.method static synthetic access$3(Lobject/p2pipcam/utils/AudioUtil;)Lobject/p2pipcam/utils/TrackData;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lobject/p2pipcam/utils/AudioUtil;->_play_data:Lobject/p2pipcam/utils/TrackData;

    return-object v0
.end method

.method static synthetic access$4(Lobject/p2pipcam/utils/AudioUtil;Landroid/media/AudioTrack;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lobject/p2pipcam/utils/AudioUtil;->_track:Landroid/media/AudioTrack;

    return-void
.end method

.method static synthetic access$5(Lobject/p2pipcam/utils/AudioUtil;)Landroid/media/AudioRecord;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lobject/p2pipcam/utils/AudioUtil;->_record:Landroid/media/AudioRecord;

    return-object v0
.end method

.method static synthetic access$6(Lobject/p2pipcam/utils/AudioUtil;)Z
    .locals 1

    .prologue
    .line 29
    iget-boolean v0, p0, Lobject/p2pipcam/utils/AudioUtil;->isRecord:Z

    return v0
.end method

.method static synthetic access$7(Lobject/p2pipcam/utils/AudioUtil;)[B
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lobject/p2pipcam/utils/AudioUtil;->recordBuffer:[B

    return-object v0
.end method

.method static synthetic access$8(Lobject/p2pipcam/utils/AudioUtil;)I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lobject/p2pipcam/utils/AudioUtil;->sample_length:I

    return v0
.end method

.method static synthetic access$9(Lobject/p2pipcam/utils/AudioUtil;)Lobject/p2pipcam/utils/AudioUtil$IRecordData;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lobject/p2pipcam/utils/AudioUtil;->recordData:Lobject/p2pipcam/utils/AudioUtil$IRecordData;

    return-object v0
.end method

.method private initRecord()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x1

    .line 65
    iget v0, p0, Lobject/p2pipcam/utils/AudioUtil;->frequency:I

    iget v2, p0, Lobject/p2pipcam/utils/AudioUtil;->channelConfig:I

    iget v3, p0, Lobject/p2pipcam/utils/AudioUtil;->audioFormat:I

    invoke-static {v0, v2, v3}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v5

    .line 66
    .local v5, "recordBufferSize":I
    new-instance v0, Landroid/media/AudioRecord;

    iget v2, p0, Lobject/p2pipcam/utils/AudioUtil;->frequency:I

    iget v3, p0, Lobject/p2pipcam/utils/AudioUtil;->channelConfig:I

    iget v4, p0, Lobject/p2pipcam/utils/AudioUtil;->audioFormat:I

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v0, p0, Lobject/p2pipcam/utils/AudioUtil;->_record:Landroid/media/AudioRecord;

    .line 67
    iget-object v0, p0, Lobject/p2pipcam/utils/AudioUtil;->_record:Landroid/media/AudioRecord;

    if-nez v0, :cond_0

    move v1, v6

    .line 70
    :goto_0
    return v1

    .line 68
    :cond_0
    const-string v0, "AudioUtil"

    const-string v2, "initRecord:%d"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iget v0, p0, Lobject/p2pipcam/utils/AudioUtil;->sample_length:I

    new-array v0, v0, [B

    iput-object v0, p0, Lobject/p2pipcam/utils/AudioUtil;->recordBuffer:[B

    goto :goto_0
.end method

.method private initTrack()Z
    .locals 8

    .prologue
    const/4 v6, 0x1

    const v7, 0x3ecccccd    # 0.4f

    .line 57
    iget v0, p0, Lobject/p2pipcam/utils/AudioUtil;->frequency:I

    iget v1, p0, Lobject/p2pipcam/utils/AudioUtil;->channelConfig:I

    iget v2, p0, Lobject/p2pipcam/utils/AudioUtil;->audioFormat:I

    invoke-static {v0, v1, v2}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    .line 59
    new-instance v0, Landroid/media/AudioTrack;

    const/4 v1, 0x3

    iget v2, p0, Lobject/p2pipcam/utils/AudioUtil;->frequency:I

    iget v3, p0, Lobject/p2pipcam/utils/AudioUtil;->channelConfig:I

    iget v4, p0, Lobject/p2pipcam/utils/AudioUtil;->audioFormat:I

    const/16 v5, 0x140

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    iput-object v0, p0, Lobject/p2pipcam/utils/AudioUtil;->_track:Landroid/media/AudioTrack;

    .line 61
    iget-object v0, p0, Lobject/p2pipcam/utils/AudioUtil;->_track:Landroid/media/AudioTrack;

    invoke-virtual {v0, v7, v7}, Landroid/media/AudioTrack;->setStereoVolume(FF)I

    .line 62
    return v6
.end method


# virtual methods
.method public Start(Lobject/p2pipcam/utils/AudioBuffer;Lobject/p2pipcam/utils/AudioUtil$IRecordData;)Z
    .locals 3
    .param p1, "buffer"    # Lobject/p2pipcam/utils/AudioBuffer;
    .param p2, "imp"    # Lobject/p2pipcam/utils/AudioUtil$IRecordData;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 160
    monitor-enter p0

    .line 161
    :try_start_0
    iget-boolean v2, p0, Lobject/p2pipcam/utils/AudioUtil;->_isTrackAndRecord:Z

    if-eqz v2, :cond_0

    .line 162
    monitor-exit p0

    .line 175
    :goto_0
    return v0

    .line 164
    :cond_0
    invoke-direct {p0}, Lobject/p2pipcam/utils/AudioUtil;->initTrack()Z

    move-result v2

    if-nez v2, :cond_1

    .line 165
    monitor-exit p0

    move v0, v1

    goto :goto_0

    .line 167
    :cond_1
    invoke-direct {p0}, Lobject/p2pipcam/utils/AudioUtil;->initRecord()Z

    move-result v2

    if-nez v2, :cond_2

    monitor-exit p0

    move v0, v1

    goto :goto_0

    .line 168
    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lobject/p2pipcam/utils/AudioUtil;->_isTrackAndRecord:Z

    .line 169
    iput-object p1, p0, Lobject/p2pipcam/utils/AudioUtil;->_renderBuffer:Lobject/p2pipcam/utils/AudioBuffer;

    .line 170
    iput-object p2, p0, Lobject/p2pipcam/utils/AudioUtil;->recordData:Lobject/p2pipcam/utils/AudioUtil$IRecordData;

    .line 172
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lobject/p2pipcam/utils/AudioUtil$AudioTrackRecordThread;

    invoke-direct {v2, p0}, Lobject/p2pipcam/utils/AudioUtil$AudioTrackRecordThread;-><init>(Lobject/p2pipcam/utils/AudioUtil;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lobject/p2pipcam/utils/AudioUtil;->_thread:Ljava/lang/Thread;

    .line 173
    iget-object v1, p0, Lobject/p2pipcam/utils/AudioUtil;->_thread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 160
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public StartRecord(Lobject/p2pipcam/utils/AudioUtil$IRecordData;)V
    .locals 2
    .param p1, "imp"    # Lobject/p2pipcam/utils/AudioUtil$IRecordData;

    .prologue
    .line 112
    iput-object p1, p0, Lobject/p2pipcam/utils/AudioUtil;->recordData:Lobject/p2pipcam/utils/AudioUtil$IRecordData;

    .line 113
    monitor-enter p0

    .line 114
    :try_start_0
    iget-boolean v0, p0, Lobject/p2pipcam/utils/AudioUtil;->_isTrackAndRecord:Z

    if-eqz v0, :cond_0

    .line 115
    monitor-exit p0

    .line 126
    :goto_0
    return-void

    .line 117
    :cond_0
    const-string v0, "AudioUtil"

    const-string v1, "startRecord"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-boolean v0, p0, Lobject/p2pipcam/utils/AudioUtil;->isRecord:Z

    if-eqz v0, :cond_1

    .line 119
    monitor-exit p0

    goto :goto_0

    .line 113
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 121
    :cond_1
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lobject/p2pipcam/utils/AudioUtil;->isRecord:Z

    .line 122
    invoke-direct {p0}, Lobject/p2pipcam/utils/AudioUtil;->initRecord()Z

    .line 113
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public StartTrack(Lobject/p2pipcam/utils/AudioBuffer;)Z
    .locals 3
    .param p1, "buffer"    # Lobject/p2pipcam/utils/AudioBuffer;

    .prologue
    const/4 v0, 0x1

    .line 74
    iput-object p1, p0, Lobject/p2pipcam/utils/AudioUtil;->_renderBuffer:Lobject/p2pipcam/utils/AudioBuffer;

    .line 75
    monitor-enter p0

    .line 76
    :try_start_0
    iget-boolean v1, p0, Lobject/p2pipcam/utils/AudioUtil;->_isTrackAndRecord:Z

    if-eqz v1, :cond_0

    .line 77
    monitor-exit p0

    .line 93
    :goto_0
    return v0

    .line 79
    :cond_0
    iget-boolean v1, p0, Lobject/p2pipcam/utils/AudioUtil;->isTrack:Z

    if-eqz v1, :cond_1

    .line 80
    monitor-exit p0

    goto :goto_0

    .line 75
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 82
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lobject/p2pipcam/utils/AudioUtil;->initTrack()Z

    move-result v1

    if-nez v1, :cond_2

    .line 83
    monitor-exit p0

    const/4 v0, 0x0

    goto :goto_0

    .line 85
    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lobject/p2pipcam/utils/AudioUtil;->isRecord:Z

    .line 86
    invoke-direct {p0}, Lobject/p2pipcam/utils/AudioUtil;->initRecord()Z

    .line 87
    const/4 v1, 0x1

    iput-boolean v1, p0, Lobject/p2pipcam/utils/AudioUtil;->isTrack:Z

    .line 88
    iget-object v1, p0, Lobject/p2pipcam/utils/AudioUtil;->_track:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->play()V

    .line 90
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lobject/p2pipcam/utils/AudioUtil$AudioTrackRecordThread;

    invoke-direct {v2, p0}, Lobject/p2pipcam/utils/AudioUtil$AudioTrackRecordThread;-><init>(Lobject/p2pipcam/utils/AudioUtil;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lobject/p2pipcam/utils/AudioUtil;->trackThread:Ljava/lang/Thread;

    .line 91
    iget-object v1, p0, Lobject/p2pipcam/utils/AudioUtil;->trackThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 75
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public Stop()V
    .locals 3

    .prologue
    .line 179
    monitor-enter p0

    .line 180
    :try_start_0
    iget-boolean v1, p0, Lobject/p2pipcam/utils/AudioUtil;->_isTrackAndRecord:Z

    if-nez v1, :cond_0

    .line 181
    monitor-exit p0

    .line 203
    :goto_0
    return-void

    .line 183
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lobject/p2pipcam/utils/AudioUtil;->_isTrackAndRecord:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    :try_start_1
    iget-object v1, p0, Lobject/p2pipcam/utils/AudioUtil;->_thread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V

    .line 186
    const-string v1, "AudioUtil"

    const-string v2, "stop"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 190
    :goto_1
    const/4 v1, 0x0

    :try_start_2
    iput-object v1, p0, Lobject/p2pipcam/utils/AudioUtil;->_thread:Ljava/lang/Thread;

    .line 191
    iget-object v1, p0, Lobject/p2pipcam/utils/AudioUtil;->_record:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->release()V

    .line 192
    const/4 v1, 0x0

    iput-object v1, p0, Lobject/p2pipcam/utils/AudioUtil;->_record:Landroid/media/AudioRecord;

    .line 193
    iget-object v1, p0, Lobject/p2pipcam/utils/AudioUtil;->_track:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->release()V

    .line 194
    const/4 v1, 0x0

    iput-object v1, p0, Lobject/p2pipcam/utils/AudioUtil;->_track:Landroid/media/AudioTrack;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 197
    :try_start_3
    invoke-static {}, Lobject/p2pipcam/utils/AudioDataUtil;->getInstance()Lobject/p2pipcam/utils/AudioDataUtil;

    move-result-object v1

    invoke-virtual {v1}, Lobject/p2pipcam/utils/AudioDataUtil;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 179
    :goto_2
    :try_start_4
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1

    .line 198
    :catch_0
    move-exception v0

    .line 200
    .local v0, "e":Ljava/io/IOException;
    :try_start_5
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 187
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public StopRecord()V
    .locals 3

    .prologue
    .line 129
    monitor-enter p0

    .line 130
    :try_start_0
    iget-boolean v1, p0, Lobject/p2pipcam/utils/AudioUtil;->isRecord:Z

    if-nez v1, :cond_0

    .line 131
    monitor-exit p0

    .line 151
    :goto_0
    return-void

    .line 134
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lobject/p2pipcam/utils/AudioUtil;->isRecord:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    :try_start_1
    iget-object v1, p0, Lobject/p2pipcam/utils/AudioUtil;->recordThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V

    .line 138
    const-string v1, "AudioUtil"

    const-string v2, "stopRecord()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 142
    :goto_1
    const/4 v1, 0x0

    :try_start_2
    iput-object v1, p0, Lobject/p2pipcam/utils/AudioUtil;->recordThread:Ljava/lang/Thread;

    .line 143
    iget-object v1, p0, Lobject/p2pipcam/utils/AudioUtil;->_record:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->release()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 145
    :try_start_3
    invoke-static {}, Lobject/p2pipcam/utils/AudioDataUtil;->getInstance()Lobject/p2pipcam/utils/AudioDataUtil;

    move-result-object v1

    invoke-virtual {v1}, Lobject/p2pipcam/utils/AudioDataUtil;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 129
    :goto_2
    :try_start_4
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1

    .line 146
    :catch_0
    move-exception v0

    .line 148
    .local v0, "e":Ljava/io/IOException;
    :try_start_5
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 139
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public StopTrack()V
    .locals 1

    .prologue
    .line 96
    monitor-enter p0

    .line 97
    :try_start_0
    iget-boolean v0, p0, Lobject/p2pipcam/utils/AudioUtil;->isTrack:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lobject/p2pipcam/utils/AudioUtil;->trackThread:Ljava/lang/Thread;

    if-nez v0, :cond_1

    .line 98
    :cond_0
    monitor-exit p0

    .line 109
    :goto_0
    return-void

    .line 100
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lobject/p2pipcam/utils/AudioUtil;->isTrack:Z

    .line 101
    const/4 v0, 0x0

    iput-boolean v0, p0, Lobject/p2pipcam/utils/AudioUtil;->isRecord:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    :try_start_1
    iget-object v0, p0, Lobject/p2pipcam/utils/AudioUtil;->trackThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 107
    :goto_1
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lobject/p2pipcam/utils/AudioUtil;->trackThread:Ljava/lang/Thread;

    .line 96
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 104
    :catch_0
    move-exception v0

    goto :goto_1
.end method
