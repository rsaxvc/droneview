.class public Lcom/tutk/IOTC/AVFrame;
.super Ljava/lang/Object;
.source "AVFrame.java"


# static fields
.field public static final AUDIO_CHANNEL_MONO:I = 0x0

.field public static final AUDIO_CHANNEL_STERO:I = 0x1

.field public static final AUDIO_DATABITS_16:I = 0x1

.field public static final AUDIO_DATABITS_8:I = 0x0

.field public static final AUDIO_SAMPLE_11K:I = 0x1

.field public static final AUDIO_SAMPLE_12K:I = 0x2

.field public static final AUDIO_SAMPLE_16K:I = 0x3

.field public static final AUDIO_SAMPLE_22K:I = 0x4

.field public static final AUDIO_SAMPLE_24K:I = 0x5

.field public static final AUDIO_SAMPLE_32K:I = 0x6

.field public static final AUDIO_SAMPLE_44K:I = 0x7

.field public static final AUDIO_SAMPLE_48K:I = 0x8

.field public static final AUDIO_SAMPLE_8K:I = 0x0

.field public static final FRAMEINFO_SIZE:I = 0x18

.field public static final FRM_STATE_COMPLETE:B = 0x0t

.field public static final FRM_STATE_INCOMPLETE:B = 0x1t

.field public static final FRM_STATE_LOSED:B = 0x2t

.field public static final FRM_STATE_UNKOWN:B = -0x1t

.field public static final IPC_FRAME_FLAG_IFRAME:I = 0x1

.field public static final IPC_FRAME_FLAG_IO:I = 0x3

.field public static final IPC_FRAME_FLAG_MD:I = 0x2

.field public static final IPC_FRAME_FLAG_PBFRAME:I = 0x0

.field public static final MEDIA_CODEC_AUDIO_ADPCM:I = 0x8b

.field public static final MEDIA_CODEC_AUDIO_G711A:I = 0x8a

.field public static final MEDIA_CODEC_AUDIO_G726:I = 0x8f

.field public static final MEDIA_CODEC_AUDIO_MP3:I = 0x8e

.field public static final MEDIA_CODEC_AUDIO_PCM:I = 0x8c

.field public static final MEDIA_CODEC_AUDIO_SPEEX:I = 0x8d

.field public static final MEDIA_CODEC_UNKNOWN:I = 0x0

.field public static final MEDIA_CODEC_VIDEO_H263:I = 0x4d

.field public static final MEDIA_CODEC_VIDEO_H264:I = 0x4e

.field public static final MEDIA_CODEC_VIDEO_MJPEG:I = 0x4f

.field public static final MEDIA_CODEC_VIDEO_MPEG4:I = 0x4c


# instance fields
.field private codec_id:S

.field private flags:B

