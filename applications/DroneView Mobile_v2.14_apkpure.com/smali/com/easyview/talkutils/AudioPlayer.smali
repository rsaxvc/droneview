.class public Lcom/easyview/talkutils/AudioPlayer;
.super Ljava/lang/Object;
.source "AudioPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/easyview/talkutils/AudioPlayer$AudioPlayThread;
    }
.end annotation


# static fields
.field public static audioThread:Ljava/lang/Thread;

.field public static audio_out_time:J

.field public static bFilter:Z

.field public static bMute:I

.field public static db:I

.field public static g_AO_Total:I

.field public static inhibition_count:I

.field public static m_AudioTrack:Landroid/media/AudioTrack;

.field public static mute_inter:I


# instance fields
.field public FrameCount:I

.field public _ao_continue_thred:I

.field public _ao_start_thred:I

.field _ao_stop_thred:I

.field private _context:Landroid/content/Context;

.field private audioBuffer:Lcom/easyview/talkutils/CustomBuffer;

.field private bAudioPlaying:Z

.field private last_val:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 11
    sput v2, Lcom/easyview/talkutils/AudioPlayer;->db:I

    .line 12
    sput v2, Lcom/easyview/talkutils/AudioPlayer;->inhibition_count:I

    .line 13
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/easyview/talkutils/AudioPlayer;->audio_out_time:J

    .line 14
    sput v2, Lcom/easyview/talkutils/AudioPlayer;->mute_inter:I

    .line 15
    sput v3, Lcom/easyview/talkutils/AudioPlayer;->bMute:I

    .line 16
    sput-boolean v3, Lcom/easyview/talkutils/AudioPlayer;->bFilter:Z

    .line 21
    sput-object v4, Lcom/easyview/talkutils/AudioPlayer;->audioThread:Ljava/lang/Thread;

    .line 23
    sput-object v4, Lcom/easyview/talkutils/AudioPlayer;->m_AudioTrack:Landroid/media/AudioTrack;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/easyview/talkutils/CustomBuffer;)V
    .locals 3
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "buffer"    # Lcom/easyview/talkutils/CustomBuffer;

    .prologue
    const/16 v2, 0x7d0

    const/4 v1, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/easyview/talkutils/AudioPlayer;->audioBuffer:Lcom/easyview/talkutils/CustomBuffer;

    .line 19
    iput-boolean v1, p0, Lcom/easyview/talkutils/AudioPlayer;->bAudioPlaying:Z

    .line 22
    iput v1, p0, Lcom/easyview/talkutils/AudioPlayer;->last_val:I

    .line 24
    iput v2, p0, Lcom/easyview/talkutils/AudioPlayer;->_ao_start_thred:I

    .line 25
    const/16 v0, 0x9c4

    iput v0, p0, Lcom/easyview/talkutils/AudioPlayer;->_ao_stop_thred:I

    .line 26
    iput v2, p0, Lcom/easyview/talkutils/AudioPlayer;->_ao_continue_thred:I

    .line 27
    const/16 v0, 0x2a

    iput v0, p0, Lcom/easyview/talkutils/AudioPlayer;->FrameCount:I

    .line 31
    iput-object p2, p0, Lcom/easyview/talkutils/AudioPlayer;->audioBuffer:Lcom/easyview/talkutils/CustomBuffer;

    .line 32
    iput-object p1, p0, Lcom/easyview/talkutils/AudioPlayer;->_context:Landroid/content/Context;

    .line 33
    return-void
.end method

.method public static AudioPlayerDataRevc()V
    .locals 1

    .prologue
    .line 109
    sget-object v0, Lcom/easyview/talkutils/AudioPlayer;->audioThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/easyview/talkutils/AudioPlayer;->audioThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 110
    :cond_0
    return-void
.end method

.method static synthetic access$0(Lcom/easyview/talkutils/AudioPlayer;)Z
    .locals 1

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/easyview/talkutils/AudioPlayer;->bAudioPlaying:Z

    return v0
.end method

.method static synthetic access$1(Lcom/easyview/talkutils/AudioPlayer;)Lcom/easyview/talkutils/CustomBuffer;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/easyview/talkutils/AudioPlayer;->audioBuffer:Lcom/easyview/talkutils/CustomBuffer;

    return-object v0
