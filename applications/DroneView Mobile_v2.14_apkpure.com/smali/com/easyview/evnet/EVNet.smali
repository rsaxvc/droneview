.class public Lcom/easyview/evnet/EVNet;
.super Ljava/lang/Object;
.source "EVNet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/easyview/evnet/EVNet$ICommandListener;,
        Lcom/easyview/evnet/EVNet$IDataListener;,
        Lcom/easyview/evnet/EVNet$IProgressListener;
    }
.end annotation


# static fields
.field public static DeviceParams:Lcom/easyview/struct/EVCommandDefs$DeviceParams;

.field private static _camera:Lcom/easyview/evnet/DCamera;

.field private static _commandListener:Lcom/easyview/evnet/EVNet$ICommandListener;

.field private static _dataListener:Lcom/easyview/evnet/EVNet$IDataListener;

.field private static _sender:Ljava/lang/Object;

.field private static downListener:Lcom/easyview/evnet/EVNet$IProgressListener;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 18
    sput-object v1, Lcom/easyview/evnet/EVNet;->_dataListener:Lcom/easyview/evnet/EVNet$IDataListener;

    .line 19
    sput-object v1, Lcom/easyview/evnet/EVNet;->downListener:Lcom/easyview/evnet/EVNet$IProgressListener;

    .line 20
    sput-object v1, Lcom/easyview/evnet/EVNet;->_commandListener:Lcom/easyview/evnet/EVNet$ICommandListener;

    .line 21
    sput-object v1, Lcom/easyview/evnet/EVNet;->_sender:Ljava/lang/Object;

    .line 22
    sput-object v1, Lcom/easyview/evnet/EVNet;->_camera:Lcom/easyview/evnet/DCamera;

    .line 41
    :try_start_0
    const-string v1, "evnet"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .local v0, "ule":Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    new-instance v1, Lcom/easyview/struct/EVCommandDefs$DeviceParams;

    invoke-direct {v1}, Lcom/easyview/struct/EVCommandDefs$DeviceParams;-><init>()V

    sput-object v1, Lcom/easyview/evnet/EVNet;->DeviceParams:Lcom/easyview/struct/EVCommandDefs$DeviceParams;

    return-void

    .line 42
    .end local v0    # "ule":Ljava/lang/UnsatisfiedLinkError;
    :catch_0
    move-exception v0

    .line 43
    .restart local v0    # "ule":Ljava/lang/UnsatisfiedLinkError;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "loadLibrary(evnet),"

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
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native Command(I[BI)I
.end method

.method public static native Deinitial()I
.end method

.method public static native DownRecord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;II)I
.end method

.method public static native GetVersion()I
.end method

.method public static native Initial()I
.end method

