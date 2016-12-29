.class public Lcom/ndt/ppcs_api/NDT_API;
.super Ljava/lang/Object;
.source "NDT_API.java"


# static fields
.field public static final NDT_ERROR_AlreadyInitialized:I = -0x1

.field public static final NDT_ERROR_ClientNotOnRecvFrom:I = -0x18

.field public static final NDT_ERROR_DeviceNotOnRecv:I = -0x17

.field public static final NDT_ERROR_ExceedMaxClientHandle:I = -0x11

.field public static final NDT_ERROR_ExceedMaxDeviceHandle:I = -0x10

.field public static final NDT_ERROR_FAESupportNeeded:I = -0x63

.field public static final NDT_ERROR_HostResolveFailed:I = -0x6

.field public static final NDT_ERROR_InvalidAES128Key:I = -0xb

.field public static final NDT_ERROR_InvalidDID:I = -0xd

.field public static final NDT_ERROR_InvalidDataOrSize:I = -0xc

.field public static final NDT_ERROR_InvalidHandle:I = -0xf

.field public static final NDT_ERROR_InvalidInitString:I = -0xa

.field public static final NDT_ERROR_InvalidNDTLicense:I = -0xe

.field public static final NDT_ERROR_MemoryAllocFailed:I = -0x8

.field public static final NDT_ERROR_NetworkDetectRunning:I = -0x12

.field public static final NDT_ERROR_NoAckFromCS:I = -0x19

.field public static final NDT_ERROR_NoAckFromClient:I = -0x1c

.field public static final NDT_ERROR_NoAckFromDevice:I = -0x1b

.field public static final NDT_ERROR_NoAckFromPushServer:I = -0x1a

.field public static final NDT_ERROR_NoError:I = 0x0

.field public static final NDT_ERROR_NoPushServerKnowClient:I = -0x1e

.field public static final NDT_ERROR_NoPushServerKnowDevice:I = -0x1d

.field public static final NDT_ERROR_NotEnoughBufferSize:I = -0x9

.field public static final NDT_ERROR_NotInitialized:I = -0x2

.field public static final NDT_ERROR_RecvFromNotRunning:I = -0x22

.field public static final NDT_ERROR_RecvFromRunning:I = -0x15

.field public static final NDT_ERROR_RecvNotRunning:I = -0x21

.field public static final NDT_ERROR_RecvRunning:I = -0x14

.field public static final NDT_ERROR_RemoteHandleClosed:I = -0x24

.field public static final NDT_ERROR_ScketBindFailed:I = -0x5

.field public static final NDT_ERROR_ScketCreateFailed:I = -0x4

.field public static final NDT_ERROR_SendBackNotRunning:I = -0x23

.field public static final NDT_ERROR_SendBackRunning:I = -0x16

.field public static final NDT_ERROR_SendToNotRunning:I = -0x20

.field public static final NDT_ERROR_SendToRunning:I = -0x13

.field public static final NDT_ERROR_ThreadCreateFailed:I = -0x7

.field public static final NDT_ERROR_TimeOut:I = -0x3

.field public static final NDT_ERROR_UserBreak:I = -0x1f


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 83
    :try_start_0
    const-string v1, "NDT_API_PPCS"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 84
    const-string v1, ""

    const-string v2, "NDT_API loaded!"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    .local v0, "ule":Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    return-void

    .line 86
    .end local v0    # "ule":Ljava/lang/UnsatisfiedLinkError;
    :catch_0
    move-exception v0

    .line 87
    .restart local v0    # "ule":Ljava/lang/UnsatisfiedLinkError;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "!!!!!!!!!!!!!!!!!!!!! loadLibrary(NDT_API_PPCS),"

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
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native NDT_PPCS_CloseHandle(I)I
.end method

.method public static native NDT_PPCS_DeInitialize()I
.end method

.method public static native NDT_PPCS_GetAPIVersion([I)Ljava/lang/String;
.end method

.method public static native NDT_PPCS_Initialize(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)I
.end method

.method public static native NDT_PPCS_NetworkDetect(Lcom/ndt/ppcs_api/st_NDT_NetInfo;I)I
.end method

.method public static native NDT_PPCS_Recv([B[III)I
.end method

.method public static native NDT_PPCS_RecvFrom(I[B[II)I
.end method

.method public static native NDT_PPCS_RecvFrom_Break(I)I
.end method

.method public static native NDT_PPCS_Recv_Break()I
.end method

.method public static native NDT_PPCS_SendBack(I[BI)I
.end method

.method public static native NDT_PPCS_SendBack_Break(I)I
.end method

.method public static native NDT_PPCS_SendTo(Ljava/lang/String;[BII)I
.end method

.method public static native NDT_PPCS_SendToByServer(Ljava/lang/String;[BIILjava/lang/String;Ljava/lang/String;)I
.end method

.method public static native NDT_PPCS_SendTo_Break(Ljava/lang/String;)I
.end method
