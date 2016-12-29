.class public Lcom/tutk/IOTC/AVAPIs;
.super Ljava/lang/Object;
.source "AVAPIs.java"


# static fields
.field public static final API_ER_ANDROID_NULL:I = -0x2710

.field public static final AV_ER_BUFPARA_MAXSIZE_INSUFF:I = -0x4e21

.field public static final AV_ER_CLIENT_EXIT:I = -0x4e32

.field public static final AV_ER_CLIENT_NOT_SUPPORT:I = -0x4e34

.field public static final AV_ER_CLIENT_NO_AVLOGIN:I = -0x4e28

.field public static final AV_ER_DATA_NOREADY:I = -0x4e2c

.field public static final AV_ER_EXCEED_MAX_ALARM:I = -0x4e25

.field public static final AV_ER_EXCEED_MAX_CHANNEL:I = -0x4e22

.field public static final AV_ER_EXCEED_MAX_SIZE:I = -0x4e26

.field public static final AV_ER_FAIL_CREATE_THREAD:I = -0x4e24

.field public static final AV_ER_INCOMPLETE_FRAME:I = -0x4e2d

.field public static final AV_ER_INVALID_ARG:I = -0x4e20

.field public static final AV_ER_INVALID_SID:I = -0x4e2a

.field public static final AV_ER_LOSED_THIS_FRAME:I = -0x4e2e

.field public static final AV_ER_MEM_INSUFF:I = -0x4e23

.field public static final AV_ER_NOT_INITIALIZED:I = -0x4e33

.field public static final AV_ER_NoERROR:I = 0x0

.field public static final AV_ER_REMOTE_TIMEOUT_DISCONNECT:I = -0x4e30

.field public static final AV_ER_SENDIOCTRL_ALREADY_CALLED:I = -0x4e35

.field public static final AV_ER_SENDIOCTRL_EXIT:I = -0x4e36

.field public static final AV_ER_SERVER_EXIT:I = -0x4e31

.field public static final AV_ER_SERV_NO_RESPONSE:I = -0x4e27

.field public static final AV_ER_SESSION_CLOSE_BY_REMOTE:I = -0x4e2f

.field public static final AV_ER_TIMEOUT:I = -0x4e2b

.field public static final AV_ER_WRONG_VIEWACCorPWD:I = -0x4e29

.field public static final IOTYPE_INNER_SND_DATA_DELAY:I = 0xff

.field public static final TIME_DELAY_DELTA:I = 0x1

.field public static final TIME_DELAY_INITIAL:I = 0x0

.field public static final TIME_DELAY_MAX:I = 0x1f4

.field public static final TIME_DELAY_MIN:I = 0x4

.field public static final TIME_SPAN_LOSED:I = 0x3e8


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 146
    :try_start_0
    const-string v1, "AVAPIs"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    .local v0, "ule":Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    return-void

    .line 147
    .end local v0    # "ule":Ljava/lang/UnsatisfiedLinkError;
    :catch_0
    move-exception v0

    .line 148
    .restart local v0    # "ule":Ljava/lang/UnsatisfiedLinkError;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "loadLibrary(AVAPIs),"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native avCheckAudioBuf(I)I
.end method

.method public static native avClientCleanBuf(I)I
.end method

.method public static native avClientExit(II)V
.end method

.method public static native avClientSetMaxBufSize(I)V
.end method

.method public static native avClientStart(ILjava/lang/String;Ljava/lang/String;J[JI)I
.end method

.method public static native avClientStop(I)V
.end method

.method public static native avDeInitialize()I
.end method

.method public static native avGetAVApiVer()I
.end method

.method public static native avInitialize(I)I
.end method

.method public static native avRecvAudioData(I[BI[BI[I)I
.end method

.method public static native avRecvFrameData(I[BI[BI[I)I
.end method

.method public static native avRecvFrameData2(I[BI[I[I[BI[I[I)I
.end method

.method public static native avRecvIOCtrl(I[I[BII)I
.end method

.method public static native avSendAudioData(I[BI[BI)I
.end method

.method public static native avSendFrameData(I[BI[BI)I
.end method

.method public static native avSendIOCtrl(II[BI)I
.end method

.method public static native avSendIOCtrlExit(I)I
.end method

.method public static native avServExit(II)V
.end method

.method public static native avServStart(I[B[BJJI)I
.end method

.method public static native avServStop(I)V
.end method
