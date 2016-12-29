.class public Lcom/tutk/IOTC/Camera;
.super Ljava/lang/Object;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tutk/IOTC/Camera$AVChannel;,
        Lcom/tutk/IOTC/Camera$IOCtrlQueue;,
        Lcom/tutk/IOTC/Camera$ThreadCheckDevStatus;,
        Lcom/tutk/IOTC/Camera$ThreadConnectDev;,
        Lcom/tutk/IOTC/Camera$ThreadDecodeVideo2;,
        Lcom/tutk/IOTC/Camera$ThreadRecvAudio;,
        Lcom/tutk/IOTC/Camera$ThreadRecvIOCtrl;,
        Lcom/tutk/IOTC/Camera$ThreadRecvRecord;,
        Lcom/tutk/IOTC/Camera$ThreadRecvVideo2;,
        Lcom/tutk/IOTC/Camera$ThreadSendAudio;,
        Lcom/tutk/IOTC/Camera$ThreadSendIOCtrl;,
        Lcom/tutk/IOTC/Camera$ThreadStartDev;
    }
.end annotation


# static fields
.field public static final CONNECTION_STATE_CONNECTED:I = 0x2

.field public static final CONNECTION_STATE_CONNECTING:I = 0x0

.field public static final CONNECTION_STATE_CONNECT_FAILED:I = 0x3

.field public static final CONNECTION_STATE_DISCONNECTED:I = 0x4

.field public static final CONNECTION_STATE_NONE:I = -0x1

.field public static final CONNECTION_STATE_TIMEOUT:I = 0x7

.field public static final CONNECTION_STATE_UNKNOWN_DEVICE:I = 0x5

.field public static final CONNECTION_STATE_UNSUPPORTED:I = 0x6

.field public static final CONNECTION_STATE_WRONG_PASSWORD:I = 0x8

.field public static final DEFAULT_AV_CHANNEL:I = 0x0

.field private static final HEXES:Ljava/lang/String; = "0123456789ABCDEF"

.field private static final TAG:Ljava/lang/String; = "IOTCamera"

.field public static bytLen:I

.field public static bytPic1:[B

.field public static count:I

.field static file:Ljava/io/File;

.field public static flag:Z

.field static length:I

.field public static mCamera:Lcom/tutk/IOTC/Camera;

.field private static volatile mCameraCount:I

.field private static mDefaultMaxCameraLimit:I


# instance fields
.field private audio_sample_length:I

.field private mAVChannels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/tutk/IOTC/Camera$AVChannel;",
            ">;"
        }
    .end annotation
.end field

.field private mAudioTrack:Landroid/media/AudioTrack;

.field private mCamIndex:I

.field private mDevUID:Ljava/lang/String;

.field private mIOTCListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/tutk/IOTC/IRegisterIOTCListener;",
            ">;"
        }
    .end annotation
.end field

.field private mInitAudio:Z

.field private volatile mSID:I

.field private volatile mSessionMode:I

.field private mThreadChkDevStatus:Lcom/tutk/IOTC/Camera$ThreadCheckDevStatus;

.field private mThreadConnectDev:Lcom/tutk/IOTC/Camera$ThreadConnectDev;

.field private mThreadRecvRecord:Lcom/tutk/IOTC/Camera$ThreadRecvRecord;

.field private mThreadSendAudio:Lcom/tutk/IOTC/Camera$ThreadSendAudio;

.field private final mWaitObjectForConnected:Ljava/lang/Object;

.field public videoQuality:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 41
    sput v1, Lcom/tutk/IOTC/Camera;->mCameraCount:I

    .line 42
    const/16 v0, 0x10

    sput v0, Lcom/tutk/IOTC/Camera;->mDefaultMaxCameraLimit:I

    .line 75
    sput v1, Lcom/tutk/IOTC/Camera;->count:I

    .line 76
    sput v1, Lcom/tutk/IOTC/Camera;->bytLen:I

    .line 77
    const/4 v0, 0x1

    sput-boolean v0, Lcom/tutk/IOTC/Camera;->flag:Z

    .line 2943
    const/4 v0, 0x0

    sput-object v0, Lcom/tutk/IOTC/Camera;->file:Ljava/io/File;

    .line 2944
    sput v1, Lcom/tutk/IOTC/Camera;->length:I

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tutk/IOTC/Camera;->mWaitObjectForConnected:Ljava/lang/Object;

    .line 58
    iput-object v1, p0, Lcom/tutk/IOTC/Camera;->mThreadConnectDev:Lcom/tutk/IOTC/Camera$ThreadConnectDev;

    .line 59
    iput-object v1, p0, Lcom/tutk/IOTC/Camera;->mThreadChkDevStatus:Lcom/tutk/IOTC/Camera$ThreadCheckDevStatus;

    .line 60
    iput-object v1, p0, Lcom/tutk/IOTC/Camera;->mThreadSendAudio:Lcom/tutk/IOTC/Camera$ThreadSendAudio;

    .line 61
    iput-object v1, p0, Lcom/tutk/IOTC/Camera;->mThreadRecvRecord:Lcom/tutk/IOTC/Camera$ThreadRecvRecord;

    .line 63
    iput v2, p0, Lcom/tutk/IOTC/Camera;->mSID:I

    .line 64
    iput v2, p0, Lcom/tutk/IOTC/Camera;->mSessionMode:I

    .line 66
    iput-boolean v3, p0, Lcom/tutk/IOTC/Camera;->mInitAudio:Z

    .line 67
    iput-object v1, p0, Lcom/tutk/IOTC/Camera;->mAudioTrack:Landroid/media/AudioTrack;

    .line 68
    iput v3, p0, Lcom/tutk/IOTC/Camera;->mCamIndex:I

    .line 70
    const/4 v0, 0x3

    iput v0, p0, Lcom/tutk/IOTC/Camera;->videoQuality:I

    .line 81
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/tutk/IOTC/Camera;->mIOTCListeners:Ljava/util/List;

    .line 83
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/tutk/IOTC/Camera;->mAVChannels:Ljava/util/List;

    .line 85
    const/16 v0, 0x140

    iput v0, p0, Lcom/tutk/IOTC/Camera;->audio_sample_length:I

    .line 89
    const-string v0, ""

    iput-object v0, p0, Lcom/tutk/IOTC/Camera;->mDevUID:Ljava/lang/String;

    .line 90
    sput-object p0, Lcom/tutk/IOTC/Camera;->mCamera:Lcom/tutk/IOTC/Camera;

    .line 91
    return-void
.end method

