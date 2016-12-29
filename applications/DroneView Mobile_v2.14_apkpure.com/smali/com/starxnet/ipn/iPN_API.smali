.class public Lcom/starxnet/ipn/iPN_API;
.super Ljava/lang/Object;
.source "iPN_API.java"


# static fields
.field public static final iPN_Error_Already_Posted:I = -0xb

.field public static final iPN_Error_Already_Published:I = -0x9

.field public static final iPN_Error_Already_Subscribed:I = -0xa

.field public static final iPN_Error_Connect_Error:I = -0xd

.field public static final iPN_Error_Event_Exist:I = -0x4

.field public static final iPN_Error_Event_NotExist:I = -0x5

.field public static final iPN_Error_Internal_Error:I = -0x7

.field public static final iPN_Error_Invalid_AuthCode:I = -0x1

.field public static final iPN_Error_Invalid_Token:I = -0x2

.field public static final iPN_Error_Max_Event:I = -0x3

.field public static final iPN_Error_QueryTokenPassword_Or_NotOpen:I = -0xe

.field public static final iPN_Error_SubscriberID_NotExist:I = -0x6

.field public static final iPN_Error_Success:I = 0x0

.field public static final iPN_Error_Table_NotExist:I = -0x8

.field public static final iPN_Error_TimeOut:I = -0xc

.field public static final iPN_PROTO_EVENT_NAME_SIZE:I = 0x20

.field public static final iPN_PROTO_POST_ADDITIONALINFO_SIZE:I = 0x80

.field public static final iPN_PROTO_TOKEN_SIZE:I = 0xa0


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 101
    :try_start_0
    const-string v1, "iPN_API"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    .local v0, "ule":Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    return-void

    .line 102
    .end local v0    # "ule":Ljava/lang/UnsatisfiedLinkError;
    :catch_0
    move-exception v0

    .line 103
    .restart local v0    # "ule":Ljava/lang/UnsatisfiedLinkError;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "loadLibrary(iPN_API),"

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
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native iPN_DeInitialize()I
.end method

.method public static native iPN_Debug(ILjava/lang/String;)V
.end method

.method public static native iPN_DirectPush_Wait(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
.end method

.method public static native iPN_Initialize(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static native iPN_NetworkDetect()I
.end method

.method public static native iPN_Post(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)I
.end method

.method public static native iPN_Publish(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[BILjava/lang/String;)I
.end method

.method public static native iPN_QueryToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;)I
.end method

.method public static native iPN_SendtoNotifyServers(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static native iPN_Subscribe_Common(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)I
.end method

.method public static native iPN_Subscribe_DirectPush(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static native iPN_Subscribe_Email(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)I
.end method

.method public static native iPN_Subscribe_MQTTMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)I
.end method

.method public static native iPN_Subscribe_SMS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)I
.end method

.method public static native iPN_Subscribe_Uniqush(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)I
.end method

.method public static native iPN_Subscribe_Voip(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)I
.end method

.method public static native iPN_Subscribe_XinGe(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)I
.end method

.method public static native iPN_UnPublish(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static native iPN_UnSubscribe_Common(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
.end method

.method public static native iPN_UnSubscribe_DirectPush(Ljava/lang/String;Ljava/lang/String;I)I
.end method

.method public static native iPN_UnSubscribe_Email(Ljava/lang/String;Ljava/lang/String;I)I
.end method

.method public static native iPN_UnSubscribe_MQTTMessage(Ljava/lang/String;Ljava/lang/String;I)I
.end method

.method public static native iPN_UnSubscribe_SMS(Ljava/lang/String;Ljava/lang/String;I)I
.end method

.method public static native iPN_UnSubscribe_Uniqush(Ljava/lang/String;Ljava/lang/String;I)I
.end method

.method public static native iPN_UnSubscribe_Voip(Ljava/lang/String;Ljava/lang/String;I)I
.end method

.method public static native iPN_UnSubscribe_XinGe(Ljava/lang/String;Ljava/lang/String;I)I
.end method

.method public static main([Ljava/lang/String;)V
    .locals 2
    .param p0, "argv"    # [Ljava/lang/String;

    .prologue
    .line 125
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "java.library.path"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 126
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "hello"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 128
    invoke-static {}, Lcom/starxnet/ipn/iPN_API;->test_iPN_API_JNI()V

    .line 129
    return-void
.end method

.method public static test_iPN_API_JNI()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 108
    const-string v1, "0123456789ABCDEF"

    .line 109
    .local v1, "gAESKey":Ljava/lang/String;
    const/4 v2, -0x1

    const-string v3, "./debug.log"

    invoke-static {v2, v3}, Lcom/starxnet/ipn/iPN_API;->iPN_Debug(ILjava/lang/String;)V

    .line 111
    const-string v2, "127.0.0.1"

    invoke-static {v2, v1}, Lcom/starxnet/ipn/iPN_API;->iPN_Initialize(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    const/4 v2, 0x1

    new-array v0, v2, [I

    .line 114
    .local v0, "SubscriberID":[I
    const/16 v2, 0x4a4

    aput v2, v0, v5

    .line 117
    const-string v2, "NDFGLCDNHGPNDBFGdPcBIJIMbcgFfLDJnEKNFiFNlJbHfCmOhCncnMcDkJnNlLgKhKECfNKDjOhGbEeNnLGMPNCAEHKPHIHpIAcNbPkDfBOFeHcEaFKl"

    .line 118
    const-string v3, "yulin724@163.com"

    .line 116
    invoke-static {v2, v1, v3, v0}, Lcom/starxnet/ipn/iPN_API;->iPN_Subscribe_Email(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)I

    .line 120
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "*8888888888888888888888  -> "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget v4, v0, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 122
    return-void
.end method