.method public static OnCommand(I[BI)V
    .locals 1
    .param p0, "command"    # I
    .param p1, "data"    # [B
    .param p2, "len"    # I

    .prologue
    .line 81
    sget-object v0, Lcom/easyview/evnet/EVNet;->_camera:Lcom/easyview/evnet/DCamera;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/easyview/evnet/EVNet;->_camera:Lcom/easyview/evnet/DCamera;

    invoke-virtual {v0, p0, p1, p2}, Lcom/easyview/evnet/DCamera;->OnCommand(I[BI)V

    .line 82
    :cond_0
    return-void
.end method

.method public static OnCustomData(I[BI)V
    .locals 1
    .param p0, "type"    # I
    .param p1, "data"    # [B
    .param p2, "len"    # I

    .prologue
    .line 85
    sget-object v0, Lcom/easyview/evnet/EVNet;->_camera:Lcom/easyview/evnet/DCamera;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/easyview/evnet/EVNet;->_camera:Lcom/easyview/evnet/DCamera;

    invoke-virtual {v0, p0, p1, p2}, Lcom/easyview/evnet/DCamera;->OnCustomData(I[BI)V

    .line 86
    :cond_0
    return-void
.end method

.method public static OnData([BI)V
    .locals 1
    .param p0, "data"    # [B
    .param p1, "len"    # I

    .prologue
    .line 75
    sget-object v0, Lcom/easyview/evnet/EVNet;->_camera:Lcom/easyview/evnet/DCamera;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/easyview/evnet/EVNet;->_camera:Lcom/easyview/evnet/DCamera;

    invoke-virtual {v0, p0, p1}, Lcom/easyview/evnet/DCamera;->OnVideoData([BI)V

    .line 78
    :cond_0
    return-void
.end method

.method public static OnDeviceState(IIIII)V
    .locals 3
    .param p0, "state"    # I
    .param p1, "total"    # I
    .param p2, "free"    # I
    .param p3, "record_period"    # I
    .param p4, "quality"    # I

    .prologue
    .line 89
    const-string v0, "EVNet"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "OnDeviceState:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " total:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " period:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " free:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    sget-object v0, Lcom/easyview/evnet/EVNet;->_camera:Lcom/easyview/evnet/DCamera;

    if-eqz v0, :cond_0

    .line 92
    sget-object v0, Lcom/easyview/evnet/EVNet;->_camera:Lcom/easyview/evnet/DCamera;

    invoke-virtual {v0, p1, p2}, Lcom/easyview/evnet/DCamera;->setStorageMemory(II)V

    .line 93
    sget-object v0, Lcom/easyview/evnet/EVNet;->_camera:Lcom/easyview/evnet/DCamera;

    invoke-virtual {v0, p0, p4}, Lcom/easyview/evnet/DCamera;->onDeviceState(II)V

    .line 95
    :cond_0
    return-void
.end method

.method public static OnNotify(II)V
    .locals 1
    .param p0, "type"    # I
    .param p1, "param"    # I

    .prologue
    .line 98
    sget-object v0, Lcom/easyview/evnet/EVNet;->_camera:Lcom/easyview/evnet/DCamera;

    if-eqz v0, :cond_0

    .line 100
    sget-object v0, Lcom/easyview/evnet/EVNet;->_camera:Lcom/easyview/evnet/DCamera;

    invoke-virtual {v0, p0, p1}, Lcom/easyview/evnet/DCamera;->OnNotify(II)V

    .line 102
    :cond_0
    return-void
.end method

.method public static OnProgress(II)V
    .locals 2
    .param p0, "cur"    # I
    .param p1, "total"    # I

    .prologue
    .line 62
    sget-object v0, Lcom/easyview/evnet/EVNet;->downListener:Lcom/easyview/evnet/EVNet$IProgressListener;

    if-eqz v0, :cond_0

    .line 65
    sget-object v0, Lcom/easyview/evnet/EVNet;->downListener:Lcom/easyview/evnet/EVNet$IProgressListener;

    sget-object v1, Lcom/easyview/evnet/EVNet;->_sender:Ljava/lang/Object;

    invoke-interface {v0, v1, p0, p1}, Lcom/easyview/evnet/EVNet$IProgressListener;->OnProgress(Ljava/lang/Object;II)V

    .line 67
    :cond_0
    return-void
.end method

.method public static native RequestCustomData(I[BI)I
.end method

.method public static native RequestEvent(Ljava/lang/String;Ljava/lang/String;I)I
.end method

.method public static SetCamera(Lcom/easyview/evnet/DCamera;)V
    .locals 0
    .param p0, "camera"    # Lcom/easyview/evnet/DCamera;

    .prologue
    .line 49
    sput-object p0, Lcom/easyview/evnet/EVNet;->_camera:Lcom/easyview/evnet/DCamera;

    .line 50
    return-void
.end method

.method public static SetDownProgressListener(Ljava/lang/Object;Lcom/easyview/evnet/EVNet$IProgressListener;)V
    .locals 3
    .param p0, "sender"    # Ljava/lang/Object;
    .param p1, "listener"    # Lcom/easyview/evnet/EVNet$IProgressListener;

    .prologue
    .line 55
    sput-object p0, Lcom/easyview/evnet/EVNet;->_sender:Ljava/lang/Object;

    .line 56
    sput-object p1, Lcom/easyview/evnet/EVNet;->downListener:Lcom/easyview/evnet/EVNet$IProgressListener;

    .line 57
    const-string v0, "EVNet"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "set listener:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/easyview/evnet/EVNet;->downListener:Lcom/easyview/evnet/EVNet$IProgressListener;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    return-void
.end method

.method public static native SetRssi(I)I
.end method

.method public static native StartVideo()I
.end method

.method public static native StopCumstomData(I)I
.end method

.method public static native StopDownRecord()I
.end method

.method public static native StopVideo()I
.end method

.method public static setDataListener(Ljava/lang/Object;Lcom/easyview/evnet/EVNet$IDataListener;)V
    .locals 0
    .param p0, "sender"    # Ljava/lang/Object;
    .param p1, "l"    # Lcom/easyview/evnet/EVNet$IDataListener;

    .prologue
    .line 70
    sput-object p1, Lcom/easyview/evnet/EVNet;->_dataListener:Lcom/easyview/evnet/EVNet$IDataListener;

    .line 71
    sput-object p0, Lcom/easyview/evnet/EVNet;->_sender:Ljava/lang/Object;

    .line 72
    return-void
.end method
