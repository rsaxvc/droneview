.class public Lcom/tutk/IOTC/IOTCAPIs;
.super Ljava/lang/Object;
.source "IOTCAPIs.java"


# static fields
.field public static final API_ER_ANDROID_NULL:I = -0x2710

.field public static final IOTC_ER_AES_CERTIFY_FAIL:I = -0x1d

.field public static final IOTC_ER_ALREADY_INITIALIZED:I = -0x3

.field public static final IOTC_ER_CAN_NOT_FIND_DEVICE:I = -0x13

.field public static final IOTC_ER_CH_NOT_ON:I = -0x1a

.field public static final IOTC_ER_CLIENT_NOT_SECURE_MODE:I = -0x22

.field public static final IOTC_ER_CLIENT_SECURE_MODE:I = -0x23

.field public static final IOTC_ER_CONNECT_IS_CALLING:I = -0x14

.field public static final IOTC_ER_DEVICE_MULTI_LOGIN:I = -0x2d

.field public static final IOTC_ER_DEVICE_NOT_LISTENING:I = -0x18

.field public static final IOTC_ER_DEVICE_NOT_SECURE_MODE:I = -0x24

.field public static final IOTC_ER_DEVICE_SECURE_MODE:I = -0x25

.field public static final IOTC_ER_EXCEED_MAX_SESSION:I = -0x12

.field public static final IOTC_ER_EXIT_LISTEN:I = -0x27

.field public static final IOTC_ER_FAIL_CONNECT_SEARCH:I = -0x1b

.field public static final IOTC_ER_FAIL_CREATE_MUTEX:I = -0x4

.field public static final IOTC_ER_FAIL_CREATE_SOCKET:I = -0x6

.field public static final IOTC_ER_FAIL_CREATE_THREAD:I = -0x5

.field public static final IOTC_ER_FAIL_GET_LOCAL_IP:I = -0x10

.field public static final IOTC_ER_FAIL_RESOLVE_HOSTNAME:I = -0x2

.field public static final IOTC_ER_FAIL_SETUP_RELAY:I = -0x2a

.field public static final IOTC_ER_FAIL_SOCKET_BIND:I = -0x8

.field public static final IOTC_ER_FAIL_SOCKET_OPT:I = -0x7

.field public static final IOTC_ER_INVALID_ARG:I = -0x2e

.field public static final IOTC_ER_INVALID_MODE:I = -0x26

.field public static final IOTC_ER_INVALID_SID:I = -0xe

.field public static final IOTC_ER_LISTEN_ALREADY_CALLED:I = -0x11

.field public static final IOTC_ER_LOGIN_ALREADY_CALLED:I = -0xb

.field public static final IOTC_ER_MASTER_TOO_FEW:I = -0x1c

.field public static final IOTC_ER_NETWORK_UNREACHABLE:I = -0x29

.field public static final IOTC_ER_NOT_INITIALIZED:I = -0xc

.field public static final IOTC_ER_NOT_SUPPORT_RELAY:I = -0x2b

.field public static final IOTC_ER_NO_PERMISSION:I = -0x28

.field public static final IOTC_ER_NO_SERVER_LIST:I = -0x2c

.field public static final IOTC_ER_NoERROR:I = 0x0

.field public static final IOTC_ER_REMOTE_TIMEOUT_DISCONNECT:I = -0x17

.field public static final IOTC_ER_SERVER_NOT_RESPONSE:I = -0x1

.field public static final IOTC_ER_SESSION_CLOSE_BY_REMOTE:I = -0x16

.field public static final IOTC_ER_SESSION_NO_FREE_CHANNEL:I = -0x1f

.field public static final IOTC_ER_TCP_CONNECT_TO_SERVER_FAILED:I = -0x21

.field public static final IOTC_ER_TCP_TRAVEL_FAILED:I = -0x20

.field public static final IOTC_ER_TIMEOUT:I = -0xd

.field public static final IOTC_ER_UNKNOWN_DEVICE:I = -0xf

.field public static final IOTC_ER_UNLICENSE:I = -0xa


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 211
    :try_start_0
    const-string v1, "IOTCAPIs"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    .local v0, "ule":Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    return-void

    .line 212
    .end local v0    # "ule":Ljava/lang/UnsatisfiedLinkError;
    :catch_0
    move-exception v0

    .line 213
    .restart local v0    # "ule":Ljava/lang/UnsatisfiedLinkError;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "loadLibrary(IOTCAPIs),"

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
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native IOTC_Connect_ByUID(Ljava/lang/String;)I
.end method

.method public static native IOTC_Connect_ByUID2(Ljava/lang/String;Ljava/lang/String;I)I
.end method

.method public static native IOTC_Connect_ByUID_Parallel(Ljava/lang/String;I)I
.end method

.method public static native IOTC_Connect_Stop()V
.end method

.method public static native IOTC_Connect_Stop_BySID(I)I
.end method

.method public static native IOTC_DeInitialize()I
.end method

.method public static native IOTC_Device_Login(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static native IOTC_Get_Login_Info([J)I
.end method

.method public static native IOTC_Get_Nat_Type()I
.end method

.method public static native IOTC_Get_SessionID()I
.end method

.method public static native IOTC_Get_Version([J)V
.end method

.method public static native IOTC_Initialize(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static native IOTC_Initialize2(I)I
.end method

.method public static native IOTC_IsDeviceSecureMode(I)I
.end method

.method public static native IOTC_Lan_Search([II)[Lcom/tutk/IOTC/st_LanSearchInfo;
.end method

.method public static native IOTC_Listen(J)I
.end method

.method public static native IOTC_Listen2(JLjava/lang/String;I)I
.end method

.method public static native IOTC_Session_Channel_OFF(II)I
.end method

.method public static native IOTC_Session_Channel_ON(II)I
.end method

.method public static native IOTC_Session_Check(ILcom/tutk/IOTC/St_SInfo;)I
.end method

.method public static native IOTC_Session_Close(I)V
.end method

.method public static native IOTC_Session_Get_Free_Channel(I)I
.end method

.method public static native IOTC_Session_Read(I[BIII)I
.end method

.method public static native IOTC_Session_Write(I[BII)I
.end method

.method public static native IOTC_Set_Max_Session_Number(J)V
.end method