.field public frmData:[B

.field private frmNo:J

.field private frmSize:I

.field private frmState:B

.field private onlineNum:B

.field private timestamp:I

.field private videoHeight:I

.field private videoWidth:I


# direct methods
.method public constructor <init>(JB[B[BI)V
    .locals 5
    .param p1, "frameNo"    # J
    .param p3, "frameState"    # B
    .param p4, "frameHead"    # [B
    .param p5, "frameData"    # [B
    .param p6, "frameDataSize"    # I

    .prologue
    const/16 v4, 0x10

    const/4 v1, 0x0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-short v1, p0, Lcom/tutk/IOTC/AVFrame;->codec_id:S

    .line 73
    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/tutk/IOTC/AVFrame;->flags:B

    .line 74
    iput-byte v1, p0, Lcom/tutk/IOTC/AVFrame;->onlineNum:B

    .line 75
    iput v1, p0, Lcom/tutk/IOTC/AVFrame;->timestamp:I

    .line 76
    iput v1, p0, Lcom/tutk/IOTC/AVFrame;->videoWidth:I

    .line 77
    iput v1, p0, Lcom/tutk/IOTC/AVFrame;->videoHeight:I

    .line 80
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/tutk/IOTC/AVFrame;->frmNo:J

    .line 81
    iput-byte v1, p0, Lcom/tutk/IOTC/AVFrame;->frmState:B

    .line 82
    iput v1, p0, Lcom/tutk/IOTC/AVFrame;->frmSize:I

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tutk/IOTC/AVFrame;->frmData:[B

    .line 87
    invoke-static {p4, v1}, Lcom/tutk/IOTC/Packet;->byteArrayToShort_Little([BI)S

    move-result v0

    iput-short v0, p0, Lcom/tutk/IOTC/AVFrame;->codec_id:S

    .line 88
    iput-byte p3, p0, Lcom/tutk/IOTC/AVFrame;->frmState:B

    .line 89
    const/4 v0, 0x2

    aget-byte v0, p4, v0

    iput-byte v0, p0, Lcom/tutk/IOTC/AVFrame;->flags:B

    .line 91
    const/4 v0, 0x4

    aget-byte v0, p4, v0

    iput-byte v0, p0, Lcom/tutk/IOTC/AVFrame;->onlineNum:B

    .line 92
    const/16 v0, 0xc

    invoke-static {p4, v0}, Lcom/tutk/IOTC/Packet;->byteArrayToInt_Little([BI)I

    move-result v0

    iput v0, p0, Lcom/tutk/IOTC/AVFrame;->timestamp:I

    .line 93
    array-length v0, p4

    if-le v0, v4, :cond_1

    invoke-static {p4, v4}, Lcom/tutk/IOTC/Packet;->byteArrayToInt_Little([BI)I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/tutk/IOTC/AVFrame;->videoWidth:I

    .line 94
    array-length v0, p4

    if-le v0, v4, :cond_0

    const/16 v0, 0x14

    invoke-static {p4, v0}, Lcom/tutk/IOTC/Packet;->byteArrayToInt_Little([BI)I

    move-result v1

    :cond_0
    iput v1, p0, Lcom/tutk/IOTC/AVFrame;->videoHeight:I

    .line 95
    iput p6, p0, Lcom/tutk/IOTC/AVFrame;->frmSize:I

    .line 96
    iput-object p5, p0, Lcom/tutk/IOTC/AVFrame;->frmData:[B

    .line 97
    iput-wide p1, p0, Lcom/tutk/IOTC/AVFrame;->frmNo:J

    .line 98
    return-void

    :cond_1
    move v0, v1

    .line 93
    goto :goto_0
.end method

.method public static getSamplerate(B)I
    .locals 2
    .param p0, "flags"    # B

    .prologue
    .line 102
    const/4 v0, 0x0

    .line 104
    .local v0, "nSamplerate":I
    ushr-int/lit8 v1, p0, 0x2

    packed-switch v1, :pswitch_data_0

    .line 142
    const/16 v0, 0x1f40

    .line 144
    :goto_0
    return v0

    .line 107
    :pswitch_0
    const/16 v0, 0x1f40

    .line 108
    goto :goto_0

    .line 111
    :pswitch_1
    const/16 v0, 0x2b11

    .line 112
    goto :goto_0

    .line 115
    :pswitch_2
    const/16 v0, 0x2ee0

    .line 116
    goto :goto_0

    .line 119
    :pswitch_3
    const/16 v0, 0x3e80

    .line 120
    goto :goto_0

    .line 123
    :pswitch_4
    const/16 v0, 0x5622

    .line 124
    goto :goto_0

    .line 127
    :pswitch_5
    const/16 v0, 0x5dc0

    .line 128
    goto :goto_0

    .line 131
    :pswitch_6
    const/16 v0, 0x7d00

    .line 132
    goto :goto_0

    .line 135
    :pswitch_7
    const v0, 0xac44

    .line 136
    goto :goto_0

    .line 139
    :pswitch_8
    const v0, 0xbb80

    .line 140
    goto :goto_0

    .line 104
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method


# virtual methods
.method public getCodecId()S
    .locals 1

    .prologue
    .line 172
    iget-short v0, p0, Lcom/tutk/IOTC/AVFrame;->codec_id:S

    return v0
.end method

.method public getFlags()B
    .locals 1

    .prologue
    .line 152
    iget-byte v0, p0, Lcom/tutk/IOTC/AVFrame;->flags:B

    return v0
.end method

.method public getFrmNo()J
    .locals 2

    .prologue
    .line 160
    iget-wide v0, p0, Lcom/tutk/IOTC/AVFrame;->frmNo:J

    return-wide v0
.end method

.method public getFrmSize()I
    .locals 1

    .prologue
    .line 164
    iget v0, p0, Lcom/tutk/IOTC/AVFrame;->frmSize:I

    return v0
.end method

.method public getFrmState()B
    .locals 1

    .prologue
    .line 156
    iget-byte v0, p0, Lcom/tutk/IOTC/AVFrame;->frmState:B

    return v0
.end method

.method public getOnlineNum()B
    .locals 1

    .prologue
    .line 168
    iget-byte v0, p0, Lcom/tutk/IOTC/AVFrame;->onlineNum:B

    return v0
.end method

.method public getTimeStamp()I
    .locals 1

    .prologue
    .line 176
    iget v0, p0, Lcom/tutk/IOTC/AVFrame;->timestamp:I

    return v0
.end method

.method public getVideoHeight()I
    .locals 1

    .prologue
    .line 184
    iget v0, p0, Lcom/tutk/IOTC/AVFrame;->videoHeight:I

    return v0
.end method

.method public getVideoWidth()I
    .locals 1

    .prologue
    .line 180
    iget v0, p0, Lcom/tutk/IOTC/AVFrame;->videoWidth:I

    return v0
.end method

.method public isIFrame()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 148
    iget-byte v1, p0, Lcom/tutk/IOTC/AVFrame;->flags:B

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
