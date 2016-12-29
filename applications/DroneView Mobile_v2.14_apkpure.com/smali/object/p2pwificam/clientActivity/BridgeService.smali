.class public Lobject/p2pwificam/clientActivity/BridgeService;
.super Landroid/app/Service;
.source "BridgeService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lobject/p2pwificam/clientActivity/BridgeService$AddCameraInterface;,
        Lobject/p2pwificam/clientActivity/BridgeService$AlarmInterface;,
        Lobject/p2pwificam/clientActivity/BridgeService$ControllerBinder;,
        Lobject/p2pwificam/clientActivity/BridgeService$DateTimeInterface;,
        Lobject/p2pwificam/clientActivity/BridgeService$EVCommandInterface;,
        Lobject/p2pwificam/clientActivity/BridgeService$FtpInterface;,
        Lobject/p2pwificam/clientActivity/BridgeService$IpcamClientInterface;,
        Lobject/p2pwificam/clientActivity/BridgeService$MailInterface;,
        Lobject/p2pwificam/clientActivity/BridgeService$OpenLockInterface;,
        Lobject/p2pwificam/clientActivity/BridgeService$PictureInterface;,
        Lobject/p2pwificam/clientActivity/BridgeService$PlayBackInterface;,
        Lobject/p2pwificam/clientActivity/BridgeService$PlayBackTFInterface;,
        Lobject/p2pwificam/clientActivity/BridgeService$PlayInterface;,
        Lobject/p2pwificam/clientActivity/BridgeService$SDCardInterface;,
        Lobject/p2pwificam/clientActivity/BridgeService$UserInterface;,
        Lobject/p2pwificam/clientActivity/BridgeService$VideoInterface;,
        Lobject/p2pwificam/clientActivity/BridgeService$WifiInterface;
    }
.end annotation


# static fields
.field private static addCameraInterface:Lobject/p2pwificam/clientActivity/BridgeService$AddCameraInterface;

.field private static alarmInterface:Lobject/p2pwificam/clientActivity/BridgeService$AlarmInterface;

.field private static dateTimeInterface:Lobject/p2pwificam/clientActivity/BridgeService$DateTimeInterface;

.field private static evCommandInterface:Lobject/p2pwificam/clientActivity/BridgeService$EVCommandInterface;

.field private static ftpInterface:Lobject/p2pwificam/clientActivity/BridgeService$FtpInterface;

.field private static ipcamClientInterface:Lobject/p2pwificam/clientActivity/BridgeService$IpcamClientInterface;

.field public static lockFlag:Ljava/lang/Boolean;

.field public static mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

.field private static mailInterface:Lobject/p2pwificam/clientActivity/BridgeService$MailInterface;

.field private static openLockInterface:Lobject/p2pwificam/clientActivity/BridgeService$OpenLockInterface;

.field private static pictureInterface:Lobject/p2pwificam/clientActivity/BridgeService$PictureInterface;

.field private static playBackInterface:Lobject/p2pwificam/clientActivity/BridgeService$PlayBackInterface;

.field private static playBackTFInterface:Lobject/p2pwificam/clientActivity/BridgeService$PlayBackTFInterface;

.field private static playInterface:Lobject/p2pwificam/clientActivity/BridgeService$PlayInterface;

.field private static sCardInterface:Lobject/p2pwificam/clientActivity/BridgeService$SDCardInterface;

.field private static userInterface:Lobject/p2pwificam/clientActivity/BridgeService$UserInterface;

.field private static videoInterface:Lobject/p2pwificam/clientActivity/BridgeService$VideoInterface;

.field private static wifiInterface:Lobject/p2pwificam/clientActivity/BridgeService$WifiInterface;


# instance fields
.field private TAG:Ljava/lang/String;

.field private helper:Lobject/p2pipcam/utils/DataBaseHelper;

.field private mCustomMgr:Landroid/app/NotificationManager;

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mNotify2:Landroid/app/Notification;

.field private ntfManager:Landroid/app/NotificationManager;

.field private preference:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 634
    const/4 v0, 0x0

    sput-object v0, Lobject/p2pwificam/clientActivity/BridgeService;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    .line 635
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lobject/p2pwificam/clientActivity/BridgeService;->lockFlag:Ljava/lang/Boolean;

    .line 1158
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 45
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 46
    const-class v0, Lobject/p2pwificam/clientActivity/BridgeService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/BridgeService;->TAG:Ljava/lang/String;

    .line 49
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/BridgeService;->helper:Lobject/p2pipcam/utils/DataBaseHelper;

    .line 633
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/BridgeService;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 45
    return-void
.end method

