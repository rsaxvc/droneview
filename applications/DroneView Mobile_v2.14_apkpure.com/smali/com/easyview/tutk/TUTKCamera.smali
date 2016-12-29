.class public Lcom/easyview/tutk/TUTKCamera;
.super Lcom/easyview/basecamera/BaseCamera;
.source "TUTKCamera.java"

# interfaces
.implements Lcom/tutk/IOTC/IRegisterIOTCListener;


# static fields
.field private static final PTZ_DELAY:I = 0x5dc

.field private static _init:I


# instance fields
.field private _alarmParamListener:Lcom/easyview/basecamera/ICamera$IAlarmParamListener;

.field private _comm_data:[B

.field private _dateBean:Lcom/easyview/bean/DateBean;

.field private _diskState:Lcom/easyview/tutk/QVDiskStateStruct;

.field public _eventList:Lcom/easyview/tutk/EventListStruct;

.field private _extSetThresListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

.field private _extThresListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

.field private _mail:Lcom/easyview/tutk/QVMailStruct;

.field private _mailBean:Lcom/easyview/bean/MailBean;

.field private _mdAlarm:Lcom/easyview/tutk/QVMDAlarmStruct;

.field private _qvConfig:Lcom/easyview/tutk/QVConfigStruct;

.field private _record:Lcom/easyview/tutk/QVRecordStruct;

.field private _respondListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

.field private _sdcardBean:Lcom/easyview/bean/SdcardBean;

.field private _serverTime:Lcom/easyview/tutk/QVDateTimeStruct;

.field private _setTimeZone:Z

.field private _tutk:Lcom/tutk/IOTC/Camera;

.field private _wifiBean:Lcom/easyview/bean/WifiBean;

.field private _wifiParamListener:Lcom/easyview/basecamera/ICamera$IWifiParamListener;

.field private _wifiScanListener:Lcom/easyview/basecamera/ICamera$IWifiScanListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    sput v0, Lcom/easyview/tutk/TUTKCamera;->_init:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "user"    # Ljava/lang/String;
    .param p4, "pwd"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 90
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/easyview/basecamera/BaseCamera;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/easyview/tutk/TUTKCamera;->_comm_data:[B

    .line 68
    iput-object v1, p0, Lcom/easyview/tutk/TUTKCamera;->_wifiParamListener:Lcom/easyview/basecamera/ICamera$IWifiParamListener;

    .line 69
    iput-object v1, p0, Lcom/easyview/tutk/TUTKCamera;->_wifiScanListener:Lcom/easyview/basecamera/ICamera$IWifiScanListener;

    .line 70
    iput-object v1, p0, Lcom/easyview/tutk/TUTKCamera;->_respondListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

    .line 71
    iput-object v1, p0, Lcom/easyview/tutk/TUTKCamera;->_alarmParamListener:Lcom/easyview/basecamera/ICamera$IAlarmParamListener;

    .line 72
    iput-object v1, p0, Lcom/easyview/tutk/TUTKCamera;->_extThresListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

    .line 73
    iput-object v1, p0, Lcom/easyview/tutk/TUTKCamera;->_extSetThresListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

    .line 75
    new-instance v0, Lcom/easyview/tutk/QVConfigStruct;

    invoke-direct {v0}, Lcom/easyview/tutk/QVConfigStruct;-><init>()V

    iput-object v0, p0, Lcom/easyview/tutk/TUTKCamera;->_qvConfig:Lcom/easyview/tutk/QVConfigStruct;

    .line 76
    new-instance v0, Lcom/easyview/tutk/QVMDAlarmStruct;

    invoke-direct {v0}, Lcom/easyview/tutk/QVMDAlarmStruct;-><init>()V

    iput-object v0, p0, Lcom/easyview/tutk/TUTKCamera;->_mdAlarm:Lcom/easyview/tutk/QVMDAlarmStruct;

    .line 77
    new-instance v0, Lcom/easyview/tutk/QVDateTimeStruct;

    invoke-direct {v0}, Lcom/easyview/tutk/QVDateTimeStruct;-><init>()V

    iput-object v0, p0, Lcom/easyview/tutk/TUTKCamera;->_serverTime:Lcom/easyview/tutk/QVDateTimeStruct;

    .line 78
    new-instance v0, Lcom/easyview/tutk/QVMailStruct;

    invoke-direct {v0}, Lcom/easyview/tutk/QVMailStruct;-><init>()V

    iput-object v0, p0, Lcom/easyview/tutk/TUTKCamera;->_mail:Lcom/easyview/tutk/QVMailStruct;

    .line 79
    new-instance v0, Lcom/easyview/tutk/QVDiskStateStruct;

    invoke-direct {v0}, Lcom/easyview/tutk/QVDiskStateStruct;-><init>()V

    iput-object v0, p0, Lcom/easyview/tutk/TUTKCamera;->_diskState:Lcom/easyview/tutk/QVDiskStateStruct;

    .line 80
    new-instance v0, Lcom/easyview/tutk/QVRecordStruct;

    invoke-direct {v0}, Lcom/easyview/tutk/QVRecordStruct;-><init>()V

    iput-object v0, p0, Lcom/easyview/tutk/TUTKCamera;->_record:Lcom/easyview/tutk/QVRecordStruct;

    .line 81
    new-instance v0, Lcom/easyview/tutk/EventListStruct;

    invoke-direct {v0}, Lcom/easyview/tutk/EventListStruct;-><init>()V

    iput-object v0, p0, Lcom/easyview/tutk/TUTKCamera;->_eventList:Lcom/easyview/tutk/EventListStruct;

    .line 83
    iput-object v1, p0, Lcom/easyview/tutk/TUTKCamera;->_wifiBean:Lcom/easyview/bean/WifiBean;

    .line 84
    iput-object v1, p0, Lcom/easyview/tutk/TUTKCamera;->_dateBean:Lcom/easyview/bean/DateBean;

    .line 85
    iput-object v1, p0, Lcom/easyview/tutk/TUTKCamera;->_mailBean:Lcom/easyview/bean/MailBean;

    .line 86
    iput-object v1, p0, Lcom/easyview/tutk/TUTKCamera;->_sdcardBean:Lcom/easyview/bean/SdcardBean;

    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/easyview/tutk/TUTKCamera;->_setTimeZone:Z

    .line 91
    new-instance v0, Lcom/tutk/IOTC/Camera;

    invoke-direct {v0}, Lcom/tutk/IOTC/Camera;-><init>()V

    iput-object v0, p0, Lcom/easyview/tutk/TUTKCamera;->_tutk:Lcom/tutk/IOTC/Camera;

    .line 92
    return-void
.end method

.method public static IsValidID(Ljava/lang/String;)Z
    .locals 2
    .param p0, "id"    # Ljava/lang/String;

    .prologue
    .line 62
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x14

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 63
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static StartSearch(Lcom/easyview/basecamera/ICameraSearchListener;)V
    .locals 7
    .param p0, "listener"    # Lcom/easyview/basecamera/ICameraSearchListener;

    .prologue
    .line 46
    invoke-static {}, Lcom/tutk/IOTC/Camera;->SearchLAN()[Lcom/tutk/IOTC/st_LanSearchInfo;

    move-result-object v0

    .line 48
    .local v0, "arrResp":[Lcom/tutk/IOTC/st_LanSearchInfo;
    if-eqz v0, :cond_0

    array-length v3, v0

    if-lez v3, :cond_0

    .line 49
    array-length v4, v0

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v4, :cond_1

    .line 58
    :cond_0
    return-void

    .line 49
    :cond_1
    aget-object v2, v0, v3

    .line 50
    .local v2, "resp":Lcom/tutk/IOTC/st_LanSearchInfo;
    new-instance v1, Lcom/easyview/basecamera/CameraSearchInfo;

    invoke-direct {v1}, Lcom/easyview/basecamera/CameraSearchInfo;-><init>()V

    .line 51
    .local v1, "info":Lcom/easyview/basecamera/CameraSearchInfo;
    const/4 v5, 0x1

    iput v5, v1, Lcom/easyview/basecamera/CameraSearchInfo;->CameraType:I

    .line 52
    new-instance v5, Ljava/lang/String;

    iget-object v6, v2, Lcom/tutk/IOTC/st_LanSearchInfo;->UID:[B

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/easyview/basecamera/CameraSearchInfo;->ID:Ljava/lang/String;

    .line 53
    new-instance v5, Ljava/lang/String;

    iget-object v6, v2, Lcom/tutk/IOTC/st_LanSearchInfo;->IP:[B

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/easyview/basecamera/CameraSearchInfo;->IP:Ljava/lang/String;

    .line 54
    iget v5, v2, Lcom/tutk/IOTC/st_LanSearchInfo;->port:I

    iput v5, v1, Lcom/easyview/basecamera/CameraSearchInfo;->port:I

    .line 55
    if-eqz p0, :cond_2

    invoke-interface {p0, v1}, Lcom/easyview/basecamera/ICameraSearchListener;->OnSearch(Lcom/easyview/basecamera/CameraSearchInfo;)V

    .line 49
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/easyview/tutk/TUTKCamera;)Lcom/tutk/IOTC/Camera;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/easyview/tutk/TUTKCamera;->_tutk:Lcom/tutk/IOTC/Camera;

    return-object v0
.end method

.method public static init()V
    .locals 1

    .prologue
    .line 38
    sget v0, Lcom/easyview/tutk/TUTKCamera;->_init:I

    if-nez v0, :cond_0

    .line 40
    invoke-static {}, Lcom/tutk/IOTC/Camera;->init()I

    .line 41
    const/4 v0, 0x1

    sput v0, Lcom/easyview/tutk/TUTKCamera;->_init:I

    .line 43
    :cond_0
    return-void
.end method

.method private receiveQVConfig(Lstruct/StructUnpacker;Lcom/easyview/tutk/QVConfigRespondStruct;)V
    .locals 10
    .param p1, "up"    # Lstruct/StructUnpacker;
    .param p2, "respond"    # Lcom/easyview/tutk/QVConfigRespondStruct;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 350
    iget v6, p2, Lcom/easyview/tutk/QVConfigRespondStruct;->cmd:I

    sparse-switch v6, :sswitch_data_0

    .line 478
    :cond_0
    :goto_0
    return-void

    .line 355
    :sswitch_0
    :try_start_0
    iget-object v6, p0, Lcom/easyview/tutk/TUTKCamera;->_mdAlarm:Lcom/easyview/tutk/QVMDAlarmStruct;

    invoke-virtual {p1, v6}, Lstruct/StructUnpacker;->readObject(Ljava/lang/Object;)V

    .line 356
    new-instance v0, Lcom/easyview/bean/AlermBean;

    invoke-direct {v0}, Lcom/easyview/bean/AlermBean;-><init>()V

    .line 357
    .local v0, "bean":Lcom/easyview/bean/AlermBean;
    iget-object v6, p0, Lcom/easyview/tutk/TUTKCamera;->_mdAlarm:Lcom/easyview/tutk/QVMDAlarmStruct;

    iget-byte v6, v6, Lcom/easyview/tutk/QVMDAlarmStruct;->bEnable:B

    invoke-virtual {v0, v6}, Lcom/easyview/bean/AlermBean;->setMotion_armed(I)V

    .line 358
    iget-object v6, p0, Lcom/easyview/tutk/TUTKCamera;->_mdAlarm:Lcom/easyview/tutk/QVMDAlarmStruct;

    iget-byte v6, v6, Lcom/easyview/tutk/QVMDAlarmStruct;->bSendEmail:B

    invoke-virtual {v0, v6}, Lcom/easyview/bean/AlermBean;->setMail(I)V

    .line 359
    iget-object v6, p0, Lcom/easyview/tutk/TUTKCamera;->_mdAlarm:Lcom/easyview/tutk/QVMDAlarmStruct;

    iget-byte v6, v6, Lcom/easyview/tutk/QVMDAlarmStruct;->Sensitive:B

    invoke-virtual {v0, v6}, Lcom/easyview/bean/AlermBean;->setMotion_sensitivity(I)V

    .line 360
    iget-object v6, p0, Lcom/easyview/tutk/TUTKCamera;->_mdAlarm:Lcom/easyview/tutk/QVMDAlarmStruct;

    iget-object v6, v6, Lcom/easyview/tutk/QVMDAlarmStruct;->bRecord:[B

    const/4 v7, 0x0

    aget-byte v6, v6, v7

    invoke-virtual {v0, v6}, Lcom/easyview/bean/AlermBean;->setRecord(I)V

    .line 361
    iget-object v6, p0, Lcom/easyview/tutk/TUTKCamera;->_alarmParamListener:Lcom/easyview/basecamera/ICamera$IAlarmParamListener;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/easyview/tutk/TUTKCamera;->_alarmParamListener:Lcom/easyview/basecamera/ICamera$IAlarmParamListener;

    invoke-interface {v6, p0, v0}, Lcom/easyview/basecamera/ICamera$IAlarmParamListener;->OnAlarmParam(Lcom/easyview/basecamera/ICamera;Lcom/easyview/bean/AlermBean;)V
    :try_end_0
    .catch Lstruct/StructException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 362
    .end local v0    # "bean":Lcom/easyview/bean/AlermBean;
    :catch_0
    move-exception v1

    .line 363
    .local v1, "e":Lstruct/StructException;
    invoke-virtual {v1}, Lstruct/StructException;->printStackTrace()V

    goto :goto_0

    .line 391
    .end local v1    # "e":Lstruct/StructException;
    :sswitch_1
    iget v6, p2, Lcom/easyview/tutk/QVConfigRespondStruct;->datasize:I

    if-nez v6, :cond_1

    .line 393
    iput-boolean v8, p0, Lcom/easyview/tutk/TUTKCamera;->_setTimeZone:Z

    .line 394
    iget-object v6, p0, Lcom/easyview/tutk/TUTKCamera;->_tutk:Lcom/tutk/IOTC/Camera;

    const/16 v7, 0x3a0

    iget-object v8, p0, Lcom/easyview/tutk/TUTKCamera;->_comm_data:[B

    invoke-virtual {v6, v9, v7, v8}, Lcom/tutk/IOTC/Camera;->sendIOCtrl(II[B)V

    goto :goto_0

    .line 398
    :cond_1
    :try_start_1
    iget-object v6, p0, Lcom/easyview/tutk/TUTKCamera;->_serverTime:Lcom/easyview/tutk/QVDateTimeStruct;

    invoke-virtual {p1, v6}, Lstruct/StructUnpacker;->readObject(Ljava/lang/Object;)V

    .line 399
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/easyview/tutk/TUTKCamera;->_setTimeZone:Z

    .line 400
    iget-object v6, p0, Lcom/easyview/tutk/TUTKCamera;->_dateBean:Lcom/easyview/bean/DateBean;

    iget-object v7, p0, Lcom/easyview/tutk/TUTKCamera;->_serverTime:Lcom/easyview/tutk/QVDateTimeStruct;

    iget v7, v7, Lcom/easyview/tutk/QVDateTimeStruct;->utc_time:I

    invoke-virtual {v6, v7}, Lcom/easyview/bean/DateBean;->setNow(I)V

    .line 405
    iget-object v6, p0, Lcom/easyview/tutk/TUTKCamera;->_dateBean:Lcom/easyview/bean/DateBean;

    iget-object v7, p0, Lcom/easyview/tutk/TUTKCamera;->_serverTime:Lcom/easyview/tutk/QVDateTimeStruct;

    iget v7, v7, Lcom/easyview/tutk/QVDateTimeStruct;->timezone:I

    invoke-virtual {v6, v7}, Lcom/easyview/bean/DateBean;->setTz(I)V

    .line 406
    iget-object v6, p0, Lcom/easyview/tutk/TUTKCamera;->_respondListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/easyview/tutk/TUTKCamera;->_respondListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

    const v7, 0x10000133

    const/4 v8, 0x1

    invoke-interface {v6, p0, v7, v8}, Lcom/easyview/basecamera/ICamera$IRespondListener;->OnRespondResult(Lcom/easyview/basecamera/ICamera;II)V
    :try_end_1
    .catch Lstruct/StructException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 407
    :catch_1
    move-exception v1

    .line 408
    .restart local v1    # "e":Lstruct/StructException;
    invoke-virtual {v1}, Lstruct/StructException;->printStackTrace()V

    goto :goto_0

    .line 415
    .end local v1    # "e":Lstruct/StructException;
    :sswitch_2
    :try_start_2
    iget-object v6, p0, Lcom/easyview/tutk/TUTKCamera;->_mail:Lcom/easyview/tutk/QVMailStruct;

    invoke-virtual {p1, v6}, Lstruct/StructUnpacker;->readObject(Ljava/lang/Object;)V

    .line 416
    iget-object v6, p0, Lcom/easyview/tutk/TUTKCamera;->_mailBean:Lcom/easyview/bean/MailBean;

    iget-object v7, p0, Lcom/easyview/tutk/TUTKCamera;->_mail:Lcom/easyview/tutk/QVMailStruct;

    iget-object v7, v7, Lcom/easyview/tutk/QVMailStruct;->csEmailServer:Lstruct/CString;

    invoke-virtual {v7}, Lstruct/CString;->asCString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/easyview/bean/MailBean;->setSvr(Ljava/lang/String;)V

    .line 417
    iget-object v6, p0, Lcom/easyview/tutk/TUTKCamera;->_mailBean:Lcom/easyview/bean/MailBean;

    iget-object v7, p0, Lcom/easyview/tutk/TUTKCamera;->_mail:Lcom/easyview/tutk/QVMailStruct;

    iget-object v7, v7, Lcom/easyview/tutk/QVMailStruct;->csEmailFrom:Lstruct/CString;

    invoke-virtual {v7}, Lstruct/CString;->asCString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/easyview/bean/MailBean;->setSender(Ljava/lang/String;)V

    .line 418
    iget-object v6, p0, Lcom/easyview/tutk/TUTKCamera;->_mailBean:Lcom/easyview/bean/MailBean;

    iget-object v7, p0, Lcom/easyview/tutk/TUTKCamera;->_mail:Lcom/easyview/tutk/QVMailStruct;

    iget-object v7, v7, Lcom/easyview/tutk/QVMailStruct;->csEmailTo0:Lstruct/CString;

    invoke-virtual {v7}, Lstruct/CString;->asCString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/easyview/bean/MailBean;->setReceiver1(Ljava/lang/String;)V

    .line 419
    iget-object v6, p0, Lcom/easyview/tutk/TUTKCamera;->_mailBean:Lcom/easyview/bean/MailBean;

    iget-object v7, p0, Lcom/easyview/tutk/TUTKCamera;->_mail:Lcom/easyview/tutk/QVMailStruct;

    iget-object v7, v7, Lcom/easyview/tutk/QVMailStruct;->csEmailTo1:Lstruct/CString;

    invoke-virtual {v7}, Lstruct/CString;->asCString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/easyview/bean/MailBean;->setReceiver2(Ljava/lang/String;)V

    .line 420
    iget-object v6, p0, Lcom/easyview/tutk/TUTKCamera;->_mailBean:Lcom/easyview/bean/MailBean;

    iget-object v7, p0, Lcom/easyview/tutk/TUTKCamera;->_mail:Lcom/easyview/tutk/QVMailStruct;

    iget-object v7, v7, Lcom/easyview/tutk/QVMailStruct;->csEmailTo2:Lstruct/CString;

    invoke-virtual {v7}, Lstruct/CString;->asCString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/easyview/bean/MailBean;->setReceiver3(Ljava/lang/String;)V

    .line 421
    iget-object v6, p0, Lcom/easyview/tutk/TUTKCamera;->_mailBean:Lcom/easyview/bean/MailBean;

    iget-object v7, p0, Lcom/easyview/tutk/TUTKCamera;->_mail:Lcom/easyview/tutk/QVMailStruct;

    iget v7, v7, Lcom/easyview/tutk/QVMailStruct;->port:I

    invoke-virtual {v6, v7}, Lcom/easyview/bean/MailBean;->setPort(I)V

    .line 422
    iget-object v6, p0, Lcom/easyview/tutk/TUTKCamera;->_mailBean:Lcom/easyview/bean/MailBean;

    iget-object v7, p0, Lcom/easyview/tutk/TUTKCamera;->_mail:Lcom/easyview/tutk/QVMailStruct;

    iget-byte v7, v7, Lcom/easyview/tutk/QVMailStruct;->ssl:B

    invoke-virtual {v6, v7}, Lcom/easyview/bean/MailBean;->setSsl(I)V

    .line 423
    iget-object v6, p0, Lcom/easyview/tutk/TUTKCamera;->_mailBean:Lcom/easyview/bean/MailBean;

    iget-object v7, p0, Lcom/easyview/tutk/TUTKCamera;->_mail:Lcom/easyview/tutk/QVMailStruct;

    iget-byte v7, v7, Lcom/easyview/tutk/QVMailStruct;->logintype:B

    invoke-virtual {v6, v7}, Lcom/easyview/bean/MailBean;->setAuth(I)V

    .line 424
    iget-object v6, p0, Lcom/easyview/tutk/TUTKCamera;->_mailBean:Lcom/easyview/bean/MailBean;

    iget-object v7, p0, Lcom/easyview/tutk/TUTKCamera;->_mail:Lcom/easyview/tutk/QVMailStruct;

    iget-object v7, v7, Lcom/easyview/tutk/QVMailStruct;->csEmailFrom:Lstruct/CString;

    invoke-virtual {v7}, Lstruct/CString;->asCString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/easyview/bean/MailBean;->setUser(Ljava/lang/String;)V

    .line 425
    iget-object v6, p0, Lcom/easyview/tutk/TUTKCamera;->_mailBean:Lcom/easyview/bean/MailBean;

    iget-object v7, p0, Lcom/easyview/tutk/TUTKCamera;->_mail:Lcom/easyview/tutk/QVMailStruct;

    iget-object v7, v7, Lcom/easyview/tutk/QVMailStruct;->csEmailPass:Lstruct/CString;

    invoke-virtual {v7}, Lstruct/CString;->asCString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/easyview/bean/MailBean;->setPwd(Ljava/lang/String;)V

    .line 426
    iget-object v6, p0, Lcom/easyview/tutk/TUTKCamera;->_respondListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/easyview/tutk/TUTKCamera;->_respondListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

    const v7, 0x10000133

    const/4 v8, 0x1

    invoke-interface {v6, p0, v7, v8}, Lcom/easyview/basecamera/ICamera$IRespondListener;->OnRespondResult(Lcom/easyview/basecamera/ICamera;II)V
    :try_end_2
    .catch Lstruct/StructException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 427
    :catch_2
    move-exception v1

    .line 428
    .restart local v1    # "e":Lstruct/StructException;
    invoke-virtual {v1}, Lstruct/StructException;->printStackTrace()V

    goto/16 :goto_0

    .line 435
    .end local v1    # "e":Lstruct/StructException;
    :sswitch_3
    :try_start_3
    iget-object v6, p0, Lcom/easyview/tutk/TUTKCamera;->_diskState:Lcom/easyview/tutk/QVDiskStateStruct;

    invoke-virtual {p1, v6}, Lstruct/StructUnpacker;->readObject(Ljava/lang/Object;)V

    .line 436
    iget-object v6, p0, Lcom/easyview/tutk/TUTKCamera;->_diskState:Lcom/easyview/tutk/QVDiskStateStruct;

    const/4 v7, 0x1

    iput v7, v6, Lcom/easyview/tutk/QVDiskStateStruct;->load:I

    .line 437
    iget-object v6, p0, Lcom/easyview/tutk/TUTKCamera;->_diskState:Lcom/easyview/tutk/QVDiskStateStruct;

    iget-object v6, v6, Lcom/easyview/tutk/QVDiskStateStruct;->DISKFreeSize:[J

    const/4 v7, 0x0

    aget-wide v2, v6, v7

    .line 438
    .local v2, "free":J
    const-wide/32 v6, 0x100000

    div-long/2addr v2, v6

    .line 439
    iget-object v6, p0, Lcom/easyview/tutk/TUTKCamera;->_diskState:Lcom/easyview/tutk/QVDiskStateStruct;

    iget-object v6, v6, Lcom/easyview/tutk/QVDiskStateStruct;->DISKTotalSize:[J

    const/4 v7, 0x0

    aget-wide v4, v6, v7

    .line 440
    .local v4, "total":J
    const-wide/32 v6, 0x100000

    div-long/2addr v4, v6

    .line 441
    iget-object v6, p0, Lcom/easyview/tutk/TUTKCamera;->_sdcardBean:Lcom/easyview/bean/SdcardBean;

    long-to-int v7, v2

    invoke-virtual {v6, v7}, Lcom/easyview/bean/SdcardBean;->setSdfree(I)V

    .line 442
    iget-object v6, p0, Lcom/easyview/tutk/TUTKCamera;->_sdcardBean:Lcom/easyview/bean/SdcardBean;

    long-to-int v7, v4

    invoke-virtual {v6, v7}, Lcom/easyview/bean/SdcardBean;->setSdtotal(I)V

    .line 443
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-lez v6, :cond_2

    iget-object v6, p0, Lcom/easyview/tutk/TUTKCamera;->_sdcardBean:Lcom/easyview/bean/SdcardBean;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/easyview/bean/SdcardBean;->setRecord_sd_status(I)V

    .line 445
    :goto_1
    iget-object v6, p0, Lcom/easyview/tutk/TUTKCamera;->_record:Lcom/easyview/tutk/QVRecordStruct;

    iget v6, v6, Lcom/easyview/tutk/QVRecordStruct;->load:I

    if-ne v6, v8, :cond_0

    .line 447
    iget-object v6, p0, Lcom/easyview/tutk/TUTKCamera;->_respondListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/easyview/tutk/TUTKCamera;->_respondListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

    const v7, 0x10000016

    const/4 v8, 0x1

    invoke-interface {v6, p0, v7, v8}, Lcom/easyview/basecamera/ICamera$IRespondListener;->OnRespondResult(Lcom/easyview/basecamera/ICamera;II)V
    :try_end_3
    .catch Lstruct/StructException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    .line 449
    .end local v2    # "free":J
    .end local v4    # "total":J
    :catch_3
    move-exception v1

    .line 450
    .restart local v1    # "e":Lstruct/StructException;
    invoke-virtual {v1}, Lstruct/StructException;->printStackTrace()V

    goto/16 :goto_0

    .line 444
    .end local v1    # "e":Lstruct/StructException;
    .restart local v2    # "free":J
    .restart local v4    # "total":J
    :cond_2
    :try_start_4
    iget-object v6, p0, Lcom/easyview/tutk/TUTKCamera;->_sdcardBean:Lcom/easyview/bean/SdcardBean;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/easyview/bean/SdcardBean;->setRecord_sd_status(I)V
    :try_end_4
    .catch Lstruct/StructException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_1

    .line 457
    .end local v2    # "free":J
    .end local v4    # "total":J
    :sswitch_4
    :try_start_5
    iget-object v6, p0, Lcom/easyview/tutk/TUTKCamera;->_record:Lcom/easyview/tutk/QVRecordStruct;

    invoke-virtual {p1, v6}, Lstruct/StructUnpacker;->readObject(Ljava/lang/Object;)V

    .line 458
    iget-object v6, p0, Lcom/easyview/tutk/TUTKCamera;->_record:Lcom/easyview/tutk/QVRecordStruct;

    const/4 v7, 0x1

    iput v7, v6, Lcom/easyview/tutk/QVRecordStruct;->load:I

    .line 459
    iget-object v6, p0, Lcom/easyview/tutk/TUTKCamera;->_sdcardBean:Lcom/easyview/bean/SdcardBean;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/easyview/bean/SdcardBean;->setRecord_conver_enable(I)V

    .line 460
    iget-object v6, p0, Lcom/easyview/tutk/TUTKCamera;->_sdcardBean:Lcom/easyview/bean/SdcardBean;

    iget-object v7, p0, Lcom/easyview/tutk/TUTKCamera;->_record:Lcom/easyview/tutk/QVRecordStruct;

    iget-byte v7, v7, Lcom/easyview/tutk/QVRecordStruct;->enable:B

    invoke-virtual {v6, v7}, Lcom/easyview/bean/SdcardBean;->setRecord_time_enable(I)V

    .line 462
    iget-object v6, p0, Lcom/easyview/tutk/TUTKCamera;->_sdcardBean:Lcom/easyview/bean/SdcardBean;

    iget-object v7, p0, Lcom/easyview/tutk/TUTKCamera;->_record:Lcom/easyview/tutk/QVRecordStruct;

    iget-byte v7, v7, Lcom/easyview/tutk/QVRecordStruct;->PackTime:B

    invoke-virtual {v6, v7}, Lcom/easyview/bean/SdcardBean;->setRecord_timer(I)V

    .line 463
    iget-object v6, p0, Lcom/easyview/tutk/TUTKCamera;->_diskState:Lcom/easyview/tutk/QVDiskStateStruct;

    iget v6, v6, Lcom/easyview/tutk/QVDiskStateStruct;->load:I

    if-ne v6, v8, :cond_0

    .line 465
    iget-object v6, p0, Lcom/easyview/tutk/TUTKCamera;->_respondListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/easyview/tutk/TUTKCamera;->_respondListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

    const v7, 0x10000011

    const/4 v8, 0x1

    invoke-interface {v6, p0, v7, v8}, Lcom/easyview/basecamera/ICamera$IRespondListener;->OnRespondResult(Lcom/easyview/basecamera/ICamera;II)V
    :try_end_5
    .catch Lstruct/StructException; {:try_start_5 .. :try_end_5} :catch_4

    goto/16 :goto_0

    .line 467
    :catch_4
    move-exception v1

    .line 468
    .restart local v1    # "e":Lstruct/StructException;
    invoke-virtual {v1}, Lstruct/StructException;->printStackTrace()V

    goto/16 :goto_0

    .line 474
    .end local v1    # "e":Lstruct/StructException;
    :sswitch_5
    iget-object v6, p0, Lcom/easyview/tutk/TUTKCamera;->_respondListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/easyview/tutk/TUTKCamera;->_respondListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

    const/16 v7, 0x200

    invoke-interface {v6, p0, v7, v8}, Lcom/easyview/basecamera/ICamera$IRespondListener;->OnRespondResult(Lcom/easyview/basecamera/ICamera;II)V

    goto/16 :goto_0

    .line 350
    nop

    :sswitch_data_0
    .sparse-switch
        0x200 -> :sswitch_5
        0x10000011 -> :sswitch_4
        0x10000016 -> :sswitch_3
        0x10000018 -> :sswitch_0
        0x10000025 -> :sswitch_2
        0x10000133 -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public RequestParams(Lcom/easyview/basecamera/ICamera$IRespondListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/easyview/basecamera/ICamera$IRespondListener;

    .prologue
    .line 1019
    return-void
.end method

.method public Start()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 96
    iget-object v0, p0, Lcom/easyview/tutk/TUTKCamera;->_tutk:Lcom/tutk/IOTC/Camera;

    invoke-virtual {v0}, Lcom/tutk/IOTC/Camera;->disconnect()V

    .line 97
    iget-object v0, p0, Lcom/easyview/tutk/TUTKCamera;->_tutk:Lcom/tutk/IOTC/Camera;

    invoke-virtual {v0, p0}, Lcom/tutk/IOTC/Camera;->registerIOTCListener(Lcom/tutk/IOTC/IRegisterIOTCListener;)Z

    .line 98
    iget-object v0, p0, Lcom/easyview/tutk/TUTKCamera;->_tutk:Lcom/tutk/IOTC/Camera;

    invoke-virtual {p0}, Lcom/easyview/tutk/TUTKCamera;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tutk/IOTC/Camera;->connect(Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/easyview/tutk/TUTKCamera;->_tutk:Lcom/tutk/IOTC/Camera;

    invoke-virtual {p0}, Lcom/easyview/tutk/TUTKCamera;->getUser()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/easyview/tutk/TUTKCamera;->getPwd()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v1, v2}, Lcom/tutk/IOTC/Camera;->start(ILjava/lang/String;Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/easyview/tutk/TUTKCamera;->_tutk:Lcom/tutk/IOTC/Camera;

    .line 101
    const/16 v1, 0x328

    .line 102
    invoke-static {}, Lcom/tutk/IOTC/AVIOCTRLDEFs$SMsgAVIoctrlGetSupportStreamReq;->parseContent()[B

    move-result-object v2

    .line 100
    invoke-virtual {v0, v3, v1, v2}, Lcom/tutk/IOTC/Camera;->sendIOCtrl(II[B)V

    .line 103
    iget-object v0, p0, Lcom/easyview/tutk/TUTKCamera;->_tutk:Lcom/tutk/IOTC/Camera;

    .line 104
    const/16 v1, 0x330

    .line 105
    invoke-static {}, Lcom/tutk/IOTC/AVIOCTRLDEFs$SMsgAVIoctrlDeviceInfoReq;->parseContent()[B

    move-result-object v2

    .line 103
    invoke-virtual {v0, v3, v1, v2}, Lcom/tutk/IOTC/Camera;->sendIOCtrl(II[B)V

    .line 106
    iget-object v0, p0, Lcom/easyview/tutk/TUTKCamera;->_tutk:Lcom/tutk/IOTC/Camera;

    .line 107
    const/16 v1, 0x32a

    .line 109
    invoke-static {}, Lcom/tutk/IOTC/AVIOCTRLDEFs$SMsgAVIoctrlGetAudioOutFormatReq;->parseContent()[B

    move-result-object v2

    .line 106
    invoke-virtual {v0, v3, v1, v2}, Lcom/tutk/IOTC/Camera;->sendIOCtrl(II[B)V

    .line 111
    return-void
.end method

.method public StartAudio()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 490
    iget-object v0, p0, Lcom/easyview/tutk/TUTKCamera;->_tutk:Lcom/tutk/IOTC/Camera;

    invoke-virtual {v0, v1, v1}, Lcom/tutk/IOTC/Camera;->SetMute(IZ)V

    .line 491
    iget-object v0, p0, Lcom/easyview/tutk/TUTKCamera;->_tutk:Lcom/tutk/IOTC/Camera;

    invoke-virtual {v0, v1}, Lcom/tutk/IOTC/Camera;->startListening(I)V

    .line 493
    return-void
.end method

.method public StartTalk()V
    .locals 2

    .prologue
    .line 502
    iget-object v0, p0, Lcom/easyview/tutk/TUTKCamera;->_tutk:Lcom/tutk/IOTC/Camera;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tutk/IOTC/Camera;->startSpeaking(I)V

    .line 503
    return-void
.end method

.method public StartVideo(Lcom/easyview/basecamera/ICamera$IDataListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/easyview/basecamera/ICamera$IDataListener;

    .prologue
    .line 481
    iget-object v0, p0, Lcom/easyview/tutk/TUTKCamera;->_tutk:Lcom/tutk/IOTC/Camera;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tutk/IOTC/Camera;->startShow(I)V

    .line 482
    return-void
.end method

.method public StartVideoYUV(Lcom/easyview/basecamera/ICamera$IYUVDataListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/easyview/basecamera/ICamera$IYUVDataListener;

    .prologue
    .line 1098
    return-void
.end method

.method public Stop()V
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/easyview/tutk/TUTKCamera;->_tutk:Lcom/tutk/IOTC/Camera;

    invoke-virtual {v0}, Lcom/tutk/IOTC/Camera;->disconnect()V

    .line 116
    return-void
.end method

.method public StopAudio()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 496
    iget-object v0, p0, Lcom/easyview/tutk/TUTKCamera;->_tutk:Lcom/tutk/IOTC/Camera;

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/tutk/IOTC/Camera;->SetMute(IZ)V

    .line 497
    iget-object v0, p0, Lcom/easyview/tutk/TUTKCamera;->_tutk:Lcom/tutk/IOTC/Camera;

    invoke-virtual {v0, v2}, Lcom/tutk/IOTC/Camera;->stopListening(I)V

    .line 499
    return-void
.end method

.method public StopTalk()V
    .locals 2

    .prologue
    .line 511
    iget-object v0, p0, Lcom/easyview/tutk/TUTKCamera;->_tutk:Lcom/tutk/IOTC/Camera;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tutk/IOTC/Camera;->stopSpeaking(I)V

    .line 512
    return-void
.end method

.method public StopVideo()V
    .locals 2

    .prologue
    .line 485
    iget-object v0, p0, Lcom/easyview/tutk/TUTKCamera;->_tutk:Lcom/tutk/IOTC/Camera;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tutk/IOTC/Camera;->stopShow(I)V

    .line 486
    return-void
.end method

.method public TalkAudioData([BI)V
    .locals 0
    .param p1, "data"    # [B
    .param p2, "len"    # I

    .prologue
    .line 508
    return-void
.end method

.method public clearListener()V
    .locals 0

    .prologue
    .line 994
    return-void
.end method

.method public delEvents([ILcom/easyview/basecamera/ICamera$IRespondListener;)V
    .locals 0
    .param p1, "data"    # [I
    .param p2, "listener"    # Lcom/easyview/basecamera/ICamera$IRespondListener;

    .prologue
    .line 974
    return-void
.end method

.method public downRecord(IILcom/easyview/basecamera/ICamera$IDownloadListener;)V
    .locals 0
    .param p1, "utc_time"    # I
    .param p2, "offset"    # I
    .param p3, "listener"    # Lcom/easyview/basecamera/ICamera$IDownloadListener;

    .prologue
    .line 904
    return-void
.end method

.method public enablePairing(Lcom/easyview/basecamera/ICamera$IRespondListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/easyview/basecamera/ICamera$IRespondListener;

    .prologue
    .line 979
    return-void
.end method

.method public formatTF(Lcom/easyview/basecamera/ICamera$IRespondListener;)V
    .locals 7
    .param p1, "listener"    # Lcom/easyview/basecamera/ICamera$IRespondListener;

    .prologue
    const/4 v5, 0x0

    .line 767
    iget-object v3, p0, Lcom/easyview/tutk/TUTKCamera;->_tutk:Lcom/tutk/IOTC/Camera;

    if-eqz v3, :cond_0

    .line 768
    iput-object p1, p0, Lcom/easyview/tutk/TUTKCamera;->_respondListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

    .line 770
    new-instance v1, Lstruct/StructPacker;

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {v1, v3}, Lstruct/StructPacker;-><init>(Ljava/nio/ByteOrder;)V

    .line 771
    .local v1, "packer":Lstruct/StructPacker;
    iget-object v3, p0, Lcom/easyview/tutk/TUTKCamera;->_qvConfig:Lcom/easyview/tutk/QVConfigStruct;

    const/16 v4, 0x200

    iput v4, v3, Lcom/easyview/tutk/QVConfigStruct;->cmd:I

    .line 772
    iget-object v3, p0, Lcom/easyview/tutk/TUTKCamera;->_qvConfig:Lcom/easyview/tutk/QVConfigStruct;

    sget v4, Lcom/easyview/tutk/QVTFOperationStruct;->struct_size:I

    iput v4, v3, Lcom/easyview/tutk/QVConfigStruct;->datasize:I

    .line 773
    new-instance v2, Lcom/easyview/tutk/QVTFOperationStruct;

    invoke-direct {v2}, Lcom/easyview/tutk/QVTFOperationStruct;-><init>()V

    .line 775
    .local v2, "s":Lcom/easyview/tutk/QVTFOperationStruct;
    sget v3, Lcom/easyview/tutk/QVTFOperationStruct;->struct_size:I

    iput v3, v2, Lcom/easyview/tutk/QVTFOperationStruct;->dwSize:I

    .line 776
    iput v5, v2, Lcom/easyview/tutk/QVTFOperationStruct;->chn:I

    .line 777
    const/4 v3, 0x3

    iput-byte v3, v2, Lcom/easyview/tutk/QVTFOperationStruct;->opt:B

    .line 779
    :try_start_0
    iget-object v3, p0, Lcom/easyview/tutk/TUTKCamera;->_qvConfig:Lcom/easyview/tutk/QVConfigStruct;

    invoke-virtual {v1, v3}, Lstruct/StructPacker;->writeObject(Ljava/lang/Object;)V

    .line 780
    invoke-virtual {v1, v2}, Lstruct/StructPacker;->writeObject(Ljava/lang/Object;)V

    .line 781
    iget-object v3, p0, Lcom/easyview/tutk/TUTKCamera;->_tutk:Lcom/tutk/IOTC/Camera;

    const/4 v4, 0x0

    const v5, -0xfffafc

    invoke-virtual {v1}, Lstruct/StructPacker;->toArray()[B

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/tutk/IOTC/Camera;->sendIOCtrl(II[B)V
    :try_end_0
    .catch Lstruct/StructException; {:try_start_0 .. :try_end_0} :catch_0

    .line 787
    .end local v1    # "packer":Lstruct/StructPacker;
    .end local v2    # "s":Lcom/easyview/tutk/QVTFOperationStruct;
    :cond_0
    :goto_0
    return-void

    .line 782
    .restart local v1    # "packer":Lstruct/StructPacker;
    .restart local v2    # "s":Lcom/easyview/tutk/QVTFOperationStruct;
    :catch_0
    move-exception v0

    .line 783
    .local v0, "e":Lstruct/StructException;
    invoke-virtual {v0}, Lstruct/StructException;->printStackTrace()V

    goto :goto_0
.end method

.method public getAlarmParam(Lcom/easyview/basecamera/ICamera$IAlarmParamListener;)V
    .locals 6
    .param p1, "listener"    # Lcom/easyview/basecamera/ICamera$IAlarmParamListener;

    .prologue
    .line 562
    iget-object v2, p0, Lcom/easyview/tutk/TUTKCamera;->_tutk:Lcom/tutk/IOTC/Camera;

    if-eqz v2, :cond_0

    .line 563
    iput-object p1, p0, Lcom/easyview/tutk/TUTKCamera;->_alarmParamListener:Lcom/easyview/basecamera/ICamera$IAlarmParamListener;

    .line 564
    new-instance v1, Lstruct/StructPacker;

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {v1, v2}, Lstruct/StructPacker;-><init>(Ljava/nio/ByteOrder;)V

    .line 565
    .local v1, "packer":Lstruct/StructPacker;
    iget-object v2, p0, Lcom/easyview/tutk/TUTKCamera;->_qvConfig:Lcom/easyview/tutk/QVConfigStruct;

    const v3, 0x10000018

    iput v3, v2, Lcom/easyview/tutk/QVConfigStruct;->cmd:I

    .line 567
    :try_start_0
    iget-object v2, p0, Lcom/easyview/tutk/TUTKCamera;->_qvConfig:Lcom/easyview/tutk/QVConfigStruct;

    sget v3, Lcom/easyview/tutk/QVMDAlarmStruct;->struct_size:I

    iput v3, v2, Lcom/easyview/tutk/QVConfigStruct;->datasize:I

    .line 568
    iget-object v2, p0, Lcom/easyview/tutk/TUTKCamera;->_tutk:Lcom/tutk/IOTC/Camera;

    const/4 v3, 0x0

    const v4, -0xfffafe

    iget-object v5, p0, Lcom/easyview/tutk/TUTKCamera;->_qvConfig:Lcom/easyview/tutk/QVConfigStruct;

    invoke-virtual {v1, v5}, Lstruct/StructPacker;->pack(Ljava/lang/Object;)[B

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/tutk/IOTC/Camera;->sendIOCtrl(II[B)V
    :try_end_0
    .catch Lstruct/StructException; {:try_start_0 .. :try_end_0} :catch_0

    .line 574
    .end local v1    # "packer":Lstruct/StructPacker;
    :cond_0
    :goto_0
    return-void

    .line 569
    .restart local v1    # "packer":Lstruct/StructPacker;
    :catch_0
    move-exception v0

    .line 570
    .local v0, "e":Lstruct/StructException;
    invoke-virtual {v0}, Lstruct/StructException;->printStackTrace()V

    goto :goto_0
.end method

.method public getBrightness()I
    .locals 1

    .prologue
    .line 1028
    const/4 v0, 0x0

    return v0
.end method

.method public getCaps(Lcom/easyview/basecamera/ICamera$IRespondListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/easyview/basecamera/ICamera$IRespondListener;

    .prologue
    .line 899
    return-void
.end method

.method public getContrast()I
    .locals 1

    .prologue
    .line 1033
    const/4 v0, 0x0

    return v0
.end method

.method public getDefaultWiFiName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1052
    const/4 v0, 0x0

    return-object v0
.end method

.method public getExtThres(Lcom/easyview/basecamera/ICamera$IRespondListener;)V
    .locals 4
    .param p1, "listener"    # Lcom/easyview/basecamera/ICamera$IRespondListener;

    .prologue
    .line 943
    iput-object p1, p0, Lcom/easyview/tutk/TUTKCamera;->_extThresListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

    .line 944
    iget-object v0, p0, Lcom/easyview/tutk/TUTKCamera;->_tutk:Lcom/tutk/IOTC/Camera;

    const/4 v1, 0x0

    const v2, -0xfffab6

    iget-object v3, p0, Lcom/easyview/tutk/TUTKCamera;->_comm_data:[B

    invoke-virtual {v0, v1, v2, v3}, Lcom/tutk/IOTC/Camera;->sendIOCtrl(II[B)V

    .line 945
    return-void
.end method

.method public getMailParam(Lcom/easyview/bean/MailBean;Lcom/easyview/basecamera/ICamera$IRespondListener;)V
    .locals 6
    .param p1, "bean"    # Lcom/easyview/bean/MailBean;
    .param p2, "listener"    # Lcom/easyview/basecamera/ICamera$IRespondListener;

    .prologue
    .line 664
    iget-object v2, p0, Lcom/easyview/tutk/TUTKCamera;->_tutk:Lcom/tutk/IOTC/Camera;

    if-eqz v2, :cond_0

    .line 665
    iput-object p2, p0, Lcom/easyview/tutk/TUTKCamera;->_respondListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

    .line 666
    iput-object p1, p0, Lcom/easyview/tutk/TUTKCamera;->_mailBean:Lcom/easyview/bean/MailBean;

    .line 667
    new-instance v1, Lstruct/StructPacker;

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {v1, v2}, Lstruct/StructPacker;-><init>(Ljava/nio/ByteOrder;)V

    .line 668
    .local v1, "packer":Lstruct/StructPacker;
    iget-object v2, p0, Lcom/easyview/tutk/TUTKCamera;->_qvConfig:Lcom/easyview/tutk/QVConfigStruct;

    const v3, 0x10000025

    iput v3, v2, Lcom/easyview/tutk/QVConfigStruct;->cmd:I

    .line 670
    :try_start_0
    iget-object v2, p0, Lcom/easyview/tutk/TUTKCamera;->_qvConfig:Lcom/easyview/tutk/QVConfigStruct;

    sget v3, Lcom/easyview/tutk/QVMailStruct;->struct_size:I

    iput v3, v2, Lcom/easyview/tutk/QVConfigStruct;->datasize:I

    .line 671
    iget-object v2, p0, Lcom/easyview/tutk/TUTKCamera;->_tutk:Lcom/tutk/IOTC/Camera;

    const/4 v3, 0x0

    const v4, -0xfffafe

    iget-object v5, p0, Lcom/easyview/tutk/TUTKCamera;->_qvConfig:Lcom/easyview/tutk/QVConfigStruct;

    invoke-virtual {v1, v5}, Lstruct/StructPacker;->pack(Ljava/lang/Object;)[B

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/tutk/IOTC/Camera;->sendIOCtrl(II[B)V
    :try_end_0
    .catch Lstruct/StructException; {:try_start_0 .. :try_end_0} :catch_0

    .line 677
    .end local v1    # "packer":Lstruct/StructPacker;
    :cond_0
    :goto_0
    return-void

    .line 672
    .restart local v1    # "packer":Lstruct/StructPacker;
    :catch_0
    move-exception v0

    .line 673
    .local v0, "e":Lstruct/StructException;
    invoke-virtual {v0}, Lstruct/StructException;->printStackTrace()V

    goto :goto_0
.end method

.method public getRotate()I
    .locals 1

    .prologue
    .line 1043
    const/4 v0, 0x0

    return v0
.end method

.method public getShowOSD()I
    .locals 1

    .prologue
    .line 1038
    const/4 v0, 0x0

    return v0
.end method

.method public getStoreParam(Lcom/easyview/bean/SdcardBean;Lcom/easyview/basecamera/ICamera$IRespondListener;)V
    .locals 6
    .param p1, "bean"    # Lcom/easyview/bean/SdcardBean;
    .param p2, "listener"    # Lcom/easyview/basecamera/ICamera$IRespondListener;

    .prologue
    const/4 v3, 0x0

    .line 707
    iget-object v2, p0, Lcom/easyview/tutk/TUTKCamera;->_tutk:Lcom/tutk/IOTC/Camera;

    if-eqz v2, :cond_0

    .line 708
    iput-object p2, p0, Lcom/easyview/tutk/TUTKCamera;->_respondListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

    .line 709
    iget-object v2, p0, Lcom/easyview/tutk/TUTKCamera;->_diskState:Lcom/easyview/tutk/QVDiskStateStruct;

    iput v3, v2, Lcom/easyview/tutk/QVDiskStateStruct;->load:I

    .line 710
    iget-object v2, p0, Lcom/easyview/tutk/TUTKCamera;->_record:Lcom/easyview/tutk/QVRecordStruct;

    iput v3, v2, Lcom/easyview/tutk/QVRecordStruct;->load:I

    .line 712
    iput-object p1, p0, Lcom/easyview/tutk/TUTKCamera;->_sdcardBean:Lcom/easyview/bean/SdcardBean;

    .line 714
    new-instance v1, Lstruct/StructPacker;

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {v1, v2}, Lstruct/StructPacker;-><init>(Ljava/nio/ByteOrder;)V

    .line 715
    .local v1, "packer":Lstruct/StructPacker;
    iget-object v2, p0, Lcom/easyview/tutk/TUTKCamera;->_qvConfig:Lcom/easyview/tutk/QVConfigStruct;

    const v3, 0x10000016

    iput v3, v2, Lcom/easyview/tutk/QVConfigStruct;->cmd:I

    .line 717
    :try_start_0
    iget-object v2, p0, Lcom/easyview/tutk/TUTKCamera;->_qvConfig:Lcom/easyview/tutk/QVConfigStruct;

    sget v3, Lcom/easyview/tutk/QVDiskStateStruct;->struct_size:I

    iput v3, v2, Lcom/easyview/tutk/QVConfigStruct;->datasize:I

    .line 718
    iget-object v2, p0, Lcom/easyview/tutk/TUTKCamera;->_tutk:Lcom/tutk/IOTC/Camera;

    const/4 v3, 0x0

    const v4, -0xfffafe

    iget-object v5, p0, Lcom/easyview/tutk/TUTKCamera;->_qvConfig:Lcom/easyview/tutk/QVConfigStruct;

    invoke-virtual {v1, v5}, Lstruct/StructPacker;->pack(Ljava/lang/Object;)[B

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/tutk/IOTC/Camera;->sendIOCtrl(II[B)V
    :try_end_0
    .catch Lstruct/StructException; {:try_start_0 .. :try_end_0} :catch_0

    .line 725
    :goto_0
    new-instance v1, Lstruct/StructPacker;

    .end local v1    # "packer":Lstruct/StructPacker;
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {v1, v2}, Lstruct/StructPacker;-><init>(Ljava/nio/ByteOrder;)V

    .line 726
    .restart local v1    # "packer":Lstruct/StructPacker;
    iget-object v2, p0, Lcom/easyview/tutk/TUTKCamera;->_qvConfig:Lcom/easyview/tutk/QVConfigStruct;

    const v3, 0x10000011

    iput v3, v2, Lcom/easyview/tutk/QVConfigStruct;->cmd:I

    .line 728
    :try_start_1
    iget-object v2, p0, Lcom/easyview/tutk/TUTKCamera;->_qvConfig:Lcom/easyview/tutk/QVConfigStruct;

    sget v3, Lcom/easyview/tutk/QVRecordStruct;->struct_size:I

    iput v3, v2, Lcom/easyview/tutk/QVConfigStruct;->datasize:I

    .line 729
    iget-object v2, p0, Lcom/easyview/tutk/TUTKCamera;->_tutk:Lcom/tutk/IOTC/Camera;

    const/4 v3, 0x0

    const v4, -0xfffafe

    iget-object v5, p0, Lcom/easyview/tutk/TUTKCamera;->_qvConfig:Lcom/easyview/tutk/QVConfigStruct;

    invoke-virtual {v1, v5}, Lstruct/StructPacker;->pack(Ljava/lang/Object;)[B

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/tutk/IOTC/Camera;->sendIOCtrl(II[B)V
    :try_end_1
    .catch Lstruct/StructException; {:try_start_1 .. :try_end_1} :catch_1

    .line 736
    .end local v1    # "packer":Lstruct/StructPacker;
    :cond_0
    :goto_1
    return-void

    .line 719
    .restart local v1    # "packer":Lstruct/StructPacker;
    :catch_0
    move-exception v0

    .line 720
    .local v0, "e":Lstruct/StructException;
    invoke-virtual {v0}, Lstruct/StructException;->printStackTrace()V

    goto :goto_0

    .line 730
    .end local v0    # "e":Lstruct/StructException;
    :catch_1
    move-exception v0

    .line 731
    .restart local v0    # "e":Lstruct/StructException;
    invoke-virtual {v0}, Lstruct/StructException;->printStackTrace()V

    goto :goto_1
.end method

.method public getTimeParam(Lcom/easyview/bean/DateBean;Lcom/easyview/basecamera/ICamera$IRespondListener;)V
    .locals 6
    .param p1, "bean"    # Lcom/easyview/bean/DateBean;
    .param p2, "listener"    # Lcom/easyview/basecamera/ICamera$IRespondListener;

    .prologue
    .line 599
    iget-object v2, p0, Lcom/easyview/tutk/TUTKCamera;->_tutk:Lcom/tutk/IOTC/Camera;

    if-eqz v2, :cond_0

    .line 600
    iput-object p2, p0, Lcom/easyview/tutk/TUTKCamera;->_respondListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

    .line 601
    iput-object p1, p0, Lcom/easyview/tutk/TUTKCamera;->_dateBean:Lcom/easyview/bean/DateBean;

    .line 602
    new-instance v1, Lstruct/StructPacker;

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {v1, v2}, Lstruct/StructPacker;-><init>(Ljava/nio/ByteOrder;)V

    .line 603
    .local v1, "packer":Lstruct/StructPacker;
    iget-object v2, p0, Lcom/easyview/tutk/TUTKCamera;->_qvConfig:Lcom/easyview/tutk/QVConfigStruct;

    const v3, 0x10000133

    iput v3, v2, Lcom/easyview/tutk/QVConfigStruct;->cmd:I

    .line 605
    :try_start_0
    iget-object v2, p0, Lcom/easyview/tutk/TUTKCamera;->_qvConfig:Lcom/easyview/tutk/QVConfigStruct;

    sget v3, Lcom/easyview/tutk/QVDateTimeStruct;->struct_size:I

    iput v3, v2, Lcom/easyview/tutk/QVConfigStruct;->datasize:I

    .line 606
    iget-object v2, p0, Lcom/easyview/tutk/TUTKCamera;->_tutk:Lcom/tutk/IOTC/Camera;

    const/4 v3, 0x0

    const v4, -0xfffafe

    iget-object v5, p0, Lcom/easyview/tutk/TUTKCamera;->_qvConfig:Lcom/easyview/tutk/QVConfigStruct;

    invoke-virtual {v1, v5}, Lstruct/StructPacker;->pack(Ljava/lang/Object;)[B

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/tutk/IOTC/Camera;->sendIOCtrl(II[B)V
    :try_end_0
    .catch Lstruct/StructException; {:try_start_0 .. :try_end_0} :catch_0

    .line 611
    .end local v1    # "packer":Lstruct/StructPacker;
    :cond_0
    :goto_0
    return-void

    .line 607
    .restart local v1    # "packer":Lstruct/StructPacker;
    :catch_0
    move-exception v0

    .line 608
    .local v0, "e":Lstruct/StructException;
    invoke-virtual {v0}, Lstruct/StructException;->printStackTrace()V

    goto :goto_0
.end method

.method public getWiFiName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1048
    const/4 v0, 0x0

    return-object v0
.end method

.method public getWifiParam(Lcom/easyview/bean/WifiBean;Lcom/easyview/basecamera/ICamera$IRespondListener;)V
    .locals 4
    .param p1, "bean"    # Lcom/easyview/bean/WifiBean;
    .param p2, "listener"    # Lcom/easyview/basecamera/ICamera$IRespondListener;

    .prologue
    .line 515
    iget-object v0, p0, Lcom/easyview/tutk/TUTKCamera;->_tutk:Lcom/tutk/IOTC/Camera;

    if-eqz v0, :cond_0

    .line 516
    iput-object p1, p0, Lcom/easyview/tutk/TUTKCamera;->_wifiBean:Lcom/easyview/bean/WifiBean;

    .line 517
    iput-object p2, p0, Lcom/easyview/tutk/TUTKCamera;->_respondListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

    .line 518
    iget-object v0, p0, Lcom/easyview/tutk/TUTKCamera;->_tutk:Lcom/tutk/IOTC/Camera;

    const/4 v1, 0x0

    const/16 v2, 0x344

    iget-object v3, p0, Lcom/easyview/tutk/TUTKCamera;->_comm_data:[B

    invoke-virtual {v0, v1, v2, v3}, Lcom/tutk/IOTC/Camera;->sendIOCtrl(II[B)V

    .line 520
    :cond_0
    return-void
.end method

.method public playMusic(ILcom/easyview/basecamera/ICamera$IRespondListener;)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "listener"    # Lcom/easyview/basecamera/ICamera$IRespondListener;

    .prologue
    const/4 v3, 0x0

    .line 962
    iget-object v0, p0, Lcom/easyview/tutk/TUTKCamera;->_comm_data:[B

    const/4 v1, 0x1

    aput-byte v1, v0, v3

    .line 963
    iget-object v0, p0, Lcom/easyview/tutk/TUTKCamera;->_tutk:Lcom/tutk/IOTC/Camera;

    const v1, -0xfffad7

    iget-object v2, p0, Lcom/easyview/tutk/TUTKCamera;->_comm_data:[B

    invoke-virtual {v0, v3, v1, v2}, Lcom/tutk/IOTC/Camera;->sendIOCtrl(II[B)V

    .line 964
    return-void
.end method

.method public ptzControl(I)V
    .locals 8
    .param p1, "command"    # I

    .prologue
    .line 809
    iget-object v4, p0, Lcom/easyview/tutk/TUTKCamera;->_tutk:Lcom/tutk/IOTC/Camera;

    if-eqz v4, :cond_0

    .line 810
    const/4 v2, 0x1

    .line 811
    .local v2, "ptz":I
    packed-switch p1, :pswitch_data_0

    .line 818
    :goto_0
    :pswitch_0
    new-instance v1, Lstruct/StructPacker;

    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {v1, v4}, Lstruct/StructPacker;-><init>(Ljava/nio/ByteOrder;)V

    .line 819
    .local v1, "packer":Lstruct/StructPacker;
    new-instance v3, Lcom/easyview/tutk/PTZControlStruct;

    invoke-direct {v3}, Lcom/easyview/tutk/PTZControlStruct;-><init>()V

    .line 820
    .local v3, "s":Lcom/easyview/tutk/PTZControlStruct;
    int-to-byte v4, v2

    iput-byte v4, v3, Lcom/easyview/tutk/PTZControlStruct;->control:B

    .line 821
    const/16 v4, 0x8

    iput-byte v4, v3, Lcom/easyview/tutk/PTZControlStruct;->speed:B

    .line 823
    :try_start_0
    invoke-virtual {v1, v3}, Lstruct/StructPacker;->writeObject(Ljava/lang/Object;)V

    .line 824
    iget-object v4, p0, Lcom/easyview/tutk/TUTKCamera;->_tutk:Lcom/tutk/IOTC/Camera;

    const/4 v5, 0x0

    const/16 v6, 0x1001

    invoke-virtual {v1}, Lstruct/StructPacker;->toArray()[B

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/tutk/IOTC/Camera;->sendIOCtrl(II[B)V
    :try_end_0
    .catch Lstruct/StructException; {:try_start_0 .. :try_end_0} :catch_0

    .line 828
    :goto_1
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    new-instance v5, Lcom/easyview/tutk/TUTKCamera$1;

    invoke-direct {v5, p0}, Lcom/easyview/tutk/TUTKCamera$1;-><init>(Lcom/easyview/tutk/TUTKCamera;)V

    .line 842
    const-wide/16 v6, 0x5dc

    .line 828
    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 844
    .end local v1    # "packer":Lstruct/StructPacker;
    .end local v2    # "ptz":I
    .end local v3    # "s":Lcom/easyview/tutk/PTZControlStruct;
    :cond_0
    return-void

    .line 813
    .restart local v2    # "ptz":I
    :pswitch_1
    const/4 v2, 0x1

    goto :goto_0

    .line 814
    :pswitch_2
    const/4 v2, 0x2

    goto :goto_0

    .line 815
    :pswitch_3
    const/4 v2, 0x6

    goto :goto_0

    .line 816
    :pswitch_4
    const/4 v2, 0x3

    goto :goto_0

    .line 825
    .restart local v1    # "packer":Lstruct/StructPacker;
    .restart local v3    # "s":Lcom/easyview/tutk/PTZControlStruct;
    :catch_0
    move-exception v0

    .line 826
    .local v0, "e":Lstruct/StructException;
    invoke-virtual {v0}, Lstruct/StructException;->printStackTrace()V

    goto :goto_1

    .line 811
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public queryDeviceInfo(Lcom/easyview/basecamera/ICamera$IRespondListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/easyview/basecamera/ICamera$IRespondListener;

    .prologue
    .line 1083
    return-void
.end method

.method public queryEvent(ILjava/lang/String;Lcom/easyview/basecamera/ICamera$IRespondListener;)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "pathName"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/easyview/basecamera/ICamera$IRespondListener;

    .prologue
    .line 1063
    return-void
.end method

.method public queryEventInfo(Lcom/easyview/basecamera/ICamera$IRespondListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/easyview/basecamera/ICamera$IRespondListener;

    .prologue
    .line 989
    return-void
.end method

.method public queryEventList(IILcom/easyview/basecamera/ICamera$IRespondListener;)V
    .locals 0
    .param p1, "beginIndex"    # I
    .param p2, "endIndex"    # I
    .param p3, "listener"    # Lcom/easyview/basecamera/ICamera$IRespondListener;

    .prologue
    .line 1058
    return-void
.end method

.method public queryLightValue(Lcom/easyview/basecamera/ICamera$IRespondListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/easyview/basecamera/ICamera$IRespondListener;

    .prologue
    .line 1108
    return-void
.end method

.method public queryWifiResult(Lcom/easyview/basecamera/ICamera$IRespondListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/easyview/basecamera/ICamera$IRespondListener;

    .prologue
    .line 920
    return-void
.end method

.method public querystorageState(Lcom/easyview/basecamera/ICamera$IRespondListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/easyview/basecamera/ICamera$IRespondListener;

    .prologue
    .line 763
    return-void
.end method

.method public receiveChannelInfo(Lcom/tutk/IOTC/Camera;II)V
    .locals 0
    .param p1, "camera"    # Lcom/tutk/IOTC/Camera;
    .param p2, "avChannel"    # I
    .param p3, "resultCode"    # I

    .prologue
    .line 170
    invoke-virtual {p0, p3}, Lcom/easyview/tutk/TUTKCamera;->OnParam(I)V

    .line 171
    return-void
.end method

.method public receiveFrameData(Lcom/tutk/IOTC/Camera;ILandroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "camera"    # Lcom/tutk/IOTC/Camera;
    .param p2, "avChannel"    # I
    .param p3, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 146
    return-void
.end method

.method public receiveFrameInfo(Lcom/tutk/IOTC/Camera;IJIIII)V
    .locals 0
    .param p1, "camera"    # Lcom/tutk/IOTC/Camera;
    .param p2, "avChannel"    # I
    .param p3, "bitRate"    # J
    .param p5, "frameRate"    # I
    .param p6, "onlineNm"    # I
    .param p7, "frameCount"    # I
    .param p8, "incompleteFrameCount"    # I

    .prologue
    .line 161
    return-void
.end method

.method public receiveIOCtrlData(Lcom/tutk/IOTC/Camera;II[B)V
    .locals 15
    .param p1, "camera"    # Lcom/tutk/IOTC/Camera;
    .param p2, "avChannel"    # I
    .param p3, "avIOCtrlMsgType"    # I
    .param p4, "data"    # [B

    .prologue
    .line 176
    new-instance v14, Lstruct/StructUnpacker;

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    move-object/from16 v0, p4

    invoke-direct {v14, v0, v1}, Lstruct/StructUnpacker;-><init>([BLjava/nio/ByteOrder;)V

    .line 177
    .local v14, "up":Lstruct/StructUnpacker;
    sparse-switch p3, :sswitch_data_0

    .line 347
    :cond_0
    :goto_0
    return-void

    .line 181
    :sswitch_0
    new-instance v12, Lcom/easyview/tutk/WifiParamStruct;

    invoke-direct {v12}, Lcom/easyview/tutk/WifiParamStruct;-><init>()V

    .line 183
    .local v12, "s":Lcom/easyview/tutk/WifiParamStruct;
    :try_start_0
    invoke-virtual {v14, v12}, Lstruct/StructUnpacker;->readObject(Ljava/lang/Object;)V

    .line 184
    iget-object v1, p0, Lcom/easyview/tutk/TUTKCamera;->_wifiBean:Lcom/easyview/bean/WifiBean;

    iget-byte v2, v12, Lcom/easyview/tutk/WifiParamStruct;->enctype:B

    invoke-virtual {v1, v2}, Lcom/easyview/bean/WifiBean;->setAuthtype(I)V

    .line 185
    iget-object v1, p0, Lcom/easyview/tutk/TUTKCamera;->_wifiBean:Lcom/easyview/bean/WifiBean;

    iget-object v2, v12, Lcom/easyview/tutk/WifiParamStruct;->ssid:Lstruct/CString;

    invoke-virtual {v2}, Lstruct/CString;->asCString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/easyview/bean/WifiBean;->setSsid(Ljava/lang/String;)V

    .line 186
    iget-object v1, p0, Lcom/easyview/tutk/TUTKCamera;->_wifiBean:Lcom/easyview/bean/WifiBean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/easyview/bean/WifiBean;->setEnable(I)V

    .line 187
    iget-object v1, p0, Lcom/easyview/tutk/TUTKCamera;->_respondListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/easyview/tutk/TUTKCamera;->_respondListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

    const/4 v2, 0x1

    move/from16 v0, p3

    invoke-interface {v1, p0, v0, v2}, Lcom/easyview/basecamera/ICamera$IRespondListener;->OnRespondResult(Lcom/easyview/basecamera/ICamera;II)V
    :try_end_0
    .catch Lstruct/StructException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 188
    :catch_0
    move-exception v9

    .line 189
    .local v9, "e":Lstruct/StructException;
    invoke-virtual {v9}, Lstruct/StructException;->printStackTrace()V

    goto :goto_0

    .line 195
    .end local v9    # "e":Lstruct/StructException;
    .end local v12    # "s":Lcom/easyview/tutk/WifiParamStruct;
    :sswitch_1
    new-instance v12, Lcom/easyview/tutk/WifiAPListStruct;

    invoke-direct {v12}, Lcom/easyview/tutk/WifiAPListStruct;-><init>()V

    .line 196
    .local v12, "s":Lcom/easyview/tutk/WifiAPListStruct;
    invoke-virtual {v12, v14}, Lcom/easyview/tutk/WifiAPListStruct;->read(Lstruct/StructUnpacker;)V

    .line 197
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    iget v1, v12, Lcom/easyview/tutk/WifiAPListStruct;->count:I

    if-lt v11, v1, :cond_1

    .line 205
    iget-object v1, p0, Lcom/easyview/tutk/TUTKCamera;->_wifiScanListener:Lcom/easyview/basecamera/ICamera$IWifiScanListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/easyview/tutk/TUTKCamera;->_wifiScanListener:Lcom/easyview/basecamera/ICamera$IWifiScanListener;

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Lcom/easyview/basecamera/ICamera$IWifiScanListener;->OnScanResult(Lcom/easyview/basecamera/ICamera;Lcom/easyview/bean/WifiScanBean;)V

    goto :goto_0

    .line 199
    :cond_1
    new-instance v8, Lcom/easyview/bean/WifiScanBean;

    invoke-direct {v8}, Lcom/easyview/bean/WifiScanBean;-><init>()V

    .line 200
    .local v8, "bean":Lcom/easyview/bean/WifiScanBean;
    iget-object v1, v12, Lcom/easyview/tutk/WifiAPListStruct;->list:[Lcom/easyview/tutk/WifiAPStruct;

    aget-object v1, v1, v11

    iget-byte v1, v1, Lcom/easyview/tutk/WifiAPStruct;->enctype:B

    invoke-virtual {v8, v1}, Lcom/easyview/bean/WifiScanBean;->setSecurity(I)V

    .line 201
    iget-object v1, v12, Lcom/easyview/tutk/WifiAPListStruct;->list:[Lcom/easyview/tutk/WifiAPStruct;

    aget-object v1, v1, v11

    iget-object v1, v1, Lcom/easyview/tutk/WifiAPStruct;->ssid:Lstruct/CString;

    invoke-virtual {v1}, Lstruct/CString;->asCString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/easyview/bean/WifiScanBean;->setSsid(Ljava/lang/String;)V

    .line 202
    iget-object v1, v12, Lcom/easyview/tutk/WifiAPListStruct;->list:[Lcom/easyview/tutk/WifiAPStruct;

    aget-object v1, v1, v11

    iget-byte v1, v1, Lcom/easyview/tutk/WifiAPStruct;->signal:B

    invoke-virtual {v8, v1}, Lcom/easyview/bean/WifiScanBean;->setDbm0(I)V

    .line 203
    iget-object v1, p0, Lcom/easyview/tutk/TUTKCamera;->_wifiScanListener:Lcom/easyview/basecamera/ICamera$IWifiScanListener;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/easyview/tutk/TUTKCamera;->_wifiScanListener:Lcom/easyview/basecamera/ICamera$IWifiScanListener;

    invoke-interface {v1, p0, v8}, Lcom/easyview/basecamera/ICamera$IWifiScanListener;->OnScanResult(Lcom/easyview/basecamera/ICamera;Lcom/easyview/bean/WifiScanBean;)V

    .line 197
    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 211
    .end local v8    # "bean":Lcom/easyview/bean/WifiScanBean;
    .end local v11    # "i":I
    .end local v12    # "s":Lcom/easyview/tutk/WifiAPListStruct;
    :sswitch_2
    new-instance v12, Lcom/easyview/tutk/SimpleRespondStruct;

    invoke-direct {v12}, Lcom/easyview/tutk/SimpleRespondStruct;-><init>()V

    .line 213
    .local v12, "s":Lcom/easyview/tutk/SimpleRespondStruct;
    :try_start_1
    invoke-virtual {v14, v12}, Lstruct/StructUnpacker;->readObject(Ljava/lang/Object;)V

    .line 214
    iget-object v1, p0, Lcom/easyview/tutk/TUTKCamera;->_respondListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/easyview/tutk/TUTKCamera;->_respondListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

    iget v2, v12, Lcom/easyview/tutk/SimpleRespondStruct;->result:I

    rsub-int/lit8 v2, v2, 0x1

    move/from16 v0, p3

    invoke-interface {v1, p0, v0, v2}, Lcom/easyview/basecamera/ICamera$IRespondListener;->OnRespondResult(Lcom/easyview/basecamera/ICamera;II)V
    :try_end_1
    .catch Lstruct/StructException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 215
    :catch_1
    move-exception v9

    .line 216
    .restart local v9    # "e":Lstruct/StructException;
    invoke-virtual {v9}, Lstruct/StructException;->printStackTrace()V

    goto/16 :goto_0

    .line 222
    .end local v9    # "e":Lstruct/StructException;
    .end local v12    # "s":Lcom/easyview/tutk/SimpleRespondStruct;
    :sswitch_3
    iget-object v1, p0, Lcom/easyview/tutk/TUTKCamera;->_eventList:Lcom/easyview/tutk/EventListStruct;

    invoke-virtual {v1, v14}, Lcom/easyview/tutk/EventListStruct;->read(Lstruct/StructUnpacker;)I

    .line 223
    iget-object v1, p0, Lcom/easyview/tutk/TUTKCamera;->_eventList:Lcom/easyview/tutk/EventListStruct;

    iget-byte v1, v1, Lcom/easyview/tutk/EventListStruct;->endflag:B

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 225
    iget-object v1, p0, Lcom/easyview/tutk/TUTKCamera;->_respondListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/easyview/tutk/TUTKCamera;->_respondListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

    const/16 v2, 0x200

    const/4 v3, 0x1

    invoke-interface {v1, p0, v2, v3}, Lcom/easyview/basecamera/ICamera$IRespondListener;->OnRespondResult(Lcom/easyview/basecamera/ICamera;II)V

    goto/16 :goto_0

    .line 231
    :sswitch_4
    new-instance v12, Lcom/easyview/tutk/RecordControlRespondStruct;

    invoke-direct {v12}, Lcom/easyview/tutk/RecordControlRespondStruct;-><init>()V

    .line 233
    .local v12, "s":Lcom/easyview/tutk/RecordControlRespondStruct;
    :try_start_2
    invoke-virtual {v14, v12}, Lstruct/StructUnpacker;->readObject(Ljava/lang/Object;)V

    .line 234
    iget v1, v12, Lcom/easyview/tutk/RecordControlRespondStruct;->command:I

    const/16 v2, 0x10

    if-ne v1, v2, :cond_0

    .line 236
    iget-object v1, p0, Lcom/easyview/tutk/TUTKCamera;->_tutk:Lcom/tutk/IOTC/Camera;

    iget v2, v12, Lcom/easyview/tutk/RecordControlRespondStruct;->result:I

    invoke-virtual {p0}, Lcom/easyview/tutk/TUTKCamera;->getUser()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/easyview/tutk/TUTKCamera;->getPwd()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/tutk/IOTC/Camera;->start(ILjava/lang/String;Ljava/lang/String;)V

    .line 237
    iget-object v1, p0, Lcom/easyview/tutk/TUTKCamera;->_tutk:Lcom/tutk/IOTC/Camera;

    iget v2, v12, Lcom/easyview/tutk/RecordControlRespondStruct;->result:I

    invoke-virtual {v1, v2}, Lcom/tutk/IOTC/Camera;->startShow(I)V
    :try_end_2
    .catch Lstruct/StructException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 239
    :catch_2
    move-exception v9

    .line 240
    .restart local v9    # "e":Lstruct/StructException;
    invoke-virtual {v9}, Lstruct/StructException;->printStackTrace()V

    goto/16 :goto_0

    .line 247
    .end local v9    # "e":Lstruct/StructException;
    .end local v12    # "s":Lcom/easyview/tutk/RecordControlRespondStruct;
    :sswitch_5
    new-instance v12, Lcom/easyview/tutk/EventReportStruct;

    invoke-direct {v12}, Lcom/easyview/tutk/EventReportStruct;-><init>()V

    .line 249
    .local v12, "s":Lcom/easyview/tutk/EventReportStruct;
    :try_start_3
    invoke-virtual {v14, v12}, Lstruct/StructUnpacker;->readObject(Ljava/lang/Object;)V

    .line 250
    new-instance v10, Lcom/easyview/struct/EVCommandDefs$Event;

    invoke-direct {v10}, Lcom/easyview/struct/EVCommandDefs$Event;-><init>()V

    .line 251
    .local v10, "event":Lcom/easyview/struct/EVCommandDefs$Event;
    iget v1, v12, Lcom/easyview/tutk/EventReportStruct;->event:I

    int-to-short v1, v1

    iput-short v1, v10, Lcom/easyview/struct/EVCommandDefs$Event;->event_type:S

    .line 252
    iget v1, v12, Lcom/easyview/tutk/EventReportStruct;->time:I

    iput v1, v10, Lcom/easyview/struct/EVCommandDefs$Event;->event_time:I

    .line 253
    iget v1, v12, Lcom/easyview/tutk/EventReportStruct;->value:I

    iput v1, v10, Lcom/easyview/struct/EVCommandDefs$Event;->value:I

    .line 255
    invoke-static {}, Lobject/p2pipcam/utils/Pub;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/easyview/table/EventTable;->getInstance(Landroid/content/Context;)Lcom/easyview/table/EventTable;

    move-result-object v1

    invoke-virtual {p0}, Lcom/easyview/tutk/TUTKCamera;->getID()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/easyview/tutk/TUTKCamera;->_eventFileID:I

    iget v4, v10, Lcom/easyview/struct/EVCommandDefs$Event;->index:I

    iget-short v5, v10, Lcom/easyview/struct/EVCommandDefs$Event;->event_type:S

    iget v6, v12, Lcom/easyview/tutk/EventReportStruct;->time:I

    iget v7, v12, Lcom/easyview/tutk/EventReportStruct;->value:I

    invoke-virtual/range {v1 .. v7}, Lcom/easyview/table/EventTable;->Save(Ljava/lang/String;IIIII)J

    .line 256
    invoke-static {}, Lobject/p2pipcam/utils/Pub;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-short v2, v10, Lcom/easyview/struct/EVCommandDefs$Event;->event_type:S

    iget v3, v10, Lcom/easyview/struct/EVCommandDefs$Event;->value:I

    iget v4, v10, Lcom/easyview/struct/EVCommandDefs$Event;->event_time:I

    invoke-static {v1, p0, v2, v3, v4}, Lobject/p2pipcam/utils/Pub;->showNotification(Landroid/content/Context;Lcom/easyview/basecamera/BaseCamera;III)I

    .line 257
    iget v1, v12, Lcom/easyview/tutk/EventReportStruct;->event:I

    invoke-virtual {p0, v1}, Lcom/easyview/tutk/TUTKCamera;->OnAlarm(I)V
    :try_end_3
    .catch Lstruct/StructException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    .line 258
    .end local v10    # "event":Lcom/easyview/struct/EVCommandDefs$Event;
    :catch_3
    move-exception v9

    .line 259
    .restart local v9    # "e":Lstruct/StructException;
    invoke-virtual {v9}, Lstruct/StructException;->printStackTrace()V

    goto/16 :goto_0

    .line 265
    .end local v9    # "e":Lstruct/StructException;
    .end local v12    # "s":Lcom/easyview/tutk/EventReportStruct;
    :sswitch_6
    new-instance v13, Lcom/easyview/tutk/TimeZoneStruct;

    invoke-direct {v13}, Lcom/easyview/tutk/TimeZoneStruct;-><init>()V

    .line 267
    .local v13, "tz":Lcom/easyview/tutk/TimeZoneStruct;
    :try_start_4
    invoke-virtual {v14, v13}, Lstruct/StructUnpacker;->readObject(Ljava/lang/Object;)V

    .line 268
    iget-object v1, p0, Lcom/easyview/tutk/TUTKCamera;->_dateBean:Lcom/easyview/bean/DateBean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/easyview/bean/DateBean;->setNow(I)V

    .line 269
    iget-object v1, p0, Lcom/easyview/tutk/TUTKCamera;->_dateBean:Lcom/easyview/bean/DateBean;

    iget v2, v13, Lcom/easyview/tutk/TimeZoneStruct;->nGMTDiff:I

    mul-int/lit8 v2, v2, 0x3c

    invoke-virtual {v1, v2}, Lcom/easyview/bean/DateBean;->setTz(I)V

    .line 270
    iget-object v1, p0, Lcom/easyview/tutk/TUTKCamera;->_respondListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/easyview/tutk/TUTKCamera;->_respondListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

    const v2, 0x10000133

    const/4 v3, 0x1

    invoke-interface {v1, p0, v2, v3}, Lcom/easyview/basecamera/ICamera$IRespondListener;->OnRespondResult(Lcom/easyview/basecamera/ICamera;II)V
    :try_end_4
    .catch Lstruct/StructException; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_0

    .line 271
    :catch_4
    move-exception v9

    .line 272
    .restart local v9    # "e":Lstruct/StructException;
    invoke-virtual {v9}, Lstruct/StructException;->printStackTrace()V

    goto/16 :goto_0

    .line 279
    .end local v9    # "e":Lstruct/StructException;
    .end local v13    # "tz":Lcom/easyview/tutk/TimeZoneStruct;
    :sswitch_7
    iget-object v1, p0, Lcom/easyview/tutk/TUTKCamera;->_respondListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/easyview/tutk/TUTKCamera;->_respondListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

    const v2, 0x10000133

    const/4 v3, 0x1

    invoke-interface {v1, p0, v2, v3}, Lcom/easyview/basecamera/ICamera$IRespondListener;->OnRespondResult(Lcom/easyview/basecamera/ICamera;II)V

    goto/16 :goto_0

    .line 284
    :sswitch_8
    new-instance v12, Lcom/easyview/tutk/QVConfigRespondStruct;

    invoke-direct {v12}, Lcom/easyview/tutk/QVConfigRespondStruct;-><init>()V

    .line 286
    .local v12, "s":Lcom/easyview/tutk/QVConfigRespondStruct;
    :try_start_5
    invoke-virtual {v14, v12}, Lstruct/StructUnpacker;->readObject(Ljava/lang/Object;)V

    .line 287
    invoke-direct {p0, v14, v12}, Lcom/easyview/tutk/TUTKCamera;->receiveQVConfig(Lstruct/StructUnpacker;Lcom/easyview/tutk/QVConfigRespondStruct;)V
    :try_end_5
    .catch Lstruct/StructException; {:try_start_5 .. :try_end_5} :catch_5

    goto/16 :goto_0

    .line 288
    :catch_5
    move-exception v9

    .line 289
    .restart local v9    # "e":Lstruct/StructException;
    invoke-virtual {v9}, Lstruct/StructException;->printStackTrace()V

    goto/16 :goto_0

    .line 295
    .end local v9    # "e":Lstruct/StructException;
    .end local v12    # "s":Lcom/easyview/tutk/QVConfigRespondStruct;
    :sswitch_9
    new-instance v12, Lcom/easyview/tutk/QVConfigRespondStruct;

    invoke-direct {v12}, Lcom/easyview/tutk/QVConfigRespondStruct;-><init>()V

    .line 297
    .restart local v12    # "s":Lcom/easyview/tutk/QVConfigRespondStruct;
    :try_start_6
    invoke-virtual {v14, v12}, Lstruct/StructUnpacker;->readObject(Ljava/lang/Object;)V

    .line 298
    iget-object v1, p0, Lcom/easyview/tutk/TUTKCamera;->_respondListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/easyview/tutk/TUTKCamera;->_respondListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

    iget v2, v12, Lcom/easyview/tutk/QVConfigRespondStruct;->cmd:I

    iget v3, v12, Lcom/easyview/tutk/QVConfigRespondStruct;->result:I

    rsub-int/lit8 v3, v3, 0x1

    invoke-interface {v1, p0, v2, v3}, Lcom/easyview/basecamera/ICamera$IRespondListener;->OnRespondResult(Lcom/easyview/basecamera/ICamera;II)V
    :try_end_6
    .catch Lstruct/StructException; {:try_start_6 .. :try_end_6} :catch_6

    goto/16 :goto_0

    .line 299
    :catch_6
    move-exception v9

    .line 300
    .restart local v9    # "e":Lstruct/StructException;
    invoke-virtual {v9}, Lstruct/StructException;->printStackTrace()V

    goto/16 :goto_0

    .line 307
    .end local v9    # "e":Lstruct/StructException;
    .end local v12    # "s":Lcom/easyview/tutk/QVConfigRespondStruct;
    :sswitch_a
    :try_start_7
    iget-object v1, p0, Lcom/easyview/tutk/TUTKCamera;->_extInfo:Lcom/easyview/struct/EVCommandDefs$ExtInfos;

    invoke-virtual {v14, v1}, Lstruct/StructUnpacker;->readObject(Ljava/lang/Object;)V

    .line 308
    const/16 v1, 0x10

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/easyview/tutk/TUTKCamera;->OnCustom(II)V
    :try_end_7
    .catch Lstruct/StructException; {:try_start_7 .. :try_end_7} :catch_7

    goto/16 :goto_0

    .line 309
    :catch_7
    move-exception v9

    .line 310
    .restart local v9    # "e":Lstruct/StructException;
    invoke-virtual {v9}, Lstruct/StructException;->printStackTrace()V

    goto/16 :goto_0

    .line 317
    .end local v9    # "e":Lstruct/StructException;
    :sswitch_b
    :try_start_8
    iget-object v1, p0, Lcom/easyview/tutk/TUTKCamera;->_extThres:Lcom/easyview/struct/EVCommandDefs$ExtThresholds;

    invoke-virtual {v14, v1}, Lstruct/StructUnpacker;->readObject(Ljava/lang/Object;)V

    .line 318
    iget-object v1, p0, Lcom/easyview/tutk/TUTKCamera;->_extThresListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/easyview/tutk/TUTKCamera;->_extThresListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

    const/16 v2, 0x117

    const/4 v3, 0x0

    invoke-interface {v1, p0, v2, v3}, Lcom/easyview/basecamera/ICamera$IRespondListener;->OnRespondResult(Lcom/easyview/basecamera/ICamera;II)V
    :try_end_8
    .catch Lstruct/StructException; {:try_start_8 .. :try_end_8} :catch_8

    goto/16 :goto_0

    .line 319
    :catch_8
    move-exception v9

    .line 320
    .restart local v9    # "e":Lstruct/StructException;
    invoke-virtual {v9}, Lstruct/StructException;->printStackTrace()V

    goto/16 :goto_0

    .line 326
    .end local v9    # "e":Lstruct/StructException;
    :sswitch_c
    new-instance v12, Lcom/easyview/tutk/SimpleRespondStruct;

    invoke-direct {v12}, Lcom/easyview/tutk/SimpleRespondStruct;-><init>()V

    .line 328
    .local v12, "s":Lcom/easyview/tutk/SimpleRespondStruct;
    :try_start_9
    invoke-virtual {v14, v12}, Lstruct/StructUnpacker;->readObject(Ljava/lang/Object;)V

    .line 329
    iget-object v1, p0, Lcom/easyview/tutk/TUTKCamera;->_extSetThresListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/easyview/tutk/TUTKCamera;->_extSetThresListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

    const/16 v2, 0x118

    iget v3, v12, Lcom/easyview/tutk/SimpleRespondStruct;->result:I

    invoke-interface {v1, p0, v2, v3}, Lcom/easyview/basecamera/ICamera$IRespondListener;->OnRespondResult(Lcom/easyview/basecamera/ICamera;II)V
    :try_end_9
    .catch Lstruct/StructException; {:try_start_9 .. :try_end_9} :catch_9

    goto/16 :goto_0

    .line 330
    :catch_9
    move-exception v9

    .line 331
    .restart local v9    # "e":Lstruct/StructException;
    invoke-virtual {v9}, Lstruct/StructException;->printStackTrace()V

    goto/16 :goto_0

    .line 337
    .end local v9    # "e":Lstruct/StructException;
    .end local v12    # "s":Lcom/easyview/tutk/SimpleRespondStruct;
    :sswitch_d
    new-instance v12, Lcom/easyview/tutk/SimpleRespondStruct;

    invoke-direct {v12}, Lcom/easyview/tutk/SimpleRespondStruct;-><init>()V

    .line 339
    .restart local v12    # "s":Lcom/easyview/tutk/SimpleRespondStruct;
    :try_start_a
    invoke-virtual {v14, v12}, Lstruct/StructUnpacker;->readObject(Ljava/lang/Object;)V
    :try_end_a
    .catch Lstruct/StructException; {:try_start_a .. :try_end_a} :catch_a

    goto/16 :goto_0

    .line 341
    :catch_a
    move-exception v9

    .line 342
    .restart local v9    # "e":Lstruct/StructException;
    invoke-virtual {v9}, Lstruct/StructException;->printStackTrace()V

    goto/16 :goto_0

    .line 177
    nop

    :sswitch_data_0
    .sparse-switch
        -0xfffafd -> :sswitch_8
        -0xfffafb -> :sswitch_9
        -0xfffae1 -> :sswitch_7
        -0xfffad0 -> :sswitch_d
        -0xfffab7 -> :sswitch_a
        -0xfffab5 -> :sswitch_b
        -0xfffab3 -> :sswitch_c
        0x319 -> :sswitch_3
        0x31b -> :sswitch_4
        0x333 -> :sswitch_2
        0x341 -> :sswitch_1
        0x343 -> :sswitch_2
        0x345 -> :sswitch_0
        0x3a1 -> :sswitch_6
        0x1fff -> :sswitch_5
    .end sparse-switch
.end method

.method public receiveOriginalFrameData(Lcom/tutk/IOTC/Camera;I[BI[BI)V
    .locals 9
    .param p1, "camera"    # Lcom/tutk/IOTC/Camera;
    .param p2, "avChannel"    # I
    .param p3, "framehead"    # [B
    .param p4, "headlen"    # I
    .param p5, "data"    # [B
    .param p6, "dataLen"    # I

    .prologue
    const/4 v8, 0x1

    .line 123
    const v7, 0x151800

    new-array v6, v7, [B

    .line 124
    .local v6, "yuvbuff":[B
    const/4 v7, 0x2

    new-array v4, v7, [I

    .line 125
    .local v4, "wAndh":[I
    invoke-static {p5, v8, v6, p6, v4}, Lobject/p2pipcam/nativecaller/NativeCaller;->DecodeH264Frame([BI[BI[I)I

    move-result v1

    .line 126
    .local v1, "result":I
    if-lez v1, :cond_0

    .line 128
    const/4 v7, 0x0

    aget v5, v4, v7

    .line 129
    .local v5, "width":I
    aget v7, v4, v8

    .line 133
    .end local v5    # "width":I
    :cond_0
    new-instance v3, Lstruct/StructUnpacker;

    sget-object v7, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {v3, p3, v7}, Lstruct/StructUnpacker;-><init>([BLjava/nio/ByteOrder;)V

    .line 134
    .local v3, "up":Lstruct/StructUnpacker;
    new-instance v2, Lcom/easyview/tutk/FrameInfoStruct;

    invoke-direct {v2}, Lcom/easyview/tutk/FrameInfoStruct;-><init>()V

    .line 136
    .local v2, "s":Lcom/easyview/tutk/FrameInfoStruct;
    :try_start_0
    invoke-virtual {v3, v2}, Lstruct/StructUnpacker;->readObject(Ljava/lang/Object;)V

    .line 138
    iget-byte v7, v2, Lcom/easyview/tutk/FrameInfoStruct;->flags:B

    invoke-virtual {p0, p5, p6, v7}, Lcom/easyview/tutk/TUTKCamera;->OnH264Data([BII)V
    :try_end_0
    .catch Lstruct/StructException; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    :goto_0
    return-void

    .line 139
    :catch_0
    move-exception v0

    .line 140
    .local v0, "e":Lstruct/StructException;
    invoke-virtual {v0}, Lstruct/StructException;->printStackTrace()V

    goto :goto_0
.end method

.method public receiveRGBData(Lcom/tutk/IOTC/Camera;I[BII)V
    .locals 0
    .param p1, "camera"    # Lcom/tutk/IOTC/Camera;
    .param p2, "avChannel"    # I
    .param p3, "RGBData"    # [B
    .param p4, "nWidth"    # I
    .param p5, "nHeight"    # I

    .prologue
    .line 153
    return-void
.end method

.method public receiveSessionInfo(Lcom/tutk/IOTC/Camera;I)V
    .locals 0
    .param p1, "camera"    # Lcom/tutk/IOTC/Camera;
    .param p2, "resultCode"    # I

    .prologue
    .line 165
    invoke-virtual {p0, p2}, Lcom/easyview/tutk/TUTKCamera;->OnParam(I)V

    .line 166
    return-void
.end method

.method public recordPlay(Ljava/lang/String;)V
    .locals 7
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 865
    iget-object v3, p0, Lcom/easyview/tutk/TUTKCamera;->_tutk:Lcom/tutk/IOTC/Camera;

    if-eqz v3, :cond_0

    .line 866
    new-instance v1, Lstruct/StructPacker;

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {v1, v3}, Lstruct/StructPacker;-><init>(Ljava/nio/ByteOrder;)V

    .line 867
    .local v1, "packer":Lstruct/StructPacker;
    new-instance v2, Lcom/easyview/tutk/RecordControlStruct;

    invoke-direct {v2}, Lcom/easyview/tutk/RecordControlStruct;-><init>()V

    .line 868
    .local v2, "s":Lcom/easyview/tutk/RecordControlStruct;
    iput v4, v2, Lcom/easyview/tutk/RecordControlStruct;->channel:I

    .line 869
    const/16 v3, 0x10

    iput v3, v2, Lcom/easyview/tutk/RecordControlStruct;->command:I

    .line 870
    iget-object v3, v2, Lcom/easyview/tutk/RecordControlStruct;->stTimeDay:Lcom/easyview/tutk/DateTimeStruct;

    invoke-virtual {v3, p1}, Lcom/easyview/tutk/DateTimeStruct;->parse(Ljava/lang/String;)V

    .line 872
    :try_start_0
    invoke-virtual {v1, v2}, Lstruct/StructPacker;->writeObject(Ljava/lang/Object;)V

    .line 873
    iget-object v3, p0, Lcom/easyview/tutk/TUTKCamera;->_tutk:Lcom/tutk/IOTC/Camera;

    const/4 v4, 0x0

    const/16 v5, 0x31a

    invoke-virtual {v1}, Lstruct/StructPacker;->toArray()[B

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/tutk/IOTC/Camera;->sendIOCtrl(II[B)V
    :try_end_0
    .catch Lstruct/StructException; {:try_start_0 .. :try_end_0} :catch_0

    .line 878
    .end local v1    # "packer":Lstruct/StructPacker;
    .end local v2    # "s":Lcom/easyview/tutk/RecordControlStruct;
    :cond_0
    :goto_0
    return-void

    .line 874
    .restart local v1    # "packer":Lstruct/StructPacker;
    .restart local v2    # "s":Lcom/easyview/tutk/RecordControlStruct;
    :catch_0
    move-exception v0

    .line 875
    .local v0, "e":Lstruct/StructException;
    invoke-virtual {v0}, Lstruct/StructException;->printStackTrace()V

    goto :goto_0
.end method

.method public recordStop()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 881
    iget-object v3, p0, Lcom/easyview/tutk/TUTKCamera;->_tutk:Lcom/tutk/IOTC/Camera;

    if-eqz v3, :cond_0

    .line 882
    new-instance v1, Lstruct/StructPacker;

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {v1, v3}, Lstruct/StructPacker;-><init>(Ljava/nio/ByteOrder;)V

    .line 883
    .local v1, "packer":Lstruct/StructPacker;
    new-instance v2, Lcom/easyview/tutk/RecordControlStruct;

    invoke-direct {v2}, Lcom/easyview/tutk/RecordControlStruct;-><init>()V

    .line 884
    .local v2, "s":Lcom/easyview/tutk/RecordControlStruct;
    iput v4, v2, Lcom/easyview/tutk/RecordControlStruct;->channel:I

    .line 885
    const/4 v3, 0x1

    iput v3, v2, Lcom/easyview/tutk/RecordControlStruct;->command:I

    .line 887
    :try_start_0
    invoke-virtual {v1, v2}, Lstruct/StructPacker;->writeObject(Ljava/lang/Object;)V

    .line 888
    iget-object v3, p0, Lcom/easyview/tutk/TUTKCamera;->_tutk:Lcom/tutk/IOTC/Camera;

    const/4 v4, 0x0

    const/16 v5, 0x31a

    invoke-virtual {v1}, Lstruct/StructPacker;->toArray()[B

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/tutk/IOTC/Camera;->sendIOCtrl(II[B)V
    :try_end_0
    .catch Lstruct/StructException; {:try_start_0 .. :try_end_0} :catch_0

    .line 894
    .end local v1    # "packer":Lstruct/StructPacker;
    .end local v2    # "s":Lcom/easyview/tutk/RecordControlStruct;
    :cond_0
    :goto_0
    return-void

    .line 889
    .restart local v1    # "packer":Lstruct/StructPacker;
    .restart local v2    # "s":Lcom/easyview/tutk/RecordControlStruct;
    :catch_0
    move-exception v0

    .line 890
    .local v0, "e":Lstruct/StructException;
    invoke-virtual {v0}, Lstruct/StructException;->printStackTrace()V

    goto :goto_0
.end method

.method public searchEvents(IILcom/easyview/basecamera/ICamera$IRespondListener;)V
    .locals 0
    .param p1, "beginIndex"    # I
    .param p2, "endIndex"    # I
    .param p3, "listener"    # Lcom/easyview/basecamera/ICamera$IRespondListener;

    .prologue
    .line 915
    return-void
.end method

.method public searchRecordList(JJLcom/easyview/basecamera/ICamera$IRespondListener;)V
    .locals 7
    .param p1, "beginTime"    # J
    .param p3, "endTime"    # J
    .param p5, "listener"    # Lcom/easyview/basecamera/ICamera$IRespondListener;

    .prologue
    .line 847
    iget-object v3, p0, Lcom/easyview/tutk/TUTKCamera;->_tutk:Lcom/tutk/IOTC/Camera;

    if-eqz v3, :cond_0

    .line 848
    iput-object p5, p0, Lcom/easyview/tutk/TUTKCamera;->_respondListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

    .line 849
    iget-object v3, p0, Lcom/easyview/tutk/TUTKCamera;->_eventList:Lcom/easyview/tutk/EventListStruct;

    iget-object v3, v3, Lcom/easyview/tutk/EventListStruct;->eventList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 850
    new-instance v1, Lstruct/StructPacker;

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {v1, v3}, Lstruct/StructPacker;-><init>(Ljava/nio/ByteOrder;)V

    .line 851
    .local v1, "packer":Lstruct/StructPacker;
    new-instance v2, Lcom/easyview/tutk/SearchRecordRequestStruct;

    invoke-direct {v2}, Lcom/easyview/tutk/SearchRecordRequestStruct;-><init>()V

    .line 852
    .local v2, "s":Lcom/easyview/tutk/SearchRecordRequestStruct;
    invoke-virtual {v2, p1, p2}, Lcom/easyview/tutk/SearchRecordRequestStruct;->setBeginTime(J)V

    .line 853
    invoke-virtual {v2, p3, p4}, Lcom/easyview/tutk/SearchRecordRequestStruct;->setEndTime(J)V

    .line 855
    :try_start_0
    invoke-virtual {v1, v2}, Lstruct/StructPacker;->writeObject(Ljava/lang/Object;)V

    .line 856
    iget-object v3, p0, Lcom/easyview/tutk/TUTKCamera;->_tutk:Lcom/tutk/IOTC/Camera;

    const/4 v4, 0x0

    const/16 v5, 0x318

    invoke-virtual {v1}, Lstruct/StructPacker;->toArray()[B

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/tutk/IOTC/Camera;->sendIOCtrl(II[B)V
    :try_end_0
    .catch Lstruct/StructException; {:try_start_0 .. :try_end_0} :catch_0

    .line 862
    .end local v1    # "packer":Lstruct/StructPacker;
    .end local v2    # "s":Lcom/easyview/tutk/SearchRecordRequestStruct;
    :cond_0
    :goto_0
    return-void

    .line 857
    .restart local v1    # "packer":Lstruct/StructPacker;
    .restart local v2    # "s":Lcom/easyview/tutk/SearchRecordRequestStruct;
    :catch_0
    move-exception v0

    .line 858
    .local v0, "e":Lstruct/StructException;
    invoke-virtual {v0}, Lstruct/StructException;->printStackTrace()V

    goto :goto_0
.end method

.method public searchRecords(IIILcom/easyview/basecamera/ICamera$IRespondListener;)V
    .locals 0
    .param p1, "beginTime"    # I
    .param p2, "endTime"    # I
    .param p3, "with_snap"    # I
    .param p4, "listener"    # Lcom/easyview/basecamera/ICamera$IRespondListener;

    .prologue
    .line 910
    return-void
.end method

.method public setAlarmParam(Lcom/easyview/bean/AlermBean;Lcom/easyview/basecamera/ICamera$IRespondListener;)V
    .locals 6
    .param p1, "bean"    # Lcom/easyview/bean/AlermBean;
    .param p2, "listener"    # Lcom/easyview/basecamera/ICamera$IRespondListener;

    .prologue
    const/4 v4, 0x0

    .line 577
    iget-object v2, p0, Lcom/easyview/tutk/TUTKCamera;->_tutk:Lcom/tutk/IOTC/Camera;

    if-eqz v2, :cond_0

    .line 578
    iput-object p2, p0, Lcom/easyview/tutk/TUTKCamera;->_respondListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

    .line 579
    new-instance v1, Lstruct/StructPacker;

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {v1, v2}, Lstruct/StructPacker;-><init>(Ljava/nio/ByteOrder;)V

    .line 580
    .local v1, "packer":Lstruct/StructPacker;
    iget-object v2, p0, Lcom/easyview/tutk/TUTKCamera;->_qvConfig:Lcom/easyview/tutk/QVConfigStruct;

    const/16 v3, 0x11d

    iput v3, v2, Lcom/easyview/tutk/QVConfigStruct;->cmd:I

    .line 581
    iget-object v2, p0, Lcom/easyview/tutk/TUTKCamera;->_qvConfig:Lcom/easyview/tutk/QVConfigStruct;

    sget v3, Lcom/easyview/tutk/QVMDAlarmStruct;->struct_size:I

    iput v3, v2, Lcom/easyview/tutk/QVConfigStruct;->datasize:I

    .line 582
    iget-object v2, p0, Lcom/easyview/tutk/TUTKCamera;->_mdAlarm:Lcom/easyview/tutk/QVMDAlarmStruct;

    sget v3, Lcom/easyview/tutk/QVMDAlarmStruct;->struct_size:I

    iput v3, v2, Lcom/easyview/tutk/QVMDAlarmStruct;->dwSize:I

    .line 583
    iget-object v2, p0, Lcom/easyview/tutk/TUTKCamera;->_mdAlarm:Lcom/easyview/tutk/QVMDAlarmStruct;

    invoke-virtual {p1}, Lcom/easyview/bean/AlermBean;->getMotion_armed()I

    move-result v3

    int-to-byte v3, v3

    iput-byte v3, v2, Lcom/easyview/tutk/QVMDAlarmStruct;->bEnable:B

    .line 584
    iget-object v2, p0, Lcom/easyview/tutk/TUTKCamera;->_mdAlarm:Lcom/easyview/tutk/QVMDAlarmStruct;

    iget-object v2, v2, Lcom/easyview/tutk/QVMDAlarmStruct;->bRecord:[B

    invoke-virtual {p1}, Lcom/easyview/bean/AlermBean;->getRecord()I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v2, v4

    .line 585
    iget-object v2, p0, Lcom/easyview/tutk/TUTKCamera;->_mdAlarm:Lcom/easyview/tutk/QVMDAlarmStruct;

    invoke-virtual {p1}, Lcom/easyview/bean/AlermBean;->getMail()I

    move-result v3

    int-to-byte v3, v3

    iput-byte v3, v2, Lcom/easyview/tutk/QVMDAlarmStruct;->bSendEmail:B

    .line 586
    iget-object v2, p0, Lcom/easyview/tutk/TUTKCamera;->_mdAlarm:Lcom/easyview/tutk/QVMDAlarmStruct;

    invoke-virtual {p1}, Lcom/easyview/bean/AlermBean;->getMotion_sensitivity()I

    move-result v3

    int-to-byte v3, v3

    iput-byte v3, v2, Lcom/easyview/tutk/QVMDAlarmStruct;->Sensitive:B

    .line 587
    iget-object v2, p0, Lcom/easyview/tutk/TUTKCamera;->_mdAlarm:Lcom/easyview/tutk/QVMDAlarmStruct;

    const/4 v3, 0x1

    iput-byte v3, v2, Lcom/easyview/tutk/QVMDAlarmStruct;->bSaveFlash:B

    .line 589
    :try_start_0
    iget-object v2, p0, Lcom/easyview/tutk/TUTKCamera;->_qvConfig:Lcom/easyview/tutk/QVConfigStruct;

    invoke-virtual {v1, v2}, Lstruct/StructPacker;->writeObject(Ljava/lang/Object;)V

    .line 590
    iget-object v2, p0, Lcom/easyview/tutk/TUTKCamera;->_mdAlarm:Lcom/easyview/tutk/QVMDAlarmStruct;

    invoke-virtual {v1, v2}, Lstruct/StructPacker;->writeObject(Ljava/lang/Object;)V

    .line 591
    iget-object v2, p0, Lcom/easyview/tutk/TUTKCamera;->_tutk:Lcom/tutk/IOTC/Camera;

    const/4 v3, 0x0

    const v4, -0xfffafc

    invoke-virtual {v1}, Lstruct/StructPacker;->toArray()[B

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/tutk/IOTC/Camera;->sendIOCtrl(II[B)V
    :try_end_0
    .catch Lstruct/StructException; {:try_start_0 .. :try_end_0} :catch_0

    .line 596
    .end local v1    # "packer":Lstruct/StructPacker;
    :cond_0
    :goto_0
    return-void

    .line 592
    .restart local v1    # "packer":Lstruct/StructPacker;
    :catch_0
    move-exception v0

    .line 593
    .local v0, "e":Lstruct/StructException;
    invoke-virtual {v0}, Lstruct/StructException;->printStackTrace()V

    goto :goto_0
.end method

.method public setBrightness(ILcom/easyview/basecamera/ICamera$IRespondListener;)V
    .locals 0
    .param p1, "value"    # I
    .param p2, "listener"    # Lcom/easyview/basecamera/ICamera$IRespondListener;

    .prologue
    .line 999
    return-void
.end method

.method public setContrast(ILcom/easyview/basecamera/ICamera$IRespondListener;)V
    .locals 0
    .param p1, "value"    # I
    .param p2, "listener"    # Lcom/easyview/basecamera/ICamera$IRespondListener;

    .prologue
    .line 1004
    return-void
.end method

.method public setExtThres(Lcom/easyview/basecamera/ICamera$IRespondListener;)V
    .locals 6
    .param p1, "listener"    # Lcom/easyview/basecamera/ICamera$IRespondListener;

    .prologue
    .line 948
    iput-object p1, p0, Lcom/easyview/tutk/TUTKCamera;->_extSetThresListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

    .line 949
    iget-object v2, p0, Lcom/easyview/tutk/TUTKCamera;->_tutk:Lcom/tutk/IOTC/Camera;

    if-eqz v2, :cond_0

    .line 950
    new-instance v1, Lstruct/StructPacker;

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {v1, v2}, Lstruct/StructPacker;-><init>(Ljava/nio/ByteOrder;)V

    .line 952
    .local v1, "packer":Lstruct/StructPacker;
    :try_start_0
    iget-object v2, p0, Lcom/easyview/tutk/TUTKCamera;->_extThres:Lcom/easyview/struct/EVCommandDefs$ExtThresholds;

    invoke-virtual {v1, v2}, Lstruct/StructPacker;->writeObject(Ljava/lang/Object;)V

    .line 953
    iget-object v2, p0, Lcom/easyview/tutk/TUTKCamera;->_tutk:Lcom/tutk/IOTC/Camera;

    const/4 v3, 0x0

    const v4, -0xfffab4

    invoke-virtual {v1}, Lstruct/StructPacker;->toArray()[B

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/tutk/IOTC/Camera;->sendIOCtrl(II[B)V
    :try_end_0
    .catch Lstruct/StructException; {:try_start_0 .. :try_end_0} :catch_0

    .line 958
    .end local v1    # "packer":Lstruct/StructPacker;
    :cond_0
    :goto_0
    return-void

    .line 954
    .restart local v1    # "packer":Lstruct/StructPacker;
    :catch_0
    move-exception v0

    .line 955
    .local v0, "e":Lstruct/StructException;
    invoke-virtual {v0}, Lstruct/StructException;->printStackTrace()V

    goto :goto_0
.end method

.method public setLanguage(ILcom/easyview/basecamera/ICamera$IRespondListener;)V
    .locals 0
    .param p1, "lang"    # I
    .param p2, "listener"    # Lcom/easyview/basecamera/ICamera$IRespondListener;

    .prologue
    .line 940
    return-void
.end method

.method public setLightValue(IIILcom/easyview/basecamera/ICamera$IRespondListener;)V
    .locals 0
    .param p1, "white"    # I
    .param p2, "yellow"    # I
    .param p3, "type"    # I
    .param p4, "listener"    # Lcom/easyview/basecamera/ICamera$IRespondListener;

    .prologue
    .line 1103
    return-void
.end method

.method public setMailParam(Lcom/easyview/bean/MailBean;Lcom/easyview/basecamera/ICamera$IRespondListener;)V
    .locals 6
    .param p1, "bean"    # Lcom/easyview/bean/MailBean;
    .param p2, "listener"    # Lcom/easyview/basecamera/ICamera$IRespondListener;

    .prologue
    .line 680
    iget-object v2, p0, Lcom/easyview/tutk/TUTKCamera;->_tutk:Lcom/tutk/IOTC/Camera;

    if-eqz v2, :cond_0

    .line 681
    iput-object p2, p0, Lcom/easyview/tutk/TUTKCamera;->_respondListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

    .line 682
    new-instance v1, Lstruct/StructPacker;

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {v1, v2}, Lstruct/StructPacker;-><init>(Ljava/nio/ByteOrder;)V

    .line 683
    .local v1, "packer":Lstruct/StructPacker;
    iget-object v2, p0, Lcom/easyview/tutk/TUTKCamera;->_qvConfig:Lcom/easyview/tutk/QVConfigStruct;

    const/16 v3, 0x12c

    iput v3, v2, Lcom/easyview/tutk/QVConfigStruct;->cmd:I

    .line 684
    iget-object v2, p0, Lcom/easyview/tutk/TUTKCamera;->_qvConfig:Lcom/easyview/tutk/QVConfigStruct;

    sget v3, Lcom/easyview/tutk/QVMailStruct;->struct_size:I

    iput v3, v2, Lcom/easyview/tutk/QVConfigStruct;->datasize:I

    .line 685
    iget-object v2, p0, Lcom/easyview/tutk/TUTKCamera;->_mail:Lcom/easyview/tutk/QVMailStruct;

    sget v3, Lcom/easyview/tutk/QVMailStruct;->struct_size:I

    iput v3, v2, Lcom/easyview/tutk/QVMailStruct;->dwSize:I

    .line 686
    iget-object v2, p0, Lcom/easyview/tutk/TUTKCamera;->_mail:Lcom/easyview/tutk/QVMailStruct;

    iget-object v2, v2, Lcom/easyview/tutk/QVMailStruct;->csEmailServer:Lstruct/CString;

    invoke-virtual {p1}, Lcom/easyview/bean/MailBean;->getSvr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lstruct/CString;->setString(Ljava/lang/String;)V

    .line 687
    iget-object v2, p0, Lcom/easyview/tutk/TUTKCamera;->_mail:Lcom/easyview/tutk/QVMailStruct;

    iget-object v2, v2, Lcom/easyview/tutk/QVMailStruct;->csEmailFrom:Lstruct/CString;

    invoke-virtual {p1}, Lcom/easyview/bean/MailBean;->getSender()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lstruct/CString;->setString(Ljava/lang/String;)V

    .line 688
    iget-object v2, p0, Lcom/easyview/tutk/TUTKCamera;->_mail:Lcom/easyview/tutk/QVMailStruct;

    iget-object v2, v2, Lcom/easyview/tutk/QVMailStruct;->csEmailTo0:Lstruct/CString;

    invoke-virtual {p1}, Lcom/easyview/bean/MailBean;->getReceiver1()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lstruct/CString;->setString(Ljava/lang/String;)V

    .line 689
    iget-object v2, p0, Lcom/easyview/tutk/TUTKCamera;->_mail:Lcom/easyview/tutk/QVMailStruct;

    iget-object v2, v2, Lcom/easyview/tutk/QVMailStruct;->csEmailTo1:Lstruct/CString;

    invoke-virtual {p1}, Lcom/easyview/bean/MailBean;->getReceiver2()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lstruct/CString;->setString(Ljava/lang/String;)V

    .line 690
    iget-object v2, p0, Lcom/easyview/tutk/TUTKCamera;->_mail:Lcom/easyview/tutk/QVMailStruct;

    iget-object v2, v2, Lcom/easyview/tutk/QVMailStruct;->csEmailTo2:Lstruct/CString;

    invoke-virtual {p1}, Lcom/easyview/bean/MailBean;->getReceiver3()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lstruct/CString;->setString(Ljava/lang/String;)V

    .line 691
    iget-object v2, p0, Lcom/easyview/tutk/TUTKCamera;->_mail:Lcom/easyview/tutk/QVMailStruct;

    invoke-virtual {p1}, Lcom/easyview/bean/MailBean;->getPort()I

    move-result v3

    iput v3, v2, Lcom/easyview/tutk/QVMailStruct;->port:I

    .line 692
    iget-object v2, p0, Lcom/easyview/tutk/TUTKCamera;->_mail:Lcom/easyview/tutk/QVMailStruct;

    invoke-virtual {p1}, Lcom/easyview/bean/MailBean;->getSsl()I

    move-result v3

    int-to-byte v3, v3

    iput-byte v3, v2, Lcom/easyview/tutk/QVMailStruct;->ssl:B

    .line 693
    iget-object v2, p0, Lcom/easyview/tutk/TUTKCamera;->_mail:Lcom/easyview/tutk/QVMailStruct;

    iget-object v2, v2, Lcom/easyview/tutk/QVMailStruct;->csEmailPass:Lstruct/CString;

    invoke-virtual {p1}, Lcom/easyview/bean/MailBean;->getPwd()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lstruct/CString;->setString(Ljava/lang/String;)V

    .line 696
    :try_start_0
    iget-object v2, p0, Lcom/easyview/tutk/TUTKCamera;->_qvConfig:Lcom/easyview/tutk/QVConfigStruct;

    invoke-virtual {v1, v2}, Lstruct/StructPacker;->writeObject(Ljava/lang/Object;)V

    .line 697
    iget-object v2, p0, Lcom/easyview/tutk/TUTKCamera;->_mail:Lcom/easyview/tutk/QVMailStruct;

    invoke-virtual {v1, v2}, Lstruct/StructPacker;->writeObject(Ljava/lang/Object;)V

    .line 698
    iget-object v2, p0, Lcom/easyview/tutk/TUTKCamera;->_tutk:Lcom/tutk/IOTC/Camera;

    const/4 v3, 0x0

    const v4, -0xfffafc

    invoke-virtual {v1}, Lstruct/StructPacker;->toArray()[B

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/tutk/IOTC/Camera;->sendIOCtrl(II[B)V
    :try_end_0
    .catch Lstruct/StructException; {:try_start_0 .. :try_end_0} :catch_0

    .line 704
    .end local v1    # "packer":Lstruct/StructPacker;
    :cond_0
    :goto_0
    return-void

    .line 699
    .restart local v1    # "packer":Lstruct/StructPacker;
    :catch_0
    move-exception v0

    .line 700
    .local v0, "e":Lstruct/StructException;
    invoke-virtual {v0}, Lstruct/StructException;->printStackTrace()V

    goto :goto_0
.end method

.method public setPassword(Ljava/lang/String;Ljava/lang/String;Lcom/easyview/basecamera/ICamera$IRespondListener;)V
    .locals 7
    .param p1, "newPwd"    # Ljava/lang/String;
    .param p2, "oldPwd"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/easyview/basecamera/ICamera$IRespondListener;

    .prologue
    .line 547
    iget-object v3, p0, Lcom/easyview/tutk/TUTKCamera;->_tutk:Lcom/tutk/IOTC/Camera;

    if-eqz v3, :cond_0

    .line 548
    iput-object p3, p0, Lcom/easyview/tutk/TUTKCamera;->_respondListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

    .line 549
    new-instance v1, Lstruct/StructPacker;

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {v1, v3}, Lstruct/StructPacker;-><init>(Ljava/nio/ByteOrder;)V

    .line 550
    .local v1, "packer":Lstruct/StructPacker;
    new-instance v2, Lcom/easyview/tutk/PasswordSettingStruct;

    invoke-direct {v2}, Lcom/easyview/tutk/PasswordSettingStruct;-><init>()V

    .line 551
    .local v2, "s":Lcom/easyview/tutk/PasswordSettingStruct;
    iget-object v3, v2, Lcom/easyview/tutk/PasswordSettingStruct;->newPassword:Lstruct/CString;

    invoke-virtual {v3, p1}, Lstruct/CString;->setString(Ljava/lang/String;)V

    .line 552
    iget-object v3, v2, Lcom/easyview/tutk/PasswordSettingStruct;->oldPassword:Lstruct/CString;

    invoke-virtual {v3, p2}, Lstruct/CString;->setString(Ljava/lang/String;)V

    .line 554
    :try_start_0
    iget-object v3, p0, Lcom/easyview/tutk/TUTKCamera;->_tutk:Lcom/tutk/IOTC/Camera;

    const/4 v4, 0x0

    const/16 v5, 0x332

    invoke-virtual {v1, v2}, Lstruct/StructPacker;->pack(Ljava/lang/Object;)[B

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/tutk/IOTC/Camera;->sendIOCtrl(II[B)V
    :try_end_0
    .catch Lstruct/StructException; {:try_start_0 .. :try_end_0} :catch_0

    .line 559
    .end local v1    # "packer":Lstruct/StructPacker;
    .end local v2    # "s":Lcom/easyview/tutk/PasswordSettingStruct;
    :cond_0
    :goto_0
    return-void

    .line 555
    .restart local v1    # "packer":Lstruct/StructPacker;
    .restart local v2    # "s":Lcom/easyview/tutk/PasswordSettingStruct;
    :catch_0
    move-exception v0

    .line 556
    .local v0, "e":Lstruct/StructException;
    invoke-virtual {v0}, Lstruct/StructException;->printStackTrace()V

    goto :goto_0
.end method

.method public setResolution(I)V
    .locals 4
    .param p1, "resolution"    # I

    .prologue
    const/4 v3, 0x0

    .line 790
    iput p1, p0, Lcom/easyview/tutk/TUTKCamera;->_quality:I

    .line 791
    iget-object v0, p0, Lcom/easyview/tutk/TUTKCamera;->_tutk:Lcom/tutk/IOTC/Camera;

    if-eqz v0, :cond_0

    .line 792
    iget-object v0, p0, Lcom/easyview/tutk/TUTKCamera;->_tutk:Lcom/tutk/IOTC/Camera;

    .line 793
    const/16 v1, 0x320

    .line 794
    add-int/lit8 v2, p1, 0x1

    int-to-byte v2, v2

    invoke-static {v3, v2}, Lcom/tutk/IOTC/AVIOCTRLDEFs$SMsgAVIoctrlSetStreamCtrlReq;->parseContent(IB)[B

    move-result-object v2

    .line 792
    invoke-virtual {v0, v3, v1, v2}, Lcom/tutk/IOTC/Camera;->sendIOCtrl(II[B)V

    .line 796
    :cond_0
    return-void
.end method

.method public setRotate(ILcom/easyview/basecamera/ICamera$IRespondListener;)V
    .locals 0
    .param p1, "value"    # I
    .param p2, "listener"    # Lcom/easyview/basecamera/ICamera$IRespondListener;

    .prologue
    .line 1014
    return-void
.end method

.method public setRssi(I)V
    .locals 0
    .param p1, "level"    # I

    .prologue
    .line 1073
    return-void
.end method

.method public setSensor(ILcom/easyview/basecamera/ICamera$IRespondListener;)V
    .locals 0
    .param p1, "value"    # I
    .param p2, "listener"    # Lcom/easyview/basecamera/ICamera$IRespondListener;

    .prologue
    .line 1078
    return-void
.end method

.method public setShowOSD(ILcom/easyview/basecamera/ICamera$IRespondListener;)V
    .locals 0
    .param p1, "value"    # I
    .param p2, "listener"    # Lcom/easyview/basecamera/ICamera$IRespondListener;

    .prologue
    .line 1009
    return-void
.end method

.method public setStoreParam(Lcom/easyview/bean/SdcardBean;Lcom/easyview/basecamera/ICamera$IRespondListener;)V
    .locals 6
    .param p1, "bean"    # Lcom/easyview/bean/SdcardBean;
    .param p2, "listener"    # Lcom/easyview/basecamera/ICamera$IRespondListener;

    .prologue
    .line 739
    iget-object v2, p0, Lcom/easyview/tutk/TUTKCamera;->_tutk:Lcom/tutk/IOTC/Camera;

    if-eqz v2, :cond_0

    .line 740
    iput-object p2, p0, Lcom/easyview/tutk/TUTKCamera;->_respondListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

    .line 742
    new-instance v1, Lstruct/StructPacker;

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {v1, v2}, Lstruct/StructPacker;-><init>(Ljava/nio/ByteOrder;)V

    .line 743
    .local v1, "packer":Lstruct/StructPacker;
    iget-object v2, p0, Lcom/easyview/tutk/TUTKCamera;->_qvConfig:Lcom/easyview/tutk/QVConfigStruct;

    const/16 v3, 0x116

    iput v3, v2, Lcom/easyview/tutk/QVConfigStruct;->cmd:I

    .line 744
    iget-object v2, p0, Lcom/easyview/tutk/TUTKCamera;->_qvConfig:Lcom/easyview/tutk/QVConfigStruct;

    sget v3, Lcom/easyview/tutk/QVRecordStruct;->struct_size:I

    iput v3, v2, Lcom/easyview/tutk/QVConfigStruct;->datasize:I

    .line 745
    iget-object v2, p0, Lcom/easyview/tutk/TUTKCamera;->_record:Lcom/easyview/tutk/QVRecordStruct;

    sget v3, Lcom/easyview/tutk/QVRecordStruct;->struct_size:I

    iput v3, v2, Lcom/easyview/tutk/QVRecordStruct;->dwSize:I

    .line 746
    iget-object v2, p0, Lcom/easyview/tutk/TUTKCamera;->_record:Lcom/easyview/tutk/QVRecordStruct;

    invoke-virtual {p1}, Lcom/easyview/bean/SdcardBean;->getRecord_time_enable()I

    move-result v3

    int-to-byte v3, v3

    iput-byte v3, v2, Lcom/easyview/tutk/QVRecordStruct;->enable:B

    .line 747
    iget-object v2, p0, Lcom/easyview/tutk/TUTKCamera;->_record:Lcom/easyview/tutk/QVRecordStruct;

    invoke-virtual {p1}, Lcom/easyview/bean/SdcardBean;->getRecord_timer()I

    move-result v3

    int-to-byte v3, v3

    iput-byte v3, v2, Lcom/easyview/tutk/QVRecordStruct;->PackTime:B

    .line 748
    iget-object v2, p0, Lcom/easyview/tutk/TUTKCamera;->_record:Lcom/easyview/tutk/QVRecordStruct;

    const/4 v3, 0x1

    iput-byte v3, v2, Lcom/easyview/tutk/QVRecordStruct;->bSaveFlash:B

    .line 750
    :try_start_0
    iget-object v2, p0, Lcom/easyview/tutk/TUTKCamera;->_qvConfig:Lcom/easyview/tutk/QVConfigStruct;

    invoke-virtual {v1, v2}, Lstruct/StructPacker;->writeObject(Ljava/lang/Object;)V

    .line 751
    iget-object v2, p0, Lcom/easyview/tutk/TUTKCamera;->_record:Lcom/easyview/tutk/QVRecordStruct;

    invoke-virtual {v1, v2}, Lstruct/StructPacker;->writeObject(Ljava/lang/Object;)V

    .line 752
    iget-object v2, p0, Lcom/easyview/tutk/TUTKCamera;->_tutk:Lcom/tutk/IOTC/Camera;

    const/4 v3, 0x0

    const v4, -0xfffafc

    invoke-virtual {v1}, Lstruct/StructPacker;->toArray()[B

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/tutk/IOTC/Camera;->sendIOCtrl(II[B)V
    :try_end_0
    .catch Lstruct/StructException; {:try_start_0 .. :try_end_0} :catch_0

    .line 758
    .end local v1    # "packer":Lstruct/StructPacker;
    :cond_0
    :goto_0
    return-void

    .line 753
    .restart local v1    # "packer":Lstruct/StructPacker;
    :catch_0
    move-exception v0

    .line 754
    .local v0, "e":Lstruct/StructException;
    invoke-virtual {v0}, Lstruct/StructException;->printStackTrace()V

    goto :goto_0
.end method

.method public setTimeParam(Lcom/easyview/bean/DateBean;Lcom/easyview/basecamera/ICamera$IRespondListener;)V
    .locals 9
    .param p1, "bean"    # Lcom/easyview/bean/DateBean;
    .param p2, "listener"    # Lcom/easyview/basecamera/ICamera$IRespondListener;

    .prologue
    const/4 v8, 0x0

    .line 614
    iget-object v4, p0, Lcom/easyview/tutk/TUTKCamera;->_tutk:Lcom/tutk/IOTC/Camera;

    if-eqz v4, :cond_0

    .line 615
    iput-object p2, p0, Lcom/easyview/tutk/TUTKCamera;->_respondListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

    .line 616
    iget-boolean v4, p0, Lcom/easyview/tutk/TUTKCamera;->_setTimeZone:Z

    if-eqz v4, :cond_1

    .line 618
    new-instance v3, Lcom/easyview/tutk/TimeZoneStruct;

    invoke-direct {v3}, Lcom/easyview/tutk/TimeZoneStruct;-><init>()V

    .line 619
    .local v3, "timezone":Lcom/easyview/tutk/TimeZoneStruct;
    const/16 v4, 0x10c

    iput v4, v3, Lcom/easyview/tutk/TimeZoneStruct;->cbSize:I

    .line 620
    const/4 v4, 0x1

    iput v4, v3, Lcom/easyview/tutk/TimeZoneStruct;->nIsSupportTimeZone:I

    .line 621
    invoke-virtual {p1}, Lcom/easyview/bean/DateBean;->getTz()I

    move-result v4

    div-int/lit8 v4, v4, 0x3c

    iput v4, v3, Lcom/easyview/tutk/TimeZoneStruct;->nGMTDiff:I

    .line 622
    new-instance v1, Lstruct/StructPacker;

    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {v1, v4}, Lstruct/StructPacker;-><init>(Ljava/nio/ByteOrder;)V

    .line 624
    .local v1, "packer":Lstruct/StructPacker;
    :try_start_0
    invoke-virtual {v1, v3}, Lstruct/StructPacker;->writeObject(Ljava/lang/Object;)V

    .line 625
    iget-object v4, p0, Lcom/easyview/tutk/TUTKCamera;->_tutk:Lcom/tutk/IOTC/Camera;

    const/4 v5, 0x0

    const/16 v6, 0x3b0

    invoke-virtual {v1}, Lstruct/StructPacker;->toArray()[B

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/tutk/IOTC/Camera;->sendIOCtrl(II[B)V
    :try_end_0
    .catch Lstruct/StructException; {:try_start_0 .. :try_end_0} :catch_0

    .line 629
    :goto_0
    invoke-virtual {p1}, Lcom/easyview/bean/DateBean;->getNow()I

    move-result v4

    if-eqz v4, :cond_0

    .line 631
    new-instance v1, Lstruct/StructPacker;

    .end local v1    # "packer":Lstruct/StructPacker;
    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {v1, v4}, Lstruct/StructPacker;-><init>(Ljava/nio/ByteOrder;)V

    .line 632
    .restart local v1    # "packer":Lstruct/StructPacker;
    new-instance v2, Lcom/easyview/tutk/TimingStruct;

    invoke-direct {v2}, Lcom/easyview/tutk/TimingStruct;-><init>()V

    .line 633
    .local v2, "s":Lcom/easyview/tutk/TimingStruct;
    iput v8, v2, Lcom/easyview/tutk/TimingStruct;->channel:I

    .line 634
    const/16 v4, 0x10

    iput v4, v2, Lcom/easyview/tutk/TimingStruct;->size:I

    .line 635
    invoke-virtual {p1}, Lcom/easyview/bean/DateBean;->getNow()I

    move-result v4

    iput v4, v2, Lcom/easyview/tutk/TimingStruct;->time:I

    .line 637
    :try_start_1
    invoke-virtual {v1, v2}, Lstruct/StructPacker;->writeObject(Ljava/lang/Object;)V

    .line 638
    iget-object v4, p0, Lcom/easyview/tutk/TUTKCamera;->_tutk:Lcom/tutk/IOTC/Camera;

    const/4 v5, 0x0

    const v6, -0xfffae2

    invoke-virtual {v1}, Lstruct/StructPacker;->toArray()[B

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/tutk/IOTC/Camera;->sendIOCtrl(II[B)V
    :try_end_1
    .catch Lstruct/StructException; {:try_start_1 .. :try_end_1} :catch_1

    .line 661
    .end local v1    # "packer":Lstruct/StructPacker;
    .end local v2    # "s":Lcom/easyview/tutk/TimingStruct;
    .end local v3    # "timezone":Lcom/easyview/tutk/TimeZoneStruct;
    :cond_0
    :goto_1
    return-void

    .line 626
    .restart local v1    # "packer":Lstruct/StructPacker;
    .restart local v3    # "timezone":Lcom/easyview/tutk/TimeZoneStruct;
    :catch_0
    move-exception v0

    .line 627
    .local v0, "e":Lstruct/StructException;
    invoke-virtual {v0}, Lstruct/StructException;->printStackTrace()V

    goto :goto_0

    .line 639
    .end local v0    # "e":Lstruct/StructException;
    .restart local v2    # "s":Lcom/easyview/tutk/TimingStruct;
    :catch_1
    move-exception v0

    .line 640
    .restart local v0    # "e":Lstruct/StructException;
    invoke-virtual {v0}, Lstruct/StructException;->printStackTrace()V

    goto :goto_1

    .line 645
    .end local v0    # "e":Lstruct/StructException;
    .end local v1    # "packer":Lstruct/StructPacker;
    .end local v2    # "s":Lcom/easyview/tutk/TimingStruct;
    .end local v3    # "timezone":Lcom/easyview/tutk/TimeZoneStruct;
    :cond_1
    new-instance v1, Lstruct/StructPacker;

    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {v1, v4}, Lstruct/StructPacker;-><init>(Ljava/nio/ByteOrder;)V

    .line 646
    .restart local v1    # "packer":Lstruct/StructPacker;
    iget-object v4, p0, Lcom/easyview/tutk/TUTKCamera;->_qvConfig:Lcom/easyview/tutk/QVConfigStruct;

    const/16 v5, 0x133

    iput v5, v4, Lcom/easyview/tutk/QVConfigStruct;->cmd:I

    .line 647
    iget-object v4, p0, Lcom/easyview/tutk/TUTKCamera;->_qvConfig:Lcom/easyview/tutk/QVConfigStruct;

    sget v5, Lcom/easyview/tutk/QVDateTimeStruct;->struct_size:I

    iput v5, v4, Lcom/easyview/tutk/QVConfigStruct;->datasize:I

    .line 648
    iget-object v4, p0, Lcom/easyview/tutk/TUTKCamera;->_serverTime:Lcom/easyview/tutk/QVDateTimeStruct;

    sget v5, Lcom/easyview/tutk/QVDateTimeStruct;->struct_size:I

    iput v5, v4, Lcom/easyview/tutk/QVDateTimeStruct;->dwSize:I

    .line 649
    iget-object v4, p0, Lcom/easyview/tutk/TUTKCamera;->_serverTime:Lcom/easyview/tutk/QVDateTimeStruct;

    const/4 v5, 0x3

    iput v5, v4, Lcom/easyview/tutk/QVDateTimeStruct;->set_mask:I

    .line 650
    iget-object v4, p0, Lcom/easyview/tutk/TUTKCamera;->_serverTime:Lcom/easyview/tutk/QVDateTimeStruct;

    invoke-virtual {p1}, Lcom/easyview/bean/DateBean;->getNow()I

    move-result v5

    iput v5, v4, Lcom/easyview/tutk/QVDateTimeStruct;->utc_time:I

    .line 651
    iget-object v4, p0, Lcom/easyview/tutk/TUTKCamera;->_serverTime:Lcom/easyview/tutk/QVDateTimeStruct;

    iget v4, v4, Lcom/easyview/tutk/QVDateTimeStruct;->utc_time:I

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/easyview/tutk/TUTKCamera;->_serverTime:Lcom/easyview/tutk/QVDateTimeStruct;

    const/4 v5, 0x2

    iput v5, v4, Lcom/easyview/tutk/QVDateTimeStruct;->set_mask:I

    .line 652
    :cond_2
    iget-object v4, p0, Lcom/easyview/tutk/TUTKCamera;->_serverTime:Lcom/easyview/tutk/QVDateTimeStruct;

    invoke-virtual {p1}, Lcom/easyview/bean/DateBean;->getTz()I

    move-result v5

    iput v5, v4, Lcom/easyview/tutk/QVDateTimeStruct;->timezone:I

    .line 654
    :try_start_2
    iget-object v4, p0, Lcom/easyview/tutk/TUTKCamera;->_qvConfig:Lcom/easyview/tutk/QVConfigStruct;

    invoke-virtual {v1, v4}, Lstruct/StructPacker;->writeObject(Ljava/lang/Object;)V

    .line 655
    iget-object v4, p0, Lcom/easyview/tutk/TUTKCamera;->_serverTime:Lcom/easyview/tutk/QVDateTimeStruct;

    invoke-virtual {v1, v4}, Lstruct/StructPacker;->writeObject(Ljava/lang/Object;)V

    .line 656
    iget-object v4, p0, Lcom/easyview/tutk/TUTKCamera;->_tutk:Lcom/tutk/IOTC/Camera;

    const/4 v5, 0x0

    const v6, -0xfffafc

    invoke-virtual {v1}, Lstruct/StructPacker;->toArray()[B

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/tutk/IOTC/Camera;->sendIOCtrl(II[B)V
    :try_end_2
    .catch Lstruct/StructException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 657
    :catch_2
    move-exception v0

    .line 658
    .restart local v0    # "e":Lstruct/StructException;
    invoke-virtual {v0}, Lstruct/StructException;->printStackTrace()V

    goto :goto_1
.end method

.method public setVideoQuality(I)V
    .locals 5
    .param p1, "quality"    # I

    .prologue
    const/4 v4, 0x0

    .line 799
    iput p1, p0, Lcom/easyview/tutk/TUTKCamera;->_quality:I

    .line 800
    iget-object v1, p0, Lcom/easyview/tutk/TUTKCamera;->_tutk:Lcom/tutk/IOTC/Camera;

    if-eqz v1, :cond_0

    .line 801
    div-int/lit8 v1, p1, 0x14

    rsub-int/lit8 v0, v1, 0x5

    .line 802
    .local v0, "val":I
    iget-object v1, p0, Lcom/easyview/tutk/TUTKCamera;->_tutk:Lcom/tutk/IOTC/Camera;

    .line 803
    const/16 v2, 0x320

    .line 804
    int-to-byte v3, v0

    invoke-static {v4, v3}, Lcom/tutk/IOTC/AVIOCTRLDEFs$SMsgAVIoctrlSetStreamCtrlReq;->parseContent(IB)[B

    move-result-object v3

    .line 802
    invoke-virtual {v1, v4, v2, v3}, Lcom/tutk/IOTC/Camera;->sendIOCtrl(II[B)V

    .line 806
    .end local v0    # "val":I
    :cond_0
    return-void
.end method

.method public setWiFiName(Ljava/lang/String;Lcom/easyview/basecamera/ICamera$IRespondListener;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/easyview/basecamera/ICamera$IRespondListener;

    .prologue
    .line 1024
    return-void
.end method

.method public setWifiParam(Lcom/easyview/bean/WifiBean;Lcom/easyview/basecamera/ICamera$IRespondListener;)V
    .locals 7
    .param p1, "bean"    # Lcom/easyview/bean/WifiBean;
    .param p2, "listener"    # Lcom/easyview/basecamera/ICamera$IRespondListener;

    .prologue
    .line 530
    iget-object v3, p0, Lcom/easyview/tutk/TUTKCamera;->_tutk:Lcom/tutk/IOTC/Camera;

    if-eqz v3, :cond_0

    .line 531
    iput-object p2, p0, Lcom/easyview/tutk/TUTKCamera;->_respondListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

    .line 532
    new-instance v1, Lstruct/StructPacker;

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {v1, v3}, Lstruct/StructPacker;-><init>(Ljava/nio/ByteOrder;)V

    .line 533
    .local v1, "packer":Lstruct/StructPacker;
    new-instance v2, Lcom/easyview/tutk/WifiSettingStruct;

    invoke-direct {v2}, Lcom/easyview/tutk/WifiSettingStruct;-><init>()V

    .line 534
    .local v2, "s":Lcom/easyview/tutk/WifiSettingStruct;
    iget-object v3, v2, Lcom/easyview/tutk/WifiSettingStruct;->ssid:Lstruct/CString;

    invoke-virtual {p1}, Lcom/easyview/bean/WifiBean;->getSsid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lstruct/CString;->setString(Ljava/lang/String;)V

    .line 535
    iget-object v3, v2, Lcom/easyview/tutk/WifiSettingStruct;->password:Lstruct/CString;

    invoke-virtual {p1}, Lcom/easyview/bean/WifiBean;->getWpa_psk()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lstruct/CString;->setString(Ljava/lang/String;)V

    .line 536
    invoke-virtual {p1}, Lcom/easyview/bean/WifiBean;->getAuthtype()I

    move-result v3

    int-to-byte v3, v3

    iput-byte v3, v2, Lcom/easyview/tutk/WifiSettingStruct;->enctype:B

    .line 537
    invoke-virtual {p1}, Lcom/easyview/bean/WifiBean;->getMode()I

    move-result v3

    int-to-byte v3, v3

    iput-byte v3, v2, Lcom/easyview/tutk/WifiSettingStruct;->mode:B

    .line 539
    :try_start_0
    iget-object v3, p0, Lcom/easyview/tutk/TUTKCamera;->_tutk:Lcom/tutk/IOTC/Camera;

    const/4 v4, 0x0

    const/16 v5, 0x342

    invoke-virtual {v1, v2}, Lstruct/StructPacker;->pack(Ljava/lang/Object;)[B

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/tutk/IOTC/Camera;->sendIOCtrl(II[B)V
    :try_end_0
    .catch Lstruct/StructException; {:try_start_0 .. :try_end_0} :catch_0

    .line 544
    .end local v1    # "packer":Lstruct/StructPacker;
    .end local v2    # "s":Lcom/easyview/tutk/WifiSettingStruct;
    :cond_0
    :goto_0
    return-void

    .line 540
    .restart local v1    # "packer":Lstruct/StructPacker;
    .restart local v2    # "s":Lcom/easyview/tutk/WifiSettingStruct;
    :catch_0
    move-exception v0

    .line 541
    .local v0, "e":Lstruct/StructException;
    invoke-virtual {v0}, Lstruct/StructException;->printStackTrace()V

    goto :goto_0
.end method

.method public snapShot(Lcom/easyview/basecamera/ICamera$IRespondListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/easyview/basecamera/ICamera$IRespondListener;

    .prologue
    .line 925
    return-void
.end method

.method public startRecord(Lcom/easyview/basecamera/ICamera$IRespondListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/easyview/basecamera/ICamera$IRespondListener;

    .prologue
    .line 930
    return-void
.end method

.method public stopDownRecord(Lcom/easyview/basecamera/ICamera$IDownloadListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/easyview/basecamera/ICamera$IDownloadListener;

    .prologue
    .line 984
    return-void
.end method

.method public stopMusic(ILcom/easyview/basecamera/ICamera$IRespondListener;)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "listener"    # Lcom/easyview/basecamera/ICamera$IRespondListener;

    .prologue
    const/4 v3, 0x0

    .line 968
    iget-object v0, p0, Lcom/easyview/tutk/TUTKCamera;->_comm_data:[B

    const/4 v1, 0x2

    aput-byte v1, v0, v3

    .line 969
    iget-object v0, p0, Lcom/easyview/tutk/TUTKCamera;->_tutk:Lcom/tutk/IOTC/Camera;

    const v1, -0xfffad7

    iget-object v2, p0, Lcom/easyview/tutk/TUTKCamera;->_comm_data:[B

    invoke-virtual {v0, v3, v1, v2}, Lcom/tutk/IOTC/Camera;->sendIOCtrl(II[B)V

    .line 970
    return-void
.end method

.method public stopRecord(Lcom/easyview/basecamera/ICamera$IRespondListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/easyview/basecamera/ICamera$IRespondListener;

    .prologue
    .line 935
    return-void
.end method

.method public timing()V
    .locals 0

    .prologue
    .line 1068
    return-void
.end method

.method public upgradeCheck(Lcom/easyview/basecamera/ICamera$IRespondListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/easyview/basecamera/ICamera$IRespondListener;

    .prologue
    .line 1093
    return-void
.end method

.method public upgradeDevice(Lcom/easyview/basecamera/ICamera$IRespondListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/easyview/basecamera/ICamera$IRespondListener;

    .prologue
    .line 1088
    return-void
.end method

.method public wifiScan(Lcom/easyview/basecamera/ICamera$IWifiScanListener;)V
    .locals 4
    .param p1, "listener"    # Lcom/easyview/basecamera/ICamera$IWifiScanListener;

    .prologue
    .line 523
    iget-object v0, p0, Lcom/easyview/tutk/TUTKCamera;->_tutk:Lcom/tutk/IOTC/Camera;

    if-eqz v0, :cond_0

    .line 524
    iput-object p1, p0, Lcom/easyview/tutk/TUTKCamera;->_wifiScanListener:Lcom/easyview/basecamera/ICamera$IWifiScanListener;

    .line 525
    iget-object v0, p0, Lcom/easyview/tutk/TUTKCamera;->_tutk:Lcom/tutk/IOTC/Camera;

    const/4 v1, 0x0

    const/16 v2, 0x340

    iget-object v3, p0, Lcom/easyview/tutk/TUTKCamera;->_comm_data:[B

    invoke-virtual {v0, v1, v2, v3}, Lcom/tutk/IOTC/Camera;->sendIOCtrl(II[B)V

    .line 527
    :cond_0
    return-void
.end method