.method public static declared-synchronized SearchLAN()[Lcom/tutk/IOTC/st_LanSearchInfo;
    .locals 12

    .prologue
    .line 140
    const-class v5, Lcom/tutk/IOTC/Camera;

    monitor-enter v5

    const/4 v4, 0x1

    :try_start_0
    new-array v3, v4, [I

    .line 143
    .local v3, "nArray":[I
    const/16 v4, 0x7d0

    .line 142
    invoke-static {v3, v4}, Lcom/tutk/IOTC/IOTCAPIs;->IOTC_Lan_Search([II)[Lcom/tutk/IOTC/st_LanSearchInfo;

    move-result-object v0

    .line 145
    .local v0, "ab_LanSearchInfo":[Lcom/tutk/IOTC/st_LanSearchInfo;
    const-string v4, "IOTCamera"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "st_LanSearchInfo  === "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x0

    aget v7, v3, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v4, 0x0

    aget v4, v3, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v2, v4, :cond_0

    .line 170
    monitor-exit v5

    return-object v0

    .line 150
    :cond_0
    :try_start_1
    const-string v4, "IOTCamera"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "UID = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 151
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 152
    const-string v7, " = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 153
    new-instance v7, Ljava/lang/String;

    aget-object v8, v0, v2

    iget-object v8, v8, Lcom/tutk/IOTC/st_LanSearchInfo;->UID:[B

    const/4 v9, 0x0

    .line 154
    aget-object v10, v0, v2

    iget-object v10, v10, Lcom/tutk/IOTC/st_LanSearchInfo;->UID:[B

    array-length v10, v10

    const-string v11, "utf-8"

    .line 153
    invoke-direct {v7, v8, v9, v10, v11}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 150
    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    const-string v4, "IOTCamera"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "IP "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 156
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 157
    const-string v7, " = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 158
    new-instance v7, Ljava/lang/String;

    aget-object v8, v0, v2

    iget-object v8, v8, Lcom/tutk/IOTC/st_LanSearchInfo;->IP:[B

    const/4 v9, 0x0

    .line 159
    aget-object v10, v0, v2

    iget-object v10, v10, Lcom/tutk/IOTC/st_LanSearchInfo;->IP:[B

    array-length v10, v10

    const-string v11, "utf-8"

    .line 158
    invoke-direct {v7, v8, v9, v10, v11}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 155
    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 164
    :goto_1
    :try_start_2
    const-string v4, "IOTCamera"

    .line 165
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Port "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 166
    aget-object v7, v0, v2

    iget v7, v7, Lcom/tutk/IOTC/st_LanSearchInfo;->port:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 165
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 164
    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    const-string v4, "IOTCamera"

    const-string v6, "****************************"

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 160
    :catch_0
    move-exception v1

    .line 162
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 140
    .end local v0    # "ab_LanSearchInfo":[Lcom/tutk/IOTC/st_LanSearchInfo;
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v2    # "i":I
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method static synthetic access$0(Lcom/tutk/IOTC/Camera;)I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/tutk/IOTC/Camera;->mSID:I

    return v0
.end method

.method static synthetic access$1(Lcom/tutk/IOTC/Camera;I)V
    .locals 0

    .prologue
    .line 63
    iput p1, p0, Lcom/tutk/IOTC/Camera;->mSID:I

    return-void
.end method

.method static synthetic access$10(Lcom/tutk/IOTC/Camera;)Landroid/media/AudioTrack;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/tutk/IOTC/Camera;->mAudioTrack:Landroid/media/AudioTrack;

    return-object v0
.end method

.method static synthetic access$11(Lcom/tutk/IOTC/Camera;I)V
    .locals 0

    .prologue
    .line 85
    iput p1, p0, Lcom/tutk/IOTC/Camera;->audio_sample_length:I

    return-void
.end method

.method static synthetic access$12(Lcom/tutk/IOTC/Camera;I)V
    .locals 0

    .prologue
    .line 971
    invoke-direct {p0, p1}, Lcom/tutk/IOTC/Camera;->audioDev_stop(I)V

    return-void
.end method

.method static synthetic access$13(Lcom/tutk/IOTC/Camera;)I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/tutk/IOTC/Camera;->audio_sample_length:I

    return v0
.end method

.method static synthetic access$14(Lcom/tutk/IOTC/Camera;)Ljava/util/List;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/tutk/IOTC/Camera;->mAVChannels:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2(Lcom/tutk/IOTC/Camera;)Ljava/util/List;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/tutk/IOTC/Camera;->mIOTCListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$3(Lcom/tutk/IOTC/Camera;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/tutk/IOTC/Camera;->mDevUID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4(Lcom/tutk/IOTC/Camera;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/tutk/IOTC/Camera;->mWaitObjectForConnected:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$5(Lcom/tutk/IOTC/Camera;)I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/tutk/IOTC/Camera;->mSessionMode:I

    return v0
.end method

.method static synthetic access$6(Lcom/tutk/IOTC/Camera;I)V
    .locals 0

    .prologue
    .line 64
    iput p1, p0, Lcom/tutk/IOTC/Camera;->mSessionMode:I

    return-void
.end method

.method static synthetic access$7(Lcom/tutk/IOTC/Camera;)I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/tutk/IOTC/Camera;->mCamIndex:I

    return v0
.end method

.method static synthetic access$8(Lcom/tutk/IOTC/Camera;)Z
    .locals 1

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/tutk/IOTC/Camera;->mInitAudio:Z

    return v0
.end method

.method static synthetic access$9(Lcom/tutk/IOTC/Camera;IIII)Z
    .locals 1

    .prologue
    .line 908
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tutk/IOTC/Camera;->audioDev_init(IIII)Z

    move-result v0

    return v0
.end method

.method private declared-synchronized audioDev_init(IIII)Z
    .locals 11
    .param p1, "sampleRateInHz"    # I
    .param p2, "channel"    # I
    .param p3, "dataBit"    # I
    .param p4, "codec_id"    # I

    .prologue
    const/4 v1, 0x3

    const/4 v0, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 911
    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lcom/tutk/IOTC/Camera;->mInitAudio:Z

    if-nez v2, :cond_c

    .line 913
    const/4 v3, 0x2

    .line 914
    .local v3, "channelConfig":I
    const/4 v4, 0x2

    .line 915
    .local v4, "audioFormat":I
    const/4 v5, 0x0

    .line 917
    .local v5, "mMinBufSize":I
    if-ne p2, v9, :cond_1

    move v3, v1

    .line 919
    :goto_0
    if-ne p3, v9, :cond_2

    move v4, v0

    .line 921
    :goto_1
    invoke-static {p1, v3, v4}, Landroid/media/AudioTrack;->getMinBufferSize(III)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    .line 924
    const/4 v0, -0x2

    if-eq v5, v0, :cond_0

    .line 925
    const/4 v0, -0x1

    if-ne v5, v0, :cond_3

    :cond_0
    move v0, v10

    .line 968
    .end local v3    # "channelConfig":I
    .end local v4    # "audioFormat":I
    .end local v5    # "mMinBufSize":I
    :goto_2
    monitor-exit p0

    return v0

    .restart local v3    # "channelConfig":I
    .restart local v4    # "audioFormat":I
    .restart local v5    # "mMinBufSize":I
    :cond_1
    move v3, v0

    .line 918
    goto :goto_0

    :cond_2
    move v4, v1

    .line 920
    goto :goto_1

    .line 930
    :cond_3
    :try_start_1
    new-instance v0, Landroid/media/AudioTrack;

    const/4 v1, 0x3

    .line 932
    const/4 v6, 0x1

    move v2, p1

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    .line 930
    iput-object v0, p0, Lcom/tutk/IOTC/Camera;->mAudioTrack:Landroid/media/AudioTrack;

    .line 933
    const-string v1, "IOTCamera"

    .line 934
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "init AudioTrack with SampleRate:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 935
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 936
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 937
    if-ne p3, v9, :cond_5

    .line 938
    const/16 v0, 0x10

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 937
    :goto_3
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 939
    const-string v2, "bit "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 940
    if-ne p2, v9, :cond_6

    const-string v0, "Stereo"

    :goto_4
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 934
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 933
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 949
    const/16 v0, 0x8d

    if-ne p4, v0, :cond_7

    .line 950
    :try_start_2
    invoke-static {p1}, Lcom/decoder/util/DecSpeex;->InitDecoder(I)I

    .line 962
    :cond_4
    :goto_5
    iget-object v0, p0, Lcom/tutk/IOTC/Camera;->mAudioTrack:Landroid/media/AudioTrack;

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Landroid/media/AudioTrack;->setStereoVolume(FF)I

    .line 963
    iget-object v0, p0, Lcom/tutk/IOTC/Camera;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    .line 964
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tutk/IOTC/Camera;->mInitAudio:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v0, v9

    .line 966
    goto :goto_2

    .line 938
    :cond_5
    const/16 v0, 0x8

    :try_start_3
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 941
    :cond_6
    const-string v0, "Mono"
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    .line 943
    :catch_0
    move-exception v8

    .line 945
    .local v8, "iae":Ljava/lang/IllegalArgumentException;
    :try_start_4
    invoke-virtual {v8}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    move v0, v10

    .line 946
    goto :goto_2

    .line 951
    .end local v8    # "iae":Ljava/lang/IllegalArgumentException;
    :cond_7
    const/16 v0, 0x8e

    if-ne p4, v0, :cond_9

    .line 952
    if-ne p3, v9, :cond_8

    const/16 v7, 0x10

    .line 953
    .local v7, "bit":I
    :goto_6
    invoke-static {p1, v7}, Lcom/decoder/util/DecMp3;->InitDecoder(II)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_5

    .line 911
    .end local v3    # "channelConfig":I
    .end local v4    # "audioFormat":I
    .end local v5    # "mMinBufSize":I
    .end local v7    # "bit":I
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 952
    .restart local v3    # "channelConfig":I
    .restart local v4    # "audioFormat":I
    .restart local v5    # "mMinBufSize":I
    :cond_8
    const/16 v7, 0x8

    goto :goto_6

    .line 954
    :cond_9
    const/16 v0, 0x8b

    if-eq p4, v0, :cond_a

    .line 955
    const/16 v0, 0x8c

    if-ne p4, v0, :cond_b

    .line 956
    :cond_a
    :try_start_5
    invoke-static {}, Lcom/decoder/util/DecADPCM;->ResetDecoder()I

    goto :goto_5

    .line 957
    :cond_b
    const/16 v0, 0x8f

    if-ne p4, v0, :cond_4

    .line 958
    const/4 v0, 0x0

    .line 959
    const/4 v1, 0x2

    .line 958
    invoke-static {v0, v1}, Lcom/decoder/util/DecG726;->g726_dec_state_create(BB)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_5

    .end local v3    # "channelConfig":I
    .end local v4    # "audioFormat":I
    .end local v5    # "mMinBufSize":I
    :cond_c
    move v0, v10

    .line 968
    goto/16 :goto_2
.end method

.method private declared-synchronized audioDev_stop(I)V
    .locals 1
    .param p1, "codec_id"    # I

    .prologue
    .line 973
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/tutk/IOTC/Camera;->mInitAudio:Z

    if-eqz v0, :cond_2

    .line 975
    iget-object v0, p0, Lcom/tutk/IOTC/Camera;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    .line 976
    iget-object v0, p0, Lcom/tutk/IOTC/Camera;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 977
    iget-object v0, p0, Lcom/tutk/IOTC/Camera;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    .line 978
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tutk/IOTC/Camera;->mAudioTrack:Landroid/media/AudioTrack;

    .line 981
    :cond_0
    const/16 v0, 0x8d

    if-ne p1, v0, :cond_3

    .line 982
    invoke-static {}, Lcom/decoder/util/DecSpeex;->UninitDecoder()I

    .line 989
    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tutk/IOTC/Camera;->mInitAudio:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 992
    :cond_2
    monitor-exit p0

    return-void

    .line 983
    :cond_3
    const/16 v0, 0x8e

    if-ne p1, v0, :cond_4

    .line 984
    :try_start_1
    invoke-static {}, Lcom/decoder/util/DecMp3;->UninitDecoder()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 973
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 985
    :cond_4
    const/16 v0, 0x8f

    if-ne p1, v0, :cond_1

    .line 986
    :try_start_2
    invoke-static {}, Lcom/decoder/util/DecG726;->g726_dec_state_destroy()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method static getHex([BI)Ljava/lang/String;
    .locals 8
    .param p0, "raw"    # [B
    .param p1, "size"    # I

    .prologue
    .line 2925
    if-nez p0, :cond_0

    .line 2926
    const/4 v3, 0x0

    .line 2941
    :goto_0
    return-object v3

    .line 2929
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v3, p0

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2931
    .local v1, "hex":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 2933
    .local v2, "len":I
    array-length v4, p0

    const/4 v3, 0x0

    :goto_1
    if-lt v3, v4, :cond_2

    .line 2941
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 2933
    :cond_2
    aget-byte v0, p0, v3

    .line 2934
    .local v0, "b":B
    const-string v5, "0123456789ABCDEF"

    and-int/lit16 v6, v0, 0xf0

    shr-int/lit8 v6, v6, 0x4

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2935
    const-string v6, "0123456789ABCDEF"

    and-int/lit8 v7, v0, 0xf

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2937
    add-int/lit8 v2, v2, 0x1

    if-ge v2, p1, :cond_1

    .line 2933
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public static declared-synchronized init()I
    .locals 10

    .prologue
    const-wide/16 v8, 0x2710

    .line 178
    const-class v3, Lcom/tutk/IOTC/Camera;

    monitor-enter v3

    const/4 v0, 0x0

    .line 180
    .local v0, "nRet":I
    :try_start_0
    sget v2, Lcom/tutk/IOTC/Camera;->mCameraCount:I

    if-nez v2, :cond_2

    .line 181
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x2710

    rem-long/2addr v4, v6

    add-long/2addr v4, v8

    long-to-int v1, v4

    .line 185
    .local v1, "port":I
    invoke-static {v1}, Lcom/tutk/IOTC/IOTCAPIs;->IOTC_Initialize2(I)I

    move-result v0

    .line 187
    const-string v2, "IOTCamera"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "IOTC_Initialize2() returns "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    if-gez v0, :cond_1

    .line 202
    .end local v1    # "port":I
    :cond_0
    :goto_0
    monitor-exit v3

    return v0

    .line 193
    .restart local v1    # "port":I
    :cond_1
    :try_start_1
    sget v2, Lcom/tutk/IOTC/Camera;->mDefaultMaxCameraLimit:I

    mul-int/lit8 v2, v2, 0x10

    invoke-static {v2}, Lcom/tutk/IOTC/AVAPIs;->avInitialize(I)I

    move-result v0

    .line 194
    const-string v2, "IOTCamera"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "avInitialize() = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    if-ltz v0, :cond_0

    .line 201
    .end local v1    # "port":I
    :cond_2
    sget v2, Lcom/tutk/IOTC/Camera;->mCameraCount:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/tutk/IOTC/Camera;->mCameraCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 178
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static setMaxCameraLimit(I)V
    .locals 0
    .param p0, "limit"    # I

    .prologue
    .line 174
    sput p0, Lcom/tutk/IOTC/Camera;->mDefaultMaxCameraLimit:I

    .line 175
    return-void
.end method

.method static trimPeak([BI)V
    .locals 7
    .param p0, "data"    # [B
    .param p1, "len"    # I

    .prologue
    .line 2947
    sget-object v4, Lcom/tutk/IOTC/Camera;->file:Ljava/io/File;

    if-nez v4, :cond_0

    .line 2949
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "/reverseme.pcm"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v4, Lcom/tutk/IOTC/Camera;->file:Ljava/io/File;

    .line 2952
    :try_start_0
    sget-object v4, Lcom/tutk/IOTC/Camera;->file:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2962
    :cond_0
    :try_start_1
    new-instance v3, Ljava/io/FileOutputStream;

    sget-object v4, Lcom/tutk/IOTC/Camera;->file:Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 2963
    .local v3, "os":Ljava/io/OutputStream;
    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-direct {v0, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 2965
    .local v0, "bos":Ljava/io/BufferedOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 2966
    .local v1, "dos":Ljava/io/DataOutputStream;
    invoke-virtual {v1, p0}, Ljava/io/DataOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 2989
    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .end local v1    # "dos":Ljava/io/DataOutputStream;
    .end local v3    # "os":Ljava/io/OutputStream;
    :goto_0
    return-void

    .line 2954
    :catch_0
    move-exception v2

    .line 2956
    .local v2, "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Failed to create "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/tutk/IOTC/Camera;->file:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2967
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 2969
    .local v2, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 2970
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v2

    .line 2972
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static declared-synchronized uninit()I
    .locals 5

    .prologue
    .line 207
    const-class v2, Lcom/tutk/IOTC/Camera;

    monitor-enter v2

    const/4 v0, 0x0

    .line 209
    .local v0, "nRet":I
    :try_start_0
    sget v1, Lcom/tutk/IOTC/Camera;->mCameraCount:I

    if-lez v1, :cond_0

    .line 210
    sget v1, Lcom/tutk/IOTC/Camera;->mCameraCount:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Lcom/tutk/IOTC/Camera;->mCameraCount:I

    .line 212
    sget v1, Lcom/tutk/IOTC/Camera;->mCameraCount:I

    if-nez v1, :cond_0

    .line 213
    invoke-static {}, Lcom/tutk/IOTC/AVAPIs;->avDeInitialize()I

    move-result v0

    .line 214
    const-string v1, "IOTCamera"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "avDeInitialize() returns "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    invoke-static {}, Lcom/tutk/IOTC/IOTCAPIs;->IOTC_DeInitialize()I

    move-result v0

    .line 216
    const-string v1, "IOTCamera"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "IOTC_DeInitialize() returns "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 220
    :cond_0
    monitor-exit v2

    return v0

    .line 207
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method


# virtual methods
.method public SetMute(IZ)V
    .locals 4
    .param p1, "avChannel"    # I
    .param p2, "bMute"    # Z

    .prologue
    .line 833
    iget-object v3, p0, Lcom/tutk/IOTC/Camera;->mAVChannels:Ljava/util/List;

    monitor-enter v3

    .line 835
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/tutk/IOTC/Camera;->mAVChannels:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 833
    monitor-exit v3

    .line 844
    return-void

    .line 837
    :cond_0
    iget-object v2, p0, Lcom/tutk/IOTC/Camera;->mAVChannels:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tutk/IOTC/Camera$AVChannel;

    .line 839
    .local v0, "ch":Lcom/tutk/IOTC/Camera$AVChannel;
    invoke-virtual {v0}, Lcom/tutk/IOTC/Camera$AVChannel;->getChannel()I

    move-result v2

    if-ne p1, v2, :cond_1

    .line 840
    invoke-virtual {v0, p2}, Lcom/tutk/IOTC/Camera$AVChannel;->SetMute(Z)V

    .line 835
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 833
    .end local v0    # "ch":Lcom/tutk/IOTC/Camera$AVChannel;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public Snapshot(I)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "avChannel"    # I

    .prologue
    .line 877
    const/4 v2, 0x0

    .line 879
    .local v2, "result":Landroid/graphics/Bitmap;
    iget-object v4, p0, Lcom/tutk/IOTC/Camera;->mAVChannels:Ljava/util/List;

    monitor-enter v4

    .line 881
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/tutk/IOTC/Camera;->mAVChannels:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v1, v3, :cond_0

    .line 879
    :goto_1
    monitor-exit v4

    .line 892
    return-object v2

    .line 883
    :cond_0
    iget-object v3, p0, Lcom/tutk/IOTC/Camera;->mAVChannels:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tutk/IOTC/Camera$AVChannel;

    .line 885
    .local v0, "ch":Lcom/tutk/IOTC/Camera$AVChannel;
    invoke-virtual {v0}, Lcom/tutk/IOTC/Camera$AVChannel;->getChannel()I

    move-result v3

    if-ne p1, v3, :cond_1

    .line 886
    iget-object v2, v0, Lcom/tutk/IOTC/Camera$AVChannel;->LastFrame:Landroid/graphics/Bitmap;

    .line 887
    goto :goto_1

    .line 881
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 879
    .end local v0    # "ch":Lcom/tutk/IOTC/Camera$AVChannel;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public connect(Ljava/lang/String;)V
    .locals 3
    .param p1, "uid"    # Ljava/lang/String;

    .prologue
    .line 257
    const-string v0, "IOTCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[connect]"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    iput-object p1, p0, Lcom/tutk/IOTC/Camera;->mDevUID:Ljava/lang/String;

    .line 261
    iget-object v0, p0, Lcom/tutk/IOTC/Camera;->mThreadConnectDev:Lcom/tutk/IOTC/Camera$ThreadConnectDev;

    if-nez v0, :cond_0

    .line 262
    new-instance v0, Lcom/tutk/IOTC/Camera$ThreadConnectDev;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/tutk/IOTC/Camera$ThreadConnectDev;-><init>(Lcom/tutk/IOTC/Camera;I)V

    iput-object v0, p0, Lcom/tutk/IOTC/Camera;->mThreadConnectDev:Lcom/tutk/IOTC/Camera$ThreadConnectDev;

    .line 263
    iget-object v0, p0, Lcom/tutk/IOTC/Camera;->mThreadConnectDev:Lcom/tutk/IOTC/Camera$ThreadConnectDev;

    invoke-virtual {v0}, Lcom/tutk/IOTC/Camera$ThreadConnectDev;->start()V

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/tutk/IOTC/Camera;->mThreadChkDevStatus:Lcom/tutk/IOTC/Camera$ThreadCheckDevStatus;

    if-nez v0, :cond_1

    .line 267
    new-instance v0, Lcom/tutk/IOTC/Camera$ThreadCheckDevStatus;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/tutk/IOTC/Camera$ThreadCheckDevStatus;-><init>(Lcom/tutk/IOTC/Camera;Lcom/tutk/IOTC/Camera$ThreadCheckDevStatus;)V

    iput-object v0, p0, Lcom/tutk/IOTC/Camera;->mThreadChkDevStatus:Lcom/tutk/IOTC/Camera$ThreadCheckDevStatus;

    .line 268
    iget-object v0, p0, Lcom/tutk/IOTC/Camera;->mThreadChkDevStatus:Lcom/tutk/IOTC/Camera$ThreadCheckDevStatus;

    invoke-virtual {v0}, Lcom/tutk/IOTC/Camera$ThreadCheckDevStatus;->start()V

    .line 274
    :cond_1
    return-void
.end method

.method public connect(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "pwd"    # Ljava/lang/String;

    .prologue
    .line 277
    const-string v0, "IOTCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[connect]"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    iput-object p1, p0, Lcom/tutk/IOTC/Camera;->mDevUID:Ljava/lang/String;

    .line 280
    iget-object v0, p0, Lcom/tutk/IOTC/Camera;->mThreadConnectDev:Lcom/tutk/IOTC/Camera$ThreadConnectDev;

    if-nez v0, :cond_0

    .line 281
    new-instance v0, Lcom/tutk/IOTC/Camera$ThreadConnectDev;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/tutk/IOTC/Camera$ThreadConnectDev;-><init>(Lcom/tutk/IOTC/Camera;I)V

    iput-object v0, p0, Lcom/tutk/IOTC/Camera;->mThreadConnectDev:Lcom/tutk/IOTC/Camera$ThreadConnectDev;

    .line 282
    iget-object v0, p0, Lcom/tutk/IOTC/Camera;->mThreadConnectDev:Lcom/tutk/IOTC/Camera$ThreadConnectDev;

    invoke-virtual {v0}, Lcom/tutk/IOTC/Camera$ThreadConnectDev;->start()V

    .line 285
    :cond_0
    iget-object v0, p0, Lcom/tutk/IOTC/Camera;->mThreadChkDevStatus:Lcom/tutk/IOTC/Camera$ThreadCheckDevStatus;

    if-nez v0, :cond_1

    .line 286
    new-instance v0, Lcom/tutk/IOTC/Camera$ThreadCheckDevStatus;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/tutk/IOTC/Camera$ThreadCheckDevStatus;-><init>(Lcom/tutk/IOTC/Camera;Lcom/tutk/IOTC/Camera$ThreadCheckDevStatus;)V

    iput-object v0, p0, Lcom/tutk/IOTC/Camera;->mThreadChkDevStatus:Lcom/tutk/IOTC/Camera$ThreadCheckDevStatus;

    .line 287
    iget-object v0, p0, Lcom/tutk/IOTC/Camera;->mThreadChkDevStatus:Lcom/tutk/IOTC/Camera$ThreadCheckDevStatus;

    invoke-virtual {v0}, Lcom/tutk/IOTC/Camera$ThreadCheckDevStatus;->start()V

    .line 289
    :cond_1
    return-void
.end method

.method public disconnect()V
    .locals 9

    .prologue
    const/4 v8, -0x1

    const/4 v7, 0x0

    .line 293
    iget-object v3, p0, Lcom/tutk/IOTC/Camera;->mAVChannels:Ljava/util/List;

    monitor-enter v3

    .line 295
    :try_start_0
    iget-object v2, p0, Lcom/tutk/IOTC/Camera;->mAVChannels:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_6

    .line 293
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 409
    iget-object v2, p0, Lcom/tutk/IOTC/Camera;->mAVChannels:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 411
    iget-object v3, p0, Lcom/tutk/IOTC/Camera;->mWaitObjectForConnected:Ljava/lang/Object;

    monitor-enter v3

    .line 412
    :try_start_1
    iget-object v2, p0, Lcom/tutk/IOTC/Camera;->mWaitObjectForConnected:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 411
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 415
    iget-object v2, p0, Lcom/tutk/IOTC/Camera;->mThreadChkDevStatus:Lcom/tutk/IOTC/Camera$ThreadCheckDevStatus;

    if-eqz v2, :cond_1

    .line 416
    iget-object v2, p0, Lcom/tutk/IOTC/Camera;->mThreadChkDevStatus:Lcom/tutk/IOTC/Camera$ThreadCheckDevStatus;

    invoke-virtual {v2}, Lcom/tutk/IOTC/Camera$ThreadCheckDevStatus;->stopThread()V

    .line 418
    :cond_1
    iget-object v2, p0, Lcom/tutk/IOTC/Camera;->mThreadConnectDev:Lcom/tutk/IOTC/Camera$ThreadConnectDev;

    if-eqz v2, :cond_2

    .line 419
    iget-object v2, p0, Lcom/tutk/IOTC/Camera;->mThreadConnectDev:Lcom/tutk/IOTC/Camera$ThreadConnectDev;

    invoke-virtual {v2}, Lcom/tutk/IOTC/Camera$ThreadConnectDev;->stopThread()V

    .line 421
    :cond_2
    iget-object v2, p0, Lcom/tutk/IOTC/Camera;->mThreadChkDevStatus:Lcom/tutk/IOTC/Camera$ThreadCheckDevStatus;

    if-eqz v2, :cond_3

    .line 423
    :try_start_2
    iget-object v2, p0, Lcom/tutk/IOTC/Camera;->mThreadChkDevStatus:Lcom/tutk/IOTC/Camera$ThreadCheckDevStatus;

    invoke-virtual {v2}, Lcom/tutk/IOTC/Camera$ThreadCheckDevStatus;->interrupt()V

    .line 424
    iget-object v2, p0, Lcom/tutk/IOTC/Camera;->mThreadChkDevStatus:Lcom/tutk/IOTC/Camera$ThreadCheckDevStatus;

    invoke-virtual {v2}, Lcom/tutk/IOTC/Camera$ThreadCheckDevStatus;->join()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_6

    .line 428
    :goto_1
    iput-object v7, p0, Lcom/tutk/IOTC/Camera;->mThreadChkDevStatus:Lcom/tutk/IOTC/Camera$ThreadCheckDevStatus;

    .line 431
    :cond_3
    iget-object v2, p0, Lcom/tutk/IOTC/Camera;->mThreadConnectDev:Lcom/tutk/IOTC/Camera$ThreadConnectDev;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/tutk/IOTC/Camera;->mThreadConnectDev:Lcom/tutk/IOTC/Camera$ThreadConnectDev;

    invoke-virtual {v2}, Lcom/tutk/IOTC/Camera$ThreadConnectDev;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 433
    :try_start_3
    iget-object v2, p0, Lcom/tutk/IOTC/Camera;->mThreadConnectDev:Lcom/tutk/IOTC/Camera$ThreadConnectDev;

    invoke-virtual {v2}, Lcom/tutk/IOTC/Camera$ThreadConnectDev;->interrupt()V

    .line 434
    iget-object v2, p0, Lcom/tutk/IOTC/Camera;->mThreadConnectDev:Lcom/tutk/IOTC/Camera$ThreadConnectDev;

    invoke-virtual {v2}, Lcom/tutk/IOTC/Camera$ThreadConnectDev;->join()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_7

    .line 439
    :cond_4
    :goto_2
    iput-object v7, p0, Lcom/tutk/IOTC/Camera;->mThreadConnectDev:Lcom/tutk/IOTC/Camera$ThreadConnectDev;

    .line 441
    iget v2, p0, Lcom/tutk/IOTC/Camera;->mSID:I

    if-ltz v2, :cond_5

    .line 443
    iget v2, p0, Lcom/tutk/IOTC/Camera;->mSID:I

    invoke-static {v2}, Lcom/tutk/IOTC/IOTCAPIs;->IOTC_Session_Close(I)V

    .line 444
    const-string v2, "IOTCamera"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "IOTC_Session_Close(nSID = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/tutk/IOTC/Camera;->mSID:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    iput v8, p0, Lcom/tutk/IOTC/Camera;->mSID:I

    .line 448
    :cond_5
    iput v8, p0, Lcom/tutk/IOTC/Camera;->mSessionMode:I

    .line 453
    return-void

    .line 295
    :cond_6
    :try_start_4
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tutk/IOTC/Camera$AVChannel;

    .line 297
    .local v0, "ch":Lcom/tutk/IOTC/Camera$AVChannel;
    invoke-virtual {v0}, Lcom/tutk/IOTC/Camera$AVChannel;->getChannel()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/tutk/IOTC/Camera;->stopSpeaking(I)V

    .line 299
    iget-object v4, v0, Lcom/tutk/IOTC/Camera$AVChannel;->threadStartDev:Lcom/tutk/IOTC/Camera$ThreadStartDev;

    if-eqz v4, :cond_7

    .line 300
    iget-object v4, v0, Lcom/tutk/IOTC/Camera$AVChannel;->threadStartDev:Lcom/tutk/IOTC/Camera$ThreadStartDev;

    invoke-virtual {v4}, Lcom/tutk/IOTC/Camera$ThreadStartDev;->stopThread()V

    .line 305
    :cond_7
    iget-object v4, v0, Lcom/tutk/IOTC/Camera$AVChannel;->threadRecvAudio:Lcom/tutk/IOTC/Camera$ThreadRecvAudio;

    if-eqz v4, :cond_8

    .line 306
    iget-object v4, v0, Lcom/tutk/IOTC/Camera$AVChannel;->threadRecvAudio:Lcom/tutk/IOTC/Camera$ThreadRecvAudio;

    invoke-virtual {v4}, Lcom/tutk/IOTC/Camera$ThreadRecvAudio;->stopThread()V

    .line 308
    :cond_8
    iget-object v4, v0, Lcom/tutk/IOTC/Camera$AVChannel;->threadRecvVideo:Lcom/tutk/IOTC/Camera$ThreadRecvVideo2;

    if-eqz v4, :cond_9

    .line 309
    iget-object v4, v0, Lcom/tutk/IOTC/Camera$AVChannel;->threadRecvVideo:Lcom/tutk/IOTC/Camera$ThreadRecvVideo2;

    invoke-virtual {v4}, Lcom/tutk/IOTC/Camera$ThreadRecvVideo2;->stopThread()V

    .line 311
    :cond_9
    iget-object v4, v0, Lcom/tutk/IOTC/Camera$AVChannel;->threadRecvIOCtrl:Lcom/tutk/IOTC/Camera$ThreadRecvIOCtrl;

    if-eqz v4, :cond_a

    .line 312
    iget-object v4, v0, Lcom/tutk/IOTC/Camera$AVChannel;->threadRecvIOCtrl:Lcom/tutk/IOTC/Camera$ThreadRecvIOCtrl;

    invoke-virtual {v4}, Lcom/tutk/IOTC/Camera$ThreadRecvIOCtrl;->stopThread()V

    .line 314
    :cond_a
    iget-object v4, v0, Lcom/tutk/IOTC/Camera$AVChannel;->threadSendIOCtrl:Lcom/tutk/IOTC/Camera$ThreadSendIOCtrl;

    if-eqz v4, :cond_b

    .line 315
    iget-object v4, v0, Lcom/tutk/IOTC/Camera$AVChannel;->threadSendIOCtrl:Lcom/tutk/IOTC/Camera$ThreadSendIOCtrl;

    invoke-virtual {v4}, Lcom/tutk/IOTC/Camera$ThreadSendIOCtrl;->stopThread()V

    .line 317
    :cond_b
    iget-object v4, v0, Lcom/tutk/IOTC/Camera$AVChannel;->threadRecvRecord:Lcom/tutk/IOTC/Camera$ThreadRecvRecord;

    if-eqz v4, :cond_c

    .line 318
    iget-object v4, v0, Lcom/tutk/IOTC/Camera$AVChannel;->threadRecvRecord:Lcom/tutk/IOTC/Camera$ThreadRecvRecord;

    invoke-virtual {v4}, Lcom/tutk/IOTC/Camera$ThreadRecvRecord;->stopThread()V

    .line 321
    :cond_c
    iget-object v4, v0, Lcom/tutk/IOTC/Camera$AVChannel;->threadRecvVideo:Lcom/tutk/IOTC/Camera$ThreadRecvVideo2;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v4, :cond_d

    .line 323
    :try_start_5
    const-string v4, "IOTCamera"

    const-string v5, "disconnect ch.threadRecvVideo.interrupt()"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    iget-object v4, v0, Lcom/tutk/IOTC/Camera$AVChannel;->threadRecvVideo:Lcom/tutk/IOTC/Camera$ThreadRecvVideo2;

    invoke-virtual {v4}, Lcom/tutk/IOTC/Camera$ThreadRecvVideo2;->interrupt()V

    .line 326
    iget-object v4, v0, Lcom/tutk/IOTC/Camera$AVChannel;->threadRecvVideo:Lcom/tutk/IOTC/Camera$ThreadRecvVideo2;

    invoke-virtual {v4}, Lcom/tutk/IOTC/Camera$ThreadRecvVideo2;->join()V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 330
    :goto_3
    const/4 v4, 0x0

    :try_start_6
    iput-object v4, v0, Lcom/tutk/IOTC/Camera$AVChannel;->threadRecvVideo:Lcom/tutk/IOTC/Camera$ThreadRecvVideo2;

    .line 333
    :cond_d
    iget-object v4, v0, Lcom/tutk/IOTC/Camera$AVChannel;->threadRecvAudio:Lcom/tutk/IOTC/Camera$ThreadRecvAudio;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v4, :cond_e

    .line 335
    :try_start_7
    iget-object v4, v0, Lcom/tutk/IOTC/Camera$AVChannel;->threadRecvAudio:Lcom/tutk/IOTC/Camera$ThreadRecvAudio;

    invoke-virtual {v4}, Lcom/tutk/IOTC/Camera$ThreadRecvAudio;->interrupt()V

    .line 336
    iget-object v4, v0, Lcom/tutk/IOTC/Camera$AVChannel;->threadRecvAudio:Lcom/tutk/IOTC/Camera$ThreadRecvAudio;

    invoke-virtual {v4}, Lcom/tutk/IOTC/Camera$ThreadRecvAudio;->join()V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 340
    :goto_4
    const/4 v4, 0x0

    :try_start_8
    iput-object v4, v0, Lcom/tutk/IOTC/Camera$AVChannel;->threadRecvAudio:Lcom/tutk/IOTC/Camera$ThreadRecvAudio;

    .line 353
    :cond_e
    iget-object v4, v0, Lcom/tutk/IOTC/Camera$AVChannel;->threadRecvIOCtrl:Lcom/tutk/IOTC/Camera$ThreadRecvIOCtrl;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eqz v4, :cond_f

    .line 355
    :try_start_9
    iget-object v4, v0, Lcom/tutk/IOTC/Camera$AVChannel;->threadRecvIOCtrl:Lcom/tutk/IOTC/Camera$ThreadRecvIOCtrl;

    invoke-virtual {v4}, Lcom/tutk/IOTC/Camera$ThreadRecvIOCtrl;->interrupt()V

    .line 356
    iget-object v4, v0, Lcom/tutk/IOTC/Camera$AVChannel;->threadRecvIOCtrl:Lcom/tutk/IOTC/Camera$ThreadRecvIOCtrl;

    invoke-virtual {v4}, Lcom/tutk/IOTC/Camera$ThreadRecvIOCtrl;->join()V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 360
    :goto_5
    const/4 v4, 0x0

    :try_start_a
    iput-object v4, v0, Lcom/tutk/IOTC/Camera$AVChannel;->threadRecvIOCtrl:Lcom/tutk/IOTC/Camera$ThreadRecvIOCtrl;

    .line 363
    :cond_f
    iget-object v4, v0, Lcom/tutk/IOTC/Camera$AVChannel;->threadSendIOCtrl:Lcom/tutk/IOTC/Camera$ThreadSendIOCtrl;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    if-eqz v4, :cond_10

    .line 365
    :try_start_b
    iget-object v4, v0, Lcom/tutk/IOTC/Camera$AVChannel;->threadSendIOCtrl:Lcom/tutk/IOTC/Camera$ThreadSendIOCtrl;

    invoke-virtual {v4}, Lcom/tutk/IOTC/Camera$ThreadSendIOCtrl;->interrupt()V

    .line 366
    iget-object v4, v0, Lcom/tutk/IOTC/Camera$AVChannel;->threadSendIOCtrl:Lcom/tutk/IOTC/Camera$ThreadSendIOCtrl;

    invoke-virtual {v4}, Lcom/tutk/IOTC/Camera$ThreadSendIOCtrl;->join()V
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 370
    :goto_6
    const/4 v4, 0x0

    :try_start_c
    iput-object v4, v0, Lcom/tutk/IOTC/Camera$AVChannel;->threadSendIOCtrl:Lcom/tutk/IOTC/Camera$ThreadSendIOCtrl;

    .line 373
    :cond_10
    iget-object v4, v0, Lcom/tutk/IOTC/Camera$AVChannel;->threadStartDev:Lcom/tutk/IOTC/Camera$ThreadStartDev;

    if-eqz v4, :cond_11

    iget-object v4, v0, Lcom/tutk/IOTC/Camera$AVChannel;->threadStartDev:Lcom/tutk/IOTC/Camera$ThreadStartDev;

    invoke-virtual {v4}, Lcom/tutk/IOTC/Camera$ThreadStartDev;->isAlive()Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    move-result v4

    if-eqz v4, :cond_11

    .line 375
    :try_start_d
    iget-object v4, v0, Lcom/tutk/IOTC/Camera$AVChannel;->threadStartDev:Lcom/tutk/IOTC/Camera$ThreadStartDev;

    invoke-virtual {v4}, Lcom/tutk/IOTC/Camera$ThreadStartDev;->interrupt()V

    .line 376
    iget-object v4, v0, Lcom/tutk/IOTC/Camera$AVChannel;->threadStartDev:Lcom/tutk/IOTC/Camera$ThreadStartDev;

    invoke-virtual {v4}, Lcom/tutk/IOTC/Camera$ThreadStartDev;->join()V
    :try_end_d
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_d} :catch_4
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 381
    :cond_11
    :goto_7
    :try_start_e
    iget-object v4, v0, Lcom/tutk/IOTC/Camera$AVChannel;->threadRecvRecord:Lcom/tutk/IOTC/Camera$ThreadRecvRecord;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    if-eqz v4, :cond_12

    .line 383
    :try_start_f
    iget-object v4, v0, Lcom/tutk/IOTC/Camera$AVChannel;->threadRecvRecord:Lcom/tutk/IOTC/Camera$ThreadRecvRecord;

    invoke-virtual {v4}, Lcom/tutk/IOTC/Camera$ThreadRecvRecord;->interrupt()V

    .line 384
    iget-object v4, v0, Lcom/tutk/IOTC/Camera$AVChannel;->threadRecvRecord:Lcom/tutk/IOTC/Camera$ThreadRecvRecord;

    invoke-virtual {v4}, Lcom/tutk/IOTC/Camera$ThreadRecvRecord;->join()V
    :try_end_f
    .catch Ljava/lang/InterruptedException; {:try_start_f .. :try_end_f} :catch_5
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 389
    :cond_12
    :goto_8
    const/4 v4, 0x0

    :try_start_10
    iput-object v4, v0, Lcom/tutk/IOTC/Camera$AVChannel;->threadStartDev:Lcom/tutk/IOTC/Camera$ThreadStartDev;

    .line 391
    iget-object v4, v0, Lcom/tutk/IOTC/Camera$AVChannel;->AudioFrameQueue:Lcom/tutk/IOTC/AVFrameQueue;

    invoke-virtual {v4}, Lcom/tutk/IOTC/AVFrameQueue;->removeAll()V

    .line 392
    const/4 v4, 0x0

    iput-object v4, v0, Lcom/tutk/IOTC/Camera$AVChannel;->AudioFrameQueue:Lcom/tutk/IOTC/AVFrameQueue;

    .line 394
    iget-object v4, v0, Lcom/tutk/IOTC/Camera$AVChannel;->VideoFrameQueue:Lcom/tutk/IOTC/AVFrameQueue;

    invoke-virtual {v4}, Lcom/tutk/IOTC/AVFrameQueue;->removeAll()V

    .line 395
    const/4 v4, 0x0

    iput-object v4, v0, Lcom/tutk/IOTC/Camera$AVChannel;->VideoFrameQueue:Lcom/tutk/IOTC/AVFrameQueue;

    .line 397
    iget-object v4, v0, Lcom/tutk/IOTC/Camera$AVChannel;->IOCtrlQueue:Lcom/tutk/IOTC/Camera$IOCtrlQueue;

    invoke-virtual {v4}, Lcom/tutk/IOTC/Camera$IOCtrlQueue;->removeAll()V

    .line 398
    const/4 v4, 0x0

    iput-object v4, v0, Lcom/tutk/IOTC/Camera$AVChannel;->IOCtrlQueue:Lcom/tutk/IOTC/Camera$IOCtrlQueue;

    .line 400
    invoke-virtual {v0}, Lcom/tutk/IOTC/Camera$AVChannel;->getAVIndex()I

    move-result v4

    if-ltz v4, :cond_0

    .line 402
    invoke-virtual {v0}, Lcom/tutk/IOTC/Camera$AVChannel;->getAVIndex()I

    move-result v4

    invoke-static {v4}, Lcom/tutk/IOTC/AVAPIs;->avClientStop(I)V

    .line 403
    const-string v4, "IOTCamera"

    .line 404
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "avClientStop(avIndex = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tutk/IOTC/Camera$AVChannel;->getAVIndex()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 403
    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 293
    .end local v0    # "ch":Lcom/tutk/IOTC/Camera$AVChannel;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    throw v2

    .line 327
    .restart local v0    # "ch":Lcom/tutk/IOTC/Camera$AVChannel;
    :catch_0
    move-exception v1

    .line 328
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_11
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_3

    .line 337
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v1

    .line 338
    .restart local v1    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_4

    .line 357
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catch_2
    move-exception v1

    .line 358
    .restart local v1    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_5

    .line 367
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catch_3
    move-exception v1

    .line 368
    .restart local v1    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_6

    .line 377
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catch_4
    move-exception v1

    .line 378
    .restart local v1    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_7

    .line 385
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catch_5
    move-exception v1

    .line 386
    .restart local v1    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    goto :goto_8

    .line 411
    .end local v0    # "ch":Lcom/tutk/IOTC/Camera$AVChannel;
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catchall_1
    move-exception v2

    :try_start_12
    monitor-exit v3
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    throw v2

    .line 425
    :catch_6
    move-exception v1

    .line 426
    .restart local v1    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_1

    .line 435
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catch_7
    move-exception v1

    .line 436
    .restart local v1    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_2
.end method

.method public getChannelServiceType(I)J
    .locals 6
    .param p1, "avChannel"    # I

    .prologue
    .line 98
    const-wide/16 v1, 0x0

    .line 99
    .local v1, "ret":J
    iget-object v4, p0, Lcom/tutk/IOTC/Camera;->mAVChannels:Ljava/util/List;

    monitor-enter v4

    .line 100
    :try_start_0
    iget-object v3, p0, Lcom/tutk/IOTC/Camera;->mAVChannels:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 99
    :goto_0
    monitor-exit v4

    .line 107
    return-wide v1

    .line 100
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tutk/IOTC/Camera$AVChannel;

    .line 101
    .local v0, "ch":Lcom/tutk/IOTC/Camera$AVChannel;
    invoke-virtual {v0}, Lcom/tutk/IOTC/Camera$AVChannel;->getChannel()I

    move-result v5

    if-ne v5, p1, :cond_0

    .line 102
    invoke-virtual {v0}, Lcom/tutk/IOTC/Camera$AVChannel;->getServiceType()J

    move-result-wide v1

    .line 103
    goto :goto_0

    .line 99
    .end local v0    # "ch":Lcom/tutk/IOTC/Camera$AVChannel;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public getQuality()I
    .locals 1

    .prologue
    .line 904
    iget v0, p0, Lcom/tutk/IOTC/Camera;->videoQuality:I

    return v0
.end method

.method public getSessionMode()I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lcom/tutk/IOTC/Camera;->mSessionMode:I

    return v0
.end method

.method public isChannelConnected(I)Z
    .locals 5
    .param p1, "avChannel"    # I

    .prologue
    .line 229
    const/4 v1, 0x0

    .line 231
    .local v1, "result":Z
    iget-object v3, p0, Lcom/tutk/IOTC/Camera;->mAVChannels:Ljava/util/List;

    monitor-enter v3

    .line 232
    :try_start_0
    iget-object v2, p0, Lcom/tutk/IOTC/Camera;->mAVChannels:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 231
    :goto_0
    monitor-exit v3

    .line 240
    return v1

    .line 232
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tutk/IOTC/Camera$AVChannel;

    .line 233
    .local v0, "ch":Lcom/tutk/IOTC/Camera$AVChannel;
    invoke-virtual {v0}, Lcom/tutk/IOTC/Camera$AVChannel;->getChannel()I

    move-result v4

    if-ne p1, v4, :cond_0

    .line 234
    iget v2, p0, Lcom/tutk/IOTC/Camera;->mSID:I

    if-ltz v2, :cond_2

    invoke-virtual {v0}, Lcom/tutk/IOTC/Camera$AVChannel;->getAVIndex()I

    move-result v2

    if-ltz v2, :cond_2

    const/4 v1, 0x1

    .line 235
    :goto_1
    goto :goto_0

    .line 234
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 231
    .end local v0    # "ch":Lcom/tutk/IOTC/Camera$AVChannel;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public isSessionConnected()Z
    .locals 1

    .prologue
    .line 224
    iget v0, p0, Lcom/tutk/IOTC/Camera;->mSID:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public registerIOTCListener(Lcom/tutk/IOTC/IRegisterIOTCListener;)Z
    .locals 3
    .param p1, "listener"    # Lcom/tutk/IOTC/IRegisterIOTCListener;

    .prologue
    .line 111
    const/4 v0, 0x0

    .line 114
    .local v0, "result":Z
    iget-object v1, p0, Lcom/tutk/IOTC/Camera;->mIOTCListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 115
    const-string v1, "IOTCamera"

    const-string v2, "register IOTC listener"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-object v1, p0, Lcom/tutk/IOTC/Camera;->mIOTCListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    const/4 v0, 0x1

    .line 121
    :cond_0
    return v0
.end method

.method public sendIOCtrl(II[B)V
    .locals 6
    .param p1, "avChannel"    # I
    .param p2, "type"    # I
    .param p3, "data"    # [B

    .prologue
    .line 245
    iget-object v2, p0, Lcom/tutk/IOTC/Camera;->mAVChannels:Ljava/util/List;

    monitor-enter v2

    .line 246
    :try_start_0
    iget-object v1, p0, Lcom/tutk/IOTC/Camera;->mAVChannels:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 245
    monitor-exit v2

    .line 253
    return-void

    .line 246
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tutk/IOTC/Camera$AVChannel;

    .line 247
    .local v0, "ch":Lcom/tutk/IOTC/Camera$AVChannel;
    invoke-virtual {v0}, Lcom/tutk/IOTC/Camera$AVChannel;->getChannel()I

    move-result v3

    if-ne p1, v3, :cond_0

    .line 248
    iget-object v3, v0, Lcom/tutk/IOTC/Camera$AVChannel;->IOCtrlQueue:Lcom/tutk/IOTC/Camera$IOCtrlQueue;

    invoke-virtual {v3, p2, p3}, Lcom/tutk/IOTC/Camera$IOCtrlQueue;->Enqueue(I[B)V

    .line 249
    const-string v3, "IOTCamera"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "add avSendIOCtrl size : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/tutk/IOTC/Camera$AVChannel;->IOCtrlQueue:Lcom/tutk/IOTC/Camera$IOCtrlQueue;

    iget-object v5, v5, Lcom/tutk/IOTC/Camera$IOCtrlQueue;->listData:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 245
    .end local v0    # "ch":Lcom/tutk/IOTC/Camera$AVChannel;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setQuality(I)V
    .locals 3
    .param p1, "quality"    # I

    .prologue
    const/4 v2, 0x0

    .line 896
    iput p1, p0, Lcom/tutk/IOTC/Camera;->videoQuality:I

    .line 898
    const/16 v0, 0x320

    .line 900
    iget v1, p0, Lcom/tutk/IOTC/Camera;->videoQuality:I

    int-to-byte v1, v1

    invoke-static {v2, v1}, Lcom/tutk/IOTC/AVIOCTRLDEFs$SMsgAVIoctrlSetStreamCtrlReq;->parseContent(IB)[B

    move-result-object v1

    .line 897
    invoke-virtual {p0, v2, v0, v1}, Lcom/tutk/IOTC/Camera;->sendIOCtrl(II[B)V

    .line 901
    return-void
.end method

.method public start(ILjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "avChannel"    # I
    .param p2, "viewAccount"    # Ljava/lang/String;
    .param p3, "viewPasswd"    # Ljava/lang/String;

    .prologue
    .line 460
    const/4 v1, 0x0

    .line 462
    .local v1, "session":Lcom/tutk/IOTC/Camera$AVChannel;
    iget-object v3, p0, Lcom/tutk/IOTC/Camera;->mAVChannels:Ljava/util/List;

    monitor-enter v3

    .line 463
    :try_start_0
    iget-object v2, p0, Lcom/tutk/IOTC/Camera;->mAVChannels:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 462
    :goto_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 471
    if-nez v1, :cond_3

    .line 473
    new-instance v0, Lcom/tutk/IOTC/Camera$AVChannel;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/tutk/IOTC/Camera$AVChannel;-><init>(Lcom/tutk/IOTC/Camera;ILjava/lang/String;Ljava/lang/String;)V

    .line 474
    .local v0, "ch":Lcom/tutk/IOTC/Camera$AVChannel;
    iget-object v2, p0, Lcom/tutk/IOTC/Camera;->mAVChannels:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 476
    new-instance v2, Lcom/tutk/IOTC/Camera$ThreadStartDev;

    invoke-direct {v2, p0, v0}, Lcom/tutk/IOTC/Camera$ThreadStartDev;-><init>(Lcom/tutk/IOTC/Camera;Lcom/tutk/IOTC/Camera$AVChannel;)V

    iput-object v2, v0, Lcom/tutk/IOTC/Camera$AVChannel;->threadStartDev:Lcom/tutk/IOTC/Camera$ThreadStartDev;

    .line 477
    iget-object v2, v0, Lcom/tutk/IOTC/Camera$AVChannel;->threadStartDev:Lcom/tutk/IOTC/Camera$ThreadStartDev;

    invoke-virtual {v2}, Lcom/tutk/IOTC/Camera$ThreadStartDev;->start()V

    .line 479
    new-instance v2, Lcom/tutk/IOTC/Camera$ThreadRecvIOCtrl;

    invoke-direct {v2, p0, v0}, Lcom/tutk/IOTC/Camera$ThreadRecvIOCtrl;-><init>(Lcom/tutk/IOTC/Camera;Lcom/tutk/IOTC/Camera$AVChannel;)V

    iput-object v2, v0, Lcom/tutk/IOTC/Camera$AVChannel;->threadRecvIOCtrl:Lcom/tutk/IOTC/Camera$ThreadRecvIOCtrl;

    .line 480
    iget-object v2, v0, Lcom/tutk/IOTC/Camera$AVChannel;->threadRecvIOCtrl:Lcom/tutk/IOTC/Camera$ThreadRecvIOCtrl;

    invoke-virtual {v2}, Lcom/tutk/IOTC/Camera$ThreadRecvIOCtrl;->start()V

    .line 482
    new-instance v2, Lcom/tutk/IOTC/Camera$ThreadSendIOCtrl;

    invoke-direct {v2, p0, v0}, Lcom/tutk/IOTC/Camera$ThreadSendIOCtrl;-><init>(Lcom/tutk/IOTC/Camera;Lcom/tutk/IOTC/Camera$AVChannel;)V

    iput-object v2, v0, Lcom/tutk/IOTC/Camera$AVChannel;->threadSendIOCtrl:Lcom/tutk/IOTC/Camera$ThreadSendIOCtrl;

    .line 483
    iget-object v2, v0, Lcom/tutk/IOTC/Camera$AVChannel;->threadSendIOCtrl:Lcom/tutk/IOTC/Camera$ThreadSendIOCtrl;

    invoke-virtual {v2}, Lcom/tutk/IOTC/Camera$ThreadSendIOCtrl;->start()V

    .line 501
    .end local v0    # "ch":Lcom/tutk/IOTC/Camera$AVChannel;
    :cond_1
    :goto_1
    return-void

    .line 463
    :cond_2
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tutk/IOTC/Camera$AVChannel;

    .line 464
    .restart local v0    # "ch":Lcom/tutk/IOTC/Camera$AVChannel;
    invoke-virtual {v0}, Lcom/tutk/IOTC/Camera$AVChannel;->getChannel()I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 465
    move-object v1, v0

    .line 466
    goto :goto_0

    .line 462
    .end local v0    # "ch":Lcom/tutk/IOTC/Camera$AVChannel;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 486
    :cond_3
    iget-object v2, v1, Lcom/tutk/IOTC/Camera$AVChannel;->threadStartDev:Lcom/tutk/IOTC/Camera$ThreadStartDev;

    if-nez v2, :cond_4

    .line 487
    new-instance v2, Lcom/tutk/IOTC/Camera$ThreadStartDev;

    invoke-direct {v2, p0, v1}, Lcom/tutk/IOTC/Camera$ThreadStartDev;-><init>(Lcom/tutk/IOTC/Camera;Lcom/tutk/IOTC/Camera$AVChannel;)V

    iput-object v2, v1, Lcom/tutk/IOTC/Camera$AVChannel;->threadStartDev:Lcom/tutk/IOTC/Camera$ThreadStartDev;

    .line 488
    iget-object v2, v1, Lcom/tutk/IOTC/Camera$AVChannel;->threadStartDev:Lcom/tutk/IOTC/Camera$ThreadStartDev;

    invoke-virtual {v2}, Lcom/tutk/IOTC/Camera$ThreadStartDev;->start()V

    .line 491
    :cond_4
    iget-object v2, v1, Lcom/tutk/IOTC/Camera$AVChannel;->threadRecvIOCtrl:Lcom/tutk/IOTC/Camera$ThreadRecvIOCtrl;

    if-nez v2, :cond_5

    .line 492
    new-instance v2, Lcom/tutk/IOTC/Camera$ThreadRecvIOCtrl;

    invoke-direct {v2, p0, v1}, Lcom/tutk/IOTC/Camera$ThreadRecvIOCtrl;-><init>(Lcom/tutk/IOTC/Camera;Lcom/tutk/IOTC/Camera$AVChannel;)V

    iput-object v2, v1, Lcom/tutk/IOTC/Camera$AVChannel;->threadRecvIOCtrl:Lcom/tutk/IOTC/Camera$ThreadRecvIOCtrl;

    .line 493
    iget-object v2, v1, Lcom/tutk/IOTC/Camera$AVChannel;->threadRecvIOCtrl:Lcom/tutk/IOTC/Camera$ThreadRecvIOCtrl;

    invoke-virtual {v2}, Lcom/tutk/IOTC/Camera$ThreadRecvIOCtrl;->start()V

    .line 496
    :cond_5
    iget-object v2, v1, Lcom/tutk/IOTC/Camera$AVChannel;->threadSendIOCtrl:Lcom/tutk/IOTC/Camera$ThreadSendIOCtrl;

    if-nez v2, :cond_1

    .line 497
    new-instance v2, Lcom/tutk/IOTC/Camera$ThreadSendIOCtrl;

    invoke-direct {v2, p0, v1}, Lcom/tutk/IOTC/Camera$ThreadSendIOCtrl;-><init>(Lcom/tutk/IOTC/Camera;Lcom/tutk/IOTC/Camera$AVChannel;)V

    iput-object v2, v1, Lcom/tutk/IOTC/Camera$AVChannel;->threadSendIOCtrl:Lcom/tutk/IOTC/Camera$ThreadSendIOCtrl;

    .line 498
    iget-object v2, v1, Lcom/tutk/IOTC/Camera$AVChannel;->threadSendIOCtrl:Lcom/tutk/IOTC/Camera$ThreadSendIOCtrl;

    invoke-virtual {v2}, Lcom/tutk/IOTC/Camera$ThreadSendIOCtrl;->start()V

    goto :goto_1
.end method

.method public startDownloadPicture(I)V
    .locals 1
    .param p1, "avChannel"    # I

    .prologue
    .line 768
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tutk/IOTC/Camera;->mThreadRecvRecord:Lcom/tutk/IOTC/Camera$ThreadRecvRecord;

    .line 769
    iget-object v0, p0, Lcom/tutk/IOTC/Camera;->mThreadRecvRecord:Lcom/tutk/IOTC/Camera$ThreadRecvRecord;

    if-nez v0, :cond_0

    .line 771
    new-instance v0, Lcom/tutk/IOTC/Camera$ThreadRecvRecord;

    invoke-direct {v0, p0, p1}, Lcom/tutk/IOTC/Camera$ThreadRecvRecord;-><init>(Lcom/tutk/IOTC/Camera;I)V

    iput-object v0, p0, Lcom/tutk/IOTC/Camera;->mThreadRecvRecord:Lcom/tutk/IOTC/Camera$ThreadRecvRecord;

    .line 772
    iget-object v0, p0, Lcom/tutk/IOTC/Camera;->mThreadRecvRecord:Lcom/tutk/IOTC/Camera$ThreadRecvRecord;

    invoke-virtual {v0}, Lcom/tutk/IOTC/Camera$ThreadRecvRecord;->start()V

    .line 774
    :cond_0
    return-void
.end method

.method public startListening(I)V
    .locals 4
    .param p1, "avChannel"    # I

    .prologue
    .line 811
    iget-object v3, p0, Lcom/tutk/IOTC/Camera;->mAVChannels:Ljava/util/List;

    monitor-enter v3

    .line 813
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/tutk/IOTC/Camera;->mAVChannels:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 811
    :cond_0
    :goto_1
    monitor-exit v3

    .line 830
    return-void

    .line 815
    :cond_1
    iget-object v2, p0, Lcom/tutk/IOTC/Camera;->mAVChannels:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tutk/IOTC/Camera$AVChannel;

    .line 817
    .local v0, "ch":Lcom/tutk/IOTC/Camera$AVChannel;
    invoke-virtual {v0}, Lcom/tutk/IOTC/Camera$AVChannel;->getChannel()I

    move-result v2

    if-ne p1, v2, :cond_2

    .line 819
    iget-object v2, v0, Lcom/tutk/IOTC/Camera$AVChannel;->AudioFrameQueue:Lcom/tutk/IOTC/AVFrameQueue;

    invoke-virtual {v2}, Lcom/tutk/IOTC/AVFrameQueue;->removeAll()V

    .line 821
    iget-object v2, v0, Lcom/tutk/IOTC/Camera$AVChannel;->threadRecvAudio:Lcom/tutk/IOTC/Camera$ThreadRecvAudio;

    if-nez v2, :cond_0

    .line 822
    new-instance v2, Lcom/tutk/IOTC/Camera$ThreadRecvAudio;

    invoke-direct {v2, p0, v0}, Lcom/tutk/IOTC/Camera$ThreadRecvAudio;-><init>(Lcom/tutk/IOTC/Camera;Lcom/tutk/IOTC/Camera$AVChannel;)V

    iput-object v2, v0, Lcom/tutk/IOTC/Camera$AVChannel;->threadRecvAudio:Lcom/tutk/IOTC/Camera$ThreadRecvAudio;

    .line 823
    iget-object v2, v0, Lcom/tutk/IOTC/Camera$AVChannel;->threadRecvAudio:Lcom/tutk/IOTC/Camera$ThreadRecvAudio;

    invoke-virtual {v2}, Lcom/tutk/IOTC/Camera$ThreadRecvAudio;->start()V

    goto :goto_1

    .line 811
    .end local v0    # "ch":Lcom/tutk/IOTC/Camera$AVChannel;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 813
    .restart local v0    # "ch":Lcom/tutk/IOTC/Camera$AVChannel;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public startRecord(ILjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "avChannel"    # I
    .param p2, "viewAccount"    # Ljava/lang/String;
    .param p3, "viewPasswd"    # Ljava/lang/String;

    .prologue
    .line 505
    const/4 v1, 0x0

    .line 507
    .local v1, "session":Lcom/tutk/IOTC/Camera$AVChannel;
    iget-object v3, p0, Lcom/tutk/IOTC/Camera;->mAVChannels:Ljava/util/List;

    monitor-enter v3

    .line 508
    :try_start_0
    iget-object v2, p0, Lcom/tutk/IOTC/Camera;->mAVChannels:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 507
    :goto_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 516
    if-nez v1, :cond_3

    .line 517
    new-instance v0, Lcom/tutk/IOTC/Camera$AVChannel;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/tutk/IOTC/Camera$AVChannel;-><init>(Lcom/tutk/IOTC/Camera;ILjava/lang/String;Ljava/lang/String;)V

    .line 518
    .local v0, "ch":Lcom/tutk/IOTC/Camera$AVChannel;
    iget-object v2, p0, Lcom/tutk/IOTC/Camera;->mAVChannels:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 520
    new-instance v2, Lcom/tutk/IOTC/Camera$ThreadStartDev;

    invoke-direct {v2, p0, v0}, Lcom/tutk/IOTC/Camera$ThreadStartDev;-><init>(Lcom/tutk/IOTC/Camera;Lcom/tutk/IOTC/Camera$AVChannel;)V

    iput-object v2, v0, Lcom/tutk/IOTC/Camera$AVChannel;->threadStartDev:Lcom/tutk/IOTC/Camera$ThreadStartDev;

    .line 521
    iget-object v2, v0, Lcom/tutk/IOTC/Camera$AVChannel;->threadStartDev:Lcom/tutk/IOTC/Camera$ThreadStartDev;

    invoke-virtual {v2}, Lcom/tutk/IOTC/Camera$ThreadStartDev;->start()V

    .line 523
    new-instance v2, Lcom/tutk/IOTC/Camera$ThreadRecvIOCtrl;

    invoke-direct {v2, p0, v0}, Lcom/tutk/IOTC/Camera$ThreadRecvIOCtrl;-><init>(Lcom/tutk/IOTC/Camera;Lcom/tutk/IOTC/Camera$AVChannel;)V

    iput-object v2, v0, Lcom/tutk/IOTC/Camera$AVChannel;->threadRecvIOCtrl:Lcom/tutk/IOTC/Camera$ThreadRecvIOCtrl;

    .line 524
    iget-object v2, v0, Lcom/tutk/IOTC/Camera$AVChannel;->threadRecvIOCtrl:Lcom/tutk/IOTC/Camera$ThreadRecvIOCtrl;

    invoke-virtual {v2}, Lcom/tutk/IOTC/Camera$ThreadRecvIOCtrl;->start()V

    .line 526
    new-instance v2, Lcom/tutk/IOTC/Camera$ThreadSendIOCtrl;

    invoke-direct {v2, p0, v0}, Lcom/tutk/IOTC/Camera$ThreadSendIOCtrl;-><init>(Lcom/tutk/IOTC/Camera;Lcom/tutk/IOTC/Camera$AVChannel;)V

    iput-object v2, v0, Lcom/tutk/IOTC/Camera$AVChannel;->threadSendIOCtrl:Lcom/tutk/IOTC/Camera$ThreadSendIOCtrl;

    .line 527
    iget-object v2, v0, Lcom/tutk/IOTC/Camera$AVChannel;->threadSendIOCtrl:Lcom/tutk/IOTC/Camera$ThreadSendIOCtrl;

    invoke-virtual {v2}, Lcom/tutk/IOTC/Camera$ThreadSendIOCtrl;->start()V

    .line 546
    .end local v0    # "ch":Lcom/tutk/IOTC/Camera$AVChannel;
    :cond_1
    :goto_1
    return-void

    .line 508
    :cond_2
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tutk/IOTC/Camera$AVChannel;

    .line 509
    .restart local v0    # "ch":Lcom/tutk/IOTC/Camera$AVChannel;
    invoke-virtual {v0}, Lcom/tutk/IOTC/Camera$AVChannel;->getChannel()I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 510
    move-object v1, v0

    .line 511
    goto :goto_0

    .line 507
    .end local v0    # "ch":Lcom/tutk/IOTC/Camera$AVChannel;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 530
    :cond_3
    iget-object v2, v1, Lcom/tutk/IOTC/Camera$AVChannel;->threadStartDev:Lcom/tutk/IOTC/Camera$ThreadStartDev;

    if-nez v2, :cond_4

    .line 531
    new-instance v2, Lcom/tutk/IOTC/Camera$ThreadStartDev;

    invoke-direct {v2, p0, v1}, Lcom/tutk/IOTC/Camera$ThreadStartDev;-><init>(Lcom/tutk/IOTC/Camera;Lcom/tutk/IOTC/Camera$AVChannel;)V

    iput-object v2, v1, Lcom/tutk/IOTC/Camera$AVChannel;->threadStartDev:Lcom/tutk/IOTC/Camera$ThreadStartDev;

    .line 532
    iget-object v2, v1, Lcom/tutk/IOTC/Camera$AVChannel;->threadStartDev:Lcom/tutk/IOTC/Camera$ThreadStartDev;

    invoke-virtual {v2}, Lcom/tutk/IOTC/Camera$ThreadStartDev;->start()V

    .line 535
    :cond_4
    iget-object v2, v1, Lcom/tutk/IOTC/Camera$AVChannel;->threadRecvIOCtrl:Lcom/tutk/IOTC/Camera$ThreadRecvIOCtrl;

    if-nez v2, :cond_5

    .line 536
    new-instance v2, Lcom/tutk/IOTC/Camera$ThreadRecvIOCtrl;

    invoke-direct {v2, p0, v1}, Lcom/tutk/IOTC/Camera$ThreadRecvIOCtrl;-><init>(Lcom/tutk/IOTC/Camera;Lcom/tutk/IOTC/Camera$AVChannel;)V

    iput-object v2, v1, Lcom/tutk/IOTC/Camera$AVChannel;->threadRecvIOCtrl:Lcom/tutk/IOTC/Camera$ThreadRecvIOCtrl;

    .line 537
    iget-object v2, v1, Lcom/tutk/IOTC/Camera$AVChannel;->threadRecvIOCtrl:Lcom/tutk/IOTC/Camera$ThreadRecvIOCtrl;

    invoke-virtual {v2}, Lcom/tutk/IOTC/Camera$ThreadRecvIOCtrl;->start()V

    .line 540
    :cond_5
    iget-object v2, v1, Lcom/tutk/IOTC/Camera$AVChannel;->threadSendIOCtrl:Lcom/tutk/IOTC/Camera$ThreadSendIOCtrl;

    if-nez v2, :cond_1

    .line 541
    new-instance v2, Lcom/tutk/IOTC/Camera$ThreadSendIOCtrl;

    invoke-direct {v2, p0, v1}, Lcom/tutk/IOTC/Camera$ThreadSendIOCtrl;-><init>(Lcom/tutk/IOTC/Camera;Lcom/tutk/IOTC/Camera$AVChannel;)V

    iput-object v2, v1, Lcom/tutk/IOTC/Camera$AVChannel;->threadSendIOCtrl:Lcom/tutk/IOTC/Camera$ThreadSendIOCtrl;

    .line 542
    iget-object v2, v1, Lcom/tutk/IOTC/Camera$AVChannel;->threadSendIOCtrl:Lcom/tutk/IOTC/Camera$ThreadSendIOCtrl;

    invoke-virtual {v2}, Lcom/tutk/IOTC/Camera$ThreadSendIOCtrl;->start()V

    goto :goto_1
.end method

.method public startShow(I)V
    .locals 4
    .param p1, "avChannel"    # I

    .prologue
    .line 674
    iget-object v3, p0, Lcom/tutk/IOTC/Camera;->mAVChannels:Ljava/util/List;

    monitor-enter v3

    .line 676
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/tutk/IOTC/Camera;->mAVChannels:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 674
    :cond_0
    :goto_1
    monitor-exit v3

    .line 698
    return-void

    .line 678
    :cond_1
    iget-object v2, p0, Lcom/tutk/IOTC/Camera;->mAVChannels:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tutk/IOTC/Camera$AVChannel;

    .line 680
    .local v0, "ch":Lcom/tutk/IOTC/Camera$AVChannel;
    invoke-virtual {v0}, Lcom/tutk/IOTC/Camera$AVChannel;->getChannel()I

    move-result v2

    if-ne v2, p1, :cond_2

    .line 682
    iget-object v2, v0, Lcom/tutk/IOTC/Camera$AVChannel;->VideoFrameQueue:Lcom/tutk/IOTC/AVFrameQueue;

    invoke-virtual {v2}, Lcom/tutk/IOTC/AVFrameQueue;->removeAll()V

    .line 684
    iget-object v2, v0, Lcom/tutk/IOTC/Camera$AVChannel;->threadRecvVideo:Lcom/tutk/IOTC/Camera$ThreadRecvVideo2;

    if-nez v2, :cond_0

    .line 685
    new-instance v2, Lcom/tutk/IOTC/Camera$ThreadRecvVideo2;

    invoke-direct {v2, p0, v0}, Lcom/tutk/IOTC/Camera$ThreadRecvVideo2;-><init>(Lcom/tutk/IOTC/Camera;Lcom/tutk/IOTC/Camera$AVChannel;)V

    iput-object v2, v0, Lcom/tutk/IOTC/Camera$AVChannel;->threadRecvVideo:Lcom/tutk/IOTC/Camera$ThreadRecvVideo2;

    .line 686
    iget-object v2, v0, Lcom/tutk/IOTC/Camera$AVChannel;->threadRecvVideo:Lcom/tutk/IOTC/Camera$ThreadRecvVideo2;

    invoke-virtual {v2}, Lcom/tutk/IOTC/Camera$ThreadRecvVideo2;->start()V

    goto :goto_1

    .line 674
    .end local v0    # "ch":Lcom/tutk/IOTC/Camera$AVChannel;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 676
    .restart local v0    # "ch":Lcom/tutk/IOTC/Camera$AVChannel;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public startSpeaking(I)V
    .locals 4
    .param p1, "avChannel"    # I

    .prologue
    .line 744
    iget-object v3, p0, Lcom/tutk/IOTC/Camera;->mAVChannels:Ljava/util/List;

    monitor-enter v3

    .line 746
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/tutk/IOTC/Camera;->mAVChannels:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 744
    :cond_0
    :goto_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 763
    invoke-virtual {p0, p1}, Lcom/tutk/IOTC/Camera;->startListening(I)V

    .line 764
    return-void

    .line 748
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/tutk/IOTC/Camera;->mAVChannels:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tutk/IOTC/Camera$AVChannel;

    .line 750
    .local v0, "ch":Lcom/tutk/IOTC/Camera$AVChannel;
    invoke-virtual {v0}, Lcom/tutk/IOTC/Camera$AVChannel;->getChannel()I

    move-result v2

    if-ne v2, p1, :cond_2

    .line 752
    iget-object v2, v0, Lcom/tutk/IOTC/Camera$AVChannel;->AudioFrameQueue:Lcom/tutk/IOTC/AVFrameQueue;

    invoke-virtual {v2}, Lcom/tutk/IOTC/AVFrameQueue;->removeAll()V

    .line 754
    iget-object v2, p0, Lcom/tutk/IOTC/Camera;->mThreadSendAudio:Lcom/tutk/IOTC/Camera$ThreadSendAudio;

    if-nez v2, :cond_0

    .line 755
    new-instance v2, Lcom/tutk/IOTC/Camera$ThreadSendAudio;

    invoke-direct {v2, p0, v0}, Lcom/tutk/IOTC/Camera$ThreadSendAudio;-><init>(Lcom/tutk/IOTC/Camera;Lcom/tutk/IOTC/Camera$AVChannel;)V

    iput-object v2, p0, Lcom/tutk/IOTC/Camera;->mThreadSendAudio:Lcom/tutk/IOTC/Camera$ThreadSendAudio;

    .line 756
    iget-object v2, p0, Lcom/tutk/IOTC/Camera;->mThreadSendAudio:Lcom/tutk/IOTC/Camera$ThreadSendAudio;

    invoke-virtual {v2}, Lcom/tutk/IOTC/Camera$ThreadSendAudio;->start()V

    goto :goto_1

    .line 744
    .end local v0    # "ch":Lcom/tutk/IOTC/Camera$AVChannel;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 746
    .restart local v0    # "ch":Lcom/tutk/IOTC/Camera$AVChannel;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public stop(I)V
    .locals 8
    .param p1, "avChannel"    # I

    .prologue
    .line 550
    iget-object v5, p0, Lcom/tutk/IOTC/Camera;->mAVChannels:Ljava/util/List;

    monitor-enter v5

    .line 552
    const/4 v3, -0x1

    .line 554
    .local v3, "idx":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/tutk/IOTC/Camera;->mAVChannels:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lt v2, v4, :cond_2

    .line 666
    :cond_0
    :goto_1
    if-ltz v3, :cond_1

    .line 667
    iget-object v4, p0, Lcom/tutk/IOTC/Camera;->mAVChannels:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 550
    :cond_1
    monitor-exit v5

    .line 670
    return-void

    .line 556
    :cond_2
    iget-object v4, p0, Lcom/tutk/IOTC/Camera;->mAVChannels:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tutk/IOTC/Camera$AVChannel;

    .line 558
    .local v0, "ch":Lcom/tutk/IOTC/Camera$AVChannel;
    invoke-virtual {v0}, Lcom/tutk/IOTC/Camera$AVChannel;->getChannel()I

    move-result v4

    if-ne v4, p1, :cond_d

    .line 560
    move v3, v2

    .line 562
    invoke-virtual {v0}, Lcom/tutk/IOTC/Camera$AVChannel;->getChannel()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/tutk/IOTC/Camera;->stopSpeaking(I)V

    .line 564
    iget-object v4, v0, Lcom/tutk/IOTC/Camera$AVChannel;->threadStartDev:Lcom/tutk/IOTC/Camera$ThreadStartDev;

    if-eqz v4, :cond_3

    .line 565
    iget-object v4, v0, Lcom/tutk/IOTC/Camera$AVChannel;->threadStartDev:Lcom/tutk/IOTC/Camera$ThreadStartDev;

    invoke-virtual {v4}, Lcom/tutk/IOTC/Camera$ThreadStartDev;->stopThread()V

    .line 570
    :cond_3
    iget-object v4, v0, Lcom/tutk/IOTC/Camera$AVChannel;->threadRecvAudio:Lcom/tutk/IOTC/Camera$ThreadRecvAudio;

    if-eqz v4, :cond_4

    .line 571
    iget-object v4, v0, Lcom/tutk/IOTC/Camera$AVChannel;->threadRecvAudio:Lcom/tutk/IOTC/Camera$ThreadRecvAudio;

    invoke-virtual {v4}, Lcom/tutk/IOTC/Camera$ThreadRecvAudio;->stopThread()V

    .line 573
    :cond_4
    iget-object v4, v0, Lcom/tutk/IOTC/Camera$AVChannel;->threadRecvVideo:Lcom/tutk/IOTC/Camera$ThreadRecvVideo2;

    if-eqz v4, :cond_5

    .line 574
    iget-object v4, v0, Lcom/tutk/IOTC/Camera$AVChannel;->threadRecvVideo:Lcom/tutk/IOTC/Camera$ThreadRecvVideo2;

    invoke-virtual {v4}, Lcom/tutk/IOTC/Camera$ThreadRecvVideo2;->stopThread()V

    .line 576
    :cond_5
    iget-object v4, v0, Lcom/tutk/IOTC/Camera$AVChannel;->threadRecvIOCtrl:Lcom/tutk/IOTC/Camera$ThreadRecvIOCtrl;

    if-eqz v4, :cond_6

    .line 577
    iget-object v4, v0, Lcom/tutk/IOTC/Camera$AVChannel;->threadRecvIOCtrl:Lcom/tutk/IOTC/Camera$ThreadRecvIOCtrl;

    invoke-virtual {v4}, Lcom/tutk/IOTC/Camera$ThreadRecvIOCtrl;->stopThread()V

    .line 579
    :cond_6
    iget-object v4, v0, Lcom/tutk/IOTC/Camera$AVChannel;->threadSendIOCtrl:Lcom/tutk/IOTC/Camera$ThreadSendIOCtrl;

    if-eqz v4, :cond_7

    .line 580
    iget-object v4, v0, Lcom/tutk/IOTC/Camera$AVChannel;->threadSendIOCtrl:Lcom/tutk/IOTC/Camera$ThreadSendIOCtrl;

    invoke-virtual {v4}, Lcom/tutk/IOTC/Camera$ThreadSendIOCtrl;->stopThread()V

    .line 582
    :cond_7
    iget-object v4, v0, Lcom/tutk/IOTC/Camera$AVChannel;->threadRecvVideo:Lcom/tutk/IOTC/Camera$ThreadRecvVideo2;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_8

    .line 584
    :try_start_1
    const-string v4, "IOTCamera"

    const-string v6, "stop ch.threadRecvVideo.interrupt()"

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    iget-object v4, v0, Lcom/tutk/IOTC/Camera$AVChannel;->threadRecvVideo:Lcom/tutk/IOTC/Camera$ThreadRecvVideo2;

    invoke-virtual {v4}, Lcom/tutk/IOTC/Camera$ThreadRecvVideo2;->interrupt()V

    .line 587
    iget-object v4, v0, Lcom/tutk/IOTC/Camera$AVChannel;->threadRecvVideo:Lcom/tutk/IOTC/Camera$ThreadRecvVideo2;

    invoke-virtual {v4}, Lcom/tutk/IOTC/Camera$ThreadRecvVideo2;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 591
    :goto_2
    const/4 v4, 0x0

    :try_start_2
    iput-object v4, v0, Lcom/tutk/IOTC/Camera$AVChannel;->threadRecvVideo:Lcom/tutk/IOTC/Camera$ThreadRecvVideo2;

    .line 594
    :cond_8
    iget-object v4, v0, Lcom/tutk/IOTC/Camera$AVChannel;->threadRecvAudio:Lcom/tutk/IOTC/Camera$ThreadRecvAudio;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v4, :cond_9

    .line 596
    :try_start_3
    iget-object v4, v0, Lcom/tutk/IOTC/Camera$AVChannel;->threadRecvAudio:Lcom/tutk/IOTC/Camera$ThreadRecvAudio;

    invoke-virtual {v4}, Lcom/tutk/IOTC/Camera$ThreadRecvAudio;->interrupt()V

    .line 597
    iget-object v4, v0, Lcom/tutk/IOTC/Camera$AVChannel;->threadRecvAudio:Lcom/tutk/IOTC/Camera$ThreadRecvAudio;

    invoke-virtual {v4}, Lcom/tutk/IOTC/Camera$ThreadRecvAudio;->join()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 601
    :goto_3
    const/4 v4, 0x0

    :try_start_4
    iput-object v4, v0, Lcom/tutk/IOTC/Camera$AVChannel;->threadRecvAudio:Lcom/tutk/IOTC/Camera$ThreadRecvAudio;

    .line 614
    :cond_9
    iget-object v4, v0, Lcom/tutk/IOTC/Camera$AVChannel;->threadRecvIOCtrl:Lcom/tutk/IOTC/Camera$ThreadRecvIOCtrl;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v4, :cond_a

    .line 616
    :try_start_5
    iget-object v4, v0, Lcom/tutk/IOTC/Camera$AVChannel;->threadRecvIOCtrl:Lcom/tutk/IOTC/Camera$ThreadRecvIOCtrl;

    invoke-virtual {v4}, Lcom/tutk/IOTC/Camera$ThreadRecvIOCtrl;->interrupt()V

    .line 617
    iget-object v4, v0, Lcom/tutk/IOTC/Camera$AVChannel;->threadRecvIOCtrl:Lcom/tutk/IOTC/Camera$ThreadRecvIOCtrl;

    invoke-virtual {v4}, Lcom/tutk/IOTC/Camera$ThreadRecvIOCtrl;->join()V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 621
    :goto_4
    const/4 v4, 0x0

    :try_start_6
    iput-object v4, v0, Lcom/tutk/IOTC/Camera$AVChannel;->threadRecvIOCtrl:Lcom/tutk/IOTC/Camera$ThreadRecvIOCtrl;

    .line 624
    :cond_a
    iget-object v4, v0, Lcom/tutk/IOTC/Camera$AVChannel;->threadSendIOCtrl:Lcom/tutk/IOTC/Camera$ThreadSendIOCtrl;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v4, :cond_b

    .line 626
    :try_start_7
    iget-object v4, v0, Lcom/tutk/IOTC/Camera$AVChannel;->threadSendIOCtrl:Lcom/tutk/IOTC/Camera$ThreadSendIOCtrl;

    invoke-virtual {v4}, Lcom/tutk/IOTC/Camera$ThreadSendIOCtrl;->interrupt()V

    .line 627
    iget-object v4, v0, Lcom/tutk/IOTC/Camera$AVChannel;->threadSendIOCtrl:Lcom/tutk/IOTC/Camera$ThreadSendIOCtrl;

    invoke-virtual {v4}, Lcom/tutk/IOTC/Camera$ThreadSendIOCtrl;->join()V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 631
    :goto_5
    const/4 v4, 0x0

    :try_start_8
    iput-object v4, v0, Lcom/tutk/IOTC/Camera$AVChannel;->threadSendIOCtrl:Lcom/tutk/IOTC/Camera$ThreadSendIOCtrl;

    .line 634
    :cond_b
    iget-object v4, v0, Lcom/tutk/IOTC/Camera$AVChannel;->threadStartDev:Lcom/tutk/IOTC/Camera$ThreadStartDev;

    if-eqz v4, :cond_c

    .line 635
    iget-object v4, v0, Lcom/tutk/IOTC/Camera$AVChannel;->threadStartDev:Lcom/tutk/IOTC/Camera$ThreadStartDev;

    invoke-virtual {v4}, Lcom/tutk/IOTC/Camera$ThreadStartDev;->isAlive()Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result v4

    if-eqz v4, :cond_c

    .line 637
    :try_start_9
    iget-object v4, v0, Lcom/tutk/IOTC/Camera$AVChannel;->threadStartDev:Lcom/tutk/IOTC/Camera$ThreadStartDev;

    invoke-virtual {v4}, Lcom/tutk/IOTC/Camera$ThreadStartDev;->interrupt()V

    .line 638
    iget-object v4, v0, Lcom/tutk/IOTC/Camera$AVChannel;->threadStartDev:Lcom/tutk/IOTC/Camera$ThreadStartDev;

    invoke-virtual {v4}, Lcom/tutk/IOTC/Camera$ThreadStartDev;->join()V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 643
    :cond_c
    :goto_6
    const/4 v4, 0x0

    :try_start_a
    iput-object v4, v0, Lcom/tutk/IOTC/Camera$AVChannel;->threadStartDev:Lcom/tutk/IOTC/Camera$ThreadStartDev;

    .line 645
    iget-object v4, v0, Lcom/tutk/IOTC/Camera$AVChannel;->AudioFrameQueue:Lcom/tutk/IOTC/AVFrameQueue;

    invoke-virtual {v4}, Lcom/tutk/IOTC/AVFrameQueue;->removeAll()V

    .line 646
    const/4 v4, 0x0

    iput-object v4, v0, Lcom/tutk/IOTC/Camera$AVChannel;->AudioFrameQueue:Lcom/tutk/IOTC/AVFrameQueue;

    .line 648
    iget-object v4, v0, Lcom/tutk/IOTC/Camera$AVChannel;->VideoFrameQueue:Lcom/tutk/IOTC/AVFrameQueue;

    invoke-virtual {v4}, Lcom/tutk/IOTC/AVFrameQueue;->removeAll()V

    .line 649
    const/4 v4, 0x0

    iput-object v4, v0, Lcom/tutk/IOTC/Camera$AVChannel;->VideoFrameQueue:Lcom/tutk/IOTC/AVFrameQueue;

    .line 651
    iget-object v4, v0, Lcom/tutk/IOTC/Camera$AVChannel;->IOCtrlQueue:Lcom/tutk/IOTC/Camera$IOCtrlQueue;

    invoke-virtual {v4}, Lcom/tutk/IOTC/Camera$IOCtrlQueue;->removeAll()V

    .line 652
    const/4 v4, 0x0

    iput-object v4, v0, Lcom/tutk/IOTC/Camera$AVChannel;->IOCtrlQueue:Lcom/tutk/IOTC/Camera$IOCtrlQueue;

    .line 654
    invoke-virtual {v0}, Lcom/tutk/IOTC/Camera$AVChannel;->getAVIndex()I

    move-result v4

    if-ltz v4, :cond_0

    .line 656
    invoke-virtual {v0}, Lcom/tutk/IOTC/Camera$AVChannel;->getAVIndex()I

    move-result v4

    invoke-static {v4}, Lcom/tutk/IOTC/AVAPIs;->avClientStop(I)V

    .line 657
    const-string v4, "IOTCamera"

    .line 658
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "avClientStop(avIndex = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tutk/IOTC/Camera$AVChannel;->getAVIndex()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 659
    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 658
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 657
    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 550
    .end local v0    # "ch":Lcom/tutk/IOTC/Camera$AVChannel;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    throw v4

    .line 588
    .restart local v0    # "ch":Lcom/tutk/IOTC/Camera$AVChannel;
    :catch_0
    move-exception v1

    .line 589
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_b
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_2

    .line 598
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v1

    .line 599
    .restart local v1    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_3

    .line 618
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catch_2
    move-exception v1

    .line 619
    .restart local v1    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_4

    .line 628
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catch_3
    move-exception v1

    .line 629
    .restart local v1    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_5

    .line 639
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catch_4
    move-exception v1

    .line 640
    .restart local v1    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_6

    .line 554
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_d
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0
.end method

.method public stopDownloadPicture(I)V
    .locals 2
    .param p1, "avChannel"    # I

    .prologue
    .line 795
    iget-object v1, p0, Lcom/tutk/IOTC/Camera;->mThreadRecvRecord:Lcom/tutk/IOTC/Camera$ThreadRecvRecord;

    if-eqz v1, :cond_0

    .line 796
    iget-object v1, p0, Lcom/tutk/IOTC/Camera;->mThreadRecvRecord:Lcom/tutk/IOTC/Camera$ThreadRecvRecord;

    invoke-virtual {v1}, Lcom/tutk/IOTC/Camera$ThreadRecvRecord;->stopThread()V

    .line 799
    :try_start_0
    iget-object v1, p0, Lcom/tutk/IOTC/Camera;->mThreadRecvRecord:Lcom/tutk/IOTC/Camera$ThreadRecvRecord;

    invoke-virtual {v1}, Lcom/tutk/IOTC/Camera$ThreadRecvRecord;->interrupt()V

    .line 800
    iget-object v1, p0, Lcom/tutk/IOTC/Camera;->mThreadRecvRecord:Lcom/tutk/IOTC/Camera$ThreadRecvRecord;

    invoke-virtual {v1}, Lcom/tutk/IOTC/Camera$ThreadRecvRecord;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 805
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tutk/IOTC/Camera;->mThreadRecvRecord:Lcom/tutk/IOTC/Camera$ThreadRecvRecord;

    .line 807
    :cond_0
    return-void

    .line 801
    :catch_0
    move-exception v0

    .line 802
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public stopListening(I)V
    .locals 5
    .param p1, "avChannel"    # I

    .prologue
    .line 848
    iget-object v4, p0, Lcom/tutk/IOTC/Camera;->mAVChannels:Ljava/util/List;

    monitor-enter v4

    .line 850
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/tutk/IOTC/Camera;->mAVChannels:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v2, v3, :cond_0

    .line 848
    :goto_1
    monitor-exit v4

    .line 873
    return-void

    .line 852
    :cond_0
    iget-object v3, p0, Lcom/tutk/IOTC/Camera;->mAVChannels:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tutk/IOTC/Camera$AVChannel;

    .line 854
    .local v0, "ch":Lcom/tutk/IOTC/Camera$AVChannel;
    invoke-virtual {v0}, Lcom/tutk/IOTC/Camera$AVChannel;->getChannel()I

    move-result v3

    if-ne p1, v3, :cond_2

    .line 856
    iget-object v3, v0, Lcom/tutk/IOTC/Camera$AVChannel;->threadRecvAudio:Lcom/tutk/IOTC/Camera$ThreadRecvAudio;

    if-eqz v3, :cond_1

    .line 857
    iget-object v3, v0, Lcom/tutk/IOTC/Camera$AVChannel;->threadRecvAudio:Lcom/tutk/IOTC/Camera$ThreadRecvAudio;

    invoke-virtual {v3}, Lcom/tutk/IOTC/Camera$ThreadRecvAudio;->stopThread()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 859
    :try_start_1
    iget-object v3, v0, Lcom/tutk/IOTC/Camera$AVChannel;->threadRecvAudio:Lcom/tutk/IOTC/Camera$ThreadRecvAudio;

    invoke-virtual {v3}, Lcom/tutk/IOTC/Camera$ThreadRecvAudio;->interrupt()V

    .line 860
    iget-object v3, v0, Lcom/tutk/IOTC/Camera$AVChannel;->threadRecvAudio:Lcom/tutk/IOTC/Camera$ThreadRecvAudio;

    invoke-virtual {v3}, Lcom/tutk/IOTC/Camera$ThreadRecvAudio;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 864
    :goto_2
    const/4 v3, 0x0

    :try_start_2
    iput-object v3, v0, Lcom/tutk/IOTC/Camera$AVChannel;->threadRecvAudio:Lcom/tutk/IOTC/Camera$ThreadRecvAudio;

    .line 867
    :cond_1
    iget-object v3, v0, Lcom/tutk/IOTC/Camera$AVChannel;->AudioFrameQueue:Lcom/tutk/IOTC/AVFrameQueue;

    invoke-virtual {v3}, Lcom/tutk/IOTC/AVFrameQueue;->removeAll()V

    goto :goto_1

    .line 848
    .end local v0    # "ch":Lcom/tutk/IOTC/Camera$AVChannel;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 861
    .restart local v0    # "ch":Lcom/tutk/IOTC/Camera$AVChannel;
    :catch_0
    move-exception v1

    .line 862
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 850
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public stopShow(I)V
    .locals 6
    .param p1, "avChannel"    # I

    .prologue
    .line 702
    iget-object v4, p0, Lcom/tutk/IOTC/Camera;->mAVChannels:Ljava/util/List;

    monitor-enter v4

    .line 704
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/tutk/IOTC/Camera;->mAVChannels:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v2, v3, :cond_0

    .line 702
    :goto_1
    monitor-exit v4

    .line 740
    return-void

    .line 706
    :cond_0
    iget-object v3, p0, Lcom/tutk/IOTC/Camera;->mAVChannels:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tutk/IOTC/Camera$AVChannel;

    .line 708
    .local v0, "ch":Lcom/tutk/IOTC/Camera$AVChannel;
    invoke-virtual {v0}, Lcom/tutk/IOTC/Camera$AVChannel;->getChannel()I

    move-result v3

    if-ne v3, p1, :cond_2

    .line 710
    iget-object v3, v0, Lcom/tutk/IOTC/Camera$AVChannel;->threadRecvVideo:Lcom/tutk/IOTC/Camera$ThreadRecvVideo2;

    if-eqz v3, :cond_1

    .line 711
    iget-object v3, v0, Lcom/tutk/IOTC/Camera$AVChannel;->threadRecvVideo:Lcom/tutk/IOTC/Camera$ThreadRecvVideo2;

    invoke-virtual {v3}, Lcom/tutk/IOTC/Camera$ThreadRecvVideo2;->stopThread()V

    .line 712
    const-string v3, "IOTCamera"

    const-string v5, "stopShow ch.threadRecvVideo.interrupt"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 715
    :try_start_1
    iget-object v3, v0, Lcom/tutk/IOTC/Camera$AVChannel;->threadRecvVideo:Lcom/tutk/IOTC/Camera$ThreadRecvVideo2;

    invoke-virtual {v3}, Lcom/tutk/IOTC/Camera$ThreadRecvVideo2;->interrupt()V

    .line 716
    iget-object v3, v0, Lcom/tutk/IOTC/Camera$AVChannel;->threadRecvVideo:Lcom/tutk/IOTC/Camera$ThreadRecvVideo2;

    invoke-virtual {v3}, Lcom/tutk/IOTC/Camera$ThreadRecvVideo2;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 720
    :goto_2
    const/4 v3, 0x0

    :try_start_2
    iput-object v3, v0, Lcom/tutk/IOTC/Camera$AVChannel;->threadRecvVideo:Lcom/tutk/IOTC/Camera$ThreadRecvVideo2;

    .line 734
    :cond_1
    iget-object v3, v0, Lcom/tutk/IOTC/Camera$AVChannel;->VideoFrameQueue:Lcom/tutk/IOTC/AVFrameQueue;

    invoke-virtual {v3}, Lcom/tutk/IOTC/AVFrameQueue;->removeAll()V

    goto :goto_1

    .line 702
    .end local v0    # "ch":Lcom/tutk/IOTC/Camera$AVChannel;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 717
    .restart local v0    # "ch":Lcom/tutk/IOTC/Camera$AVChannel;
    :catch_0
    move-exception v1

    .line 718
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 704
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public stopSpeaking(I)V
    .locals 2
    .param p1, "avChannel"    # I

    .prologue
    .line 778
    iget-object v1, p0, Lcom/tutk/IOTC/Camera;->mThreadSendAudio:Lcom/tutk/IOTC/Camera$ThreadSendAudio;

    if-eqz v1, :cond_0

    .line 779
    iget-object v1, p0, Lcom/tutk/IOTC/Camera;->mThreadSendAudio:Lcom/tutk/IOTC/Camera$ThreadSendAudio;

    invoke-virtual {v1}, Lcom/tutk/IOTC/Camera$ThreadSendAudio;->stopThread()V

    .line 782
    :try_start_0
    iget-object v1, p0, Lcom/tutk/IOTC/Camera;->mThreadSendAudio:Lcom/tutk/IOTC/Camera$ThreadSendAudio;

    invoke-virtual {v1}, Lcom/tutk/IOTC/Camera$ThreadSendAudio;->interrupt()V

    .line 783
    iget-object v1, p0, Lcom/tutk/IOTC/Camera;->mThreadSendAudio:Lcom/tutk/IOTC/Camera$ThreadSendAudio;

    invoke-virtual {v1}, Lcom/tutk/IOTC/Camera$ThreadSendAudio;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 788
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tutk/IOTC/Camera;->mThreadSendAudio:Lcom/tutk/IOTC/Camera$ThreadSendAudio;

    .line 790
    :cond_0
    invoke-virtual {p0, p1}, Lcom/tutk/IOTC/Camera;->stopListening(I)V

    .line 791
    return-void

    .line 784
    :catch_0
    move-exception v0

    .line 785
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public unregisterIOTCListener(Lcom/tutk/IOTC/IRegisterIOTCListener;)Z
    .locals 3
    .param p1, "listener"    # Lcom/tutk/IOTC/IRegisterIOTCListener;

    .prologue
    .line 125
    const/4 v0, 0x0

    .line 128
    .local v0, "result":Z
    iget-object v1, p0, Lcom/tutk/IOTC/Camera;->mIOTCListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 129
    const-string v1, "IOTCamera"

    const-string v2, "unregister IOTC listener"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object v1, p0, Lcom/tutk/IOTC/Camera;->mIOTCListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 131
    const/4 v0, 0x1

    .line 135
    :cond_0
    return v0
.end method