.method private CallBack_AudioData(Ljava/lang/String;[BI)V
    .locals 1
    .param p1, "did"    # Ljava/lang/String;
    .param p2, "pcm"    # [B
    .param p3, "len"    # I

    .prologue
    .line 171
    sget-object v0, Lobject/p2pwificam/clientActivity/BridgeService;->playInterface:Lobject/p2pwificam/clientActivity/BridgeService$PlayInterface;

    if-eqz v0, :cond_0

    .line 172
    sget-object v0, Lobject/p2pwificam/clientActivity/BridgeService;->playInterface:Lobject/p2pwificam/clientActivity/BridgeService$PlayInterface;

    invoke-interface {v0, p2, p3}, Lobject/p2pwificam/clientActivity/BridgeService$PlayInterface;->callBackAudioData([BI)V

    .line 174
    :cond_0
    return-void
.end method

.method private CallBack_Command(Ljava/lang/String;[BII)V
    .locals 2
    .param p1, "did"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .param p3, "len"    # I
    .param p4, "type"    # I

    .prologue
    .line 211
    invoke-static {}, Lcom/easyview/camera/CameraList;->GetInstance()Lcom/easyview/camera/CameraList;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/easyview/camera/CameraList;->getCamera(Ljava/lang/String;)Lcom/easyview/basecamera/BaseCamera;

    move-result-object v0

    check-cast v0, Lcom/easyview/ppcs/PPCSCamera;

    .line 213
    .local v0, "camera":Lcom/easyview/ppcs/PPCSCamera;
    if-eqz v0, :cond_0

    .line 215
    invoke-virtual {v0, p4, p2, p3}, Lcom/easyview/ppcs/PPCSCamera;->OnCommand(I[BI)V

    .line 218
    :cond_0
    return-void
.end method

.method private CallBack_CustomData(Ljava/lang/String;[BII)V
    .locals 2
    .param p1, "did"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .param p3, "len"    # I
    .param p4, "type"    # I

    .prologue
    .line 222
    invoke-static {}, Lcom/easyview/camera/CameraList;->GetInstance()Lcom/easyview/camera/CameraList;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/easyview/camera/CameraList;->getCamera(Ljava/lang/String;)Lcom/easyview/basecamera/BaseCamera;

    move-result-object v0

    check-cast v0, Lcom/easyview/ppcs/PPCSCamera;

    .line 224
    .local v0, "camera":Lcom/easyview/ppcs/PPCSCamera;
    if-eqz v0, :cond_0

    .line 226
    invoke-virtual {v0, p4, p2, p3}, Lcom/easyview/ppcs/PPCSCamera;->OnCustomData(I[BI)V

    .line 228
    :cond_0
    return-void
.end method

.method private CallBack_DoorBellCmd(Ljava/lang/String;[BI)V
    .locals 1
    .param p1, "did"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .param p3, "len"    # I

    .prologue
    .line 205
    sget-object v0, Lobject/p2pwificam/clientActivity/BridgeService;->openLockInterface:Lobject/p2pwificam/clientActivity/BridgeService$OpenLockInterface;

    if-eqz v0, :cond_0

    .line 206
    sget-object v0, Lobject/p2pwificam/clientActivity/BridgeService;->openLockInterface:Lobject/p2pwificam/clientActivity/BridgeService$OpenLockInterface;

    invoke-interface {v0, p1, p2, p3}, Lobject/p2pwificam/clientActivity/BridgeService$OpenLockInterface;->callBackpenLockParams(Ljava/lang/String;[BI)V

    .line 208
    :cond_0
    return-void
.end method

.method private CallBack_EVCommand(Ljava/lang/String;[BI)V
    .locals 2
    .param p1, "did"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .param p3, "len"    # I

    .prologue
    .line 186
    invoke-static {}, Lcom/easyview/camera/CameraList;->GetInstance()Lcom/easyview/camera/CameraList;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/easyview/camera/CameraList;->getCamera(Ljava/lang/String;)Lcom/easyview/basecamera/BaseCamera;

    move-result-object v0

    check-cast v0, Lcom/easyview/ppcs/PPCSCamera;

    .line 188
    .local v0, "camera":Lcom/easyview/ppcs/PPCSCamera;
    if-eqz v0, :cond_0

    .line 190
    invoke-virtual {v0, p2, p3}, Lcom/easyview/ppcs/PPCSCamera;->OnEVCommand([BI)V

    .line 192
    :cond_0
    return-void
.end method

.method private CallBack_H264Data(Ljava/lang/String;[BII)V
    .locals 2
    .param p1, "did"    # Ljava/lang/String;
    .param p2, "h264"    # [B
    .param p3, "type"    # I
    .param p4, "size"    # I

    .prologue
    .line 814
    invoke-static {}, Lcom/easyview/camera/CameraList;->GetInstance()Lcom/easyview/camera/CameraList;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/easyview/camera/CameraList;->getCamera(Ljava/lang/String;)Lcom/easyview/basecamera/BaseCamera;

    move-result-object v0

    check-cast v0, Lcom/easyview/ppcs/PPCSCamera;

    .line 815
    .local v0, "camera":Lcom/easyview/ppcs/PPCSCamera;
    if-eqz v0, :cond_0

    .line 817
    invoke-virtual {v0, p2, p4}, Lcom/easyview/ppcs/PPCSCamera;->OnVideoData([BI)V

    .line 819
    :cond_0
    sget-object v1, Lobject/p2pwificam/clientActivity/BridgeService;->playInterface:Lobject/p2pwificam/clientActivity/BridgeService$PlayInterface;

    if-eqz v1, :cond_1

    .line 820
    sget-object v1, Lobject/p2pwificam/clientActivity/BridgeService;->playInterface:Lobject/p2pwificam/clientActivity/BridgeService$PlayInterface;

    invoke-interface {v1, p2, p3, p4}, Lobject/p2pwificam/clientActivity/BridgeService$PlayInterface;->callBackH264Data([BII)V

    .line 822
    :cond_1
    return-void
.end method

.method private CallBack_MessageNotify(Ljava/lang/String;II)V
    .locals 1
    .param p1, "did"    # Ljava/lang/String;
    .param p2, "msgType"    # I
    .param p3, "param"    # I

    .prologue
    .line 148
    sget-object v0, Lobject/p2pwificam/clientActivity/BridgeService;->playInterface:Lobject/p2pwificam/clientActivity/BridgeService$PlayInterface;

    if-eqz v0, :cond_0

    .line 149
    sget-object v0, Lobject/p2pwificam/clientActivity/BridgeService;->playInterface:Lobject/p2pwificam/clientActivity/BridgeService$PlayInterface;

    invoke-interface {v0, p1, p2, p3}, Lobject/p2pwificam/clientActivity/BridgeService$PlayInterface;->callBackMessageNotify(Ljava/lang/String;II)V

    .line 151
    :cond_0
    sget-object v0, Lobject/p2pwificam/clientActivity/BridgeService;->playBackInterface:Lobject/p2pwificam/clientActivity/BridgeService$PlayBackInterface;

    if-eqz v0, :cond_1

    .line 152
    sget-object v0, Lobject/p2pwificam/clientActivity/BridgeService;->playBackInterface:Lobject/p2pwificam/clientActivity/BridgeService$PlayBackInterface;

    invoke-interface {v0, p1, p2, p3}, Lobject/p2pwificam/clientActivity/BridgeService$PlayBackInterface;->callBackMessageNotify(Ljava/lang/String;II)V

    .line 154
    :cond_1
    return-void
.end method

.method private CallBack_PPPPMsgNotify(Ljava/lang/String;II)V
    .locals 4
    .param p1, "did"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "param"    # I

    .prologue
    .line 240
    const-string v1, "P2P"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "PPPPMsgNotify  did:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " param:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/easyview/ndt/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    invoke-static {}, Lcom/easyview/camera/CameraList;->GetInstance()Lcom/easyview/camera/CameraList;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/easyview/camera/CameraList;->getCamera(Ljava/lang/String;)Lcom/easyview/basecamera/BaseCamera;

    move-result-object v0

    check-cast v0, Lcom/easyview/ppcs/PPCSCamera;

    .line 242
    .local v0, "camera":Lcom/easyview/ppcs/PPCSCamera;
    if-eqz v0, :cond_0

    .line 244
    invoke-virtual {v0, p2, p3}, Lcom/easyview/ppcs/PPCSCamera;->OnNotify(II)V

    .line 247
    :cond_0
    sget-object v1, Lobject/p2pwificam/clientActivity/BridgeService;->ipcamClientInterface:Lobject/p2pwificam/clientActivity/BridgeService$IpcamClientInterface;

    if-eqz v1, :cond_1

    .line 248
    sget-object v1, Lobject/p2pwificam/clientActivity/BridgeService;->ipcamClientInterface:Lobject/p2pwificam/clientActivity/BridgeService$IpcamClientInterface;

    invoke-interface {v1, p1, p2, p3}, Lobject/p2pwificam/clientActivity/BridgeService$IpcamClientInterface;->BSMsgNotifyData(Ljava/lang/String;II)V

    .line 250
    :cond_1
    sget-object v1, Lobject/p2pwificam/clientActivity/BridgeService;->wifiInterface:Lobject/p2pwificam/clientActivity/BridgeService$WifiInterface;

    if-eqz v1, :cond_2

    .line 251
    sget-object v1, Lobject/p2pwificam/clientActivity/BridgeService;->wifiInterface:Lobject/p2pwificam/clientActivity/BridgeService$WifiInterface;

    invoke-interface {v1, p1, p2, p3}, Lobject/p2pwificam/clientActivity/BridgeService$WifiInterface;->callBackPPPPMsgNotifyData(Ljava/lang/String;II)V

    .line 254
    :cond_2
    sget-object v1, Lobject/p2pwificam/clientActivity/BridgeService;->userInterface:Lobject/p2pwificam/clientActivity/BridgeService$UserInterface;

    if-eqz v1, :cond_3

    .line 255
    sget-object v1, Lobject/p2pwificam/clientActivity/BridgeService;->userInterface:Lobject/p2pwificam/clientActivity/BridgeService$UserInterface;

    invoke-interface {v1, p1, p2, p3}, Lobject/p2pwificam/clientActivity/BridgeService$UserInterface;->callBackPPPPMsgNotifyData(Ljava/lang/String;II)V

    .line 258
    :cond_3
    return-void
.end method

.method private CallBack_PlaybackVideoData(Ljava/lang/String;[BIIIII)V
    .locals 7
    .param p1, "did"    # Ljava/lang/String;
    .param p2, "videobuf"    # [B
    .param p3, "h264Data"    # I
    .param p4, "len"    # I
    .param p5, "width"    # I
    .param p6, "height"    # I
    .param p7, "timestamp"    # I

    .prologue
    .line 803
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/BridgeService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CallBack_PlaybackVideoData  len:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " width:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 804
    const-string v2, " height:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 803
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    sget-object v0, Lobject/p2pwificam/clientActivity/BridgeService;->playBackInterface:Lobject/p2pwificam/clientActivity/BridgeService$PlayBackInterface;

    if-eqz v0, :cond_0

    .line 806
    sget-object v0, Lobject/p2pwificam/clientActivity/BridgeService;->playBackInterface:Lobject/p2pwificam/clientActivity/BridgeService$PlayBackInterface;

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    invoke-interface/range {v0 .. v6}, Lobject/p2pwificam/clientActivity/BridgeService$PlayBackInterface;->callBackPlaybackVideoData([BIIIII)V

    .line 810
    :cond_0
    return-void
.end method

.method private CallBack_RecordFileSearchResult(Ljava/lang/String;Ljava/lang/String;IIIIII)V
    .locals 3
    .param p1, "did"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "nFileSize"    # I
    .param p4, "nRecordCount"    # I
    .param p5, "nPageCount"    # I
    .param p6, "nPageIndex"    # I
    .param p7, "nPageSize"    # I
    .param p8, "bEnd"    # I

    .prologue
    .line 793
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/BridgeService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CallBack_RecordFileSearchResult did: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 794
    const-string v2, " filename: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 793
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    sget-object v0, Lobject/p2pwificam/clientActivity/BridgeService;->playBackTFInterface:Lobject/p2pwificam/clientActivity/BridgeService$PlayBackTFInterface;

    if-eqz v0, :cond_0

    .line 796
    sget-object v0, Lobject/p2pwificam/clientActivity/BridgeService;->playBackTFInterface:Lobject/p2pwificam/clientActivity/BridgeService$PlayBackTFInterface;

    invoke-interface {v0, p1, p2, p3, p8}, Lobject/p2pwificam/clientActivity/BridgeService$PlayBackTFInterface;->callBackRecordFileSearchResult(Ljava/lang/String;Ljava/lang/String;II)V

    .line 799
    :cond_0
    return-void
.end method

.method private CallBack_VideoData(Ljava/lang/String;[BIIII)V
    .locals 7
    .param p1, "did"    # Ljava/lang/String;
    .param p2, "videobuf"    # [B
    .param p3, "h264Data"    # I
    .param p4, "len"    # I
    .param p5, "width"    # I
    .param p6, "height"    # I

    .prologue
    .line 126
    sget-object v0, Lobject/p2pwificam/clientActivity/BridgeService;->playInterface:Lobject/p2pwificam/clientActivity/BridgeService$PlayInterface;

    if-eqz v0, :cond_0

    .line 127
    sget-object v0, Lobject/p2pwificam/clientActivity/BridgeService;->playInterface:Lobject/p2pwificam/clientActivity/BridgeService$PlayInterface;

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-interface/range {v0 .. v5}, Lobject/p2pwificam/clientActivity/BridgeService$PlayInterface;->callBaceVideoData([BIIII)V

    .line 130
    :cond_0
    invoke-static {}, Lcom/easyview/camera/CameraList;->GetInstance()Lcom/easyview/camera/CameraList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/easyview/camera/CameraList;->getCamera(Ljava/lang/String;)Lcom/easyview/basecamera/BaseCamera;

    move-result-object v6

    check-cast v6, Lcom/easyview/ppcs/PPCSCamera;

    .line 131
    .local v6, "camera":Lcom/easyview/ppcs/PPCSCamera;
    if-eqz v6, :cond_1

    .line 133
    invoke-virtual {v6, p2, p4, p5, p6}, Lcom/easyview/ppcs/PPCSCamera;->OnYUVData([BIII)V

    .line 136
    :cond_1
    return-void
.end method

.method private OpenLockScreen(Ljava/lang/String;II)Z
    .locals 7
    .param p1, "did"    # Ljava/lang/String;
    .param p2, "alarmNum"    # I
    .param p3, "mode"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 580
    const-string v4, "isFirst"

    invoke-virtual {p0, v4, v3}, Lobject/p2pwificam/clientActivity/BridgeService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    iput-object v4, p0, Lobject/p2pwificam/clientActivity/BridgeService;->preference:Landroid/content/SharedPreferences;

    .line 581
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/BridgeService;->preference:Landroid/content/SharedPreferences;

    const-string v5, "activity"

    invoke-interface {v4, v5, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 583
    .local v0, "activity":Ljava/lang/Boolean;
    const-string v4, "BridgeService"

    const-string v5, "callBack_AlarmNotify did:==========11111111111111111111111111111111111111"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    const-string v4, "BridgeService"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "activity  ==="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    invoke-virtual {p0, p1, p2}, Lobject/p2pwificam/clientActivity/BridgeService;->SaveAlarm(Ljava/lang/String;I)V

    .line 587
    const-string v4, "BridgeService"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "isRunningForeground(getApplicationContext());=="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/BridgeService;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lobject/p2pwificam/clientActivity/BridgeService;->isRunningForeground(Landroid/content/Context;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/BridgeService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lobject/p2pwificam/clientActivity/BridgeService;->isRunningForeground(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 591
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 594
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 597
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_3

    .line 599
    const-string v4, "isFirst"

    invoke-virtual {p0, v4, v3}, Lobject/p2pwificam/clientActivity/BridgeService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lobject/p2pwificam/clientActivity/BridgeService;->preference:Landroid/content/SharedPreferences;

    .line 601
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 602
    .local v1, "in":Landroid/content/Intent;
    const/16 v3, 0x22

    if-ne p3, v3, :cond_2

    .line 606
    const-class v3, Lobject/p2pwificam/clientActivity/CallVideoActivity;

    invoke-virtual {v1, p0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 615
    :cond_1
    :goto_0
    const-string v3, "camera_type"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 617
    const-string v3, "stream_type"

    .line 618
    const/4 v4, 0x3

    .line 617
    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 619
    const-string v3, "camera_name"

    const-string v4, "IPCAM"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 620
    const-string v3, "cameraid"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 621
    const-string v3, "camera_user"

    const-string v4, "admin"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 622
    const-string v3, "camera_pwd"

    const-string v4, "admin"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 623
    const-string v3, "camera_type"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 624
    const-string v3, "play_type"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 625
    const-string v3, "play_mode"

    invoke-virtual {v1, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 626
    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 627
    invoke-virtual {p0, v1}, Lobject/p2pwificam/clientActivity/BridgeService;->startActivity(Landroid/content/Intent;)V

    .line 630
    .end local v1    # "in":Landroid/content/Intent;
    :goto_1
    return v2

    .line 609
    .restart local v1    # "in":Landroid/content/Intent;
    :cond_2
    const/16 v3, 0x28

    if-ne p3, v3, :cond_1

    .line 612
    const-class v3, Lobject/p2pwificam/clientActivity/CallVideoActivity;

    invoke-virtual {v1, p0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    .end local v1    # "in":Landroid/content/Intent;
    :cond_3
    move v2, v3

    .line 630
    goto :goto_1
.end method

.method private PPPPSnapshotNotify(Ljava/lang/String;[BI)V
    .locals 3
    .param p1, "did"    # Ljava/lang/String;
    .param p2, "bImage"    # [B
    .param p3, "len"    # I

    .prologue
    .line 420
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/BridgeService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "did:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " len:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    sget-object v0, Lobject/p2pwificam/clientActivity/BridgeService;->ipcamClientInterface:Lobject/p2pwificam/clientActivity/BridgeService$IpcamClientInterface;

    if-eqz v0, :cond_0

    .line 422
    sget-object v0, Lobject/p2pwificam/clientActivity/BridgeService;->ipcamClientInterface:Lobject/p2pwificam/clientActivity/BridgeService$IpcamClientInterface;

    invoke-interface {v0, p1, p2, p3}, Lobject/p2pwificam/clientActivity/BridgeService$IpcamClientInterface;->BSSnapshotNotify(Ljava/lang/String;[BI)V

    .line 424
    :cond_0
    return-void
.end method

.method private getNotification(Ljava/lang/String;Ljava/lang/String;Z)Landroid/app/Notification;
    .locals 24
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "did"    # Ljava/lang/String;
    .param p3, "isAlarm"    # Z

    .prologue
    .line 856
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    .line 857
    .local v7, "date":Ljava/util/Date;
    new-instance v8, Ljava/text/SimpleDateFormat;

    const-string v20, "yyyy-MM-dd HH:mm:ss"

    move-object/from16 v0, v20

    invoke-direct {v8, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 858
    .local v8, "f":Ljava/text/SimpleDateFormat;
    invoke-virtual {v8, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v15

    .line 859
    .local v15, "strDate":Ljava/lang/String;
    const-string v17, ""

    .line 860
    .local v17, "titlePrompt":Ljava/lang/String;
    const-string v16, ""

    .line 861
    .local v16, "title":Ljava/lang/String;
    const/4 v13, 0x0

    .line 862
    .local v13, "pendingIntent":Landroid/app/PendingIntent;
    const/4 v11, 0x0

    .line 863
    .local v11, "intent":Landroid/content/Intent;
    if-eqz p3, :cond_7

    .line 864
    const/4 v9, 0x0

    .line 865
    .local v9, "flag":Z
    const-string v5, ""

    .line 866
    .local v5, "CamName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lobject/p2pwificam/clientActivity/BridgeService;->helper:Lobject/p2pipcam/utils/DataBaseHelper;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lobject/p2pipcam/utils/DataBaseHelper;->fetchAllCameras()Landroid/database/Cursor;

    move-result-object v6

    .line 867
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 868
    :cond_0
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v20

    if-eqz v20, :cond_1

    if-eqz v9, :cond_3

    .line 879
    :cond_1
    if-eqz v6, :cond_2

    .line 880
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 884
    :cond_2
    if-nez v9, :cond_4

    .line 885
    const/16 v20, 0x0

    .line 924
    .end local v5    # "CamName":Ljava/lang/String;
    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v9    # "flag":Z
    :goto_1
    return-object v20

    .line 869
    .restart local v5    # "CamName":Ljava/lang/String;
    .restart local v6    # "cursor":Landroid/database/Cursor;
    .restart local v9    # "flag":Z
    :cond_3
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 870
    .local v12, "name":Ljava/lang/String;
    const/16 v20, 0x2

    move/from16 v0, v20

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 871
    .local v10, "id":Ljava/lang/String;
    const/16 v20, 0x3

    move/from16 v0, v20

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 872
    .local v18, "user":Ljava/lang/String;
    const/16 v20, 0x4

    move/from16 v0, v20

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 873
    .local v14, "pwd":Ljava/lang/String;
    const-string v20, "tag"

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "notification  name:"

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " id:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 875
    move-object v5, v12

    .line 876
    const/4 v9, 0x1

    goto :goto_0

    .line 887
    .end local v10    # "id":Ljava/lang/String;
    .end local v12    # "name":Ljava/lang/String;
    .end local v14    # "pwd":Ljava/lang/String;
    .end local v18    # "user":Ljava/lang/String;
    :cond_4
    const-string v20, "tag"

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "alarm name:"

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    move-object/from16 v0, p0

    iget-object v0, v0, Lobject/p2pwificam/clientActivity/BridgeService;->helper:Lobject/p2pipcam/utils/DataBaseHelper;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2, v15}, Lobject/p2pipcam/utils/DataBaseHelper;->insertAlarmLogToDB(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    .line 889
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v21, " "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 890
    new-instance v11, Landroid/content/Intent;

    .end local v11    # "intent":Landroid/content/Intent;
    const-class v20, Lobject/p2pwificam/clientActivity/EventDetailActivity;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v11, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 891
    .restart local v11    # "intent":Landroid/content/Intent;
    const-string v20, "cameraid"

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 892
    const-string v20, "camera_name"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 893
    const-string v20, "log_content"

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 894
    move-object/from16 v16, v5

    .line 904
    .end local v5    # "CamName":Ljava/lang/String;
    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v9    # "flag":Z
    :goto_2
    new-instance v20, Landroid/app/Notification;

    const v21, 0x7f020010

    .line 905
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    move-object/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v2, v17

    move-wide/from16 v3, v22

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 904
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lobject/p2pwificam/clientActivity/BridgeService;->mNotify2:Landroid/app/Notification;

    .line 907
    move-object/from16 v0, p0

    iget-object v0, v0, Lobject/p2pwificam/clientActivity/BridgeService;->mNotify2:Landroid/app/Notification;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/app/Notification;->flags:I

    move/from16 v21, v0

    or-int/lit8 v21, v21, 0x10

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Landroid/app/Notification;->flags:I

    .line 908
    const v20, 0x7f020010

    .line 909
    const/high16 v21, 0x8000000

    .line 908
    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v11, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v13

    .line 911
    new-instance v19, Landroid/widget/RemoteViews;

    invoke-virtual/range {p0 .. p0}, Lobject/p2pwificam/clientActivity/BridgeService;->getPackageName()Ljava/lang/String;

    move-result-object v20

    .line 912
    const v21, 0x7f03003d

    .line 911
    invoke-direct/range {v19 .. v21}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 913
    .local v19, "views":Landroid/widget/RemoteViews;
    move-object/from16 v0, p0

    iget-object v0, v0, Lobject/p2pwificam/clientActivity/BridgeService;->mNotify2:Landroid/app/Notification;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iput-object v13, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 914
    move-object/from16 v0, p0

    iget-object v0, v0, Lobject/p2pwificam/clientActivity/BridgeService;->mNotify2:Landroid/app/Notification;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    iput-object v0, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 915
    move-object/from16 v0, p0

    iget-object v0, v0, Lobject/p2pwificam/clientActivity/BridgeService;->mNotify2:Landroid/app/Notification;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    move-object/from16 v20, v0

    const v21, 0x7f080177

    move-object/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 916
    move-object/from16 v0, p0

    iget-object v0, v0, Lobject/p2pwificam/clientActivity/BridgeService;->mNotify2:Landroid/app/Notification;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    move-object/from16 v20, v0

    const v21, 0x7f080179

    move-object/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 917
    if-eqz p3, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lobject/p2pwificam/clientActivity/BridgeService;->mNotify2:Landroid/app/Notification;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    move-object/from16 v20, v0

    const v21, 0x7f080178

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v1, v15}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 918
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lobject/p2pwificam/clientActivity/BridgeService;->mNotify2:Landroid/app/Notification;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    move-object/from16 v20, v0

    const v21, 0x7f080176

    const v22, 0x7f020010

    invoke-virtual/range {v20 .. v22}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 920
    if-eqz p3, :cond_6

    .line 921
    move-object/from16 v0, p0

    iget-object v0, v0, Lobject/p2pwificam/clientActivity/BridgeService;->mNotify2:Landroid/app/Notification;

    move-object/from16 v20, v0

    const/16 v21, -0x1

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Landroid/app/Notification;->defaults:I

    .line 922
    move-object/from16 v0, p0

    iget-object v0, v0, Lobject/p2pwificam/clientActivity/BridgeService;->mCustomMgr:Landroid/app/NotificationManager;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lobject/p2pwificam/clientActivity/BridgeService;->mNotify2:Landroid/app/Notification;

    move-object/from16 v22, v0

    invoke-virtual/range {v20 .. v22}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 924
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lobject/p2pwificam/clientActivity/BridgeService;->mNotify2:Landroid/app/Notification;

    move-object/from16 v20, v0

    goto/16 :goto_1

    .line 897
    .end local v19    # "views":Landroid/widget/RemoteViews;
    :cond_7
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lobject/p2pwificam/clientActivity/BridgeService;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const/high16 v22, 0x7f060000

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v21, " "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 898
    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 897
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 899
    invoke-virtual/range {p0 .. p0}, Lobject/p2pwificam/clientActivity/BridgeService;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const/high16 v21, 0x7f060000

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 900
    new-instance v11, Landroid/content/Intent;

    .end local v11    # "intent":Landroid/content/Intent;
    const-string v20, "android.intent.action.MAIN"

    move-object/from16 v0, v20

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 901
    .restart local v11    # "intent":Landroid/content/Intent;
    const-string v20, "android.intent.category.LAUNCHER"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 902
    const-class v20, Lobject/p2pwificam/clientActivity/StartActivity;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto/16 :goto_2
.end method

.method private static isRunningForeground(Landroid/content/Context;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 568
    const-string v3, "activity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 569
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 570
    .local v1, "cn":Landroid/content/ComponentName;
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 572
    .local v2, "currentPackageName":Ljava/lang/String;
    const-string v3, "cameraserver"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "currentPackageName  ====="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "object.easyview.ebell"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v4

    .line 576
    :goto_0
    return v3

    :cond_0
    move v3, v5

    goto :goto_0
.end method

.method public static setAddCameraInterface(Lobject/p2pwificam/clientActivity/BridgeService$AddCameraInterface;)V
    .locals 0
    .param p0, "aci"    # Lobject/p2pwificam/clientActivity/BridgeService$AddCameraInterface;

    .prologue
    .line 1150
    sput-object p0, Lobject/p2pwificam/clientActivity/BridgeService;->addCameraInterface:Lobject/p2pwificam/clientActivity/BridgeService$AddCameraInterface;

    .line 1151
    return-void
.end method

.method public static setAlarmInterface(Lobject/p2pwificam/clientActivity/BridgeService$AlarmInterface;)V
    .locals 0
    .param p0, "ai"    # Lobject/p2pwificam/clientActivity/BridgeService$AlarmInterface;

    .prologue
    .line 1002
    sput-object p0, Lobject/p2pwificam/clientActivity/BridgeService;->alarmInterface:Lobject/p2pwificam/clientActivity/BridgeService$AlarmInterface;

    .line 1003
    return-void
.end method

.method public static setDateTimeInterface(Lobject/p2pwificam/clientActivity/BridgeService$DateTimeInterface;)V
    .locals 0
    .param p0, "di"    # Lobject/p2pwificam/clientActivity/BridgeService$DateTimeInterface;

    .prologue
    .line 1039
    sput-object p0, Lobject/p2pwificam/clientActivity/BridgeService;->dateTimeInterface:Lobject/p2pwificam/clientActivity/BridgeService$DateTimeInterface;

    .line 1040
    return-void
.end method

.method public static setEVCommandInterface(Lobject/p2pwificam/clientActivity/BridgeService$EVCommandInterface;)V
    .locals 0
    .param p0, "pbi"    # Lobject/p2pwificam/clientActivity/BridgeService$EVCommandInterface;

    .prologue
    .line 1161
    sput-object p0, Lobject/p2pwificam/clientActivity/BridgeService;->evCommandInterface:Lobject/p2pwificam/clientActivity/BridgeService$EVCommandInterface;

    .line 1162
    return-void
.end method

.method public static setFtpInterface(Lobject/p2pwificam/clientActivity/BridgeService$FtpInterface;)V
    .locals 0
    .param p0, "fi"    # Lobject/p2pwificam/clientActivity/BridgeService$FtpInterface;

    .prologue
    .line 1068
    sput-object p0, Lobject/p2pwificam/clientActivity/BridgeService;->ftpInterface:Lobject/p2pwificam/clientActivity/BridgeService$FtpInterface;

    .line 1069
    return-void
.end method

.method public static setIpcamClientInterface(Lobject/p2pwificam/clientActivity/BridgeService$IpcamClientInterface;)V
    .locals 0
    .param p0, "ipcInterface"    # Lobject/p2pwificam/clientActivity/BridgeService$IpcamClientInterface;

    .prologue
    .line 930
    sput-object p0, Lobject/p2pwificam/clientActivity/BridgeService;->ipcamClientInterface:Lobject/p2pwificam/clientActivity/BridgeService$IpcamClientInterface;

    .line 931
    return-void
.end method

.method public static setMailInterface(Lobject/p2pwificam/clientActivity/BridgeService$MailInterface;)V
    .locals 0
    .param p0, "mi"    # Lobject/p2pwificam/clientActivity/BridgeService$MailInterface;

    .prologue
    .line 1052
    sput-object p0, Lobject/p2pwificam/clientActivity/BridgeService;->mailInterface:Lobject/p2pwificam/clientActivity/BridgeService$MailInterface;

    .line 1053
    return-void
.end method

.method public static setOpenLockInterface(Lobject/p2pwificam/clientActivity/BridgeService$OpenLockInterface;)V
    .locals 0
    .param p0, "ai"    # Lobject/p2pwificam/clientActivity/BridgeService$OpenLockInterface;

    .prologue
    .line 1027
    sput-object p0, Lobject/p2pwificam/clientActivity/BridgeService;->openLockInterface:Lobject/p2pwificam/clientActivity/BridgeService$OpenLockInterface;

    .line 1028
    return-void
.end method

.method public static setPictureInterface(Lobject/p2pwificam/clientActivity/BridgeService$PictureInterface;)V
    .locals 0
    .param p0, "pi"    # Lobject/p2pwificam/clientActivity/BridgeService$PictureInterface;

    .prologue
    .line 945
    sput-object p0, Lobject/p2pwificam/clientActivity/BridgeService;->pictureInterface:Lobject/p2pwificam/clientActivity/BridgeService$PictureInterface;

    .line 946
    return-void
.end method

.method public static setPlayBackInterface(Lobject/p2pwificam/clientActivity/BridgeService$PlayBackInterface;)V
    .locals 0
    .param p0, "pbi"    # Lobject/p2pwificam/clientActivity/BridgeService$PlayBackInterface;

    .prologue
    .line 1137
    sput-object p0, Lobject/p2pwificam/clientActivity/BridgeService;->playBackInterface:Lobject/p2pwificam/clientActivity/BridgeService$PlayBackInterface;

    .line 1138
    return-void
.end method

.method public static setPlayBackTFInterface(Lobject/p2pwificam/clientActivity/BridgeService$PlayBackTFInterface;)V
    .locals 0
    .param p0, "pbtfi"    # Lobject/p2pwificam/clientActivity/BridgeService$PlayBackTFInterface;

    .prologue
    .line 1126
    sput-object p0, Lobject/p2pwificam/clientActivity/BridgeService;->playBackTFInterface:Lobject/p2pwificam/clientActivity/BridgeService$PlayBackTFInterface;

    .line 1127
    return-void
.end method

.method public static setPlayInterface(Lobject/p2pwificam/clientActivity/BridgeService$PlayInterface;)V
    .locals 0
    .param p0, "pi"    # Lobject/p2pwificam/clientActivity/BridgeService$PlayInterface;

    .prologue
    .line 1106
    sput-object p0, Lobject/p2pwificam/clientActivity/BridgeService;->playInterface:Lobject/p2pwificam/clientActivity/BridgeService$PlayInterface;

    .line 1107
    return-void
.end method

.method public static setSDCardInterface(Lobject/p2pwificam/clientActivity/BridgeService$SDCardInterface;)V
    .locals 0
    .param p0, "si"    # Lobject/p2pwificam/clientActivity/BridgeService$SDCardInterface;

    .prologue
    .line 1081
    sput-object p0, Lobject/p2pwificam/clientActivity/BridgeService;->sCardInterface:Lobject/p2pwificam/clientActivity/BridgeService$SDCardInterface;

    .line 1082
    return-void
.end method

.method public static setUserInterface(Lobject/p2pwificam/clientActivity/BridgeService$UserInterface;)V
    .locals 0
    .param p0, "ui"    # Lobject/p2pwificam/clientActivity/BridgeService$UserInterface;

    .prologue
    .line 987
    sput-object p0, Lobject/p2pwificam/clientActivity/BridgeService;->userInterface:Lobject/p2pwificam/clientActivity/BridgeService$UserInterface;

    .line 988
    return-void
.end method

.method public static setVideoInterface(Lobject/p2pwificam/clientActivity/BridgeService$VideoInterface;)V
    .locals 0
    .param p0, "vi"    # Lobject/p2pwificam/clientActivity/BridgeService$VideoInterface;

    .prologue
    .line 955
    sput-object p0, Lobject/p2pwificam/clientActivity/BridgeService;->videoInterface:Lobject/p2pwificam/clientActivity/BridgeService$VideoInterface;

    .line 956
    return-void
.end method

.method public static setWifiInterface(Lobject/p2pwificam/clientActivity/BridgeService$WifiInterface;)V
    .locals 0
    .param p0, "wi"    # Lobject/p2pwificam/clientActivity/BridgeService$WifiInterface;

    .prologue
    .line 965
    sput-object p0, Lobject/p2pwificam/clientActivity/BridgeService;->wifiInterface:Lobject/p2pwificam/clientActivity/BridgeService$WifiInterface;

    .line 966
    return-void
.end method


# virtual methods
.method public CallBack_AlarmNotify(Ljava/lang/String;IIIIII)V
    .locals 8
    .param p1, "did"    # Ljava/lang/String;
    .param p2, "alarmType"    # I
    .param p3, "beginTime"    # I
    .param p4, "endTime"    # I
    .param p5, "value"    # I
    .param p6, "index"    # I
    .param p7, "fileID"    # I

    .prologue
    .line 638
    invoke-static {}, Lcom/easyview/camera/CameraList;->GetInstance()Lcom/easyview/camera/CameraList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/easyview/camera/CameraList;->getCamera(Ljava/lang/String;)Lcom/easyview/basecamera/BaseCamera;

    move-result-object v7

    check-cast v7, Lcom/easyview/ppcs/PPCSCamera;

    .line 639
    .local v7, "camera":Lcom/easyview/ppcs/PPCSCamera;
    const/16 v0, 0x201

    if-eq p2, v0, :cond_1

    const/16 v0, 0x202

    if-eq p2, v0, :cond_1

    .line 641
    if-nez p7, :cond_0

    .line 643
    invoke-virtual {v7}, Lcom/easyview/ppcs/PPCSCamera;->GetEventFileID()I

    move-result p7

    .line 645
    :cond_0
    const-string v0, "P2P"

    const-string v1, "AlarmNotify %s index:%d type:%d time:%d file_id:%d"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/easyview/ndt/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p1

    move v2, p6

    move v3, p2

    move v4, p5

    move v5, p3

    move v6, p7

    .line 646
    invoke-static/range {v0 .. v6}, Lobject/p2pipcam/utils/Pub;->onEvent(Landroid/content/Context;Ljava/lang/String;IIIII)V

    .line 649
    :cond_1
    invoke-virtual {v7, p2, p3, p4, p5}, Lcom/easyview/ppcs/PPCSCamera;->SaveAlarm(IIII)V

    .line 788
    return-void
.end method

.method public CallBack_AlarmParams(Ljava/lang/String;IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII)V
    .locals 39
    .param p1, "did"    # Ljava/lang/String;
    .param p2, "motion_armed"    # I
    .param p3, "motion_sensitivity"    # I
    .param p4, "input_armed"    # I
    .param p5, "ioin_level"    # I
    .param p6, "iolinkage"    # I
    .param p7, "ioout_level"    # I
    .param p8, "alarmpresetsit"    # I
    .param p9, "mail"    # I
    .param p10, "snapshot"    # I
    .param p11, "record"    # I
    .param p12, "upload_interval"    # I
    .param p13, "schedule_enable"    # I
    .param p14, "schedule_sun_0"    # I
    .param p15, "schedule_sun_1"    # I
    .param p16, "schedule_sun_2"    # I
    .param p17, "schedule_mon_0"    # I
    .param p18, "schedule_mon_1"    # I
    .param p19, "schedule_mon_2"    # I
    .param p20, "schedule_tue_0"    # I
    .param p21, "schedule_tue_1"    # I
    .param p22, "schedule_tue_2"    # I
    .param p23, "schedule_wed_0"    # I
    .param p24, "schedule_wed_1"    # I
    .param p25, "schedule_wed_2"    # I
    .param p26, "schedule_thu_0"    # I
    .param p27, "schedule_thu_1"    # I
    .param p28, "schedule_thu_2"    # I
    .param p29, "schedule_fri_0"    # I
    .param p30, "schedule_fri_1"    # I
    .param p31, "schedule_fri_2"    # I
    .param p32, "schedule_sat_0"    # I
    .param p33, "schedule_sat_1"    # I
    .param p34, "schedule_sat_2"    # I

    .prologue
    .line 474
    invoke-static {}, Lcom/easyview/camera/CameraList;->GetInstance()Lcom/easyview/camera/CameraList;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/easyview/camera/CameraList;->getCamera(Ljava/lang/String;)Lcom/easyview/basecamera/BaseCamera;

    move-result-object v38

    check-cast v38, Lcom/easyview/camera/EVBaseCamera;

    .line 475
    .local v38, "camera":Lcom/easyview/camera/EVBaseCamera;
    if-eqz v38, :cond_0

    .line 477
    invoke-virtual/range {v38 .. v38}, Lcom/easyview/camera/EVBaseCamera;->getAlarm()Lcom/easyview/bean/AlermBean;

    move-result-object v37

    .line 478
    .local v37, "alermBean":Lcom/easyview/bean/AlermBean;
    move-object/from16 v0, v37

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/easyview/bean/AlermBean;->setDid(Ljava/lang/String;)V

    .line 479
    move-object/from16 v0, v37

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/easyview/bean/AlermBean;->setMotion_armed(I)V

    .line 480
    move-object/from16 v0, v37

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/easyview/bean/AlermBean;->setMotion_sensitivity(I)V

    .line 481
    move-object/from16 v0, v37

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/easyview/bean/AlermBean;->setInput_armed(I)V

    .line 482
    move-object/from16 v0, v37

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/easyview/bean/AlermBean;->setIoin_level(I)V

    .line 483
    move-object/from16 v0, v37

    move/from16 v1, p6

    invoke-virtual {v0, v1}, Lcom/easyview/bean/AlermBean;->setIolinkage(I)V

    .line 484
    move-object/from16 v0, v37

    move/from16 v1, p7

    invoke-virtual {v0, v1}, Lcom/easyview/bean/AlermBean;->setIoout_level(I)V

    .line 485
    move-object/from16 v0, v37

    move/from16 v1, p8

    invoke-virtual {v0, v1}, Lcom/easyview/bean/AlermBean;->setAlermpresetsit(I)V

    .line 486
    move-object/from16 v0, v37

    move/from16 v1, p9

    invoke-virtual {v0, v1}, Lcom/easyview/bean/AlermBean;->setMail(I)V

    .line 487
    move-object/from16 v0, v37

    move/from16 v1, p10

    invoke-virtual {v0, v1}, Lcom/easyview/bean/AlermBean;->setSnapshot(I)V

    .line 488
    move-object/from16 v0, v37

    move/from16 v1, p11

    invoke-virtual {v0, v1}, Lcom/easyview/bean/AlermBean;->setRecord(I)V

    .line 489
    move-object/from16 v0, v37

    move/from16 v1, p12

    invoke-virtual {v0, v1}, Lcom/easyview/bean/AlermBean;->setUpload_interval(I)V

    .line 490
    const/4 v2, 0x1

    move-object/from16 v0, v37

    invoke-virtual {v0, v2}, Lcom/easyview/bean/AlermBean;->setSchedule_enable(I)V

    .line 492
    const/4 v2, -0x1

    move-object/from16 v0, v37

    invoke-virtual {v0, v2}, Lcom/easyview/bean/AlermBean;->setSchedule_sun_0(I)V

    .line 493
    const/4 v2, -0x1

    move-object/from16 v0, v37

    invoke-virtual {v0, v2}, Lcom/easyview/bean/AlermBean;->setSchedule_sun_1(I)V

    .line 494
    const/4 v2, -0x1

    move-object/from16 v0, v37

    invoke-virtual {v0, v2}, Lcom/easyview/bean/AlermBean;->setSchedule_sun_2(I)V

    .line 495
    const/4 v2, -0x1

    move-object/from16 v0, v37

    invoke-virtual {v0, v2}, Lcom/easyview/bean/AlermBean;->setSchedule_mon_0(I)V

    .line 496
    const/4 v2, -0x1

    move-object/from16 v0, v37

    invoke-virtual {v0, v2}, Lcom/easyview/bean/AlermBean;->setSchedule_mon_1(I)V

    .line 497
    const/4 v2, -0x1

    move-object/from16 v0, v37

    invoke-virtual {v0, v2}, Lcom/easyview/bean/AlermBean;->setSchedule_mon_2(I)V

    .line 498
    const/4 v2, -0x1

    move-object/from16 v0, v37

    invoke-virtual {v0, v2}, Lcom/easyview/bean/AlermBean;->setSchedule_thu_0(I)V

    .line 499
    const/4 v2, -0x1

    move-object/from16 v0, v37

    invoke-virtual {v0, v2}, Lcom/easyview/bean/AlermBean;->setSchedule_thu_1(I)V

    .line 500
    const/4 v2, -0x1

    move-object/from16 v0, v37

    invoke-virtual {v0, v2}, Lcom/easyview/bean/AlermBean;->setSchedule_thu_2(I)V

    .line 501
    const/4 v2, -0x1

    move-object/from16 v0, v37

    invoke-virtual {v0, v2}, Lcom/easyview/bean/AlermBean;->setSchedule_wed_0(I)V

    .line 502
    const/4 v2, -0x1

    move-object/from16 v0, v37

    invoke-virtual {v0, v2}, Lcom/easyview/bean/AlermBean;->setSchedule_wed_1(I)V

    .line 503
    const/4 v2, -0x1

    move-object/from16 v0, v37

    invoke-virtual {v0, v2}, Lcom/easyview/bean/AlermBean;->setSchedule_wed_2(I)V

    .line 504
    const/4 v2, -0x1

    move-object/from16 v0, v37

    invoke-virtual {v0, v2}, Lcom/easyview/bean/AlermBean;->setSchedule_tue_0(I)V

    .line 505
    const/4 v2, -0x1

    move-object/from16 v0, v37

    invoke-virtual {v0, v2}, Lcom/easyview/bean/AlermBean;->setSchedule_tue_1(I)V

    .line 506
    const/4 v2, -0x1

    move-object/from16 v0, v37

    invoke-virtual {v0, v2}, Lcom/easyview/bean/AlermBean;->setSchedule_tue_2(I)V

    .line 507
    const/4 v2, -0x1

    move-object/from16 v0, v37

    invoke-virtual {v0, v2}, Lcom/easyview/bean/AlermBean;->setSchedule_fri_0(I)V

    .line 508
    const/4 v2, -0x1

    move-object/from16 v0, v37

    invoke-virtual {v0, v2}, Lcom/easyview/bean/AlermBean;->setSchedule_fri_1(I)V

    .line 509
    const/4 v2, -0x1

    move-object/from16 v0, v37

    invoke-virtual {v0, v2}, Lcom/easyview/bean/AlermBean;->setSchedule_fri_2(I)V

    .line 510
    const/4 v2, -0x1

    move-object/from16 v0, v37

    invoke-virtual {v0, v2}, Lcom/easyview/bean/AlermBean;->setSchedule_sat_0(I)V

    .line 511
    const/4 v2, -0x1

    move-object/from16 v0, v37

    invoke-virtual {v0, v2}, Lcom/easyview/bean/AlermBean;->setSchedule_sat_1(I)V

    .line 512
    const/4 v2, -0x1

    move-object/from16 v0, v37

    invoke-virtual {v0, v2}, Lcom/easyview/bean/AlermBean;->setSchedule_sat_2(I)V

    .line 514
    .end local v37    # "alermBean":Lcom/easyview/bean/AlermBean;
    :cond_0
    sget-object v2, Lobject/p2pwificam/clientActivity/BridgeService;->alarmInterface:Lobject/p2pwificam/clientActivity/BridgeService$AlarmInterface;

    if-eqz v2, :cond_1

    .line 515
    sget-object v2, Lobject/p2pwificam/clientActivity/BridgeService;->alarmInterface:Lobject/p2pwificam/clientActivity/BridgeService$AlarmInterface;

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    move/from16 v13, p11

    move/from16 v14, p12

    move/from16 v15, p13

    move/from16 v16, p14

    move/from16 v17, p15

    move/from16 v18, p16

    move/from16 v19, p17

    move/from16 v20, p18

    move/from16 v21, p19

    move/from16 v22, p20

    move/from16 v23, p21

    move/from16 v24, p22

    move/from16 v25, p23

    move/from16 v26, p24

    move/from16 v27, p25

    move/from16 v28, p26

    move/from16 v29, p27

    move/from16 v30, p28

    move/from16 v31, p29

    move/from16 v32, p30

    move/from16 v33, p31

    move/from16 v34, p32

    move/from16 v35, p33

    move/from16 v36, p34

    invoke-interface/range {v2 .. v36}, Lobject/p2pwificam/clientActivity/BridgeService$AlarmInterface;->callBackAlarmParams(Ljava/lang/String;IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII)V

    .line 527
    :cond_1
    return-void
.end method

.method public CallBack_CameraParams(Ljava/lang/String;IIIIIIII)V
    .locals 9
    .param p1, "did"    # Ljava/lang/String;
    .param p2, "resolution"    # I
    .param p3, "brightness"    # I
    .param p4, "contrast"    # I
    .param p5, "hue"    # I
    .param p6, "saturation"    # I
    .param p7, "flip"    # I
    .param p8, "frame"    # I
    .param p9, "mode"    # I

    .prologue
    .line 338
    const-string v1, "ddd"

    const-string v2, "CallBack_CameraParams"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    invoke-static {}, Lcom/easyview/camera/CameraList;->GetInstance()Lcom/easyview/camera/CameraList;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/easyview/camera/CameraList;->getCamera(Ljava/lang/String;)Lcom/easyview/basecamera/BaseCamera;

    move-result-object v0

    check-cast v0, Lcom/easyview/ppcs/PPCSCamera;

    .line 341
    .local v0, "camera":Lcom/easyview/ppcs/PPCSCamera;
    if-eqz v0, :cond_0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    .line 343
    invoke-virtual/range {v0 .. v8}, Lcom/easyview/ppcs/PPCSCamera;->onCameraParams(IIIIIIII)V

    .line 346
    :cond_0
    sget-object v1, Lobject/p2pwificam/clientActivity/BridgeService;->playInterface:Lobject/p2pwificam/clientActivity/BridgeService$PlayInterface;

    if-eqz v1, :cond_1

    .line 347
    sget-object v1, Lobject/p2pwificam/clientActivity/BridgeService;->playInterface:Lobject/p2pwificam/clientActivity/BridgeService$PlayInterface;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-interface/range {v1 .. v8}, Lobject/p2pwificam/clientActivity/BridgeService$PlayInterface;->callBackCameraParamNotify(Ljava/lang/String;IIIIII)V

    .line 350
    :cond_1
    return-void
.end method

.method public CallBack_CameraStatusParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIII)V
    .locals 5
    .param p1, "did"    # Ljava/lang/String;
    .param p2, "sysver"    # Ljava/lang/String;
    .param p3, "devname"    # Ljava/lang/String;
    .param p4, "devid"    # Ljava/lang/String;
    .param p5, "alarmstatus"    # I
    .param p6, "sdcardstatus"    # I
    .param p7, "sdcardtotalsize"    # I
    .param p8, "sdcardremainsize"    # I

    .prologue
    .line 442
    const-string v0, "ddd"

    const-string v1, "CallBack_CameraStatusParams sdcardtotalsize:%d sdcardremainsize:%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    return-void
.end method

.method public CallBack_DDNSParams(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 2
    .param p1, "did"    # Ljava/lang/String;
    .param p2, "service"    # I
    .param p3, "user"    # Ljava/lang/String;
    .param p4, "pwd"    # Ljava/lang/String;
    .param p5, "host"    # Ljava/lang/String;
    .param p6, "proxy_svr"    # Ljava/lang/String;
    .param p7, "ddns_mode"    # I
    .param p8, "proxy_port"    # I

    .prologue
    .line 389
    const-string v0, "ddd"

    const-string v1, "CallBack_DDNSParams"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    return-void
.end method

.method public CallBack_DatetimeParams(Ljava/lang/String;IIILjava/lang/String;)V
    .locals 6
    .param p1, "did"    # Ljava/lang/String;
    .param p2, "now"    # I
    .param p3, "tz"    # I
    .param p4, "ntp_enable"    # I
    .param p5, "ntp_svr"    # Ljava/lang/String;

    .prologue
    .line 403
    sget-object v0, Lobject/p2pwificam/clientActivity/BridgeService;->dateTimeInterface:Lobject/p2pwificam/clientActivity/BridgeService$DateTimeInterface;

    if-eqz v0, :cond_0

    .line 404
    sget-object v0, Lobject/p2pwificam/clientActivity/BridgeService;->dateTimeInterface:Lobject/p2pwificam/clientActivity/BridgeService$DateTimeInterface;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lobject/p2pwificam/clientActivity/BridgeService$DateTimeInterface;->callBackDatetimeParams(Ljava/lang/String;IIILjava/lang/String;)V

    .line 407
    :cond_0
    return-void
.end method

.method public CallBack_FtpParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V
    .locals 9
    .param p1, "did"    # Ljava/lang/String;
    .param p2, "svr_ftp"    # Ljava/lang/String;
    .param p3, "user"    # Ljava/lang/String;
    .param p4, "pwd"    # Ljava/lang/String;
    .param p5, "dir"    # Ljava/lang/String;
    .param p6, "port"    # I
    .param p7, "mode"    # I
    .param p8, "upload_interval"    # I

    .prologue
    .line 380
    sget-object v0, Lobject/p2pwificam/clientActivity/BridgeService;->ftpInterface:Lobject/p2pwificam/clientActivity/BridgeService$FtpInterface;

    if-eqz v0, :cond_0

    .line 381
    sget-object v0, Lobject/p2pwificam/clientActivity/BridgeService;->ftpInterface:Lobject/p2pwificam/clientActivity/BridgeService$FtpInterface;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-interface/range {v0 .. v8}, Lobject/p2pwificam/clientActivity/BridgeService$FtpInterface;->callBackFtpParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    .line 384
    :cond_0
    return-void
.end method

.method public CallBack_MailParams(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 13
    .param p1, "did"    # Ljava/lang/String;
    .param p2, "svr"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "user"    # Ljava/lang/String;
    .param p5, "pwd"    # Ljava/lang/String;
    .param p6, "ssl"    # I
    .param p7, "sender"    # Ljava/lang/String;
    .param p8, "auth"    # I
    .param p9, "receiver1"    # Ljava/lang/String;
    .param p10, "receiver2"    # Ljava/lang/String;
    .param p11, "receiver3"    # Ljava/lang/String;
    .param p12, "receiver4"    # Ljava/lang/String;

    .prologue
    .line 395
    sget-object v0, Lobject/p2pwificam/clientActivity/BridgeService;->mailInterface:Lobject/p2pwificam/clientActivity/BridgeService$MailInterface;

    if-eqz v0, :cond_0

    .line 396
    sget-object v0, Lobject/p2pwificam/clientActivity/BridgeService;->mailInterface:Lobject/p2pwificam/clientActivity/BridgeService$MailInterface;

    move-object v1, p1

    move-object v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    invoke-interface/range {v0 .. v12}, Lobject/p2pwificam/clientActivity/BridgeService$MailInterface;->callBackMailParams(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    :cond_0
    return-void
.end method

.method public CallBack_NetworkParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V
    .locals 2
    .param p1, "did"    # Ljava/lang/String;
    .param p2, "ipaddr"    # Ljava/lang/String;
    .param p3, "netmask"    # Ljava/lang/String;
    .param p4, "gateway"    # Ljava/lang/String;
    .param p5, "dns1"    # Ljava/lang/String;
    .param p6, "dns2"    # Ljava/lang/String;
    .param p7, "dhcp"    # I
    .param p8, "port"    # I
    .param p9, "rtsport"    # I

    .prologue
    .line 436
    const-string v0, "ddd"

    const-string v1, "CallBack_NetworkParams"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    return-void
.end method

.method public CallBack_PTZParams(Ljava/lang/String;IIIIIIIII)V
    .locals 2
    .param p1, "did"    # Ljava/lang/String;
    .param p2, "led_mod"    # I
    .param p3, "ptz_center_onstart"    # I
    .param p4, "ptz_run_times"    # I
    .param p5, "ptz_patrol_rate"    # I
    .param p6, "ptz_patrul_up_rate"    # I
    .param p7, "ptz_patrol_down_rate"    # I
    .param p8, "ptz_patrol_left_rate"    # I
    .param p9, "ptz_patrol_right_rate"    # I
    .param p10, "disable_preset"    # I

    .prologue
    .line 450
    const-string v0, "ddd"

    const-string v1, "CallBack_PTZParams"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    return-void
.end method

.method public CallBack_RecordSchParams(Ljava/lang/String;IIIIIIIIIIIIIIIIIIIIIIIIIIIII)V
    .locals 31
    .param p1, "did"    # Ljava/lang/String;
    .param p2, "record_cover_enable"    # I
    .param p3, "record_timer"    # I
    .param p4, "record_size"    # I
    .param p5, "record_time_enable"    # I
    .param p6, "record_schedule_sun_0"    # I
    .param p7, "record_schedule_sun_1"    # I
    .param p8, "record_schedule_sun_2"    # I
    .param p9, "record_schedule_mon_0"    # I
    .param p10, "record_schedule_mon_1"    # I
    .param p11, "record_schedule_mon_2"    # I
    .param p12, "record_schedule_tue_0"    # I
    .param p13, "record_schedule_tue_1"    # I
    .param p14, "record_schedule_tue_2"    # I
    .param p15, "record_schedule_wed_0"    # I
    .param p16, "record_schedule_wed_1"    # I
    .param p17, "record_schedule_wed_2"    # I
    .param p18, "record_schedule_thu_0"    # I
    .param p19, "record_schedule_thu_1"    # I
    .param p20, "record_schedule_thu_2"    # I
    .param p21, "record_schedule_fri_0"    # I
    .param p22, "record_schedule_fri_1"    # I
    .param p23, "record_schedule_fri_2"    # I
    .param p24, "record_schedule_sat_0"    # I
    .param p25, "record_schedule_sat_1"    # I
    .param p26, "record_schedule_sat_2"    # I
    .param p27, "record_sd_status"    # I
    .param p28, "sdtotal"    # I
    .param p29, "sdfree"    # I
    .param p30, "record_mode"    # I

    .prologue
    .line 838
    sget-object v0, Lobject/p2pwificam/clientActivity/BridgeService;->sCardInterface:Lobject/p2pwificam/clientActivity/BridgeService$SDCardInterface;

    if-eqz v0, :cond_0

    .line 839
    sget-object v0, Lobject/p2pwificam/clientActivity/BridgeService;->sCardInterface:Lobject/p2pwificam/clientActivity/BridgeService$SDCardInterface;

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    move/from16 v15, p15

    move/from16 v16, p16

    move/from16 v17, p17

    move/from16 v18, p18

    move/from16 v19, p19

    move/from16 v20, p20

    move/from16 v21, p21

    move/from16 v22, p22

    move/from16 v23, p23

    move/from16 v24, p24

    move/from16 v25, p25

    move/from16 v26, p26

    move/from16 v27, p27

    move/from16 v28, p28

    move/from16 v29, p29

    move/from16 v30, p30

    invoke-interface/range {v0 .. v30}, Lobject/p2pwificam/clientActivity/BridgeService$SDCardInterface;->callBackRecordSchParams(Ljava/lang/String;IIIIIIIIIIIIIIIIIIIIIIIIIIIII)V

    .line 853
    :cond_0
    return-void
.end method

.method public CallBack_SearchResult(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7
    .param p1, "cameraType"    # I
    .param p2, "strMac"    # Ljava/lang/String;
    .param p3, "strName"    # Ljava/lang/String;
    .param p4, "strDeviceID"    # Ljava/lang/String;
    .param p5, "strIpAddr"    # Ljava/lang/String;
    .param p6, "port"    # I

    .prologue
    .line 266
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/BridgeService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SearchResult: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 275
    :cond_0
    :goto_0
    return-void

    .line 270
    :cond_1
    sget-object v0, Lobject/p2pwificam/clientActivity/BridgeService;->addCameraInterface:Lobject/p2pwificam/clientActivity/BridgeService$AddCameraInterface;

    if-eqz v0, :cond_0

    .line 271
    sget-object v0, Lobject/p2pwificam/clientActivity/BridgeService;->addCameraInterface:Lobject/p2pwificam/clientActivity/BridgeService$AddCameraInterface;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Lobject/p2pwificam/clientActivity/BridgeService$AddCameraInterface;->callBackSearchResultData(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public CallBack_SetSystemParamsResult(Ljava/lang/String;II)V
    .locals 3
    .param p1, "did"    # Ljava/lang/String;
    .param p2, "paramType"    # I
    .param p3, "result"    # I

    .prologue
    .line 286
    sparse-switch p2, :sswitch_data_0

    .line 334
    :cond_0
    :goto_0
    return-void

    .line 288
    :sswitch_0
    sget-object v0, Lobject/p2pwificam/clientActivity/BridgeService;->wifiInterface:Lobject/p2pwificam/clientActivity/BridgeService$WifiInterface;

    if-eqz v0, :cond_0

    .line 289
    sget-object v0, Lobject/p2pwificam/clientActivity/BridgeService;->wifiInterface:Lobject/p2pwificam/clientActivity/BridgeService$WifiInterface;

    invoke-interface {v0, p1, p2, p3}, Lobject/p2pwificam/clientActivity/BridgeService$WifiInterface;->callBackSetSystemParamsResult(Ljava/lang/String;II)V

    goto :goto_0

    .line 294
    :sswitch_1
    sget-object v0, Lobject/p2pwificam/clientActivity/BridgeService;->userInterface:Lobject/p2pwificam/clientActivity/BridgeService$UserInterface;

    if-eqz v0, :cond_0

    .line 295
    sget-object v0, Lobject/p2pwificam/clientActivity/BridgeService;->userInterface:Lobject/p2pwificam/clientActivity/BridgeService$UserInterface;

    invoke-interface {v0, p1, p2, p3}, Lobject/p2pwificam/clientActivity/BridgeService$UserInterface;->callBackSetSystemParamsResult(Ljava/lang/String;II)V

    goto :goto_0

    .line 300
    :sswitch_2
    sget-object v0, Lobject/p2pwificam/clientActivity/BridgeService;->alarmInterface:Lobject/p2pwificam/clientActivity/BridgeService$AlarmInterface;

    if-eqz v0, :cond_0

    .line 302
    sget-object v0, Lobject/p2pwificam/clientActivity/BridgeService;->alarmInterface:Lobject/p2pwificam/clientActivity/BridgeService$AlarmInterface;

    invoke-interface {v0, p1, p2, p3}, Lobject/p2pwificam/clientActivity/BridgeService$AlarmInterface;->callBackSetSystemParamsResult(Ljava/lang/String;II)V

    goto :goto_0

    .line 307
    :sswitch_3
    sget-object v0, Lobject/p2pwificam/clientActivity/BridgeService;->mailInterface:Lobject/p2pwificam/clientActivity/BridgeService$MailInterface;

    if-eqz v0, :cond_0

    .line 308
    sget-object v0, Lobject/p2pwificam/clientActivity/BridgeService;->mailInterface:Lobject/p2pwificam/clientActivity/BridgeService$MailInterface;

    invoke-interface {v0, p1, p2, p3}, Lobject/p2pwificam/clientActivity/BridgeService$MailInterface;->callBackSetSystemParamsResult(Ljava/lang/String;II)V

    goto :goto_0

    .line 313
    :sswitch_4
    sget-object v0, Lobject/p2pwificam/clientActivity/BridgeService;->ftpInterface:Lobject/p2pwificam/clientActivity/BridgeService$FtpInterface;

    if-eqz v0, :cond_0

    .line 314
    sget-object v0, Lobject/p2pwificam/clientActivity/BridgeService;->ftpInterface:Lobject/p2pwificam/clientActivity/BridgeService$FtpInterface;

    invoke-interface {v0, p1, p2, p3}, Lobject/p2pwificam/clientActivity/BridgeService$FtpInterface;->callBackSetSystemParamsResult(Ljava/lang/String;II)V

    goto :goto_0

    .line 319
    :sswitch_5
    sget-object v0, Lobject/p2pwificam/clientActivity/BridgeService;->dateTimeInterface:Lobject/p2pwificam/clientActivity/BridgeService$DateTimeInterface;

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/BridgeService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "user result:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " paramType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    sget-object v0, Lobject/p2pwificam/clientActivity/BridgeService;->dateTimeInterface:Lobject/p2pwificam/clientActivity/BridgeService$DateTimeInterface;

    invoke-interface {v0, p1, p2, p3}, Lobject/p2pwificam/clientActivity/BridgeService$DateTimeInterface;->callBackSetSystemParamsResult(Ljava/lang/String;II)V

    goto :goto_0

    .line 326
    :sswitch_6
    sget-object v0, Lobject/p2pwificam/clientActivity/BridgeService;->sCardInterface:Lobject/p2pwificam/clientActivity/BridgeService$SDCardInterface;

    if-eqz v0, :cond_0

    .line 327
    sget-object v0, Lobject/p2pwificam/clientActivity/BridgeService;->sCardInterface:Lobject/p2pwificam/clientActivity/BridgeService$SDCardInterface;

    invoke-interface {v0, p1, p2, p3}, Lobject/p2pwificam/clientActivity/BridgeService$SDCardInterface;->callBackSetSystemParamsResult(Ljava/lang/String;II)V

    goto :goto_0

    .line 286
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_1
        0xb -> :sswitch_0
        0xc -> :sswitch_5
        0x10 -> :sswitch_3
        0x11 -> :sswitch_4
        0x12 -> :sswitch_2
        0x1c -> :sswitch_6
    .end sparse-switch
.end method

.method public CallBack_Snapshot(Ljava/lang/String;[BI)V
    .locals 2
    .param p1, "did"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .param p3, "len"    # I

    .prologue
    .line 427
    const-string v0, "ddd"

    const-string v1, "CallBack_Snapshot"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    sget-object v0, Lobject/p2pwificam/clientActivity/BridgeService;->ipcamClientInterface:Lobject/p2pwificam/clientActivity/BridgeService$IpcamClientInterface;

    if-eqz v0, :cond_0

    .line 429
    sget-object v0, Lobject/p2pwificam/clientActivity/BridgeService;->ipcamClientInterface:Lobject/p2pwificam/clientActivity/BridgeService$IpcamClientInterface;

    invoke-interface {v0, p1, p2, p3}, Lobject/p2pwificam/clientActivity/BridgeService$IpcamClientInterface;->BSSnapshotNotify(Ljava/lang/String;[BI)V

    .line 431
    :cond_0
    return-void
.end method

.method public CallBack_UserParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "did"    # Ljava/lang/String;
    .param p2, "user1"    # Ljava/lang/String;
    .param p3, "pwd1"    # Ljava/lang/String;
    .param p4, "user2"    # Ljava/lang/String;
    .param p5, "pwd2"    # Ljava/lang/String;
    .param p6, "user3"    # Ljava/lang/String;
    .param p7, "pwd3"    # Ljava/lang/String;

    .prologue
    .line 368
    sget-object v0, Lobject/p2pwificam/clientActivity/BridgeService;->userInterface:Lobject/p2pwificam/clientActivity/BridgeService$UserInterface;

    if-eqz v0, :cond_0

    .line 369
    sget-object v0, Lobject/p2pwificam/clientActivity/BridgeService;->userInterface:Lobject/p2pwificam/clientActivity/BridgeService$UserInterface;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-interface/range {v0 .. v7}, Lobject/p2pwificam/clientActivity/BridgeService$UserInterface;->callBackUserParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    :cond_0
    sget-object v0, Lobject/p2pwificam/clientActivity/BridgeService;->ipcamClientInterface:Lobject/p2pwificam/clientActivity/BridgeService$IpcamClientInterface;

    if-eqz v0, :cond_1

    .line 373
    sget-object v0, Lobject/p2pwificam/clientActivity/BridgeService;->ipcamClientInterface:Lobject/p2pwificam/clientActivity/BridgeService$IpcamClientInterface;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-interface/range {v0 .. v7}, Lobject/p2pwificam/clientActivity/BridgeService$IpcamClientInterface;->callBackUserParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    :cond_1
    return-void
.end method

.method public CallBack_WifiParams(Ljava/lang/String;ILjava/lang/String;IIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;)V
    .locals 19
    .param p1, "did"    # Ljava/lang/String;
    .param p2, "enable"    # I
    .param p3, "ssid"    # Ljava/lang/String;
    .param p4, "channel"    # I
    .param p5, "mode"    # I
    .param p6, "authtype"    # I
    .param p7, "encryp"    # I
    .param p8, "keyformat"    # I
    .param p9, "defkey"    # I
    .param p10, "key1"    # Ljava/lang/String;
    .param p11, "key2"    # Ljava/lang/String;
    .param p12, "key3"    # Ljava/lang/String;
    .param p13, "key4"    # Ljava/lang/String;
    .param p14, "key1_bits"    # I
    .param p15, "key2_bits"    # I
    .param p16, "key3_bits"    # I
    .param p17, "key4_bits"    # I
    .param p18, "wpa_psk"    # Ljava/lang/String;

    .prologue
    .line 357
    const-string v0, "ddd"

    const-string v1, "CallBack_WifiParams"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    sget-object v0, Lobject/p2pwificam/clientActivity/BridgeService;->wifiInterface:Lobject/p2pwificam/clientActivity/BridgeService$WifiInterface;

    if-eqz v0, :cond_0

    .line 359
    sget-object v0, Lobject/p2pwificam/clientActivity/BridgeService;->wifiInterface:Lobject/p2pwificam/clientActivity/BridgeService$WifiInterface;

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move/from16 v14, p14

    move/from16 v15, p15

    move/from16 v16, p16

    move/from16 v17, p17

    move-object/from16 v18, p18

    invoke-interface/range {v0 .. v18}, Lobject/p2pwificam/clientActivity/BridgeService$WifiInterface;->callBackWifiParams(Ljava/lang/String;ILjava/lang/String;IIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;)V

    .line 363
    :cond_0
    return-void
.end method

.method public CallBack_WifiScanResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIII)V
    .locals 10
    .param p1, "did"    # Ljava/lang/String;
    .param p2, "ssid"    # Ljava/lang/String;
    .param p3, "mac"    # Ljava/lang/String;
    .param p4, "security"    # I
    .param p5, "dbm0"    # I
    .param p6, "dbm1"    # I
    .param p7, "mode"    # I
    .param p8, "channel"    # I
    .param p9, "bEnd"    # I

    .prologue
    .line 455
    const-string v0, "tag"

    const-string v1, "CallBack_WifiScanResult"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    sget-object v0, Lobject/p2pwificam/clientActivity/BridgeService;->wifiInterface:Lobject/p2pwificam/clientActivity/BridgeService$WifiInterface;

    if-eqz v0, :cond_0

    .line 457
    sget-object v0, Lobject/p2pwificam/clientActivity/BridgeService;->wifiInterface:Lobject/p2pwificam/clientActivity/BridgeService$WifiInterface;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-interface/range {v0 .. v9}, Lobject/p2pwificam/clientActivity/BridgeService$WifiInterface;->callBackWifiScanResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 460
    :cond_0
    return-void
.end method

.method public SaveAlarm(Ljava/lang/String;I)V
    .locals 9
    .param p1, "did"    # Ljava/lang/String;
    .param p2, "position"    # I

    .prologue
    const/4 v8, 0x1

    .line 531
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 532
    .local v2, "flag":Ljava/lang/Boolean;
    const/4 v0, 0x0

    .line 533
    .local v0, "alarm":Ljava/lang/String;
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/BridgeService;->helper:Lobject/p2pipcam/utils/DataBaseHelper;

    invoke-virtual {v5}, Lobject/p2pipcam/utils/DataBaseHelper;->fetchAllAlarmCameras()Landroid/database/Cursor;

    move-result-object v1

    .line 534
    .local v1, "cursor":Landroid/database/Cursor;
    if-eqz v1, :cond_2

    .line 535
    :cond_0
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 546
    :cond_1
    if-eqz v1, :cond_2

    .line 547
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 551
    :cond_2
    const-string v5, "BridgeService"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "motionAlarm  ==="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    if-nez v0, :cond_3

    .line 556
    const-string v0, "0"

    .line 559
    :cond_3
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 560
    .local v4, "num":I
    add-int/lit8 v4, v4, 0x1

    .line 561
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 562
    const-string v5, "BridgeService"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "motionAlarm  ==="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/BridgeService;->helper:Lobject/p2pipcam/utils/DataBaseHelper;

    invoke-virtual {v5, p1, v0, p2}, Lobject/p2pipcam/utils/DataBaseHelper;->updateCameraAlarm(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 565
    return-void

    .line 536
    .end local v4    # "num":I
    :cond_4
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 537
    .local v3, "id":Ljava/lang/String;
    const-string v5, "BridgeService"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "id  ==="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    invoke-interface {v1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 541
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 543
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 55
    const-string v0, "tag"

    const-string v1, "BridgeService onBind()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    new-instance v0, Lobject/p2pwificam/clientActivity/BridgeService$ControllerBinder;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/BridgeService$ControllerBinder;-><init>(Lobject/p2pwificam/clientActivity/BridgeService;)V

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 67
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 68
    const/4 v0, 0x1

    sput-boolean v0, Lobject/p2pipcam/system/SystemValue;->ISRUN:Z

    .line 69
    const-string v0, "tagx"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "BridgeService onCreate()"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v2, Lobject/p2pipcam/system/SystemValue;->ISRUN:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/BridgeService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/BridgeService;->mCustomMgr:Landroid/app/NotificationManager;

    .line 71
    invoke-static {p0}, Lobject/p2pipcam/utils/DataBaseHelper;->getInstance(Landroid/content/Context;)Lobject/p2pipcam/utils/DataBaseHelper;

    move-result-object v0

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/BridgeService;->helper:Lobject/p2pipcam/utils/DataBaseHelper;

    .line 72
    invoke-static {p0}, Lobject/p2pipcam/nativecaller/NativeCaller;->PPPPSetCallbackContext(Landroid/content/Context;)I

    .line 73
    const-string v0, "tagx"

    const-string v1, "NativeCaller.PPPPSetCallbackContext"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 90
    const/4 v0, 0x0

    sput-boolean v0, Lobject/p2pipcam/system/SystemValue;->ISRUN:Z

    .line 91
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 93
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/BridgeService;->mCustomMgr:Landroid/app/NotificationManager;

    const v1, 0x7f020010

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 94
    const-string v0, "tagx"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "BridgeService onDestroy()=="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v2, Lobject/p2pipcam/system/SystemValue;->ISRUN:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/easyview/ndt/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/BridgeService;->helper:Lobject/p2pipcam/utils/DataBaseHelper;

    if-eqz v0, :cond_0

    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/BridgeService;->helper:Lobject/p2pipcam/utils/DataBaseHelper;

    .line 102
    :cond_0
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 80
    .line 81
    const v0, 0x7f020010

    .line 82
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/BridgeService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06001e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 83
    const-string v2, ""

    const/4 v3, 0x0

    .line 82
    invoke-direct {p0, v1, v2, v3}, Lobject/p2pwificam/clientActivity/BridgeService;->getNotification(Ljava/lang/String;Ljava/lang/String;Z)Landroid/app/Notification;

    move-result-object v1

    .line 80
    invoke-virtual {p0, v0, v1}, Lobject/p2pwificam/clientActivity/BridgeService;->startForeground(ILandroid/app/Notification;)V

    .line 85
    const/4 v0, 0x2

    return v0
.end method