.end method

.method public static byte2short([BI)S
    .locals 3
    .param p0, "b"    # [B
    .param p1, "start"    # I

    .prologue
    .line 114
    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v2, p1, 0x0

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    add-int v0, v1, v2

    .line 115
    .local v0, "val":I
    int-to-short v1, v0

    return v1
.end method


# virtual methods
.method public AudioPlayStart()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 42
    monitor-enter p0

    .line 44
    :try_start_0
    iget-boolean v0, p0, Lcom/easyview/talkutils/AudioPlayer;->bAudioPlaying:Z

    if-eqz v0, :cond_0

    .line 46
    monitor-exit p0

    .line 52
    :goto_0
    return v2

    .line 48
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/easyview/talkutils/AudioPlayer;->bAudioPlaying:Z

    .line 49
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/easyview/talkutils/AudioPlayer$AudioPlayThread;

    invoke-direct {v1, p0}, Lcom/easyview/talkutils/AudioPlayer$AudioPlayThread;-><init>(Lcom/easyview/talkutils/AudioPlayer;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    sput-object v0, Lcom/easyview/talkutils/AudioPlayer;->audioThread:Ljava/lang/Thread;

    .line 50
    sget-object v0, Lcom/easyview/talkutils/AudioPlayer;->audioThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 42
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public AudioPlayStop()V
    .locals 1

    .prologue
    .line 57
    monitor-enter p0

    .line 59
    :try_start_0
    iget-boolean v0, p0, Lcom/easyview/talkutils/AudioPlayer;->bAudioPlaying:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/easyview/talkutils/AudioPlayer;->audioThread:Ljava/lang/Thread;

    if-nez v0, :cond_1

    .line 61
    :cond_0
    monitor-exit p0

    .line 75
    :goto_0
    return-void

    .line 64
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/easyview/talkutils/AudioPlayer;->bAudioPlaying:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    :try_start_1
    sget-object v0, Lcom/easyview/talkutils/AudioPlayer;->audioThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    :goto_1
    const/4 v0, 0x0

    :try_start_2
    sput-object v0, Lcom/easyview/talkutils/AudioPlayer;->audioThread:Ljava/lang/Thread;

    .line 57
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 69
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public initAudioDev()Z
    .locals 11

    .prologue
    const/16 v0, 0x1f40

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 79
    const/4 v4, 0x2

    .line 80
    .local v4, "audioFormat":I
    const/4 v8, 0x0

    .line 82
    .local v8, "mMinBufSize":I
    const/4 v3, 0x2

    .line 83
    .local v3, "channelConfig":I
    const/4 v4, 0x2

    .line 84
    invoke-static {v0, v3, v4}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v8

    .line 85
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "--audio, mMinBufSize="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 87
    const/4 v0, -0x2

    if-eq v8, v0, :cond_0

    const/4 v0, -0x1

    if-ne v8, v0, :cond_1

    :cond_0
    move v0, v10

    .line 104
    :goto_0
    return v0

    .line 94
    :cond_1
    :try_start_0
    new-instance v0, Landroid/media/AudioTrack;

    const/4 v1, 0x3

    const/16 v2, 0x1f40

    mul-int/lit8 v5, v8, 0x2

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    sput-object v0, Lcom/easyview/talkutils/AudioPlayer;->m_AudioTrack:Landroid/media/AudioTrack;

    .line 95
    sget-object v0, Lcom/easyview/talkutils/AudioPlayer;->m_AudioTrack:Landroid/media/AudioTrack;

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Landroid/media/AudioTrack;->setStereoVolume(FF)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    sget-object v0, Lcom/easyview/talkutils/AudioPlayer;->m_AudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    move v0, v9

    .line 104
    goto :goto_0

    .line 97
    :catch_0
    move-exception v7

    .line 99
    .local v7, "iae":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v7}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    move v0, v10

    .line 100
    goto :goto_0
.end method

.method public isAudioPlaying()Z
    .locals 1

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/easyview/talkutils/AudioPlayer;->bAudioPlaying:Z

    return v0
.end method
