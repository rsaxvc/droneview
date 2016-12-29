.class public Lcom/easyview/talkutils/CustomAudioRecorder;
.super Ljava/lang/Object;
.source "CustomAudioRecorder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/easyview/talkutils/CustomAudioRecorder$AudioRecordResult;,
        Lcom/easyview/talkutils/CustomAudioRecorder$RecordThread;
    }
.end annotation


# static fields
.field public static ao_db_limit:I

.field public static bTalk:I


# instance fields
.field private _ao_continue_thred:I

.field private _ao_start_thred:I

.field private _context:Landroid/content/Context;

.field private _data:[B

.field private _data_count:I

.field public _max_db:I

.field private _mute_count:I

.field private _read_index:I

.field private _speak_count:I

.field private _speak_lower_count:I

.field private _stable_modify_count:I

.field private _stable_value:I

.field private _write_index:I

.field private allow_count:I

.field private audioResult:Lcom/easyview/talkutils/CustomAudioRecorder$AudioRecordResult;

.field private bRecordThreadRuning:Z

.field private backgroud_value:I

.field private cant_value:I

.field private db:I

.field private low_cant_count:I

.field private m_in_buf_size:I

.field private m_in_rec:Landroid/media/AudioRecord;

.field private min_db:I

.field private over_cant_count:I

.field private recordThread:Ljava/lang/Thread;

.field private speak_min_value:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const/16 v0, 0x14

    sput v0, Lcom/easyview/talkutils/CustomAudioRecorder;->ao_db_limit:I

    .line 36
    const/4 v0, 0x1

    sput v0, Lcom/easyview/talkutils/CustomAudioRecorder;->bTalk:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/easyview/talkutils/CustomAudioRecorder$AudioRecordResult;)V
    .locals 3
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "result"    # Lcom/easyview/talkutils/CustomAudioRecorder$AudioRecordResult;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/16 v0, 0x4a38

    iput v0, p0, Lcom/easyview/talkutils/CustomAudioRecorder;->cant_value:I

    .line 10
    const/16 v0, 0x1b58

    iput v0, p0, Lcom/easyview/talkutils/CustomAudioRecorder;->speak_min_value:I

    .line 11
    const/16 v0, 0x12c

    iput v0, p0, Lcom/easyview/talkutils/CustomAudioRecorder;->backgroud_value:I

    .line 12
    const/16 v0, 0x122

    iput v0, p0, Lcom/easyview/talkutils/CustomAudioRecorder;->min_db:I

    .line 15
    iput v1, p0, Lcom/easyview/talkutils/CustomAudioRecorder;->db:I

    .line 16
    iput-object v2, p0, Lcom/easyview/talkutils/CustomAudioRecorder;->audioResult:Lcom/easyview/talkutils/CustomAudioRecorder$AudioRecordResult;

    .line 17
    iput-object v2, p0, Lcom/easyview/talkutils/CustomAudioRecorder;->recordThread:Ljava/lang/Thread;

    .line 18
    iput-boolean v1, p0, Lcom/easyview/talkutils/CustomAudioRecorder;->bRecordThreadRuning:Z

    .line 19
    iput v1, p0, Lcom/easyview/talkutils/CustomAudioRecorder;->m_in_buf_size:I

    .line 20
    iput-object v2, p0, Lcom/easyview/talkutils/CustomAudioRecorder;->m_in_rec:Landroid/media/AudioRecord;

    .line 21
    iput-object v2, p0, Lcom/easyview/talkutils/CustomAudioRecorder;->_data:[B

    .line 22
    iput v1, p0, Lcom/easyview/talkutils/CustomAudioRecorder;->_write_index:I

    .line 23
    iput v1, p0, Lcom/easyview/talkutils/CustomAudioRecorder;->_read_index:I

    .line 24
    iput v1, p0, Lcom/easyview/talkutils/CustomAudioRecorder;->_data_count:I

    .line 25
    iput v1, p0, Lcom/easyview/talkutils/CustomAudioRecorder;->allow_count:I

    .line 26
    const/16 v0, 0x2328

    iput v0, p0, Lcom/easyview/talkutils/CustomAudioRecorder;->_ao_start_thred:I

    .line 27
    const/16 v0, 0x7d0

    iput v0, p0, Lcom/easyview/talkutils/CustomAudioRecorder;->_ao_continue_thred:I

    .line 28
    const/16 v0, 0x320

    iput v0, p0, Lcom/easyview/talkutils/CustomAudioRecorder;->_stable_value:I

    .line 29
    const/16 v0, 0x64

    iput v0, p0, Lcom/easyview/talkutils/CustomAudioRecorder;->_stable_modify_count:I

    .line 30
    iput v1, p0, Lcom/easyview/talkutils/CustomAudioRecorder;->_speak_count:I

    .line 31
    iput v1, p0, Lcom/easyview/talkutils/CustomAudioRecorder;->_speak_lower_count:I

    .line 32
    iput v1, p0, Lcom/easyview/talkutils/CustomAudioRecorder;->_mute_count:I

    .line 33
    iput v1, p0, Lcom/easyview/talkutils/CustomAudioRecorder;->over_cant_count:I

    .line 34
    iput v1, p0, Lcom/easyview/talkutils/CustomAudioRecorder;->low_cant_count:I

    .line 35
    iput v1, p0, Lcom/easyview/talkutils/CustomAudioRecorder;->_max_db:I

    .line 40
    iput-object p1, p0, Lcom/easyview/talkutils/CustomAudioRecorder;->_context:Landroid/content/Context;

    .line 41
    iput-object p2, p0, Lcom/easyview/talkutils/CustomAudioRecorder;->audioResult:Lcom/easyview/talkutils/CustomAudioRecorder$AudioRecordResult;

    .line 42
    invoke-virtual {p0}, Lcom/easyview/talkutils/CustomAudioRecorder;->initRecorder()Z

    .line 43
    return-void
.end method

.method static synthetic access$0(Lcom/easyview/talkutils/CustomAudioRecorder;)Landroid/media/AudioRecord;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/easyview/talkutils/CustomAudioRecorder;->m_in_rec:Landroid/media/AudioRecord;

    return-object v0
.end method

.method static synthetic access$1(Lcom/easyview/talkutils/CustomAudioRecorder;I)V
    .locals 0

    .prologue
    .line 25
    iput p1, p0, Lcom/easyview/talkutils/CustomAudioRecorder;->allow_count:I

    return-void
.end method

.method static synthetic access$2(Lcom/easyview/talkutils/CustomAudioRecorder;I)V
    .locals 0

    .prologue
    .line 26
    iput p1, p0, Lcom/easyview/talkutils/CustomAudioRecorder;->_ao_start_thred:I

    return-void
.end method

.method static synthetic access$3(Lcom/easyview/talkutils/CustomAudioRecorder;I)V
    .locals 0

    .prologue
    .line 27
    iput p1, p0, Lcom/easyview/talkutils/CustomAudioRecorder;->_ao_continue_thred:I

    return-void
.end method

.method static synthetic access$4(Lcom/easyview/talkutils/CustomAudioRecorder;)Z
    .locals 1

    .prologue
    .line 18
    iget-boolean v0, p0, Lcom/easyview/talkutils/CustomAudioRecorder;->bRecordThreadRuning:Z

    return v0
.end method

.method static synthetic access$5(Lcom/easyview/talkutils/CustomAudioRecorder;)[B
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/easyview/talkutils/CustomAudioRecorder;->_data:[B

    return-object v0
.end method

.method static synthetic access$6(Lcom/easyview/talkutils/CustomAudioRecorder;)Lcom/easyview/talkutils/CustomAudioRecorder$AudioRecordResult;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/easyview/talkutils/CustomAudioRecorder;->audioResult:Lcom/easyview/talkutils/CustomAudioRecorder$AudioRecordResult;

    return-object v0
.end method


# virtual methods
.method public StartRecord()V
    .locals 2

    .prologue
    .line 47
    monitor-enter p0

    .line 49
    :try_start_0
    const-string v0, "tag"

    const-string v1, "startRecord"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    iget-boolean v0, p0, Lcom/easyview/talkutils/CustomAudioRecorder;->bRecordThreadRuning:Z

    if-eqz v0, :cond_0

    .line 52
    monitor-exit p0

    .line 61
    :goto_0
    return-void

    .line 54
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/easyview/talkutils/CustomAudioRecorder;->_data_count:I

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lcom/easyview/talkutils/CustomAudioRecorder;->_write_index:I

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lcom/easyview/talkutils/CustomAudioRecorder;->_read_index:I

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/easyview/talkutils/CustomAudioRecorder;->bRecordThreadRuning:Z

    .line 58
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/easyview/talkutils/CustomAudioRecorder$RecordThread;

    invoke-direct {v1, p0}, Lcom/easyview/talkutils/CustomAudioRecorder$RecordThread;-><init>(Lcom/easyview/talkutils/CustomAudioRecorder;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/easyview/talkutils/CustomAudioRecorder;->recordThread:Ljava/lang/Thread;

    .line 59
    iget-object v0, p0, Lcom/easyview/talkutils/CustomAudioRecorder;->recordThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 47
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public StopRecord()V
    .locals 2

    .prologue
    .line 65
    monitor-enter p0

    .line 67
    :try_start_0
    iget-boolean v0, p0, Lcom/easyview/talkutils/CustomAudioRecorder;->bRecordThreadRuning:Z

    if-nez v0, :cond_0

    .line 69
    monitor-exit p0

    .line 83
    :goto_0
    return-void

    .line 72
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/easyview/talkutils/CustomAudioRecorder;->bRecordThreadRuning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    :try_start_1
    iget-object v0, p0, Lcom/easyview/talkutils/CustomAudioRecorder;->recordThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V

    .line 77
    const-string v0, "tag"

    const-string v1, "stopRecord()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65
    :goto_1
    :try_start_2
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 79
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public initRecorder()Z
    .locals 6

    .prologue
    const/16 v2, 0x1f40

    const/4 v1, 0x1

    const/4 v3, 0x2

    .line 94
    invoke-static {v2, v3, v3}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v0

    iput v0, p0, Lcom/easyview/talkutils/CustomAudioRecorder;->m_in_buf_size:I

    .line 96
    new-instance v0, Landroid/media/AudioRecord;

    iget v5, p0, Lcom/easyview/talkutils/CustomAudioRecorder;->m_in_buf_size:I

    move v4, v3

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v0, p0, Lcom/easyview/talkutils/CustomAudioRecorder;->m_in_rec:Landroid/media/AudioRecord;

    .line 98
    iget-object v0, p0, Lcom/easyview/talkutils/CustomAudioRecorder;->m_in_rec:Landroid/media/AudioRecord;

    if-nez v0, :cond_0

    .line 100
    const/4 v1, 0x0

    .line 103
    :goto_0
    return v1

    .line 102
    :cond_0
    iget v0, p0, Lcom/easyview/talkutils/CustomAudioRecorder;->m_in_buf_size:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/easyview/talkutils/CustomAudioRecorder;->_data:[B

    goto :goto_0
.end method

.method public releaseRecord()V
    .locals 2

    .prologue
    .line 87
    const-string v0, "tag"

    const-string v1, "releaseRecord"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget-object v0, p0, Lcom/easyview/talkutils/CustomAudioRecorder;->m_in_rec:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/easyview/talkutils/CustomAudioRecorder;->m_in_rec:Landroid/media/AudioRecord;

    .line 90
    return-void
.end method

.method public set_ao_continue_thred(I)V
    .locals 0
    .param p1, "val"    # I

    .prologue
    .line 112
    iput p1, p0, Lcom/easyview/talkutils/CustomAudioRecorder;->_ao_continue_thred:I

    .line 113
    return-void
.end method

.method public set_ao_start_thred(I)V
    .locals 0
    .param p1, "val"    # I

    .prologue
    .line 108
    iput p1, p0, Lcom/easyview/talkutils/CustomAudioRecorder;->_ao_start_thred:I

    .line 109
    return-void
.end method
