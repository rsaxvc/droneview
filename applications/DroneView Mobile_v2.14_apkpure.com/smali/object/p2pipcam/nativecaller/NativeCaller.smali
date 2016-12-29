.class public Lobject/p2pipcam/nativecaller/NativeCaller;
.super Ljava/lang/Object;
.source "NativeCaller.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "NativeCaller"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-string v0, "ffmpeg"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 16
    const-string v0, "PPPP_API"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 17
    const-string v0, "object_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 18
    const-string v0, "avi_utils"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native CloseAvi()I
.end method

.method public static native DecodeH264Frame([BI[BI[I)I
.end method

.method public static native DoorBellCmd(Ljava/lang/String;[BI)I
.end method

.method public static native EVCommand(Ljava/lang/String;[BI)I
.end method

.method public static native Free()V
.end method

.method public static native Init()V
.end method

.method public static native OpenAvi(Ljava/lang/String;Ljava/lang/String;III)I
.end method

.method public static native PPPPAlarmSetting(Ljava/lang/String;IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII)I
.end method

.method public static native PPPPCameraControl(Ljava/lang/String;II)I
.end method

.method public static native PPPPDDNSSetting(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I
.end method

.method public static native PPPPDatetimeSetting(Ljava/lang/String;IIILjava/lang/String;)I
.end method

.method public static native PPPPFormatSD(Ljava/lang/String;)I
.end method

.method public static native PPPPFtpSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)I
.end method

.method public static native PPPPGetCGI(Ljava/lang/String;I)I
.end method

.method public static native PPPPGetSDCardRecordFileList(Ljava/lang/String;II)I
.end method

.method public static native PPPPGetSystemParams(Ljava/lang/String;I)I
.end method

.method public static native PPPPInitial(Ljava/lang/String;)V
.end method

.method public static native PPPPMailSetting(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static native PPPPNetworkDetect()I
.end method

.method public static native PPPPNetworkSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)I
.end method

.method public static native PPPPPTZControl(Ljava/lang/String;I)I
.end method

.method public static native PPPPPTZSetting(Ljava/lang/String;IIIIIIIII)I
.end method

.method public static native PPPPRebootDevice(Ljava/lang/String;)I
.end method

.method public static native PPPPRestorFactory(Ljava/lang/String;)I
.end method

.method public static native PPPPSDRecordSetting(Ljava/lang/String;IIIIIIIIIIIIIIIIIIIIIIIIII)I
.end method

.method public static native PPPPSetCallbackContext(Landroid/content/Context;)I
.end method

.method public static native PPPPStartAudio(Ljava/lang/String;)I
.end method

.method public static native PPPPStartTalk(Ljava/lang/String;)I
.end method

.method public static native PPPPStopAudio(Ljava/lang/String;)I
.end method

.method public static native PPPPStopTalk(Ljava/lang/String;)I
.end method

.method public static native PPPPTalkAudioData(Ljava/lang/String;[BI)I
.end method

.method public static native PPPPUserSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static native PPPPWifiSetting(Ljava/lang/String;ILjava/lang/String;IIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;)I
.end method

.method public static native SendCommonCGI(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static native StartPPPP(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
.end method

.method public static native StartPPPPLivestream(Ljava/lang/String;I)I
.end method

.method public static native StartPlayBack(Ljava/lang/String;Ljava/lang/String;I)I
.end method

.method public static native StartSearch(ILjava/lang/String;)V
.end method

.method public static native StopPPPP(Ljava/lang/String;)I
.end method

.method public static native StopPPPPLivestream(Ljava/lang/String;)I
.end method

.method public static native StopPlayBack(Ljava/lang/String;)I
.end method

.method public static native StopSearch()V
.end method

.method public static native WriteData([BII)I
.end method

.method public static native YUV4202RGB565([B[BII)I
.end method

.method public static native closeAvi(I)I
.end method

.method public static native openAvi(Ljava/lang/String;[BI)I
.end method

.method public static native reWriteAvi(Ljava/lang/String;)I
.end method

.method public static native readFrame(I[BI[BI)I
.end method

.method public static native seekNextKeyFrame(II)I
.end method

.method public static native seekPrevKeyFrame(II)I
.end method
