.class public Lcom/easyview/ppcs/PPCSCamera;
.super Lcom/easyview/camera/EVBaseCamera;
.source "PPCSCamera.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/easyview/ppcs/PPCSCamera$PlaneParams;
    }
.end annotation


# static fields
.field public static CameraUser:Ljava/lang/String; = null

.field private static final LOG_TAG:Ljava/lang/String; = "PPCS"

.field private static _context:Landroid/content/Context;

.field private static _init:Z


# instance fields
.field private final BRIGHT:I

.field private final CONTRAST:I

.field public DevID:Ljava/lang/String;

.field private _alarmTime:I

.field private _alarmType:I

.field private _bellCallTime:I

.field private _bellDamageTime:I

.field private _brightness:I

.field private _contrast:I

.field private _event_modify:Z

.field private _ready_get_events:Z

.field private _recordIndex:I

.field private _rotate:I

.field private _wifiResultListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

.field private downListener:Lcom/easyview/basecamera/ICamera$IDownloadListener;

.field private down_file:Ljava/io/File;

.field private down_fos:Ljava/io/FileOutputStream;

.field private down_record_index:I

.field public event:Lcom/easyview/struct/EVCommandDefs$Event;

.field public eventFilePath:Ljava/lang/String;

.field private event_count:I

.field private getFirstIndex:Z

.field private haveFirstIndex:Z

.field public ioSwitchParams:[Lcom/easyview/struct/EVCommandDefs$IOSwitchParam;

.field private ioSwitchParamsListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

.field private is_down_record:Z

.field public lcdCtrlParam:Lcom/easyview/struct/EVCommandDefs$LCDCtrlParam;

.field private lcdParamsListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

.field public planeParams:Lcom/easyview/ppcs/PPCSCamera$PlaneParams;

.field public planeParams_OK:Z

.field private queryDeviceInfoListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

.field private queryLightValueListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

.field public reconnect:I

.field private record_down_size:I

.field private record_file_size:I

.field private upgradeCheckListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

.field private upgradeDeviceListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

.field public videoPath:Ljava/lang/String;

.field private write_file_size:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 77
    const-string v0, "admin"

    sput-object v0, Lcom/easyview/ppcs/PPCSCamera;->CameraUser:Ljava/lang/String;

    .line 78
    const/4 v0, 0x0

    sput-boolean v0, Lcom/easyview/ppcs/PPCSCamera;->_init:Z

    .line 79
    const/4 v0, 0x0

    sput-object v0, Lcom/easyview/ppcs/PPCSCamera;->_context:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "user"    # Ljava/lang/String;
    .param p4, "pwd"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 207
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/easyview/camera/EVBaseCamera;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    iput v4, p0, Lcom/easyview/ppcs/PPCSCamera;->BRIGHT:I

    .line 65
    const/4 v1, 0x2

    iput v1, p0, Lcom/easyview/ppcs/PPCSCamera;->CONTRAST:I

    .line 157
    iput v2, p0, Lcom/easyview/ppcs/PPCSCamera;->_alarmType:I

    .line 158
    iput v2, p0, Lcom/easyview/ppcs/PPCSCamera;->_alarmTime:I

    .line 159
    iput v2, p0, Lcom/easyview/ppcs/PPCSCamera;->_bellCallTime:I

    .line 160
    iput v2, p0, Lcom/easyview/ppcs/PPCSCamera;->_bellDamageTime:I

    .line 161
    const/4 v1, -0x1

    iput v1, p0, Lcom/easyview/ppcs/PPCSCamera;->_recordIndex:I

    .line 162
    iput-boolean v4, p0, Lcom/easyview/ppcs/PPCSCamera;->_event_modify:Z

    .line 163
    iput-boolean v2, p0, Lcom/easyview/ppcs/PPCSCamera;->_ready_get_events:Z

    .line 164
    iput v2, p0, Lcom/easyview/ppcs/PPCSCamera;->event_count:I

    .line 165
    iput v2, p0, Lcom/easyview/ppcs/PPCSCamera;->_brightness:I

    .line 166
    iput v2, p0, Lcom/easyview/ppcs/PPCSCamera;->_contrast:I

    .line 167
    iput v2, p0, Lcom/easyview/ppcs/PPCSCamera;->_rotate:I

    .line 168
    iput-object v3, p0, Lcom/easyview/ppcs/PPCSCamera;->event:Lcom/easyview/struct/EVCommandDefs$Event;

    .line 169
    iput-object v3, p0, Lcom/easyview/ppcs/PPCSCamera;->eventFilePath:Ljava/lang/String;

    .line 170
    iput-object v3, p0, Lcom/easyview/ppcs/PPCSCamera;->videoPath:Ljava/lang/String;

    .line 171
    new-instance v1, Lcom/easyview/ppcs/PPCSCamera$PlaneParams;

    invoke-direct {v1}, Lcom/easyview/ppcs/PPCSCamera$PlaneParams;-><init>()V

    iput-object v1, p0, Lcom/easyview/ppcs/PPCSCamera;->planeParams:Lcom/easyview/ppcs/PPCSCamera$PlaneParams;

    .line 172
    iput-boolean v2, p0, Lcom/easyview/ppcs/PPCSCamera;->planeParams_OK:Z

    .line 173
    new-array v1, v5, [Lcom/easyview/struct/EVCommandDefs$IOSwitchParam;

    iput-object v1, p0, Lcom/easyview/ppcs/PPCSCamera;->ioSwitchParams:[Lcom/easyview/struct/EVCommandDefs$IOSwitchParam;

    .line 174
    new-instance v1, Lcom/easyview/struct/EVCommandDefs$LCDCtrlParam;

    invoke-direct {v1}, Lcom/easyview/struct/EVCommandDefs$LCDCtrlParam;-><init>()V

    iput-object v1, p0, Lcom/easyview/ppcs/PPCSCamera;->lcdCtrlParam:Lcom/easyview/struct/EVCommandDefs$LCDCtrlParam;

    .line 175
    iput-object v3, p0, Lcom/easyview/ppcs/PPCSCamera;->ioSwitchParamsListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

    .line 176
    iput-object v3, p0, Lcom/easyview/ppcs/PPCSCamera;->lcdParamsListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

    .line 177
    iput-object v3, p0, Lcom/easyview/ppcs/PPCSCamera;->queryDeviceInfoListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

    .line 178
    iput-object v3, p0, Lcom/easyview/ppcs/PPCSCamera;->upgradeDeviceListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

    .line 179
    iput-object v3, p0, Lcom/easyview/ppcs/PPCSCamera;->upgradeCheckListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

    .line 180
    iput-object v3, p0, Lcom/easyview/ppcs/PPCSCamera;->queryLightValueListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

    .line 181
    iput-object v3, p0, Lcom/easyview/ppcs/PPCSCamera;->DevID:Ljava/lang/String;

    .line 182
    const/4 v1, 0x6

    iput v1, p0, Lcom/easyview/ppcs/PPCSCamera;->reconnect:I

    .line 891
    iput-boolean v2, p0, Lcom/easyview/ppcs/PPCSCamera;->is_down_record:Z

    .line 892
    iput v2, p0, Lcom/easyview/ppcs/PPCSCamera;->down_record_index:I

    .line 893
    iput v2, p0, Lcom/easyview/ppcs/PPCSCamera;->record_file_size:I

    .line 894
    iput v2, p0, Lcom/easyview/ppcs/PPCSCamera;->record_down_size:I

    .line 895
    iput-object v3, p0, Lcom/easyview/ppcs/PPCSCamera;->down_file:Ljava/io/File;

    .line 896
    iput v2, p0, Lcom/easyview/ppcs/PPCSCamera;->write_file_size:I

    .line 897
    iput-object v3, p0, Lcom/easyview/ppcs/PPCSCamera;->down_fos:Ljava/io/FileOutputStream;

    .line 899
    iput-object v3, p0, Lcom/easyview/ppcs/PPCSCamera;->downListener:Lcom/easyview/basecamera/ICamera$IDownloadListener;

    .line 1308
    iput-object v3, p0, Lcom/easyview/ppcs/PPCSCamera;->_wifiResultListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

    .line 1506
    iput-boolean v2, p0, Lcom/easyview/ppcs/PPCSCamera;->getFirstIndex:Z

    .line 1507
    iput-boolean v2, p0, Lcom/easyview/ppcs/PPCSCamera;->haveFirstIndex:Z

    .line 208
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v5, :cond_0

    .line 212
    return-void

    .line 210
    :cond_0
    iget-object v1, p0, Lcom/easyview/ppcs/PPCSCamera;->ioSwitchParams:[Lcom/easyview/struct/EVCommandDefs$IOSwitchParam;

    new-instance v2, Lcom/easyview/struct/EVCommandDefs$IOSwitchParam;

    invoke-direct {v2}, Lcom/easyview/struct/EVCommandDefs$IOSwitchParam;-><init>()V

    aput-object v2, v1, v0

    .line 208
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static Free()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 94
    sget-boolean v1, Lcom/easyview/ppcs/PPCSCamera;->_init:Z

    if-nez v1, :cond_0

    .line 106
    .local v0, "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 95
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    const-string v1, "PPCS"

    const-string v2, "Free..."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    invoke-static {}, Lcom/easyview/camera/CameraList;->GetInstance()Lcom/easyview/camera/CameraList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/easyview/camera/CameraList;->Stop()V

    .line 97
    invoke-static {}, Lcom/easyview/camera/CameraList;->GetInstance()Lcom/easyview/camera/CameraList;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/easyview/camera/CameraList;->SetAlarmListener(Lcom/easyview/basecamera/ICamera$IAlarmListener;)V

    .line 99
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 100
    .restart local v0    # "intent":Landroid/content/Intent;
    sget-object v1, Lcom/easyview/ppcs/PPCSCamera;->_context:Landroid/content/Context;

    const-class v2, Lobject/p2pwificam/clientActivity/BridgeService;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 101
    sget-object v1, Lcom/easyview/ppcs/PPCSCamera;->_context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 102
    sput-object v3, Lcom/easyview/ppcs/PPCSCamera;->_context:Landroid/content/Context;

    .line 103
    const/4 v1, 0x0

    sput-boolean v1, Lcom/easyview/ppcs/PPCSCamera;->_init:Z

    .line 104
    invoke-static {}, Lobject/p2pipcam/nativecaller/NativeCaller;->Free()V

    .line 105
    const-string v1, "PPCS"

    const-string v2, "Free"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static Init(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 82
    sget-boolean v1, Lcom/easyview/ppcs/PPCSCamera;->_init:Z

    if-eqz v1, :cond_0

    .line 91
    :goto_0
    return-void

    .line 83
    :cond_0
    const-string v1, "PPCS"

    const-string v2, "Init"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    const-string v1, "EFGBFFBDKPILGKJDFJHPFAELGDNAHGMAHMFBBIDHAOJBLKKODOACDEPFGLKFIKLBADNJKKDJOLNLBNCKJMMI"

    invoke-static {v1}, Lobject/p2pipcam/nativecaller/NativeCaller;->PPPPInitial(Ljava/lang/String;)V

    .line 85
    invoke-static {}, Lobject/p2pipcam/nativecaller/NativeCaller;->Init()V

    .line 86
    sput-object p0, Lcom/easyview/ppcs/PPCSCamera;->_context:Landroid/content/Context;

    .line 87
    const/4 v1, 0x1

    sput-boolean v1, Lcom/easyview/ppcs/PPCSCamera;->_init:Z

    .line 88
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 89
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lobject/p2pwificam/clientActivity/BridgeService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 90
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method public static IsPPXW(Ljava/lang/String;)Z
    .locals 1
    .param p0, "id"    # Ljava/lang/String;

    .prologue
    .line 153
    const-string v0, "PPXW"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 154
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static IsValidID(Ljava/lang/String;)Z
    .locals 2
    .param p0, "id"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 145
    const-string v1, "PPCS"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 149
    :cond_0
    :goto_0
    return v0

    .line 146
    :cond_1
    const-string v1, "PPXW"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 147
    const-string v1, "JASCH"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 148
    const-string v1, "BWLED"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 149
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private SimpleEVCommand(S)V
    .locals 4
    .param p1, "command"    # S

    .prologue
    .line 1302
    const/4 v2, 0x0

    :try_start_0
    new-array v2, v2, [I

    invoke-static {p1, v2}, Lcom/easyview/struct/EVCommandDefs;->MakeSimpleReqPacket(S[I)[B

    move-result-object v0

    .line 1303
    .local v0, "data":[B
    invoke-virtual {p0}, Lcom/easyview/ppcs/PPCSCamera;->getID()Ljava/lang/String;

    move-result-object v2

    array-length v3, v0

    invoke-static {v2, v0, v3}, Lobject/p2pipcam/nativecaller/NativeCaller;->EVCommand(Ljava/lang/String;[BI)I
    :try_end_0
    .catch Lstruct/StructException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1307
    .end local v0    # "data":[B
    :goto_0
    return-void

    .line 1304
    :catch_0
    move-exception v1

    .line 1305
    .local v1, "e":Lstruct/StructException;
    invoke-virtual {v1}, Lstruct/StructException;->printStackTrace()V

    goto :goto_0
.end method

.method public static StartSearch(Lcom/easyview/basecamera/ICameraSearchListener;I)V
    .locals 2
    .param p0, "listener"    # Lcom/easyview/basecamera/ICameraSearchListener;
    .param p1, "port"    # I

    .prologue
    .line 114
    new-instance v0, Lcom/easyview/ppcs/PPCSCamera$1;

    invoke-direct {v0, p0}, Lcom/easyview/ppcs/PPCSCamera$1;-><init>(Lcom/easyview/basecamera/ICameraSearchListener;)V

    .line 129
    .local v0, "addCamera":Lobject/p2pwificam/clientActivity/BridgeService$AddCameraInterface;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/BridgeService;->setAddCameraInterface(Lobject/p2pwificam/clientActivity/BridgeService$AddCameraInterface;)V

    .line 130
    sget-object v1, Lcom/easyview/ppcs/PPCSCamera;->CameraUser:Ljava/lang/String;

    invoke-static {p1, v1}, Lobject/p2pipcam/nativecaller/NativeCaller;->StartSearch(ILjava/lang/String;)V

    .line 137
    return-void
.end method

.method public static StopSearch()V
    .locals 1

    .prologue
    .line 140
    const/4 v0, 0x0

    invoke-static {v0}, Lobject/p2pwificam/clientActivity/BridgeService;->setAddCameraInterface(Lobject/p2pwificam/clientActivity/BridgeService$AddCameraInterface;)V

    .line 141
    invoke-static {}, Lobject/p2pipcam/nativecaller/NativeCaller;->StopSearch()V

    .line 142
    return-void
.end method

.method static synthetic access$0(Lcom/easyview/ppcs/PPCSCamera;)Lcom/easyview/basecamera/ICamera$IDownloadListener;
    .locals 1

    .prologue
    .line 899
    iget-object v0, p0, Lcom/easyview/ppcs/PPCSCamera;->downListener:Lcom/easyview/basecamera/ICamera$IDownloadListener;

    return-object v0
.end method

.method private dealDownRecord([BI)V
    .locals 23
    .param p1, "data"    # [B
    .param p2, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lstruct/StructException;
        }
    .end annotation

    .prologue
    .line 902
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/easyview/ppcs/PPCSCamera;->is_down_record:Z

    move/from16 v18, v0

    if-nez v18, :cond_1

    .line 970
    :cond_0
    :goto_0
    return-void

    .line 903
    :cond_1
    new-instance v16, Lstruct/StructUnpacker;

    sget-object v18, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lstruct/StructUnpacker;-><init>([BLjava/nio/ByteOrder;)V

    .line 904
    .local v16, "up":Lstruct/StructUnpacker;
    new-instance v13, Lcom/easyview/struct/EVCommandDefs$EVRecordDataHeader;

    invoke-direct {v13}, Lcom/easyview/struct/EVCommandDefs$EVRecordDataHeader;-><init>()V

    .line 905
    .local v13, "s":Lcom/easyview/struct/EVCommandDefs$EVRecordDataHeader;
    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Lstruct/StructUnpacker;->readObject(Ljava/lang/Object;)V

    .line 906
    iget v0, v13, Lcom/easyview/struct/EVCommandDefs$EVRecordDataHeader;->curr_size:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/easyview/ppcs/PPCSCamera;->write_file_size:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_2

    .line 908
    const-string v18, "DownRecord"

    const-string v19, "data loss %d -> %d"

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/easyview/ppcs/PPCSCamera;->write_file_size:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x1

    iget v0, v13, Lcom/easyview/struct/EVCommandDefs$EVRecordDataHeader;->curr_size:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    :try_start_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/easyview/ppcs/PPCSCamera;->down_record_index:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/easyview/ppcs/PPCSCamera;->write_file_size:I

    move/from16 v19, v0

    invoke-static/range {v18 .. v19}, Lcom/easyview/struct/EVCommandDefs;->MakeDownRecordReqPacket(II)[B

    move-result-object v15

    .line 911
    .local v15, "send_data":[B
    invoke-virtual/range {p0 .. p0}, Lcom/easyview/ppcs/PPCSCamera;->getID()Ljava/lang/String;

    move-result-object v18

    array-length v0, v15

    move/from16 v19, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v0, v15, v1}, Lobject/p2pipcam/nativecaller/NativeCaller;->EVCommand(Ljava/lang/String;[BI)I
    :try_end_0
    .catch Lstruct/StructException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 912
    .end local v15    # "send_data":[B
    :catch_0
    move-exception v8

    .line 913
    .local v8, "e":Lstruct/StructException;
    invoke-virtual {v8}, Lstruct/StructException;->printStackTrace()V

    goto :goto_0

    .line 917
    .end local v8    # "e":Lstruct/StructException;
    :cond_2
    add-int/lit8 v4, p2, -0x14

    .line 918
    .local v4, "data_size":I
    iget v0, v13, Lcom/easyview/struct/EVCommandDefs$EVRecordDataHeader;->curr_size:I

    move/from16 v18, v0

    add-int v18, v18, v4

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/easyview/ppcs/PPCSCamera;->record_down_size:I

    .line 919
    move-object/from16 v0, p0

    iget v0, v0, Lcom/easyview/ppcs/PPCSCamera;->record_down_size:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/easyview/ppcs/PPCSCamera;->write_file_size:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_3

    .line 921
    const-string v18, "DownRecord"

    const-string v19, "data dup %d -> %d"

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/easyview/ppcs/PPCSCamera;->write_file_size:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x1

    iget v0, v13, Lcom/easyview/struct/EVCommandDefs$EVRecordDataHeader;->curr_size:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 924
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/easyview/ppcs/PPCSCamera;->down_fos:Ljava/io/FileOutputStream;

    move-object/from16 v18, v0

    if-nez v18, :cond_4

    .line 926
    invoke-static {}, Lobject/p2pipcam/utils/Pub;->videoSavePathFile()Ljava/io/File;

    move-result-object v6

    .line 927
    .local v6, "div":Ljava/io/File;
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    .line 928
    .local v5, "date":Ljava/util/Date;
    iget v0, v13, Lcom/easyview/struct/EVCommandDefs$EVRecordDataHeader;->begin_time:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-long v10, v0

    .line 929
    .local v10, "ms":J
    const-wide/16 v18, 0x3e8

    mul-long v10, v10, v18

    .line 930
    invoke-virtual {v5, v10, v11}, Ljava/util/Date;->setTime(J)V

    .line 931
    new-instance v14, Ljava/text/SimpleDateFormat;

    const-string v18, "yyyyMMddHHmmss"

    move-object/from16 v0, v18

    invoke-direct {v14, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 932
    .local v14, "sdf":Ljava/text/SimpleDateFormat;
    const-string v18, "%s_%s.avi"

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/easyview/ppcs/PPCSCamera;->getID()Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x1

    invoke-virtual {v14, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 935
    .local v9, "fileName":Ljava/lang/String;
    const-string v18, "%s.avi"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual {v14, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 937
    new-instance v18, Ljava/io/File;

    move-object/from16 v0, v18

    invoke-direct {v0, v6, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/easyview/ppcs/PPCSCamera;->down_file:Ljava/io/File;

    .line 938
    new-instance v18, Ljava/io/FileOutputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/easyview/ppcs/PPCSCamera;->down_file:Ljava/io/File;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-direct/range {v18 .. v20}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/easyview/ppcs/PPCSCamera;->down_fos:Ljava/io/FileOutputStream;

    .line 942
    .end local v5    # "date":Ljava/util/Date;
    .end local v6    # "div":Ljava/io/File;
    .end local v9    # "fileName":Ljava/lang/String;
    .end local v10    # "ms":J
    .end local v14    # "sdf":Ljava/text/SimpleDateFormat;
    :cond_4
    const-string v18, "DownRecord"

    const-string v19, "%d + %d = %d -> %d"

    const/16 v20, 0x4

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    iget v0, v13, Lcom/easyview/struct/EVCommandDefs$EVRecordDataHeader;->curr_size:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/easyview/ppcs/PPCSCamera;->record_down_size:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/easyview/ppcs/PPCSCamera;->record_file_size:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    move-object/from16 v0, p0

    iget v0, v0, Lcom/easyview/ppcs/PPCSCamera;->record_down_size:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/easyview/ppcs/PPCSCamera;->write_file_size:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_5

    .line 945
    move-object/from16 v0, p0

    iget v0, v0, Lcom/easyview/ppcs/PPCSCamera;->record_down_size:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/easyview/ppcs/PPCSCamera;->write_file_size:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    sub-int v7, v4, v18

    .line 946
    .local v7, "dup_size":I
    sub-int v17, v4, v7

    .line 947
    .local v17, "write_size":I
    if-lez v17, :cond_5

    .line 949
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/easyview/ppcs/PPCSCamera;->down_fos:Ljava/io/FileOutputStream;

    move-object/from16 v18, v0

    add-int/lit8 v19, v7, 0x14

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move/from16 v2, v19

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/FileOutputStream;->write([BII)V

    .line 950
    move-object/from16 v0, p0

    iget v0, v0, Lcom/easyview/ppcs/PPCSCamera;->write_file_size:I

    move/from16 v18, v0

    add-int v18, v18, v17

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/easyview/ppcs/PPCSCamera;->write_file_size:I

    .line 953
    .end local v7    # "dup_size":I
    .end local v17    # "write_size":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/easyview/ppcs/PPCSCamera;->downListener:Lcom/easyview/basecamera/ICamera$IDownloadListener;

    move-object/from16 v18, v0

    if-eqz v18, :cond_6

    .line 955
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/easyview/ppcs/PPCSCamera;->downListener:Lcom/easyview/basecamera/ICamera$IDownloadListener;

    move-object/from16 v18, v0

    iget v0, v13, Lcom/easyview/struct/EVCommandDefs$EVRecordDataHeader;->curr_size:I

    move/from16 v19, v0

    add-int v19, v19, v4

    iget v0, v13, Lcom/easyview/struct/EVCommandDefs$EVRecordDataHeader;->total_size:I

    move/from16 v20, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-interface {v0, v1, v2, v3}, Lcom/easyview/basecamera/ICamera$IDownloadListener;->OnProgress(Lcom/easyview/basecamera/ICamera;II)V

    .line 957
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/easyview/ppcs/PPCSCamera;->record_down_size:I

    move/from16 v18, v0

    iget v0, v13, Lcom/easyview/struct/EVCommandDefs$EVRecordDataHeader;->total_size:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_0

    .line 959
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/easyview/ppcs/PPCSCamera;->down_file:Ljava/io/File;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    .line 960
    .local v12, "path":Ljava/lang/String;
    invoke-static {}, Lobject/p2pipcam/utils/Pub;->getContext()Landroid/content/Context;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/easyview/table/RecordTable;->getInstance(Landroid/content/Context;)Lcom/easyview/table/RecordTable;

    move-result-object v18

    invoke-virtual/range {p0 .. p0}, Lcom/easyview/ppcs/PPCSCamera;->getKeyText()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/easyview/ppcs/PPCSCamera;->_eventFileID:I

    move/from16 v20, v0

    iget v0, v13, Lcom/easyview/struct/EVCommandDefs$EVRecordDataHeader;->begin_time:I

    move/from16 v21, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3, v12}, Lcom/easyview/table/RecordTable;->Update(Ljava/lang/String;IILjava/lang/String;)Z

    .line 961
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/easyview/ppcs/PPCSCamera;->down_fos:Ljava/io/FileOutputStream;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/io/FileOutputStream;->flush()V

    .line 962
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/easyview/ppcs/PPCSCamera;->down_fos:Ljava/io/FileOutputStream;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/io/FileOutputStream;->close()V

    .line 963
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/easyview/ppcs/PPCSCamera;->down_fos:Ljava/io/FileOutputStream;

    .line 964
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/easyview/ppcs/PPCSCamera;->write_file_size:I

    .line 967
    invoke-static {}, Lobject/p2pipcam/utils/Pub;->getContext()Landroid/content/Context;

    move-result-object v18

    new-instance v19, Landroid/content/Intent;

    const-string v20, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "file://"

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v21

    invoke-direct/range {v19 .. v21}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method private dealEvent([BI)V
    .locals 22
    .param p1, "data"    # [B
    .param p2, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1161
    const/4 v13, 0x0

    .line 1162
    .local v13, "fos":Ljava/io/FileOutputStream;
    invoke-static {}, Lobject/p2pipcam/utils/Pub;->photoSavePathFile()Ljava/io/File;

    move-result-object v9

    .line 1164
    .local v9, "div":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1165
    invoke-virtual {v9}, Ljava/io/File;->mkdirs()Z

    .line 1168
    :cond_0
    :try_start_0
    new-instance v21, Lstruct/StructUnpacker;

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lstruct/StructUnpacker;-><init>([BLjava/nio/ByteOrder;)V

    .line 1169
    .local v21, "up":Lstruct/StructUnpacker;
    new-instance v2, Lcom/easyview/struct/EVCommandDefs$Event;

    invoke-direct {v2}, Lcom/easyview/struct/EVCommandDefs$Event;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/easyview/ppcs/PPCSCamera;->event:Lcom/easyview/struct/EVCommandDefs$Event;

    .line 1170
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/easyview/ppcs/PPCSCamera;->event:Lcom/easyview/struct/EVCommandDefs$Event;

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lstruct/StructUnpacker;->readObject(Ljava/lang/Object;)V

    .line 1171
    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    .line 1172
    .local v8, "date":Ljava/util/Date;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/easyview/ppcs/PPCSCamera;->event:Lcom/easyview/struct/EVCommandDefs$Event;

    iget v2, v2, Lcom/easyview/struct/EVCommandDefs$Event;->event_time:I

    int-to-long v0, v2

    move-wide/from16 v17, v0

    .line 1173
    .local v17, "ms":J
    const-wide/16 v2, 0x3e8

    mul-long v17, v17, v2

    .line 1174
    move-wide/from16 v0, v17

    invoke-virtual {v8, v0, v1}, Ljava/util/Date;->setTime(J)V

    .line 1175
    new-instance v20, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMddHHmmss"

    move-object/from16 v0, v20

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1176
    .local v20, "sdf":Ljava/text/SimpleDateFormat;
    const-string v2, "%s_%s.jpg"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/easyview/ppcs/PPCSCamera;->getID()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lobject/p2pipcam/utils/Pub;->getDIDNum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v4

    const/4 v4, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 1177
    .local v12, "fileName":Ljava/lang/String;
    const-string v2, "%04d_%s.jpg"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/easyview/ppcs/PPCSCamera;->event:Lcom/easyview/struct/EVCommandDefs$Event;

    iget-short v6, v6, Lcom/easyview/struct/EVCommandDefs$Event;->event_type:S

    invoke-static {v6}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v6

    aput-object v6, v3, v4

    const/4 v4, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 1178
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v9, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1179
    .local v11, "file":Ljava/io/File;
    new-instance v14, Ljava/io/FileOutputStream;

    invoke-direct {v14, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1180
    .end local v13    # "fos":Ljava/io/FileOutputStream;
    .local v14, "fos":Ljava/io/FileOutputStream;
    const/16 v2, 0x14

    add-int/lit8 v3, p2, -0x14

    :try_start_1
    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v2, v3}, Ljava/io/FileOutputStream;->write([BII)V

    .line 1181
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V

    .line 1182
    const-string v2, "Event"

    const-string v3, "%d Save Picture:%s index:%d time:%d"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/easyview/ppcs/PPCSCamera;->event:Lcom/easyview/struct/EVCommandDefs$Event;

    iget-short v7, v7, Lcom/easyview/struct/EVCommandDefs$Event;->event_type:S

    invoke-static {v7}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v7

    aput-object v7, v4, v6

    const/4 v6, 0x1

    aput-object v12, v4, v6

    const/4 v6, 0x2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/easyview/ppcs/PPCSCamera;->event:Lcom/easyview/struct/EVCommandDefs$Event;

    iget v7, v7, Lcom/easyview/struct/EVCommandDefs$Event;->index:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v6

    const/4 v6, 0x3

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/easyview/ppcs/PPCSCamera;->event:Lcom/easyview/struct/EVCommandDefs$Event;

    iget v7, v7, Lcom/easyview/struct/EVCommandDefs$Event;->event_time:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1183
    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v19

    .line 1184
    .local v19, "path":Ljava/lang/String;
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/easyview/ppcs/PPCSCamera;->eventFilePath:Ljava/lang/String;

    .line 1185
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/easyview/ppcs/PPCSCamera;->event:Lcom/easyview/struct/EVCommandDefs$Event;

    iget-short v2, v2, Lcom/easyview/struct/EVCommandDefs$Event;->event_type:S

    const/16 v3, 0x201

    if-ne v2, v3, :cond_1

    .line 1187
    invoke-static {}, Lobject/p2pipcam/utils/Pub;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/easyview/table/RecordTable;->getInstance(Landroid/content/Context;)Lcom/easyview/table/RecordTable;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/easyview/ppcs/PPCSCamera;->getKeyText()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/easyview/ppcs/PPCSCamera;->_eventFileID:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/easyview/ppcs/PPCSCamera;->event:Lcom/easyview/struct/EVCommandDefs$Event;

    move-object/from16 v0, v19

    invoke-virtual {v2, v3, v4, v6, v0}, Lcom/easyview/table/RecordTable;->Save(Ljava/lang/String;ILcom/easyview/struct/EVCommandDefs$Event;Ljava/lang/String;)J

    .line 1189
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/easyview/ppcs/PPCSCamera;->event:Lcom/easyview/struct/EVCommandDefs$Event;

    iget-short v2, v2, Lcom/easyview/struct/EVCommandDefs$Event;->event_type:S

    const/16 v3, 0x202

    if-ne v2, v3, :cond_7

    .line 1191
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/easyview/ppcs/PPCSCamera;->event:Lcom/easyview/struct/EVCommandDefs$Event;

    iget v2, v2, Lcom/easyview/struct/EVCommandDefs$Event;->record_index:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/easyview/ppcs/PPCSCamera;->_recordIndex:I

    .line 1192
    invoke-static {}, Lobject/p2pipcam/utils/Pub;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/easyview/table/RecordTable;->getInstance(Landroid/content/Context;)Lcom/easyview/table/RecordTable;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/easyview/ppcs/PPCSCamera;->getKeyText()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/easyview/ppcs/PPCSCamera;->_eventFileID:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/easyview/ppcs/PPCSCamera;->event:Lcom/easyview/struct/EVCommandDefs$Event;

    iget v6, v6, Lcom/easyview/struct/EVCommandDefs$Event;->record_index:I

    invoke-virtual {v2, v3, v4, v6}, Lcom/easyview/table/RecordTable;->getBeginTime(Ljava/lang/String;II)I

    move-result v5

    .line 1193
    .local v5, "beginTime":I
    invoke-static {}, Lobject/p2pipcam/utils/Pub;->isDrone()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1195
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/easyview/ppcs/PPCSCamera;->event:Lcom/easyview/struct/EVCommandDefs$Event;

    iget v2, v2, Lcom/easyview/struct/EVCommandDefs$Event;->event_time:I

    if-eq v5, v2, :cond_2

    .line 1197
    invoke-static {}, Lobject/p2pipcam/utils/Pub;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/easyview/table/RecordTable;->getInstance(Landroid/content/Context;)Lcom/easyview/table/RecordTable;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/easyview/ppcs/PPCSCamera;->getKeyText()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/easyview/ppcs/PPCSCamera;->_eventFileID:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/easyview/ppcs/PPCSCamera;->event:Lcom/easyview/struct/EVCommandDefs$Event;

    iget v6, v6, Lcom/easyview/struct/EVCommandDefs$Event;->record_index:I

    invoke-virtual {v2, v3, v4, v6}, Lcom/easyview/table/RecordTable;->delete(Ljava/lang/String;II)Z

    .line 1199
    :cond_2
    invoke-static {}, Lobject/p2pipcam/utils/Pub;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/easyview/table/RecordTable;->getInstance(Landroid/content/Context;)Lcom/easyview/table/RecordTable;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/easyview/ppcs/PPCSCamera;->getKeyText()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/easyview/ppcs/PPCSCamera;->_eventFileID:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/easyview/ppcs/PPCSCamera;->event:Lcom/easyview/struct/EVCommandDefs$Event;

    move-object/from16 v0, v19

    invoke-virtual {v2, v3, v4, v6, v0}, Lcom/easyview/table/RecordTable;->Save(Ljava/lang/String;ILcom/easyview/struct/EVCommandDefs$Event;Ljava/lang/String;)J

    .line 1200
    invoke-static {}, Lobject/p2pipcam/utils/Pub;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/easyview/table/EventTable;->getInstance(Landroid/content/Context;)Lcom/easyview/table/EventTable;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/easyview/ppcs/PPCSCamera;->getID()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/easyview/ppcs/PPCSCamera;->_eventFileID:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/easyview/ppcs/PPCSCamera;->event:Lcom/easyview/struct/EVCommandDefs$Event;

    move-object/from16 v0, v19

    invoke-virtual {v2, v3, v4, v6, v0}, Lcom/easyview/table/EventTable;->Save(Ljava/lang/String;ILcom/easyview/struct/EVCommandDefs$Event;Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v13, v14

    .line 1217
    .end local v5    # "beginTime":I
    .end local v8    # "date":Ljava/util/Date;
    .end local v11    # "file":Ljava/io/File;
    .end local v12    # "fileName":Ljava/lang/String;
    .end local v14    # "fos":Ljava/io/FileOutputStream;
    .end local v17    # "ms":J
    .end local v19    # "path":Ljava/lang/String;
    .end local v20    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v21    # "up":Lstruct/StructUnpacker;
    .restart local v13    # "fos":Ljava/io/FileOutputStream;
    :goto_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/easyview/ppcs/PPCSCamera;->event_count:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/easyview/ppcs/PPCSCamera;->event_count:I

    .line 1218
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/easyview/ppcs/PPCSCamera;->event:Lcom/easyview/struct/EVCommandDefs$Event;

    iget v2, v2, Lcom/easyview/struct/EVCommandDefs$Event;->index:I

    if-nez v2, :cond_3

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/easyview/ppcs/PPCSCamera;->haveFirstIndex:Z

    .line 1221
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/easyview/ppcs/PPCSCamera;->_queryEventListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

    if-eqz v2, :cond_5

    .line 1223
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/easyview/ppcs/PPCSCamera;->event:Lcom/easyview/struct/EVCommandDefs$Event;

    iget v15, v2, Lcom/easyview/struct/EVCommandDefs$Event;->index:I

    .line 1224
    .local v15, "index":I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/easyview/ppcs/PPCSCamera;->getFirstIndex:Z

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/easyview/ppcs/PPCSCamera;->haveFirstIndex:Z

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    if-ne v15, v2, :cond_4

    const/4 v15, 0x0

    .line 1225
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/easyview/ppcs/PPCSCamera;->_queryEventListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

    move-object/from16 v16, v0

    .line 1226
    .local v16, "listener":Lcom/easyview/basecamera/ICamera$IRespondListener;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/easyview/ppcs/PPCSCamera;->_queryEventListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

    .line 1227
    const/4 v2, 0x1

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-interface {v0, v1, v2, v15}, Lcom/easyview/basecamera/ICamera$IRespondListener;->OnRespondResult(Lcom/easyview/basecamera/ICamera;II)V

    .line 1230
    .end local v15    # "index":I
    .end local v16    # "listener":Lcom/easyview/basecamera/ICamera$IRespondListener;
    :cond_5
    return-void

    .line 1203
    .end local v13    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "beginTime":I
    .restart local v8    # "date":Ljava/util/Date;
    .restart local v11    # "file":Ljava/io/File;
    .restart local v12    # "fileName":Ljava/lang/String;
    .restart local v14    # "fos":Ljava/io/FileOutputStream;
    .restart local v17    # "ms":J
    .restart local v19    # "path":Ljava/lang/String;
    .restart local v20    # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v21    # "up":Lstruct/StructUnpacker;
    :cond_6
    :try_start_2
    invoke-static {}, Lobject/p2pipcam/utils/Pub;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/easyview/table/RecordTable;->getInstance(Landroid/content/Context;)Lcom/easyview/table/RecordTable;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/easyview/ppcs/PPCSCamera;->getKeyText()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/easyview/ppcs/PPCSCamera;->_eventFileID:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/easyview/ppcs/PPCSCamera;->event:Lcom/easyview/struct/EVCommandDefs$Event;

    iget v6, v6, Lcom/easyview/struct/EVCommandDefs$Event;->record_index:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/easyview/ppcs/PPCSCamera;->event:Lcom/easyview/struct/EVCommandDefs$Event;

    iget v7, v7, Lcom/easyview/struct/EVCommandDefs$Event;->event_time:I

    invoke-virtual {v2, v3, v4, v6, v7}, Lcom/easyview/table/RecordTable;->Update(Ljava/lang/String;III)Z

    .line 1204
    invoke-static {}, Lobject/p2pipcam/utils/Pub;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/easyview/table/EventTable;->getInstance(Landroid/content/Context;)Lcom/easyview/table/EventTable;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/easyview/ppcs/PPCSCamera;->getID()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/easyview/ppcs/PPCSCamera;->_eventFileID:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/easyview/ppcs/PPCSCamera;->event:Lcom/easyview/struct/EVCommandDefs$Event;

    iget v6, v6, Lcom/easyview/struct/EVCommandDefs$Event;->event_time:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/easyview/ppcs/PPCSCamera;->event:Lcom/easyview/struct/EVCommandDefs$Event;

    iget v7, v7, Lcom/easyview/struct/EVCommandDefs$Event;->record_index:I

    invoke-virtual/range {v2 .. v7}, Lcom/easyview/table/EventTable;->UpdateRecordIndex(Ljava/lang/String;IIII)Z

    move-object v13, v14

    .line 1206
    .end local v14    # "fos":Ljava/io/FileOutputStream;
    .restart local v13    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_0

    .line 1210
    .end local v5    # "beginTime":I
    .end local v13    # "fos":Ljava/io/FileOutputStream;
    .restart local v14    # "fos":Ljava/io/FileOutputStream;
    :cond_7
    invoke-static {}, Lobject/p2pipcam/utils/Pub;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/easyview/table/EventTable;->getInstance(Landroid/content/Context;)Lcom/easyview/table/EventTable;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/easyview/ppcs/PPCSCamera;->getID()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/easyview/ppcs/PPCSCamera;->_eventFileID:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/easyview/ppcs/PPCSCamera;->event:Lcom/easyview/struct/EVCommandDefs$Event;

    move-object/from16 v0, v19

    invoke-virtual {v2, v3, v4, v6, v0}, Lcom/easyview/table/EventTable;->Save(Ljava/lang/String;ILcom/easyview/struct/EVCommandDefs$Event;Ljava/lang/String;)J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object v13, v14

    .line 1214
    .end local v14    # "fos":Ljava/io/FileOutputStream;
    .restart local v13    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_0

    .end local v8    # "date":Ljava/util/Date;
    .end local v11    # "file":Ljava/io/File;
    .end local v12    # "fileName":Ljava/lang/String;
    .end local v17    # "ms":J
    .end local v19    # "path":Ljava/lang/String;
    .end local v20    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v21    # "up":Lstruct/StructUnpacker;
    :catch_0
    move-exception v10

    .line 1215
    .local v10, "e":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 1214
    .end local v10    # "e":Ljava/lang/Exception;
    .end local v13    # "fos":Ljava/io/FileOutputStream;
    .restart local v8    # "date":Ljava/util/Date;
    .restart local v11    # "file":Ljava/io/File;
    .restart local v12    # "fileName":Ljava/lang/String;
    .restart local v14    # "fos":Ljava/io/FileOutputStream;
    .restart local v17    # "ms":J
    .restart local v20    # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v21    # "up":Lstruct/StructUnpacker;
    :catch_1
    move-exception v10

    move-object v13, v14

    .end local v14    # "fos":Ljava/io/FileOutputStream;
    .restart local v13    # "fos":Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method private dealEvents([BI)V
    .locals 11
    .param p1, "data"    # [B
    .param p2, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lstruct/StructException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 1233
    new-instance v3, Lstruct/StructUnpacker;

    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {v3, p1, v4}, Lstruct/StructUnpacker;-><init>([BLjava/nio/ByteOrder;)V

    .line 1234
    .local v3, "up":Lstruct/StructUnpacker;
    new-instance v2, Lcom/easyview/struct/EVCommandDefs$EVEventListResp;

    invoke-direct {v2}, Lcom/easyview/struct/EVCommandDefs$EVEventListResp;-><init>()V

    .line 1235
    .local v2, "resp":Lcom/easyview/struct/EVCommandDefs$EVEventListResp;
    invoke-virtual {v3, v2}, Lstruct/StructUnpacker;->readObject(Ljava/lang/Object;)V

    .line 1236
    const-string v4, "Event"

    const-string v5, "event list,total: %d index:%d count:%d flag:%X"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    iget v7, v2, Lcom/easyview/struct/EVCommandDefs$EVEventListResp;->total:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    iget-byte v7, v2, Lcom/easyview/struct/EVCommandDefs$EVEventListResp;->index:B

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v6, v9

    const/4 v7, 0x2

    iget-short v8, v2, Lcom/easyview/struct/EVCommandDefs$EVEventListResp;->count:S

    invoke-static {v8}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    iget-byte v8, v2, Lcom/easyview/struct/EVCommandDefs$EVEventListResp;->endflag:B

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1238
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-short v4, v2, Lcom/easyview/struct/EVCommandDefs$EVEventListResp;->count:S

    if-lt v1, v4, :cond_2

    .line 1245
    iget-byte v4, v2, Lcom/easyview/struct/EVCommandDefs$EVEventListResp;->endflag:B

    if-eq v4, v9, :cond_0

    iget-byte v4, v2, Lcom/easyview/struct/EVCommandDefs$EVEventListResp;->endflag:B

    const/16 v5, -0x45

    if-ne v4, v5, :cond_1

    .line 1247
    :cond_0
    const-string v4, "Event"

    const-string v5, "event count %d"

    new-array v6, v9, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/easyview/ppcs/PPCSCamera;->_events:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1249
    iget-object v4, p0, Lcom/easyview/ppcs/PPCSCamera;->_queryEventsListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/easyview/ppcs/PPCSCamera;->_queryEventsListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

    const/16 v5, -0x2711

    iget v6, v2, Lcom/easyview/struct/EVCommandDefs$EVEventListResp;->total:I

    invoke-interface {v4, p0, v5, v6}, Lcom/easyview/basecamera/ICamera$IRespondListener;->OnRespondResult(Lcom/easyview/basecamera/ICamera;II)V

    .line 1251
    :cond_1
    return-void

    .line 1240
    :cond_2
    new-instance v0, Lcom/easyview/struct/EVCommandDefs$Event;

    invoke-direct {v0}, Lcom/easyview/struct/EVCommandDefs$Event;-><init>()V

    .line 1241
    .local v0, "event":Lcom/easyview/struct/EVCommandDefs$Event;
    invoke-virtual {v3, v0}, Lstruct/StructUnpacker;->readObject(Ljava/lang/Object;)V

    .line 1242
    iget-object v4, p0, Lcom/easyview/ppcs/PPCSCamera;->_events:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1238
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static isInit()Z
    .locals 1

    .prologue
    .line 109
    sget-boolean v0, Lcom/easyview/ppcs/PPCSCamera;->_init:Z

    return v0
.end method


# virtual methods
.method public OnCommand(I[BI)V
    .locals 9
    .param p1, "type"    # I
    .param p2, "data"    # [B
    .param p3, "len"    # I

    .prologue
    .line 726
    new-instance v4, Lstruct/StructUnpacker;

    sget-object v6, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {v4, p2, v6}, Lstruct/StructUnpacker;-><init>([BLjava/nio/ByteOrder;)V

    .line 728
    .local v4, "up":Lstruct/StructUnpacker;
    packed-switch p1, :pswitch_data_0

    .line 787
    :cond_0
    :goto_0
    return-void

    .line 733
    :pswitch_0
    :try_start_0
    iget-object v6, p0, Lcom/easyview/ppcs/PPCSCamera;->planeParams:Lcom/easyview/ppcs/PPCSCamera$PlaneParams;

    invoke-virtual {v4, v6}, Lstruct/StructUnpacker;->readObject(Ljava/lang/Object;)V

    .line 734
    iget-object v6, p0, Lcom/easyview/ppcs/PPCSCamera;->planeParams:Lcom/easyview/ppcs/PPCSCamera$PlaneParams;

    iget-object v6, v6, Lcom/easyview/ppcs/PPCSCamera$PlaneParams;->WiFiName:Lstruct/CString;

    invoke-virtual {v6}, Lstruct/CString;->toString()Ljava/lang/String;

    move-result-object v5

    .line 735
    .local v5, "wifiName":Ljava/lang/String;
    const-string v6, "PPCS"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "OnCommand wifiName:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 738
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/easyview/ppcs/PPCSCamera;->planeParams_OK:Z

    .line 740
    :goto_1
    iget-object v6, p0, Lcom/easyview/ppcs/PPCSCamera;->_requestParamsListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/easyview/ppcs/PPCSCamera;->_requestParamsListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-interface {v6, p0, v7, v8}, Lcom/easyview/basecamera/ICamera$IRespondListener;->OnRespondResult(Lcom/easyview/basecamera/ICamera;II)V
    :try_end_0
    .catch Lstruct/StructException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 741
    .end local v5    # "wifiName":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 742
    .local v1, "e":Lstruct/StructException;
    invoke-virtual {v1}, Lstruct/StructException;->printStackTrace()V

    goto :goto_0

    .line 739
    .end local v1    # "e":Lstruct/StructException;
    .restart local v5    # "wifiName":Ljava/lang/String;
    :cond_1
    const/4 v6, 0x1

    :try_start_1
    iput-boolean v6, p0, Lcom/easyview/ppcs/PPCSCamera;->planeParams_OK:Z
    :try_end_1
    .catch Lstruct/StructException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 749
    .end local v5    # "wifiName":Ljava/lang/String;
    :pswitch_1
    :try_start_2
    iget-object v6, p0, Lcom/easyview/ppcs/PPCSCamera;->_storageStateStruct:Lcom/easyview/struct/EVCommandDefs$StorageStateStruct;

    invoke-virtual {v4, v6}, Lstruct/StructUnpacker;->readObject(Ljava/lang/Object;)V

    .line 750
    iget-object v6, p0, Lcom/easyview/ppcs/PPCSCamera;->_storageStateStruct:Lcom/easyview/struct/EVCommandDefs$StorageStateStruct;

    iget v6, v6, Lcom/easyview/struct/EVCommandDefs$StorageStateStruct;->record_state:I

    if-lez v6, :cond_5

    .line 752
    iget-boolean v6, p0, Lcom/easyview/ppcs/PPCSCamera;->_isRecording:Z

    if-nez v6, :cond_2

    .line 754
    const-string v6, "Event"

    const-string v7, "state start record!"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/easyview/ppcs/PPCSCamera;->_isRecording:Z

    .line 757
    :cond_2
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 758
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 759
    .local v2, "ms":J
    iget-object v6, p0, Lcom/easyview/ppcs/PPCSCamera;->_storageStateStruct:Lcom/easyview/struct/EVCommandDefs$StorageStateStruct;

    iget v6, v6, Lcom/easyview/struct/EVCommandDefs$StorageStateStruct;->record_duration:I

    if-gez v6, :cond_3

    iget-object v6, p0, Lcom/easyview/ppcs/PPCSCamera;->_storageStateStruct:Lcom/easyview/struct/EVCommandDefs$StorageStateStruct;

    const/4 v7, 0x0

    iput v7, v6, Lcom/easyview/struct/EVCommandDefs$StorageStateStruct;->record_duration:I

    .line 760
    :cond_3
    iget-object v6, p0, Lcom/easyview/ppcs/PPCSCamera;->_storageStateStruct:Lcom/easyview/struct/EVCommandDefs$StorageStateStruct;

    iget v6, v6, Lcom/easyview/struct/EVCommandDefs$StorageStateStruct;->record_duration:I

    const/16 v7, 0xe10

    if-le v6, v7, :cond_4

    iget-object v6, p0, Lcom/easyview/ppcs/PPCSCamera;->_storageStateStruct:Lcom/easyview/struct/EVCommandDefs$StorageStateStruct;

    const/4 v7, 0x0

    iput v7, v6, Lcom/easyview/struct/EVCommandDefs$StorageStateStruct;->record_duration:I

    .line 761
    :cond_4
    iget-object v6, p0, Lcom/easyview/ppcs/PPCSCamera;->_storageStateStruct:Lcom/easyview/struct/EVCommandDefs$StorageStateStruct;

    iget v6, v6, Lcom/easyview/struct/EVCommandDefs$StorageStateStruct;->record_duration:I

    iput v6, p0, Lcom/easyview/ppcs/PPCSCamera;->_record_duration:I

    .line 762
    const-wide/16 v6, 0x3e8

    div-long v6, v2, v6

    long-to-int v6, v6

    iget-object v7, p0, Lcom/easyview/ppcs/PPCSCamera;->_storageStateStruct:Lcom/easyview/struct/EVCommandDefs$StorageStateStruct;

    iget v7, v7, Lcom/easyview/struct/EVCommandDefs$StorageStateStruct;->record_duration:I

    sub-int/2addr v6, v7

    iput v6, p0, Lcom/easyview/ppcs/PPCSCamera;->_startRecordTime:I
    :try_end_2
    .catch Lstruct/StructException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 771
    .end local v0    # "date":Ljava/util/Date;
    .end local v2    # "ms":J
    :catch_1
    move-exception v1

    .line 772
    .restart local v1    # "e":Lstruct/StructException;
    invoke-virtual {v1}, Lstruct/StructException;->printStackTrace()V

    goto/16 :goto_0

    .line 765
    .end local v1    # "e":Lstruct/StructException;
    :cond_5
    :try_start_3
    iget-boolean v6, p0, Lcom/easyview/ppcs/PPCSCamera;->_isRecording:Z

    if-eqz v6, :cond_0

    .line 767
    const-string v6, "Event"

    const-string v7, "state stop record!"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/easyview/ppcs/PPCSCamera;->_isRecording:Z
    :try_end_3
    .catch Lstruct/StructException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 779
    :pswitch_2
    :try_start_4
    invoke-virtual {v4}, Lstruct/StructUnpacker;->readInt()I

    move-result v6

    iput v6, p0, Lcom/easyview/ppcs/PPCSCamera;->_sensorres:I

    .line 780
    const-string v6, "PPCS"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "SensorRes:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, p0, Lcom/easyview/ppcs/PPCSCamera;->_sensorres:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    .line 781
    :catch_2
    move-exception v1

    .line 782
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 728
    :pswitch_data_0
    .packed-switch 0x5001
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public OnCustomData(I[BI)V
    .locals 22
    .param p1, "type"    # I
    .param p2, "data"    # [B
    .param p3, "len"    # I

    .prologue
    .line 791
    const-string v3, "Event"

    const-string v4, "OnCustomData len:%d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    sparse-switch p1, :sswitch_data_0

    .line 870
    :cond_0
    :goto_0
    return-void

    .line 796
    :sswitch_0
    const/16 v19, 0x0

    .line 797
    .local v19, "fos":Ljava/io/FileOutputStream;
    invoke-static {}, Lobject/p2pipcam/utils/Pub;->photoSavePathFile()Ljava/io/File;

    move-result-object v15

    .line 799
    .local v15, "div":Ljava/io/File;
    const/4 v3, 0x0

    :try_start_0
    move-object/from16 v0, p2

    invoke-static {v0, v3}, Lobject/p2pipcam/utils/Pub;->byte2int([BI)I

    move-result v12

    .line 800
    .local v12, "eventType":I
    const/4 v3, 0x4

    move-object/from16 v0, p2

    invoke-static {v0, v3}, Lobject/p2pipcam/utils/Pub;->byte2int([BI)I

    move-result v6

    .line 801
    .local v6, "eventTime":I
    const-string v3, "%s_%d.jpg"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/easyview/ppcs/PPCSCamera;->getID()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lobject/p2pipcam/utils/Pub;->getDIDNum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    const/4 v5, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    .line 804
    .local v18, "fileName":Ljava/lang/String;
    const-string v3, "%04d_%d.jpg"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v5

    const/4 v5, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    .line 806
    new-instance v17, Ljava/io/File;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v0, v15, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 807
    .local v17, "file":Ljava/io/File;
    new-instance v20, Ljava/io/FileOutputStream;

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7

    .line 808
    .end local v19    # "fos":Ljava/io/FileOutputStream;
    .local v20, "fos":Ljava/io/FileOutputStream;
    const/16 v3, 0x8

    add-int/lit8 v4, p3, -0x8

    :try_start_1
    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v3, v4}, Ljava/io/FileOutputStream;->write([BII)V

    .line 809
    invoke-virtual/range {v20 .. v20}, Ljava/io/FileOutputStream;->close()V

    .line 810
    const-string v3, "EventTable"

    const-string v4, "Save Picture:%s %d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v18, v5, v7

    const/4 v7, 0x1

    add-int/lit8 v9, p3, -0x8

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    .line 812
    .local v8, "path":Ljava/lang/String;
    const/16 v3, 0x201

    if-ne v12, v3, :cond_1

    .line 814
    invoke-static {}, Lobject/p2pipcam/utils/Pub;->isDrone()Z

    move-result v3

    if-nez v3, :cond_0

    .line 816
    invoke-static {}, Lobject/p2pipcam/utils/Pub;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/easyview/table/RecordTable;->getInstance(Landroid/content/Context;)Lcom/easyview/table/RecordTable;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/easyview/ppcs/PPCSCamera;->getID()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/easyview/ppcs/PPCSCamera;->_eventFileID:I

    move v7, v6

    invoke-virtual/range {v3 .. v8}, Lcom/easyview/table/RecordTable;->Save(Ljava/lang/String;IIILjava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 819
    .end local v8    # "path":Ljava/lang/String;
    :catch_0
    move-exception v16

    move-object/from16 v19, v20

    .line 820
    .end local v6    # "eventTime":I
    .end local v12    # "eventType":I
    .end local v17    # "file":Ljava/io/File;
    .end local v18    # "fileName":Ljava/lang/String;
    .end local v20    # "fos":Ljava/io/FileOutputStream;
    .local v16, "e":Ljava/lang/Exception;
    .restart local v19    # "fos":Ljava/io/FileOutputStream;
    :goto_1
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 818
    .end local v16    # "e":Ljava/lang/Exception;
    .end local v19    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "eventTime":I
    .restart local v8    # "path":Ljava/lang/String;
    .restart local v12    # "eventType":I
    .restart local v17    # "file":Ljava/io/File;
    .restart local v18    # "fileName":Ljava/lang/String;
    .restart local v20    # "fos":Ljava/io/FileOutputStream;
    :cond_1
    :try_start_2
    invoke-static {}, Lobject/p2pipcam/utils/Pub;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/easyview/table/EventTable;->getInstance(Landroid/content/Context;)Lcom/easyview/table/EventTable;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Lcom/easyview/ppcs/PPCSCamera;->getID()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget v11, v0, Lcom/easyview/ppcs/PPCSCamera;->_eventFileID:I

    move v13, v6

    move-object v14, v8

    invoke-virtual/range {v9 .. v14}, Lcom/easyview/table/EventTable;->Update(Ljava/lang/String;IIILjava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 827
    .end local v6    # "eventTime":I
    .end local v8    # "path":Ljava/lang/String;
    .end local v12    # "eventType":I
    .end local v15    # "div":Ljava/io/File;
    .end local v17    # "file":Ljava/io/File;
    .end local v18    # "fileName":Ljava/lang/String;
    .end local v20    # "fos":Ljava/io/FileOutputStream;
    :sswitch_1
    :try_start_3
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/easyview/ppcs/PPCSCamera;->dealDownRecord([BI)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lstruct/StructException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    .line 828
    :catch_1
    move-exception v16

    .line 829
    .local v16, "e":Ljava/io/IOException;
    invoke-virtual/range {v16 .. v16}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 830
    .end local v16    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v16

    .line 831
    .local v16, "e":Lstruct/StructException;
    invoke-virtual/range {v16 .. v16}, Lstruct/StructException;->printStackTrace()V

    goto/16 :goto_0

    .line 839
    .end local v16    # "e":Lstruct/StructException;
    :sswitch_2
    :try_start_4
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/easyview/ppcs/PPCSCamera;->dealEvent([BI)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_0

    .line 840
    :catch_3
    move-exception v16

    .line 841
    .local v16, "e":Ljava/io/IOException;
    invoke-virtual/range {v16 .. v16}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 847
    .end local v16    # "e":Ljava/io/IOException;
    :sswitch_3
    new-instance v21, Lstruct/StructUnpacker;

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v3}, Lstruct/StructUnpacker;-><init>([BLjava/nio/ByteOrder;)V

    .line 849
    .local v21, "up":Lstruct/StructUnpacker;
    :try_start_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/easyview/ppcs/PPCSCamera;->_extInfo:Lcom/easyview/struct/EVCommandDefs$ExtInfos;

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Lstruct/StructUnpacker;->readObject(Ljava/lang/Object;)V

    .line 850
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v1, v3}, Lcom/easyview/ppcs/PPCSCamera;->OnCustom(II)V
    :try_end_5
    .catch Lstruct/StructException; {:try_start_5 .. :try_end_5} :catch_4

    goto/16 :goto_0

    .line 851
    :catch_4
    move-exception v16

    .line 852
    .local v16, "e":Lstruct/StructException;
    invoke-virtual/range {v16 .. v16}, Lstruct/StructException;->printStackTrace()V

    goto/16 :goto_0

    .line 860
    .end local v16    # "e":Lstruct/StructException;
    .end local v21    # "up":Lstruct/StructUnpacker;
    :sswitch_4
    :try_start_6
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/easyview/ppcs/PPCSCamera;->dealEvents([BI)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Lstruct/StructException; {:try_start_6 .. :try_end_6} :catch_6

    goto/16 :goto_0

    .line 861
    :catch_5
    move-exception v16

    .line 862
    .local v16, "e":Ljava/io/IOException;
    invoke-virtual/range {v16 .. v16}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 863
    .end local v16    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v16

    .line 865
    .local v16, "e":Lstruct/StructException;
    invoke-virtual/range {v16 .. v16}, Lstruct/StructException;->printStackTrace()V

    goto/16 :goto_0

    .line 819
    .end local v16    # "e":Lstruct/StructException;
    .restart local v15    # "div":Ljava/io/File;
    .restart local v19    # "fos":Ljava/io/FileOutputStream;
    :catch_7
    move-exception v16

    goto :goto_1

    .line 792
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x5 -> :sswitch_4
        0x10 -> :sswitch_3
    .end sparse-switch
.end method

.method public OnEVCommand([BI)V
    .locals 16
    .param p1, "data"    # [B
    .param p2, "len"    # I

    .prologue
    .line 486
    new-instance v15, Lstruct/StructUnpacker;

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    move-object/from16 v0, p1

    invoke-direct {v15, v0, v1}, Lstruct/StructUnpacker;-><init>([BLjava/nio/ByteOrder;)V

    .line 487
    .local v15, "up":Lstruct/StructUnpacker;
    new-instance v14, Lcom/easyview/struct/EVCommandDefs$EVCommandStruct;

    invoke-direct {v14}, Lcom/easyview/struct/EVCommandDefs$EVCommandStruct;-><init>()V

    .line 488
    .local v14, "s":Lcom/easyview/struct/EVCommandDefs$EVCommandStruct;
    add-int/lit8 p2, p2, -0x8

    .line 490
    :try_start_0
    invoke-virtual {v15, v14}, Lstruct/StructUnpacker;->readObject(Ljava/lang/Object;)V

    .line 491
    const-string v1, "Event"

    const-string v2, "OnEVCommand command:0x%X len:%d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-short v6, v14, Lcom/easyview/struct/EVCommandDefs$EVCommandStruct;->command:S

    invoke-static {v6}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v6

    aput-object v6, v3, v5

    const/4 v5, 0x1

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    iget-short v1, v14, Lcom/easyview/struct/EVCommandDefs$EVCommandStruct;->command:S

    sparse-switch v1, :sswitch_data_0

    .line 723
    :cond_0
    :goto_0
    return-void

    .line 496
    :sswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/easyview/ppcs/PPCSCamera;->get_caps()Lcom/easyview/basecamera/CameraCaps;

    move-result-object v1

    invoke-virtual {v1, v15}, Lcom/easyview/basecamera/CameraCaps;->read(Lstruct/StructUnpacker;)V
    :try_end_0
    .catch Lstruct/StructException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 717
    :catch_0
    move-exception v8

    .line 718
    .local v8, "e":Lstruct/StructException;
    invoke-virtual {v8}, Lstruct/StructException;->printStackTrace()V

    goto :goto_0

    .line 501
    .end local v8    # "e":Lstruct/StructException;
    :sswitch_1
    :try_start_1
    const-string v1, "Event"

    const-string v2, "GET_EVENTS len:%d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    const/4 v1, 0x4

    move/from16 v0, p2

    if-ne v0, v1, :cond_2

    .line 505
    new-instance v12, Lcom/easyview/struct/EVCommandDefs$EVSimpleResp;

    invoke-direct {v12}, Lcom/easyview/struct/EVCommandDefs$EVSimpleResp;-><init>()V

    .line 506
    .local v12, "resp":Lcom/easyview/struct/EVCommandDefs$EVSimpleResp;
    invoke-virtual {v15, v12}, Lstruct/StructUnpacker;->readObject(Ljava/lang/Object;)V

    .line 507
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/easyview/ppcs/PPCSCamera;->_searchEventsListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/easyview/ppcs/PPCSCamera;->_searchEventsListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

    iget-short v2, v14, Lcom/easyview/struct/EVCommandDefs$EVCommandStruct;->command:S

    iget v3, v12, Lcom/easyview/struct/EVCommandDefs$EVSimpleResp;->result:I

    move-object/from16 v0, p0

    invoke-interface {v1, v0, v2, v3}, Lcom/easyview/basecamera/ICamera$IRespondListener;->OnRespondResult(Lcom/easyview/basecamera/ICamera;II)V

    .line 508
    :cond_1
    iget v1, v12, Lcom/easyview/struct/EVCommandDefs$EVSimpleResp;->result:I

    move-object/from16 v0, p0

    iput v1, v0, Lcom/easyview/ppcs/PPCSCamera;->_totalEvents:I

    .line 509
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/easyview/ppcs/PPCSCamera;->event_count:I

    .line 510
    iget v1, v12, Lcom/easyview/struct/EVCommandDefs$EVSimpleResp;->result:I

    if-nez v1, :cond_0

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/easyview/ppcs/PPCSCamera;->_ready_get_events:Z

    if-eqz v1, :cond_0

    .line 512
    const-string v1, "Event"

    const-string v2, "searchEvents"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/easyview/ppcs/PPCSCamera;->_ready_get_events:Z

    .line 514
    const/16 v1, -0x2711

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2, v3}, Lcom/easyview/ppcs/PPCSCamera;->searchEvents(IILcom/easyview/basecamera/ICamera$IRespondListener;)V
    :try_end_1
    .catch Lstruct/StructException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 719
    .end local v12    # "resp":Lcom/easyview/struct/EVCommandDefs$EVSimpleResp;
    :catch_1
    move-exception v8

    .line 721
    .local v8, "e":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 518
    .end local v8    # "e":Ljava/io/IOException;
    :cond_2
    const/16 v1, 0x20

    move/from16 v0, p2

    if-ne v0, v1, :cond_4

    .line 520
    :try_start_2
    new-instance v12, Lcom/easyview/struct/EVCommandDefs$EVCommonResp;

    invoke-direct {v12}, Lcom/easyview/struct/EVCommandDefs$EVCommonResp;-><init>()V

    .line 521
    .local v12, "resp":Lcom/easyview/struct/EVCommandDefs$EVCommonResp;
    invoke-virtual {v15, v12}, Lstruct/StructUnpacker;->readObject(Ljava/lang/Object;)V

    .line 522
    iget v1, v12, Lcom/easyview/struct/EVCommandDefs$EVCommonResp;->command:I

    const/16 v2, -0x2712

    if-ne v1, v2, :cond_0

    .line 524
    move-object/from16 v0, p0

    iget v1, v0, Lcom/easyview/ppcs/PPCSCamera;->_totalEvents:I

    iget v2, v12, Lcom/easyview/struct/EVCommandDefs$EVCommonResp;->data0:I

    if-ne v1, v2, :cond_3

    move-object/from16 v0, p0

    iget v1, v0, Lcom/easyview/ppcs/PPCSCamera;->_eventFileID:I

    iget v2, v12, Lcom/easyview/struct/EVCommandDefs$EVCommonResp;->data1:I

    if-ne v1, v2, :cond_3

    move-object/from16 v0, p0

    iget v1, v0, Lcom/easyview/ppcs/PPCSCamera;->_eventIndex:I

    iget v2, v12, Lcom/easyview/struct/EVCommandDefs$EVCommonResp;->data2:I

    if-ne v1, v2, :cond_3

    .line 526
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/easyview/ppcs/PPCSCamera;->_event_modify:Z

    .line 534
    :goto_1
    const-string v1, "Event"

    const-string v2, "total:%d fid:%d index:%d"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/easyview/ppcs/PPCSCamera;->_totalEvents:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v5

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget v6, v0, Lcom/easyview/ppcs/PPCSCamera;->_eventFileID:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v5

    const/4 v5, 0x2

    iget v6, v12, Lcom/easyview/struct/EVCommandDefs$EVCommonResp;->data2:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/easyview/ppcs/PPCSCamera;->_queryEventInfoListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/easyview/ppcs/PPCSCamera;->_queryEventInfoListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

    iget v2, v12, Lcom/easyview/struct/EVCommandDefs$EVCommonResp;->command:I

    iget v3, v12, Lcom/easyview/struct/EVCommandDefs$EVCommonResp;->data0:I

    move-object/from16 v0, p0

    invoke-interface {v1, v0, v2, v3}, Lcom/easyview/basecamera/ICamera$IRespondListener;->OnRespondResult(Lcom/easyview/basecamera/ICamera;II)V

    goto/16 :goto_0

    .line 529
    :cond_3
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/easyview/ppcs/PPCSCamera;->_event_modify:Z

    .line 530
    iget v1, v12, Lcom/easyview/struct/EVCommandDefs$EVCommonResp;->data0:I

    move-object/from16 v0, p0

    iput v1, v0, Lcom/easyview/ppcs/PPCSCamera;->_totalEvents:I

    .line 531
    iget v1, v12, Lcom/easyview/struct/EVCommandDefs$EVCommonResp;->data1:I

    move-object/from16 v0, p0

    iput v1, v0, Lcom/easyview/ppcs/PPCSCamera;->_eventFileID:I

    .line 532
    iget v1, v12, Lcom/easyview/struct/EVCommandDefs$EVCommonResp;->data2:I

    move-object/from16 v0, p0

    iput v1, v0, Lcom/easyview/ppcs/PPCSCamera;->_eventIndex:I

    goto :goto_1

    .line 542
    .end local v12    # "resp":Lcom/easyview/struct/EVCommandDefs$EVCommonResp;
    :cond_4
    :sswitch_2
    const/16 v1, 0xc

    move/from16 v0, p2

    if-lt v0, v1, :cond_7

    .line 544
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/easyview/ppcs/PPCSCamera;->_eventInfo:Lcom/easyview/struct/EVCommandDefs$EventInfo;

    invoke-virtual {v15, v1}, Lstruct/StructUnpacker;->readObject(Ljava/lang/Object;)V

    .line 545
    move-object/from16 v0, p0

    iget v1, v0, Lcom/easyview/ppcs/PPCSCamera;->_eventFileID:I

    if-nez v1, :cond_5

    .line 547
    invoke-static {}, Lobject/p2pipcam/utils/Pub;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/easyview/table/EventIndexTable;->getInstance(Landroid/content/Context;)Lcom/easyview/table/EventIndexTable;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/easyview/ppcs/PPCSCamera;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/easyview/table/EventIndexTable;->getLastIndex(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v13

    .line 548
    .local v13, "result":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v1, v13, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/easyview/ppcs/PPCSCamera;->_eventIndex:I

    .line 549
    iget-object v1, v13, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/easyview/ppcs/PPCSCamera;->_eventFileID:I

    .line 550
    const-string v1, "Event"

    const-string v2, "read table  fid:%d index:%d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/easyview/ppcs/PPCSCamera;->_eventFileID:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v5

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget v6, v0, Lcom/easyview/ppcs/PPCSCamera;->_eventIndex:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    .end local v13    # "result":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_5
    move-object/from16 v0, p0

    iget v1, v0, Lcom/easyview/ppcs/PPCSCamera;->_eventFileID:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/easyview/ppcs/PPCSCamera;->_eventInfo:Lcom/easyview/struct/EVCommandDefs$EventInfo;

    iget v2, v2, Lcom/easyview/struct/EVCommandDefs$EventInfo;->file_id:I

    if-eq v1, v2, :cond_6

    .line 554
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/easyview/ppcs/PPCSCamera;->_eventInfo:Lcom/easyview/struct/EVCommandDefs$EventInfo;

    iget v1, v1, Lcom/easyview/struct/EVCommandDefs$EventInfo;->file_id:I

    move-object/from16 v0, p0

    iput v1, v0, Lcom/easyview/ppcs/PPCSCamera;->_eventFileID:I

    .line 555
    invoke-static {}, Lobject/p2pipcam/utils/Pub;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/easyview/table/EventIndexTable;->getInstance(Landroid/content/Context;)Lcom/easyview/table/EventIndexTable;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/easyview/ppcs/PPCSCamera;->getID()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/easyview/ppcs/PPCSCamera;->_eventFileID:I

    invoke-virtual {v1, v2, v3}, Lcom/easyview/table/EventIndexTable;->getLastIndex(Ljava/lang/String;I)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/easyview/ppcs/PPCSCamera;->_eventIndex:I

    .line 557
    :cond_6
    move-object/from16 v0, p0

    iget v1, v0, Lcom/easyview/ppcs/PPCSCamera;->_eventFileID:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/easyview/ppcs/PPCSCamera;->_eventInfo:Lcom/easyview/struct/EVCommandDefs$EventInfo;

    iget v2, v2, Lcom/easyview/struct/EVCommandDefs$EventInfo;->file_id:I

    if-ne v1, v2, :cond_9

    move-object/from16 v0, p0

    iget v1, v0, Lcom/easyview/ppcs/PPCSCamera;->_eventIndex:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/easyview/ppcs/PPCSCamera;->_eventInfo:Lcom/easyview/struct/EVCommandDefs$EventInfo;

    iget v2, v2, Lcom/easyview/struct/EVCommandDefs$EventInfo;->index:I

    if-ne v1, v2, :cond_9

    .line 559
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/easyview/ppcs/PPCSCamera;->_event_modify:Z

    .line 568
    :goto_2
    const-string v1, "Event"

    const-string v2, "total:%d id:%d index:%d"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/easyview/ppcs/PPCSCamera;->_totalEvents:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v5

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget v6, v0, Lcom/easyview/ppcs/PPCSCamera;->_eventFileID:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v5

    const/4 v5, 0x2

    move-object/from16 v0, p0

    iget v6, v0, Lcom/easyview/ppcs/PPCSCamera;->_eventIndex:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/easyview/ppcs/PPCSCamera;->_queryEventInfoListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

    if-eqz v1, :cond_8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/easyview/ppcs/PPCSCamera;->_queryEventInfoListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

    iget-short v2, v14, Lcom/easyview/struct/EVCommandDefs$EVCommandStruct;->command:S

    move-object/from16 v0, p0

    iget v3, v0, Lcom/easyview/ppcs/PPCSCamera;->_eventIndex:I

    move-object/from16 v0, p0

    invoke-interface {v1, v0, v2, v3}, Lcom/easyview/basecamera/ICamera$IRespondListener;->OnRespondResult(Lcom/easyview/basecamera/ICamera;II)V

    .line 571
    :cond_8
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/easyview/ppcs/PPCSCamera;->_queryEventInfoListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

    goto/16 :goto_0

    .line 562
    :cond_9
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/easyview/ppcs/PPCSCamera;->_event_modify:Z

    .line 563
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/easyview/ppcs/PPCSCamera;->_eventInfo:Lcom/easyview/struct/EVCommandDefs$EventInfo;

    iget v1, v1, Lcom/easyview/struct/EVCommandDefs$EventInfo;->total:I

    move-object/from16 v0, p0

    iput v1, v0, Lcom/easyview/ppcs/PPCSCamera;->_totalEvents:I

    .line 564
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/easyview/ppcs/PPCSCamera;->_eventInfo:Lcom/easyview/struct/EVCommandDefs$EventInfo;

    iget v1, v1, Lcom/easyview/struct/EVCommandDefs$EventInfo;->file_id:I

    move-object/from16 v0, p0

    iput v1, v0, Lcom/easyview/ppcs/PPCSCamera;->_eventFileID:I

    .line 565
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/easyview/ppcs/PPCSCamera;->_eventInfo:Lcom/easyview/struct/EVCommandDefs$EventInfo;

    iget v1, v1, Lcom/easyview/struct/EVCommandDefs$EventInfo;->index:I

    move-object/from16 v0, p0

    iput v1, v0, Lcom/easyview/ppcs/PPCSCamera;->_eventIndex:I

    goto :goto_2

    .line 576
    :sswitch_3
    invoke-virtual {v15}, Lstruct/StructUnpacker;->readInt()I

    move-result v7

    .line 577
    .local v7, "count":I
    const-string v1, "Event"

    const-string v2, "event list:%d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    new-instance v1, Lcom/easyview/struct/EVCommandDefs$Event;

    invoke-direct {v1}, Lcom/easyview/struct/EVCommandDefs$Event;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/easyview/ppcs/PPCSCamera;->event:Lcom/easyview/struct/EVCommandDefs$Event;

    .line 579
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/easyview/ppcs/PPCSCamera;->event:Lcom/easyview/struct/EVCommandDefs$Event;

    const/4 v2, 0x0

    iput v2, v1, Lcom/easyview/struct/EVCommandDefs$Event;->index:I

    .line 580
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_3
    if-lt v9, v7, :cond_a

    .line 600
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/easyview/ppcs/PPCSCamera;->_queryEventsListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/easyview/ppcs/PPCSCamera;->_queryEventsListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/easyview/ppcs/PPCSCamera;->event:Lcom/easyview/struct/EVCommandDefs$Event;

    iget v2, v2, Lcom/easyview/struct/EVCommandDefs$Event;->index:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/easyview/ppcs/PPCSCamera;->_eventIndex:I

    move-object/from16 v0, p0

    invoke-interface {v1, v0, v2, v3}, Lcom/easyview/basecamera/ICamera$IRespondListener;->OnRespondResult(Lcom/easyview/basecamera/ICamera;II)V

    goto/16 :goto_0

    .line 582
    :cond_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/easyview/ppcs/PPCSCamera;->event:Lcom/easyview/struct/EVCommandDefs$Event;

    invoke-virtual {v15, v1}, Lstruct/StructUnpacker;->readObject(Ljava/lang/Object;)V

    .line 583
    invoke-static {}, Lobject/p2pipcam/utils/Pub;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/easyview/table/EventIndexTable;->getInstance(Landroid/content/Context;)Lcom/easyview/table/EventIndexTable;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/easyview/ppcs/PPCSCamera;->getID()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/easyview/ppcs/PPCSCamera;->_eventFileID:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/easyview/ppcs/PPCSCamera;->event:Lcom/easyview/struct/EVCommandDefs$Event;

    iget v5, v5, Lcom/easyview/struct/EVCommandDefs$Event;->index:I

    invoke-virtual {v1, v2, v3, v5}, Lcom/easyview/table/EventIndexTable;->updateIndex(Ljava/lang/String;II)V

    .line 584
    const-string v1, "Event"

    const-string v2, "index:%d type:%d time:%d record:%d"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/easyview/ppcs/PPCSCamera;->event:Lcom/easyview/struct/EVCommandDefs$Event;

    iget v6, v6, Lcom/easyview/struct/EVCommandDefs$Event;->index:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v5

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/easyview/ppcs/PPCSCamera;->event:Lcom/easyview/struct/EVCommandDefs$Event;

    iget-short v6, v6, Lcom/easyview/struct/EVCommandDefs$Event;->event_type:S

    invoke-static {v6}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v6

    aput-object v6, v3, v5

    const/4 v5, 0x2

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/easyview/ppcs/PPCSCamera;->event:Lcom/easyview/struct/EVCommandDefs$Event;

    iget v6, v6, Lcom/easyview/struct/EVCommandDefs$Event;->event_time:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v5

    const/4 v5, 0x3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/easyview/ppcs/PPCSCamera;->event:Lcom/easyview/struct/EVCommandDefs$Event;

    iget v6, v6, Lcom/easyview/struct/EVCommandDefs$Event;->record_index:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/easyview/ppcs/PPCSCamera;->event:Lcom/easyview/struct/EVCommandDefs$Event;

    iget-short v1, v1, Lcom/easyview/struct/EVCommandDefs$Event;->event_type:S

    const/16 v2, 0x201

    if-ne v1, v2, :cond_b

    .line 588
    invoke-static {}, Lobject/p2pipcam/utils/Pub;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/easyview/table/RecordTable;->getInstance(Landroid/content/Context;)Lcom/easyview/table/RecordTable;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/easyview/ppcs/PPCSCamera;->getKeyText()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/easyview/ppcs/PPCSCamera;->_eventFileID:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/easyview/ppcs/PPCSCamera;->event:Lcom/easyview/struct/EVCommandDefs$Event;

    const/4 v6, 0x0

    invoke-virtual {v1, v2, v3, v5, v6}, Lcom/easyview/table/RecordTable;->Save(Ljava/lang/String;ILcom/easyview/struct/EVCommandDefs$Event;Ljava/lang/String;)J

    .line 580
    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_3

    .line 590
    :cond_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/easyview/ppcs/PPCSCamera;->event:Lcom/easyview/struct/EVCommandDefs$Event;

    iget-short v1, v1, Lcom/easyview/struct/EVCommandDefs$Event;->event_type:S

    const/16 v2, 0x202

    if-ne v1, v2, :cond_c

    .line 592
    invoke-static {}, Lobject/p2pipcam/utils/Pub;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/easyview/table/RecordTable;->getInstance(Landroid/content/Context;)Lcom/easyview/table/RecordTable;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/easyview/ppcs/PPCSCamera;->getKeyText()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/easyview/ppcs/PPCSCamera;->_eventFileID:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/easyview/ppcs/PPCSCamera;->event:Lcom/easyview/struct/EVCommandDefs$Event;

    iget v5, v5, Lcom/easyview/struct/EVCommandDefs$Event;->record_index:I

    invoke-virtual {v1, v2, v3, v5}, Lcom/easyview/table/RecordTable;->getBeginTime(Ljava/lang/String;II)I

    move-result v4

    .line 593
    .local v4, "beginTime":I
    invoke-static {}, Lobject/p2pipcam/utils/Pub;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/easyview/table/RecordTable;->getInstance(Landroid/content/Context;)Lcom/easyview/table/RecordTable;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/easyview/ppcs/PPCSCamera;->getKeyText()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/easyview/ppcs/PPCSCamera;->_eventFileID:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/easyview/ppcs/PPCSCamera;->event:Lcom/easyview/struct/EVCommandDefs$Event;

    iget v5, v5, Lcom/easyview/struct/EVCommandDefs$Event;->record_index:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/easyview/ppcs/PPCSCamera;->event:Lcom/easyview/struct/EVCommandDefs$Event;

    iget v6, v6, Lcom/easyview/struct/EVCommandDefs$Event;->event_time:I

    invoke-virtual {v1, v2, v3, v5, v6}, Lcom/easyview/table/RecordTable;->Update(Ljava/lang/String;III)Z

    .line 594
    invoke-static {}, Lobject/p2pipcam/utils/Pub;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/easyview/table/EventTable;->getInstance(Landroid/content/Context;)Lcom/easyview/table/EventTable;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/easyview/ppcs/PPCSCamera;->getID()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/easyview/ppcs/PPCSCamera;->_eventFileID:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/easyview/ppcs/PPCSCamera;->event:Lcom/easyview/struct/EVCommandDefs$Event;

    iget v5, v5, Lcom/easyview/struct/EVCommandDefs$Event;->event_time:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/easyview/ppcs/PPCSCamera;->event:Lcom/easyview/struct/EVCommandDefs$Event;

    iget v6, v6, Lcom/easyview/struct/EVCommandDefs$Event;->record_index:I

    invoke-virtual/range {v1 .. v6}, Lcom/easyview/table/EventTable;->UpdateRecordIndex(Ljava/lang/String;IIII)Z

    goto :goto_4

    .line 597
    .end local v4    # "beginTime":I
    :cond_c
    invoke-static {}, Lobject/p2pipcam/utils/Pub;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/easyview/table/EventTable;->getInstance(Landroid/content/Context;)Lcom/easyview/table/EventTable;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/easyview/ppcs/PPCSCamera;->getID()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/easyview/ppcs/PPCSCamera;->_eventFileID:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/easyview/ppcs/PPCSCamera;->event:Lcom/easyview/struct/EVCommandDefs$Event;

    const/4 v6, 0x0

    invoke-virtual {v1, v2, v3, v5, v6}, Lcom/easyview/table/EventTable;->Save(Ljava/lang/String;ILcom/easyview/struct/EVCommandDefs$Event;Ljava/lang/String;)J

    goto :goto_4

    .line 605
    .end local v7    # "count":I
    .end local v9    # "i":I
    :sswitch_4
    new-instance v12, Lcom/easyview/struct/EVCommandDefs$EVSimpleResp;

    invoke-direct {v12}, Lcom/easyview/struct/EVCommandDefs$EVSimpleResp;-><init>()V

    .line 606
    .local v12, "resp":Lcom/easyview/struct/EVCommandDefs$EVSimpleResp;
    invoke-virtual {v15, v12}, Lstruct/StructUnpacker;->readObject(Ljava/lang/Object;)V

    .line 607
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/easyview/ppcs/PPCSCamera;->_queryEventListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

    if-eqz v1, :cond_0

    iget v1, v12, Lcom/easyview/struct/EVCommandDefs$EVSimpleResp;->result:I

    if-nez v1, :cond_0

    .line 609
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/easyview/ppcs/PPCSCamera;->_queryEventListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

    .line 610
    .local v10, "l":Lcom/easyview/basecamera/ICamera$IRespondListener;
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/easyview/ppcs/PPCSCamera;->_queryEventListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

    .line 611
    const-string v1, "Event"

    const-string v2, "Get_EVENT"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    iget-short v1, v14, Lcom/easyview/struct/EVCommandDefs$EVCommandStruct;->command:S

    iget v2, v12, Lcom/easyview/struct/EVCommandDefs$EVSimpleResp;->result:I

    move-object/from16 v0, p0

    invoke-interface {v10, v0, v1, v2}, Lcom/easyview/basecamera/ICamera$IRespondListener;->OnRespondResult(Lcom/easyview/basecamera/ICamera;II)V

    goto/16 :goto_0

    .line 618
    .end local v10    # "l":Lcom/easyview/basecamera/ICamera$IRespondListener;
    .end local v12    # "resp":Lcom/easyview/struct/EVCommandDefs$EVSimpleResp;
    :sswitch_5
    new-instance v12, Lcom/easyview/struct/EVCommandDefs$EVDownRecordResp;

    invoke-direct {v12}, Lcom/easyview/struct/EVCommandDefs$EVDownRecordResp;-><init>()V

    .line 619
    .local v12, "resp":Lcom/easyview/struct/EVCommandDefs$EVDownRecordResp;
    invoke-virtual {v15, v12}, Lstruct/StructUnpacker;->readObject(Ljava/lang/Object;)V

    .line 620
    iget v1, v12, Lcom/easyview/struct/EVCommandDefs$EVDownRecordResp;->file_size:I

    if-nez v1, :cond_d

    .line 622
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/easyview/ppcs/PPCSCamera;->downListener:Lcom/easyview/basecamera/ICamera$IDownloadListener;

    if-eqz v1, :cond_0

    .line 624
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/easyview/ppcs/PPCSCamera;->downListener:Lcom/easyview/basecamera/ICamera$IDownloadListener;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-interface {v1, v0, v2, v3}, Lcom/easyview/basecamera/ICamera$IDownloadListener;->OnProgress(Lcom/easyview/basecamera/ICamera;II)V

    goto/16 :goto_0

    .line 628
    :cond_d
    iget v1, v12, Lcom/easyview/struct/EVCommandDefs$EVDownRecordResp;->file_size:I

    move-object/from16 v0, p0

    iput v1, v0, Lcom/easyview/ppcs/PPCSCamera;->record_file_size:I

    goto/16 :goto_0

    .line 634
    .end local v12    # "resp":Lcom/easyview/struct/EVCommandDefs$EVDownRecordResp;
    :sswitch_6
    new-instance v12, Lcom/easyview/struct/EVCommandDefs$EVSimpleResp;

    invoke-direct {v12}, Lcom/easyview/struct/EVCommandDefs$EVSimpleResp;-><init>()V

    .line 635
    .local v12, "resp":Lcom/easyview/struct/EVCommandDefs$EVSimpleResp;
    invoke-virtual {v15, v12}, Lstruct/StructUnpacker;->readObject(Ljava/lang/Object;)V

    .line 636
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/easyview/ppcs/PPCSCamera;->_wifiResultListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/easyview/ppcs/PPCSCamera;->_wifiResultListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

    const/16 v2, 0x201

    iget v3, v12, Lcom/easyview/struct/EVCommandDefs$EVSimpleResp;->result:I

    move-object/from16 v0, p0

    invoke-interface {v1, v0, v2, v3}, Lcom/easyview/basecamera/ICamera$IRespondListener;->OnRespondResult(Lcom/easyview/basecamera/ICamera;II)V

    goto/16 :goto_0

    .line 641
    .end local v12    # "resp":Lcom/easyview/struct/EVCommandDefs$EVSimpleResp;
    :sswitch_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/easyview/ppcs/PPCSCamera;->_extThres:Lcom/easyview/struct/EVCommandDefs$ExtThresholds;

    invoke-virtual {v15, v1}, Lstruct/StructUnpacker;->readObject(Ljava/lang/Object;)V

    .line 642
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/easyview/ppcs/PPCSCamera;->_extThresListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/easyview/ppcs/PPCSCamera;->_extThresListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

    const/16 v2, 0x117

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-interface {v1, v0, v2, v3}, Lcom/easyview/basecamera/ICamera$IRespondListener;->OnRespondResult(Lcom/easyview/basecamera/ICamera;II)V

    goto/16 :goto_0

    .line 647
    :sswitch_8
    new-instance v12, Lcom/easyview/struct/EVCommandDefs$EVSimpleResp;

    invoke-direct {v12}, Lcom/easyview/struct/EVCommandDefs$EVSimpleResp;-><init>()V

    .line 648
    .restart local v12    # "resp":Lcom/easyview/struct/EVCommandDefs$EVSimpleResp;
    invoke-virtual {v15, v12}, Lstruct/StructUnpacker;->readObject(Ljava/lang/Object;)V

    .line 649
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/easyview/ppcs/PPCSCamera;->_extSetThresListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/easyview/ppcs/PPCSCamera;->_extSetThresListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

    const/16 v2, 0x118

    iget v3, v12, Lcom/easyview/struct/EVCommandDefs$EVSimpleResp;->result:I

    move-object/from16 v0, p0

    invoke-interface {v1, v0, v2, v3}, Lcom/easyview/basecamera/ICamera$IRespondListener;->OnRespondResult(Lcom/easyview/basecamera/ICamera;II)V

    goto/16 :goto_0

    .line 654
    .end local v12    # "resp":Lcom/easyview/struct/EVCommandDefs$EVSimpleResp;
    :sswitch_9
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_5
    const/16 v1, 0x8

    if-lt v9, v1, :cond_e

    .line 658
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/easyview/ppcs/PPCSCamera;->ioSwitchParamsListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

    if-eqz v1, :cond_0

    .line 660
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/easyview/ppcs/PPCSCamera;->ioSwitchParamsListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

    const/16 v2, 0x130

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-interface {v1, v0, v2, v3}, Lcom/easyview/basecamera/ICamera$IRespondListener;->OnRespondResult(Lcom/easyview/basecamera/ICamera;II)V

    .line 661
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/easyview/ppcs/PPCSCamera;->ioSwitchParamsListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

    goto/16 :goto_0

    .line 656
    :cond_e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/easyview/ppcs/PPCSCamera;->ioSwitchParams:[Lcom/easyview/struct/EVCommandDefs$IOSwitchParam;

    aget-object v1, v1, v9

    invoke-virtual {v15, v1}, Lstruct/StructUnpacker;->readObject(Ljava/lang/Object;)V

    .line 654
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 667
    .end local v9    # "i":I
    :sswitch_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/easyview/ppcs/PPCSCamera;->ioSwitchParamsListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

    if-eqz v1, :cond_0

    .line 669
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/easyview/ppcs/PPCSCamera;->ioSwitchParamsListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

    const/16 v2, 0x131

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-interface {v1, v0, v2, v3}, Lcom/easyview/basecamera/ICamera$IRespondListener;->OnRespondResult(Lcom/easyview/basecamera/ICamera;II)V

    .line 670
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/easyview/ppcs/PPCSCamera;->ioSwitchParamsListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

    goto/16 :goto_0

    .line 676
    :sswitch_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/easyview/ppcs/PPCSCamera;->DevInfoParam:Lcom/easyview/struct/EVCommandDefs$DeviceInfoParam;

    invoke-virtual {v15, v1}, Lstruct/StructUnpacker;->readObject(Ljava/lang/Object;)V

    .line 677
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/easyview/ppcs/PPCSCamera;->queryDeviceInfoListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

    if-eqz v1, :cond_f

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/easyview/ppcs/PPCSCamera;->queryDeviceInfoListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

    const/16 v2, 0x203

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-interface {v1, v0, v2, v3}, Lcom/easyview/basecamera/ICamera$IRespondListener;->OnRespondResult(Lcom/easyview/basecamera/ICamera;II)V

    .line 678
    :cond_f
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/easyview/ppcs/PPCSCamera;->queryDeviceInfoListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

    goto/16 :goto_0

    .line 683
    :sswitch_c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/easyview/ppcs/PPCSCamera;->upgradeDeviceListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

    if-eqz v1, :cond_10

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/easyview/ppcs/PPCSCamera;->upgradeDeviceListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

    const/16 v2, 0x204

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-interface {v1, v0, v2, v3}, Lcom/easyview/basecamera/ICamera$IRespondListener;->OnRespondResult(Lcom/easyview/basecamera/ICamera;II)V

    .line 684
    :cond_10
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/easyview/ppcs/PPCSCamera;->upgradeDeviceListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

    goto/16 :goto_0

    .line 689
    :sswitch_d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/easyview/ppcs/PPCSCamera;->upgradeCheckListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

    if-eqz v1, :cond_11

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/easyview/ppcs/PPCSCamera;->upgradeCheckListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

    const/16 v2, 0x205

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-interface {v1, v0, v2, v3}, Lcom/easyview/basecamera/ICamera$IRespondListener;->OnRespondResult(Lcom/easyview/basecamera/ICamera;II)V

    .line 690
    :cond_11
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/easyview/ppcs/PPCSCamera;->upgradeCheckListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

    goto/16 :goto_0

    .line 695
    :sswitch_e
    new-instance v12, Lcom/easyview/struct/EVCommandDefs$EVCommonResp;

    invoke-direct {v12}, Lcom/easyview/struct/EVCommandDefs$EVCommonResp;-><init>()V

    .line 696
    .local v12, "resp":Lcom/easyview/struct/EVCommandDefs$EVCommonResp;
    invoke-virtual {v15, v12}, Lstruct/StructUnpacker;->readObject(Ljava/lang/Object;)V

    .line 697
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/easyview/ppcs/PPCSCamera;->queryLightValueListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

    if-eqz v1, :cond_0

    .line 699
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/easyview/ppcs/PPCSCamera;->queryLightValueListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

    .line 700
    .local v11, "listener":Lcom/easyview/basecamera/ICamera$IRespondListener;
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/easyview/ppcs/PPCSCamera;->queryLightValueListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

    .line 701
    iget v1, v12, Lcom/easyview/struct/EVCommandDefs$EVCommonResp;->data0:I

    iget v2, v12, Lcom/easyview/struct/EVCommandDefs$EVCommonResp;->data1:I

    move-object/from16 v0, p0

    invoke-interface {v11, v0, v1, v2}, Lcom/easyview/basecamera/ICamera$IRespondListener;->OnRespondResult(Lcom/easyview/basecamera/ICamera;II)V

    goto/16 :goto_0

    .line 707
    .end local v11    # "listener":Lcom/easyview/basecamera/ICamera$IRespondListener;
    .end local v12    # "resp":Lcom/easyview/struct/EVCommandDefs$EVCommonResp;
    :sswitch_f
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/easyview/ppcs/PPCSCamera;->lcdCtrlParam:Lcom/easyview/struct/EVCommandDefs$LCDCtrlParam;

    invoke-virtual {v15, v1}, Lstruct/StructUnpacker;->readObject(Ljava/lang/Object;)V

    .line 708
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/easyview/ppcs/PPCSCamera;->lcdParamsListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

    if-eqz v1, :cond_0

    .line 710
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/easyview/ppcs/PPCSCamera;->lcdParamsListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

    .line 711
    .restart local v11    # "listener":Lcom/easyview/basecamera/ICamera$IRespondListener;
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/easyview/ppcs/PPCSCamera;->lcdParamsListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

    .line 712
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/easyview/ppcs/PPCSCamera;->lcdCtrlParam:Lcom/easyview/struct/EVCommandDefs$LCDCtrlParam;

    iget v2, v2, Lcom/easyview/struct/EVCommandDefs$LCDCtrlParam;->cmd:I

    move-object/from16 v0, p0

    invoke-interface {v11, v0, v1, v2}, Lcom/easyview/basecamera/ICamera$IRespondListener;->OnRespondResult(Lcom/easyview/basecamera/ICamera;II)V
    :try_end_2
    .catch Lstruct/StructException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 492
    nop

    :sswitch_data_0
    .sparse-switch
        0x101 -> :sswitch_0
        0x102 -> :sswitch_1
        0x105 -> :sswitch_5
        0x108 -> :sswitch_2
        0x109 -> :sswitch_3
        0x10a -> :sswitch_4
        0x117 -> :sswitch_7
        0x118 -> :sswitch_8
        0x130 -> :sswitch_9
        0x131 -> :sswitch_a
        0x133 -> :sswitch_f
        0x140 -> :sswitch_e
        0x201 -> :sswitch_6
        0x203 -> :sswitch_b
        0x204 -> :sswitch_c
        0x205 -> :sswitch_d
    .end sparse-switch
.end method

.method public OnNotify(II)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "param"    # I

    .prologue
    const/4 v3, 0x0

    .line 874
    const-string v0, "PPCS"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "OnNotify:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " param:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    if-nez p1, :cond_0

    .line 877
    invoke-virtual {p0, p2}, Lcom/easyview/ppcs/PPCSCamera;->OnStatusNotify(I)V

    .line 878
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 880
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/easyview/ppcs/PPCSCamera;->_isOnline:Z

    .line 881
    invoke-static {}, Lobject/p2pipcam/nativecaller/NativeCaller;->PPPPNetworkDetect()I

    .line 890
    :cond_0
    :goto_0
    return-void

    .line 882
    :cond_1
    const/4 v0, 0x3

    if-eq p2, v0, :cond_2

    .line 883
    const/4 v0, 0x6

    if-eq p2, v0, :cond_2

    .line 884
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 886
    :cond_2
    iput-boolean v3, p0, Lcom/easyview/ppcs/PPCSCamera;->_isOnline:Z

    .line 887
    iput-boolean v3, p0, Lcom/easyview/ppcs/PPCSCamera;->_isStartVideo:Z

    goto :goto_0
.end method

.method public RequestParams(Lcom/easyview/basecamera/ICamera$IRespondListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/easyview/basecamera/ICamera$IRespondListener;

    .prologue
    .line 1409
    iput-object p1, p0, Lcom/easyview/ppcs/PPCSCamera;->_requestParamsListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

    .line 1410
    const/16 v0, 0x1e

    invoke-virtual {p0, v0}, Lcom/easyview/ppcs/PPCSCamera;->setVideoQuality(I)V

    .line 1411
    invoke-virtual {p0}, Lcom/easyview/ppcs/PPCSCamera;->getID()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lobject/p2pipcam/nativecaller/NativeCaller;->PPPPGetSystemParams(Ljava/lang/String;I)I

    .line 1412
    return-void
.end method

.method public SaveAlarm(IIII)V
    .locals 10
    .param p1, "alarmType"    # I
    .param p2, "alarmTime"    # I
    .param p3, "endTime"    # I
    .param p4, "value"    # I

    .prologue
    const/16 v3, 0x204

    const/16 v2, 0x201

    const/4 v9, 0x0

    .line 1254
    if-ne p1, v3, :cond_1

    .line 1256
    iget-object v0, p0, Lcom/easyview/ppcs/PPCSCamera;->_playAudioListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/easyview/ppcs/PPCSCamera;->_playAudioListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

    const/16 v1, 0xa

    invoke-interface {v0, p0, v3, v1}, Lcom/easyview/basecamera/ICamera$IRespondListener;->OnRespondResult(Lcom/easyview/basecamera/ICamera;II)V

    .line 1298
    :cond_0
    :goto_0
    return-void

    .line 1259
    :cond_1
    const/16 v0, 0x202

    if-ne p1, v0, :cond_3

    .line 1261
    invoke-static {}, Lobject/p2pipcam/utils/Pub;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/easyview/table/EventTable;->getInstance(Landroid/content/Context;)Lcom/easyview/table/EventTable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/easyview/ppcs/PPCSCamera;->getID()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/easyview/ppcs/PPCSCamera;->_eventFileID:I

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/easyview/table/EventTable;->Update(Ljava/lang/String;IIII)Z

    .line 1265
    iget v0, p0, Lcom/easyview/ppcs/PPCSCamera;->_recordIndex:I

    if-ltz v0, :cond_2

    .line 1267
    invoke-static {}, Lobject/p2pipcam/utils/Pub;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/easyview/table/EventTable;->getInstance(Landroid/content/Context;)Lcom/easyview/table/EventTable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/easyview/ppcs/PPCSCamera;->getID()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/easyview/ppcs/PPCSCamera;->_eventFileID:I

    iget v5, p0, Lcom/easyview/ppcs/PPCSCamera;->_recordIndex:I

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/easyview/table/EventTable;->UpdateRecordIndex(Ljava/lang/String;IIII)Z

    .line 1269
    const/4 v0, -0x1

    iput v0, p0, Lcom/easyview/ppcs/PPCSCamera;->_recordIndex:I

    .line 1271
    :cond_2
    iget-boolean v0, p0, Lcom/easyview/ppcs/PPCSCamera;->_isRecording:Z

    if-eqz v0, :cond_0

    .line 1273
    const-string v0, "Event"

    const-string v1, "event stop record!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1274
    iput-boolean v9, p0, Lcom/easyview/ppcs/PPCSCamera;->_isRecording:Z

    goto :goto_0

    .line 1278
    :cond_3
    if-ne p1, v2, :cond_4

    .line 1281
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    .line 1282
    .local v6, "date":Ljava/util/Date;
    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    .line 1283
    .local v7, "ms":J
    const-wide/16 v0, 0x3e8

    div-long v0, v7, v0

    long-to-int v0, v0

    iput v0, p0, Lcom/easyview/ppcs/PPCSCamera;->_startRecordTime:I

    .line 1284
    iget-boolean v0, p0, Lcom/easyview/ppcs/PPCSCamera;->_isRecording:Z

    if-nez v0, :cond_4

    .line 1286
    const-string v0, "Event"

    const-string v1, "event start record!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1287
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/easyview/ppcs/PPCSCamera;->_isRecording:Z

    .line 1288
    iput v9, p0, Lcom/easyview/ppcs/PPCSCamera;->_record_duration:I

    .line 1292
    .end local v6    # "date":Ljava/util/Date;
    .end local v7    # "ms":J
    :cond_4
    if-eq p1, v2, :cond_0

    .line 1294
    iput p1, p0, Lcom/easyview/ppcs/PPCSCamera;->_alarmType:I

    .line 1295
    iput p2, p0, Lcom/easyview/ppcs/PPCSCamera;->_alarmTime:I

    goto :goto_0
.end method

.method public Start()V
    .locals 4

    .prologue
    .line 225
    const-string v0, "PPCS"

    const-string v1, "Start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    iget-boolean v0, p0, Lcom/easyview/ppcs/PPCSCamera;->_isOnline:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/easyview/ppcs/PPCSCamera;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/easyview/ppcs/PPCSCamera;->getUser()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/easyview/ppcs/PPCSCamera;->getPwd()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/easyview/ppcs/PPCSCamera;->reconnect:I

    invoke-static {v0, v1, v2, v3}, Lobject/p2pipcam/nativecaller/NativeCaller;->StartPPPP(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    .line 227
    :cond_0
    return-void
.end method

.method public StartAudio()V
    .locals 1

    .prologue
    .line 267
    invoke-virtual {p0}, Lcom/easyview/ppcs/PPCSCamera;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lobject/p2pipcam/nativecaller/NativeCaller;->PPPPStartAudio(Ljava/lang/String;)I

    .line 268
    return-void
.end method

.method public StartTalk()V
    .locals 2

    .prologue
    .line 275
    const-string v0, "PPCS"

    const-string v1, "StartTalk"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    invoke-virtual {p0}, Lcom/easyview/ppcs/PPCSCamera;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lobject/p2pipcam/nativecaller/NativeCaller;->PPPPStartTalk(Ljava/lang/String;)I

    .line 279
    return-void
.end method

.method public StartVideo(Lcom/easyview/basecamera/ICamera$IDataListener;)V
    .locals 5
    .param p1, "listener"    # Lcom/easyview/basecamera/ICamera$IDataListener;

    .prologue
    .line 238
    iput-object p1, p0, Lcom/easyview/ppcs/PPCSCamera;->_videoDataListener:Lcom/easyview/basecamera/ICamera$IDataListener;

    .line 239
    invoke-virtual {p0}, Lcom/easyview/ppcs/PPCSCamera;->isOnline()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 241
    const/4 v1, 0x0

    .line 242
    .local v1, "streamType":I
    invoke-virtual {p0}, Lcom/easyview/ppcs/PPCSCamera;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lobject/p2pipcam/nativecaller/NativeCaller;->StartPPPPLivestream(Ljava/lang/String;I)I

    move-result v0

    .line 243
    .local v0, "ret":I
    const-string v2, "PPCS"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "StartVideo ret:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/easyview/ppcs/PPCSCamera;->_isStartVideo:Z

    .line 246
    .end local v0    # "ret":I
    .end local v1    # "streamType":I
    :cond_0
    return-void
.end method

.method public StartVideoYUV(Lcom/easyview/basecamera/ICamera$IYUVDataListener;)V
    .locals 5
    .param p1, "listener"    # Lcom/easyview/basecamera/ICamera$IYUVDataListener;

    .prologue
    .line 249
    iput-object p1, p0, Lcom/easyview/ppcs/PPCSCamera;->_yuvDataListener:Lcom/easyview/basecamera/ICamera$IYUVDataListener;

    .line 250
    invoke-virtual {p0}, Lcom/easyview/ppcs/PPCSCamera;->isOnline()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 252
    const/4 v1, 0x0

    .line 253
    .local v1, "streamType":I
    invoke-virtual {p0}, Lcom/easyview/ppcs/PPCSCamera;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lobject/p2pipcam/nativecaller/NativeCaller;->StartPPPPLivestream(Ljava/lang/String;I)I

    move-result v0

    .line 254
    .local v0, "ret":I
    const-string v2, "PPCS"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "StartVideo ret:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/easyview/ppcs/PPCSCamera;->_isStartVideo:Z

    .line 257
    .end local v0    # "ret":I
    .end local v1    # "streamType":I
    :cond_0
    return-void
.end method

.method public Stop()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 231
    invoke-virtual {p0}, Lcom/easyview/ppcs/PPCSCamera;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lobject/p2pipcam/nativecaller/NativeCaller;->StopPPPP(Ljava/lang/String;)I

    .line 232
    iput-boolean v1, p0, Lcom/easyview/ppcs/PPCSCamera;->_isOnline:Z

    .line 233
    iput-boolean v1, p0, Lcom/easyview/ppcs/PPCSCamera;->_isStartVideo:Z

    .line 234
    return-void
.end method

.method public StopAudio()V
    .locals 1

    .prologue
    .line 271
    invoke-virtual {p0}, Lcom/easyview/ppcs/PPCSCamera;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lobject/p2pipcam/nativecaller/NativeCaller;->PPPPStopAudio(Ljava/lang/String;)I

    .line 272
    return-void
.end method

.method public StopTalk()V
    .locals 2

    .prologue
    .line 286
    const-string v0, "PPCS"

    const-string v1, "StopTalk"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    invoke-virtual {p0}, Lcom/easyview/ppcs/PPCSCamera;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lobject/p2pipcam/nativecaller/NativeCaller;->PPPPStopTalk(Ljava/lang/String;)I

    .line 288
    return-void
.end method

.method public StopVideo()V
    .locals 1

    .prologue
    .line 260
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/easyview/ppcs/PPCSCamera;->_videoDataListener:Lcom/easyview/basecamera/ICamera$IDataListener;

    .line 261
    invoke-virtual {p0}, Lcom/easyview/ppcs/PPCSCamera;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lobject/p2pipcam/nativecaller/NativeCaller;->StopPPPPLivestream(Ljava/lang/String;)I

    .line 262
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/easyview/ppcs/PPCSCamera;->_isStartVideo:Z

    .line 263
    return-void
.end method

.method public TalkAudioData([BI)V
    .locals 1
    .param p1, "data"    # [B
    .param p2, "len"    # I

    .prologue
    .line 282
    invoke-virtual {p0}, Lcom/easyview/ppcs/PPCSCamera;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lobject/p2pipcam/nativecaller/NativeCaller;->PPPPTalkAudioData(Ljava/lang/String;[BI)I

    .line 283
    return-void
.end method

.method public delEvents([ILcom/easyview/basecamera/ICamera$IRespondListener;)V
    .locals 4
    .param p1, "array"    # [I
    .param p2, "listener"    # Lcom/easyview/basecamera/ICamera$IRespondListener;

    .prologue
    .line 1147
    const/4 v2, -0x1

    iput v2, p0, Lcom/easyview/ppcs/PPCSCamera;->_eventIndex:I

    .line 1149
    :try_start_0
    invoke-static {p1}, Lcom/easyview/struct/EVCommandDefs;->MakeDelEventsReqPacket([I)[B

    move-result-object v0

    .line 1150
    .local v0, "data":[B
    invoke-virtual {p0}, Lcom/easyview/ppcs/PPCSCamera;->getID()Ljava/lang/String;

    move-result-object v2

    array-length v3, v0

    invoke-static {v2, v0, v3}, Lobject/p2pipcam/nativecaller/NativeCaller;->EVCommand(Ljava/lang/String;[BI)I
    :try_end_0
    .catch Lstruct/StructException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1157
    .end local v0    # "data":[B
    :goto_0
    return-void

    .line 1151
    :catch_0
    move-exception v1

    .line 1152
    .local v1, "e":Lstruct/StructException;
    invoke-virtual {v1}, Lstruct/StructException;->printStackTrace()V

    goto :goto_0

    .line 1153
    .end local v1    # "e":Lstruct/StructException;
    :catch_1
    move-exception v1

    .line 1155
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public downRecord(IILcom/easyview/basecamera/ICamera$IDownloadListener;)V
    .locals 21
    .param p1, "recordIndex"    # I
    .param p2, "offset"    # I
    .param p3, "listener"    # Lcom/easyview/basecamera/ICamera$IDownloadListener;

    .prologue
    .line 973
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/easyview/ppcs/PPCSCamera;->downListener:Lcom/easyview/basecamera/ICamera$IDownloadListener;

    .line 974
    new-instance v2, Lcom/easyview/ppcs/PPCSCamera$2;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/easyview/ppcs/PPCSCamera$2;-><init>(Lcom/easyview/ppcs/PPCSCamera;)V

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/easyview/evnet/EVNet;->SetDownProgressListener(Ljava/lang/Object;Lcom/easyview/evnet/EVNet$IProgressListener;)V

    .line 991
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/easyview/ppcs/PPCSCamera;->down_record_index:I

    .line 992
    const/4 v2, -0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_0

    .line 994
    invoke-static {}, Lobject/p2pipcam/utils/Pub;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/easyview/table/RecordTable;->getInstance(Landroid/content/Context;)Lcom/easyview/table/RecordTable;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/easyview/ppcs/PPCSCamera;->getKeyText()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/easyview/ppcs/PPCSCamera;->_eventFileID:I

    move/from16 v0, p1

    invoke-virtual {v2, v3, v4, v0}, Lcom/easyview/table/RecordTable;->getBeginTime(Ljava/lang/String;II)I

    move-result v9

    .line 995
    .local v9, "beginTime":I
    new-instance v11, Ljava/util/Date;

    invoke-direct {v11}, Ljava/util/Date;-><init>()V

    .line 996
    .local v11, "date":Ljava/util/Date;
    int-to-long v0, v9

    move-wide/from16 v16, v0

    .line 997
    .local v16, "ms":J
    const-wide/16 v2, 0x3e8

    mul-long v16, v16, v2

    .line 998
    move-wide/from16 v0, v16

    invoke-virtual {v11, v0, v1}, Ljava/util/Date;->setTime(J)V

    .line 999
    new-instance v20, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMddHHmmss"

    move-object/from16 v0, v20

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1000
    .local v20, "sdf":Ljava/text/SimpleDateFormat;
    const-string v2, "%s_%s.avi"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/easyview/ppcs/PPCSCamera;->getID()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lobject/p2pipcam/utils/Pub;->getDIDNum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 1001
    .local v14, "fileName":Ljava/lang/String;
    invoke-static {v14}, Lobject/p2pipcam/utils/Pub;->videoFileLength(Ljava/lang/String;)I

    move-result p2

    .line 1002
    const-string v2, "DownRecord"

    const-string v3, "continue down %d %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v5

    const/4 v5, 0x1

    aput-object v14, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1004
    .end local v9    # "beginTime":I
    .end local v11    # "date":Ljava/util/Date;
    .end local v14    # "fileName":Ljava/lang/String;
    .end local v16    # "ms":J
    .end local v20    # "sdf":Ljava/text/SimpleDateFormat;
    :cond_0
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/easyview/ppcs/PPCSCamera;->record_down_size:I

    .line 1005
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/easyview/ppcs/PPCSCamera;->write_file_size:I

    .line 1006
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/easyview/ppcs/PPCSCamera;->is_down_record:Z

    .line 1007
    const-string v2, "DownRecord"

    const-string v3, "start down %d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    const/4 v15, 0x0

    .line 1014
    .local v15, "have_deal":Z
    :try_start_0
    invoke-static {}, Lobject/p2pipcam/utils/Pub;->videoSavePathFile()Ljava/io/File;

    move-result-object v12

    .line 1015
    .local v12, "div":Ljava/io/File;
    invoke-static {}, Lobject/p2pipcam/utils/Pub;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/easyview/table/RecordTable;->getInstance(Landroid/content/Context;)Lcom/easyview/table/RecordTable;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/easyview/ppcs/PPCSCamera;->getKeyText()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/easyview/ppcs/PPCSCamera;->_eventFileID:I

    move/from16 v0, p1

    invoke-virtual {v2, v3, v4, v0}, Lcom/easyview/table/RecordTable;->getBeginTime(Ljava/lang/String;II)I

    move-result v9

    .line 1016
    .restart local v9    # "beginTime":I
    new-instance v11, Ljava/util/Date;

    invoke-direct {v11}, Ljava/util/Date;-><init>()V

    .line 1017
    .restart local v11    # "date":Ljava/util/Date;
    int-to-long v0, v9

    move-wide/from16 v16, v0

    .line 1018
    .restart local v16    # "ms":J
    const-wide/16 v2, 0x3e8

    mul-long v16, v16, v2

    .line 1019
    move-wide/from16 v0, v16

    invoke-virtual {v11, v0, v1}, Ljava/util/Date;->setTime(J)V

    .line 1020
    new-instance v20, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMddHHmmss"

    move-object/from16 v0, v20

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1021
    .restart local v20    # "sdf":Ljava/text/SimpleDateFormat;
    const-string v2, "%s/%s.avi"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 1022
    .local v6, "pathName":Ljava/lang/String;
    const-string v2, "%s.avi"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 1023
    .restart local v14    # "fileName":Ljava/lang/String;
    const/16 v19, 0x0

    .line 1026
    .local v19, "retry":I
    :goto_0
    invoke-static {v14}, Lobject/p2pipcam/utils/Pub;->videoFileLength(Ljava/lang/String;)I

    move-result p2

    .line 1028
    const-string v2, "admin"

    const-string v3, "admin"

    const-string v4, "192.168.234.1"

    const/16 v5, 0x2760

    move/from16 v7, p1

    move/from16 v8, p2

    invoke-static/range {v2 .. v8}, Lcom/easyview/evnet/EVNet;->DownRecord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;II)I

    move-result v18

    .line 1029
    .local v18, "ret":I
    const-string v2, "DownRecord"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DownRecord ret:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1030
    const/4 v2, -0x1

    move/from16 v0, v18

    if-ne v0, v2, :cond_4

    if-nez v19, :cond_4

    .line 1032
    const/4 v15, 0x0

    .line 1033
    const-string v2, "DownRecord"

    const-string v3, "not support!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1064
    :cond_1
    :goto_1
    if-nez v15, :cond_3

    .line 1066
    const/16 v2, 0x64

    move/from16 v0, p2

    if-le v0, v2, :cond_2

    add-int/lit8 p2, p2, -0x64

    .line 1067
    :cond_2
    invoke-static/range {p1 .. p2}, Lcom/easyview/struct/EVCommandDefs;->MakeDownRecordReqPacket(II)[B

    move-result-object v10

    .line 1068
    .local v10, "data":[B
    invoke-virtual/range {p0 .. p0}, Lcom/easyview/ppcs/PPCSCamera;->getID()Ljava/lang/String;

    move-result-object v2

    array-length v3, v10

    invoke-static {v2, v10, v3}, Lobject/p2pipcam/nativecaller/NativeCaller;->EVCommand(Ljava/lang/String;[BI)I

    .line 1073
    .end local v6    # "pathName":Ljava/lang/String;
    .end local v9    # "beginTime":I
    .end local v10    # "data":[B
    .end local v11    # "date":Ljava/util/Date;
    .end local v12    # "div":Ljava/io/File;
    .end local v14    # "fileName":Ljava/lang/String;
    .end local v16    # "ms":J
    .end local v18    # "ret":I
    .end local v19    # "retry":I
    .end local v20    # "sdf":Ljava/text/SimpleDateFormat;
    :cond_3
    :goto_2
    return-void

    .line 1036
    .restart local v6    # "pathName":Ljava/lang/String;
    .restart local v9    # "beginTime":I
    .restart local v11    # "date":Ljava/util/Date;
    .restart local v12    # "div":Ljava/io/File;
    .restart local v14    # "fileName":Ljava/lang/String;
    .restart local v16    # "ms":J
    .restart local v18    # "ret":I
    .restart local v19    # "retry":I
    .restart local v20    # "sdf":Ljava/text/SimpleDateFormat;
    :cond_4
    const/4 v2, -0x2

    move/from16 v0, v18

    if-ne v0, v2, :cond_5

    .line 1038
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/easyview/ppcs/PPCSCamera;->is_down_record:Z
    :try_end_0
    .catch Lstruct/StructException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v2, :cond_1

    .line 1040
    const-wide/16 v2, 0x4

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lstruct/StructException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1047
    :goto_3
    add-int/lit8 v19, v19, 0x1

    .line 1048
    goto :goto_0

    .line 1041
    :catch_0
    move-exception v13

    .line 1043
    .local v13, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-virtual {v13}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_2
    .catch Lstruct/StructException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    .line 1070
    .end local v6    # "pathName":Ljava/lang/String;
    .end local v9    # "beginTime":I
    .end local v11    # "date":Ljava/util/Date;
    .end local v12    # "div":Ljava/io/File;
    .end local v13    # "e":Ljava/lang/InterruptedException;
    .end local v14    # "fileName":Ljava/lang/String;
    .end local v16    # "ms":J
    .end local v18    # "ret":I
    .end local v19    # "retry":I
    .end local v20    # "sdf":Ljava/text/SimpleDateFormat;
    :catch_1
    move-exception v13

    .line 1071
    .local v13, "e":Lstruct/StructException;
    invoke-virtual {v13}, Lstruct/StructException;->printStackTrace()V

    goto :goto_2

    .line 1053
    .end local v13    # "e":Lstruct/StructException;
    .restart local v6    # "pathName":Ljava/lang/String;
    .restart local v9    # "beginTime":I
    .restart local v11    # "date":Ljava/util/Date;
    .restart local v12    # "div":Ljava/io/File;
    .restart local v14    # "fileName":Ljava/lang/String;
    .restart local v16    # "ms":J
    .restart local v18    # "ret":I
    .restart local v19    # "retry":I
    .restart local v20    # "sdf":Ljava/text/SimpleDateFormat;
    :cond_5
    if-nez v18, :cond_6

    .line 1056
    :try_start_3
    invoke-static {}, Lobject/p2pipcam/utils/Pub;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/easyview/table/RecordTable;->getInstance(Landroid/content/Context;)Lcom/easyview/table/RecordTable;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/easyview/ppcs/PPCSCamera;->getKeyText()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/easyview/ppcs/PPCSCamera;->_eventFileID:I

    invoke-virtual {v2, v3, v4, v9, v6}, Lcom/easyview/table/RecordTable;->Update(Ljava/lang/String;IILjava/lang/String;)Z

    .line 1057
    invoke-static {}, Lobject/p2pipcam/utils/Pub;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "file://"

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v2, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1058
    const-string v2, "DownRecord"

    const-string v3, "down finish"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Lstruct/StructException; {:try_start_3 .. :try_end_3} :catch_1

    .line 1060
    :cond_6
    const/4 v15, 0x1

    goto :goto_1
.end method

.method public enableIOSwitch(Lcom/easyview/basecamera/ICamera$IRespondListener;I)V
    .locals 5
    .param p1, "listener"    # Lcom/easyview/basecamera/ICamera$IRespondListener;
    .param p2, "index"    # I

    .prologue
    .line 1557
    const/16 v2, 0x132

    const/4 v3, 0x1

    :try_start_0
    new-array v3, v3, [I

    const/4 v4, 0x0

    aput p2, v3, v4

    invoke-static {v2, v3}, Lcom/easyview/struct/EVCommandDefs;->MakeSimpleReqPacket(S[I)[B

    move-result-object v0

    .line 1558
    .local v0, "data":[B
    invoke-virtual {p0}, Lcom/easyview/ppcs/PPCSCamera;->getID()Ljava/lang/String;

    move-result-object v2

    array-length v3, v0

    invoke-static {v2, v0, v3}, Lobject/p2pipcam/nativecaller/NativeCaller;->EVCommand(Ljava/lang/String;[BI)I
    :try_end_0
    .catch Lstruct/StructException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1562
    .end local v0    # "data":[B
    :goto_0
    return-void

    .line 1559
    :catch_0
    move-exception v1

    .line 1560
    .local v1, "e":Lstruct/StructException;
    invoke-virtual {v1}, Lstruct/StructException;->printStackTrace()V

    goto :goto_0
.end method

.method public enablePairing(Lcom/easyview/basecamera/ICamera$IRespondListener;)V
    .locals 6
    .param p1, "listener"    # Lcom/easyview/basecamera/ICamera$IRespondListener;

    .prologue
    .line 1380
    const/16 v2, 0x11a

    const/4 v3, 0x1

    :try_start_0
    new-array v3, v3, [I

    const/4 v4, 0x0

    const/4 v5, 0x1

    aput v5, v3, v4

    invoke-static {v2, v3}, Lcom/easyview/struct/EVCommandDefs;->MakeSimpleReqPacket(S[I)[B

    move-result-object v0

    .line 1381
    .local v0, "data":[B
    invoke-virtual {p0}, Lcom/easyview/ppcs/PPCSCamera;->getID()Ljava/lang/String;

    move-result-object v2

    array-length v3, v0

    invoke-static {v2, v0, v3}, Lobject/p2pipcam/nativecaller/NativeCaller;->EVCommand(Ljava/lang/String;[BI)I
    :try_end_0
    .catch Lstruct/StructException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1385
    .end local v0    # "data":[B
    :goto_0
    return-void

    .line 1382
    :catch_0
    move-exception v1

    .line 1383
    .local v1, "e":Lstruct/StructException;
    invoke-virtual {v1}, Lstruct/StructException;->printStackTrace()V

    goto :goto_0
.end method

.method public formatTF(Lcom/easyview/basecamera/ICamera$IRespondListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/easyview/basecamera/ICamera$IRespondListener;

    .prologue
    .line 396
    invoke-virtual {p0}, Lcom/easyview/ppcs/PPCSCamera;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lobject/p2pipcam/nativecaller/NativeCaller;->PPPPFormatSD(Ljava/lang/String;)I

    .line 397
    return-void
.end method

.method public getAlarmParam(Lcom/easyview/basecamera/ICamera$IAlarmParamListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/easyview/basecamera/ICamera$IAlarmParamListener;

    .prologue
    .line 320
    return-void
.end method

.method public getBellCallTime()I
    .locals 1

    .prologue
    .line 191
    iget v0, p0, Lcom/easyview/ppcs/PPCSCamera;->_bellCallTime:I

    return v0
.end method

.method public getBellDamageTime()I
    .locals 1

    .prologue
    .line 199
    iget v0, p0, Lcom/easyview/ppcs/PPCSCamera;->_bellDamageTime:I

    return v0
.end method

.method public getBrightness()I
    .locals 1

    .prologue
    .line 1421
    iget v0, p0, Lcom/easyview/ppcs/PPCSCamera;->_brightness:I

    return v0
.end method

.method public getCaps(Lcom/easyview/basecamera/ICamera$IRespondListener;)V
    .locals 6
    .param p1, "listener"    # Lcom/easyview/basecamera/ICamera$IRespondListener;

    .prologue
    .line 469
    new-instance v2, Lstruct/StructPacker;

    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {v2, v4}, Lstruct/StructPacker;-><init>(Ljava/nio/ByteOrder;)V

    .line 470
    .local v2, "packer":Lstruct/StructPacker;
    new-instance v3, Lcom/easyview/struct/EVCommandDefs$EVCommandStruct;

    invoke-direct {v3}, Lcom/easyview/struct/EVCommandDefs$EVCommandStruct;-><init>()V

    .line 471
    .local v3, "s":Lcom/easyview/struct/EVCommandDefs$EVCommandStruct;
    const/16 v4, 0x45

    iput-byte v4, v3, Lcom/easyview/struct/EVCommandDefs$EVCommandStruct;->symbol:B

    .line 472
    const/16 v4, 0x8

    iput-byte v4, v3, Lcom/easyview/struct/EVCommandDefs$EVCommandStruct;->size:B

    .line 473
    const/16 v4, 0x101

    iput-short v4, v3, Lcom/easyview/struct/EVCommandDefs$EVCommandStruct;->command:S

    .line 474
    const/4 v4, 0x0

    iput v4, v3, Lcom/easyview/struct/EVCommandDefs$EVCommandStruct;->length:I

    .line 476
    :try_start_0
    invoke-virtual {v2, v3}, Lstruct/StructPacker;->writeObject(Ljava/lang/Object;)V

    .line 477
    invoke-virtual {v2}, Lstruct/StructPacker;->toArray()[B

    move-result-object v0

    .line 478
    .local v0, "data":[B
    invoke-virtual {p0}, Lcom/easyview/ppcs/PPCSCamera;->getID()Ljava/lang/String;

    move-result-object v4

    array-length v5, v0

    invoke-static {v4, v0, v5}, Lobject/p2pipcam/nativecaller/NativeCaller;->EVCommand(Ljava/lang/String;[BI)I
    :try_end_0
    .catch Lstruct/StructException; {:try_start_0 .. :try_end_0} :catch_0

    .line 482
    .end local v0    # "data":[B
    :goto_0
    return-void

    .line 479
    :catch_0
    move-exception v1

    .line 480
    .local v1, "e":Lstruct/StructException;
    invoke-virtual {v1}, Lstruct/StructException;->printStackTrace()V

    goto :goto_0
.end method

.method public getContrast()I
    .locals 1

    .prologue
    .line 1425
    iget v0, p0, Lcom/easyview/ppcs/PPCSCamera;->_contrast:I

    return v0
.end method

.method public getDefaultWiFiName()Ljava/lang/String;
    .locals 6

    .prologue
    .line 1456
    iget-object v4, p0, Lcom/easyview/ppcs/PPCSCamera;->planeParams:Lcom/easyview/ppcs/PPCSCamera$PlaneParams;

    iget-object v4, v4, Lcom/easyview/ppcs/PPCSCamera$PlaneParams;->DefaultName:Lstruct/CString;

    invoke-virtual {v4}, Lstruct/CString;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1460
    .local v3, "wifiName":Ljava/lang/String;
    const-string v1, "FPV_WIFI_"

    .line 1461
    .local v1, "prefix":Ljava/lang/String;
    invoke-virtual {v3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1463
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .line 1464
    .local v2, "start":I
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    .line 1465
    .local v0, "end":I
    sub-int v4, v0, v2

    const/4 v5, 0x6

    if-le v4, v5, :cond_0

    add-int/lit8 v0, v2, 0x6

    .line 1466
    :cond_0
    invoke-virtual {v3, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1467
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "DRONEVIEW-"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1470
    .end local v0    # "end":I
    .end local v2    # "start":I
    :cond_1
    return-object v3
.end method

.method public getExtThres(Lcom/easyview/basecamera/ICamera$IRespondListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/easyview/basecamera/ICamera$IRespondListener;

    .prologue
    .line 1345
    iput-object p1, p0, Lcom/easyview/ppcs/PPCSCamera;->_extThresListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

    .line 1346
    const/16 v0, 0x117

    invoke-direct {p0, v0}, Lcom/easyview/ppcs/PPCSCamera;->SimpleEVCommand(S)V

    .line 1347
    return-void
.end method

.method public getIOSwitch(Lcom/easyview/basecamera/ICamera$IRespondListener;)V
    .locals 4
    .param p1, "listener"    # Lcom/easyview/basecamera/ICamera$IRespondListener;

    .prologue
    .line 1565
    iput-object p1, p0, Lcom/easyview/ppcs/PPCSCamera;->ioSwitchParamsListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

    .line 1567
    const/16 v2, 0x130

    const/4 v3, 0x0

    :try_start_0
    new-array v3, v3, [I

    invoke-static {v2, v3}, Lcom/easyview/struct/EVCommandDefs;->MakeSimpleReqPacket(S[I)[B

    move-result-object v0

    .line 1568
    .local v0, "data":[B
    invoke-virtual {p0}, Lcom/easyview/ppcs/PPCSCamera;->getID()Ljava/lang/String;

    move-result-object v2

    array-length v3, v0

    invoke-static {v2, v0, v3}, Lobject/p2pipcam/nativecaller/NativeCaller;->EVCommand(Ljava/lang/String;[BI)I
    :try_end_0
    .catch Lstruct/StructException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1572
    .end local v0    # "data":[B
    :goto_0
    return-void

    .line 1569
    :catch_0
    move-exception v1

    .line 1570
    .local v1, "e":Lstruct/StructException;
    invoke-virtual {v1}, Lstruct/StructException;->printStackTrace()V

    goto :goto_0
.end method

.method public getKeyText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/easyview/ppcs/PPCSCamera;->DevID:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/easyview/ppcs/PPCSCamera;->DevID:Ljava/lang/String;

    .line 204
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/easyview/ppcs/PPCSCamera;->getID()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getMailParam(Lcom/easyview/bean/MailBean;Lcom/easyview/basecamera/ICamera$IRespondListener;)V
    .locals 0
    .param p1, "bean"    # Lcom/easyview/bean/MailBean;
    .param p2, "listener"    # Lcom/easyview/basecamera/ICamera$IRespondListener;

    .prologue
    .line 352
    return-void
.end method

.method public getRotate()I
    .locals 1

    .prologue
    .line 1433
    iget v0, p0, Lcom/easyview/ppcs/PPCSCamera;->_rotate:I

    return v0
.end method

.method public getShowOSD()I
    .locals 1

    .prologue
    .line 1429
    iget-object v0, p0, Lcom/easyview/ppcs/PPCSCamera;->planeParams:Lcom/easyview/ppcs/PPCSCamera$PlaneParams;

    iget v0, v0, Lcom/easyview/ppcs/PPCSCamera$PlaneParams;->showDate:I

    return v0
.end method

.method public getStoreParam(Lcom/easyview/bean/SdcardBean;Lcom/easyview/basecamera/ICamera$IRespondListener;)V
    .locals 2
    .param p1, "bean"    # Lcom/easyview/bean/SdcardBean;
    .param p2, "listener"    # Lcom/easyview/basecamera/ICamera$IRespondListener;

    .prologue
    .line 363
    invoke-virtual {p0}, Lcom/easyview/ppcs/PPCSCamera;->getID()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x16

    invoke-static {v0, v1}, Lobject/p2pipcam/nativecaller/NativeCaller;->PPPPGetSystemParams(Ljava/lang/String;I)I

    .line 364
    return-void
.end method

.method public getTimeParam(Lcom/easyview/bean/DateBean;Lcom/easyview/basecamera/ICamera$IRespondListener;)V
    .locals 0
    .param p1, "bean"    # Lcom/easyview/bean/DateBean;
    .param p2, "listener"    # Lcom/easyview/basecamera/ICamera$IRespondListener;

    .prologue
    .line 340
    return-void
.end method

.method public getWiFiName()Ljava/lang/String;
    .locals 7

    .prologue
    .line 1437
    iget-object v4, p0, Lcom/easyview/ppcs/PPCSCamera;->planeParams:Lcom/easyview/ppcs/PPCSCamera$PlaneParams;

    iget-object v4, v4, Lcom/easyview/ppcs/PPCSCamera$PlaneParams;->WiFiName:Lstruct/CString;

    invoke-virtual {v4}, Lstruct/CString;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1438
    .local v3, "wifiName":Ljava/lang/String;
    const-string v4, "ppcs"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "wifiName"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1442
    const-string v1, "FPV_WIFI_"

    .line 1443
    .local v1, "prefix":Ljava/lang/String;
    invoke-virtual {v3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1445
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .line 1446
    .local v2, "start":I
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    .line 1447
    .local v0, "end":I
    sub-int v4, v0, v2

    const/4 v5, 0x6

    if-le v4, v5, :cond_0

    add-int/lit8 v0, v2, 0x6

    .line 1448
    :cond_0
    invoke-virtual {v3, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1449
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "DRONEVIEW-"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1452
    .end local v0    # "end":I
    .end local v2    # "start":I
    :cond_1
    return-object v3
.end method

.method public getWifiParam(Lcom/easyview/bean/WifiBean;Lcom/easyview/basecamera/ICamera$IRespondListener;)V
    .locals 2
    .param p1, "bean"    # Lcom/easyview/bean/WifiBean;
    .param p2, "listener"    # Lcom/easyview/basecamera/ICamera$IRespondListener;

    .prologue
    .line 291
    invoke-virtual {p0}, Lcom/easyview/ppcs/PPCSCamera;->getID()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lobject/p2pipcam/nativecaller/NativeCaller;->PPPPGetSystemParams(Ljava/lang/String;I)I

    .line 292
    return-void
.end method

.method public onCameraParams(IIIIIIII)V
    .locals 3
    .param p1, "resolution"    # I
    .param p2, "brightness"    # I
    .param p3, "contrast"    # I
    .param p4, "hue"    # I
    .param p5, "saturation"    # I
    .param p6, "flip"    # I
    .param p7, "frame"    # I
    .param p8, "mode"    # I

    .prologue
    const/4 v2, 0x1

    .line 216
    const-string v0, "PPCS"

    const-string v1, "onCameraParams"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iput p2, p0, Lcom/easyview/ppcs/PPCSCamera;->_brightness:I

    .line 219
    iput p3, p0, Lcom/easyview/ppcs/PPCSCamera;->_contrast:I

    .line 220
    const/4 v0, 0x0

    iput v0, p0, Lcom/easyview/ppcs/PPCSCamera;->_rotate:I

    .line 221
    and-int/lit8 v0, p6, 0x1

    if-ne v0, v2, :cond_0

    iput v2, p0, Lcom/easyview/ppcs/PPCSCamera;->_rotate:I

    .line 222
    :cond_0
    return-void
.end method

.method public playMusic(ILcom/easyview/basecamera/ICamera$IRespondListener;)V
    .locals 6
    .param p1, "index"    # I
    .param p2, "listener"    # Lcom/easyview/basecamera/ICamera$IRespondListener;

    .prologue
    .line 1360
    iput-object p2, p0, Lcom/easyview/ppcs/PPCSCamera;->_playAudioListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

    .line 1362
    const/16 v2, 0x119

    const/4 v3, 0x1

    :try_start_0
    new-array v3, v3, [I

    const/4 v4, 0x0

    const/4 v5, 0x1

    aput v5, v3, v4

    invoke-static {v2, v3}, Lcom/easyview/struct/EVCommandDefs;->MakeSimpleReqPacket(S[I)[B

    move-result-object v0

    .line 1363
    .local v0, "data":[B
    invoke-virtual {p0}, Lcom/easyview/ppcs/PPCSCamera;->getID()Ljava/lang/String;

    move-result-object v2

    array-length v3, v0

    invoke-static {v2, v0, v3}, Lobject/p2pipcam/nativecaller/NativeCaller;->EVCommand(Ljava/lang/String;[BI)I
    :try_end_0
    .catch Lstruct/StructException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1367
    .end local v0    # "data":[B
    :goto_0
    return-void

    .line 1364
    :catch_0
    move-exception v1

    .line 1365
    .local v1, "e":Lstruct/StructException;
    invoke-virtual {v1}, Lstruct/StructException;->printStackTrace()V

    goto :goto_0
.end method

.method public ptzControl(I)V
    .locals 1
    .param p1, "command"    # I

    .prologue
    .line 446
    invoke-virtual {p0}, Lcom/easyview/ppcs/PPCSCamera;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lobject/p2pipcam/nativecaller/NativeCaller;->PPPPPTZControl(Ljava/lang/String;I)I

    .line 447
    return-void
.end method

.method public queryDeviceInfo(Lcom/easyview/basecamera/ICamera$IRespondListener;)V
    .locals 4
    .param p1, "listener"    # Lcom/easyview/basecamera/ICamera$IRespondListener;

    .prologue
    .line 1616
    iput-object p1, p0, Lcom/easyview/ppcs/PPCSCamera;->queryDeviceInfoListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

    .line 1618
    const/16 v2, 0x203

    const/4 v3, 0x0

    :try_start_0
    new-array v3, v3, [I

    invoke-static {v2, v3}, Lcom/easyview/struct/EVCommandDefs;->MakeSimpleReqPacket(S[I)[B

    move-result-object v0

    .line 1619
    .local v0, "data":[B
    invoke-virtual {p0}, Lcom/easyview/ppcs/PPCSCamera;->getID()Ljava/lang/String;

    move-result-object v2

    array-length v3, v0

    invoke-static {v2, v0, v3}, Lobject/p2pipcam/nativecaller/NativeCaller;->EVCommand(Ljava/lang/String;[BI)I
    :try_end_0
    .catch Lstruct/StructException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1623
    .end local v0    # "data":[B
    :goto_0
    return-void

    .line 1620
    :catch_0
    move-exception v1

    .line 1621
    .local v1, "e":Lstruct/StructException;
    invoke-virtual {v1}, Lstruct/StructException;->printStackTrace()V

    goto :goto_0
.end method

.method public queryEvent(ILjava/lang/String;Lcom/easyview/basecamera/ICamera$IRespondListener;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "pathName"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/easyview/basecamera/ICamera$IRespondListener;

    .prologue
    .line 1510
    iput-object p3, p0, Lcom/easyview/ppcs/PPCSCamera;->_queryEventListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

    .line 1513
    move v0, p1

    .line 1514
    .local v0, "end_index":I
    if-nez v0, :cond_0

    .line 1516
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/easyview/ppcs/PPCSCamera;->getFirstIndex:Z

    .line 1517
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/easyview/ppcs/PPCSCamera;->haveFirstIndex:Z

    .line 1518
    const/4 v0, 0x1

    .line 1520
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/easyview/ppcs/PPCSCamera;->searchEvents(IILcom/easyview/basecamera/ICamera$IRespondListener;)V

    .line 1531
    return-void
.end method

.method public queryEventInfo(Lcom/easyview/basecamera/ICamera$IRespondListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/easyview/basecamera/ICamera$IRespondListener;

    .prologue
    .line 1130
    iput-object p1, p0, Lcom/easyview/ppcs/PPCSCamera;->_queryEventInfoListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

    .line 1133
    const/16 v0, -0x2712

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/easyview/ppcs/PPCSCamera;->searchEvents(IILcom/easyview/basecamera/ICamera$IRespondListener;)V

    .line 1143
    return-void
.end method

.method public queryEventList(IILcom/easyview/basecamera/ICamera$IRespondListener;)V
    .locals 5
    .param p1, "beginIndex"    # I
    .param p2, "endIndex"    # I
    .param p3, "listener"    # Lcom/easyview/basecamera/ICamera$IRespondListener;

    .prologue
    const/4 v4, 0x1

    const/16 v3, -0x2711

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1476
    iget-boolean v0, p0, Lcom/easyview/ppcs/PPCSCamera;->_event_modify:Z

    if-eqz v0, :cond_2

    .line 1478
    iput-object p3, p0, Lcom/easyview/ppcs/PPCSCamera;->_queryEventsListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

    .line 1479
    iput-object v2, p0, Lcom/easyview/ppcs/PPCSCamera;->_queryEventListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

    .line 1480
    invoke-virtual {p0}, Lcom/easyview/ppcs/PPCSCamera;->ClearEvents()V

    .line 1481
    iget v0, p0, Lcom/easyview/ppcs/PPCSCamera;->_eventIndex:I

    if-nez v0, :cond_1

    .line 1483
    iput-boolean v4, p0, Lcom/easyview/ppcs/PPCSCamera;->_ready_get_events:Z

    .line 1484
    invoke-virtual {p0, v1, v4, v2}, Lcom/easyview/ppcs/PPCSCamera;->searchEvents(IILcom/easyview/basecamera/ICamera$IRespondListener;)V

    .line 1485
    const/16 v0, -0x2710

    invoke-virtual {p0, v0, v1, v2}, Lcom/easyview/ppcs/PPCSCamera;->searchEvents(IILcom/easyview/basecamera/ICamera$IRespondListener;)V

    .line 1505
    :cond_0
    :goto_0
    return-void

    .line 1488
    :cond_1
    iput-boolean v1, p0, Lcom/easyview/ppcs/PPCSCamera;->_ready_get_events:Z

    .line 1489
    invoke-virtual {p0, v3, v1, v2}, Lcom/easyview/ppcs/PPCSCamera;->searchEvents(IILcom/easyview/basecamera/ICamera$IRespondListener;)V

    goto :goto_0

    .line 1493
    :cond_2
    if-eqz p3, :cond_0

    iget v0, p0, Lcom/easyview/ppcs/PPCSCamera;->_totalEvents:I

    invoke-interface {p3, p0, v3, v0}, Lcom/easyview/basecamera/ICamera$IRespondListener;->OnRespondResult(Lcom/easyview/basecamera/ICamera;II)V

    goto :goto_0
.end method

.method public queryLCDText(Lcom/easyview/basecamera/ICamera$IRespondListener;)V
    .locals 6
    .param p1, "listener"    # Lcom/easyview/basecamera/ICamera$IRespondListener;

    .prologue
    .line 1595
    iput-object p1, p0, Lcom/easyview/ppcs/PPCSCamera;->lcdParamsListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

    .line 1597
    const/16 v2, 0x133

    const/4 v3, 0x1

    :try_start_0
    new-array v3, v3, [I

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v5, v3, v4

    invoke-static {v2, v3}, Lcom/easyview/struct/EVCommandDefs;->MakeSimpleReqPacket(S[I)[B

    move-result-object v0

    .line 1598
    .local v0, "data":[B
    invoke-virtual {p0}, Lcom/easyview/ppcs/PPCSCamera;->getID()Ljava/lang/String;

    move-result-object v2

    array-length v3, v0

    invoke-static {v2, v0, v3}, Lobject/p2pipcam/nativecaller/NativeCaller;->EVCommand(Ljava/lang/String;[BI)I
    :try_end_0
    .catch Lstruct/StructException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1602
    .end local v0    # "data":[B
    :goto_0
    return-void

    .line 1599
    :catch_0
    move-exception v1

    .line 1600
    .local v1, "e":Lstruct/StructException;
    invoke-virtual {v1}, Lstruct/StructException;->printStackTrace()V

    goto :goto_0
.end method

.method public queryLightValue(Lcom/easyview/basecamera/ICamera$IRespondListener;)V
    .locals 6
    .param p1, "listener"    # Lcom/easyview/basecamera/ICamera$IRespondListener;

    .prologue
    .line 1656
    iput-object p1, p0, Lcom/easyview/ppcs/PPCSCamera;->queryLightValueListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

    .line 1658
    const/16 v2, 0x140

    const/4 v3, 0x1

    :try_start_0
    new-array v3, v3, [I

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v5, v3, v4

    invoke-static {v2, v3}, Lcom/easyview/struct/EVCommandDefs;->MakeSimpleReqPacket(S[I)[B

    move-result-object v0

    .line 1659
    .local v0, "data":[B
    invoke-virtual {p0}, Lcom/easyview/ppcs/PPCSCamera;->getID()Ljava/lang/String;

    move-result-object v2

    array-length v3, v0

    invoke-static {v2, v0, v3}, Lobject/p2pipcam/nativecaller/NativeCaller;->EVCommand(Ljava/lang/String;[BI)I
    :try_end_0
    .catch Lstruct/StructException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1663
    .end local v0    # "data":[B
    :goto_0
    return-void

    .line 1660
    :catch_0
    move-exception v1

    .line 1661
    .local v1, "e":Lstruct/StructException;
    invoke-virtual {v1}, Lstruct/StructException;->printStackTrace()V

    goto :goto_0
.end method

.method public queryWifiResult(Lcom/easyview/basecamera/ICamera$IRespondListener;)V
    .locals 4
    .param p1, "listener"    # Lcom/easyview/basecamera/ICamera$IRespondListener;

    .prologue
    .line 1311
    iput-object p1, p0, Lcom/easyview/ppcs/PPCSCamera;->_wifiResultListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

    .line 1313
    const/16 v2, 0x201

    const/4 v3, 0x0

    :try_start_0
    new-array v3, v3, [I

    invoke-static {v2, v3}, Lcom/easyview/struct/EVCommandDefs;->MakeSimpleReqPacket(S[I)[B

    move-result-object v0

    .line 1314
    .local v0, "data":[B
    invoke-virtual {p0}, Lcom/easyview/ppcs/PPCSCamera;->getID()Ljava/lang/String;

    move-result-object v2

    array-length v3, v0

    invoke-static {v2, v0, v3}, Lobject/p2pipcam/nativecaller/NativeCaller;->EVCommand(Ljava/lang/String;[BI)I
    :try_end_0
    .catch Lstruct/StructException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1318
    .end local v0    # "data":[B
    :goto_0
    return-void

    .line 1315
    :catch_0
    move-exception v1

    .line 1316
    .local v1, "e":Lstruct/StructException;
    invoke-virtual {v1}, Lstruct/StructException;->printStackTrace()V

    goto :goto_0
.end method

.method public querystorageState(Lcom/easyview/basecamera/ICamera$IRespondListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/easyview/basecamera/ICamera$IRespondListener;

    .prologue
    .line 390
    iput-object p1, p0, Lcom/easyview/ppcs/PPCSCamera;->_storageStateListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

    .line 391
    invoke-virtual {p0}, Lcom/easyview/ppcs/PPCSCamera;->getID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "get_sd_state.cgi?"

    invoke-static {v0, v1}, Lobject/p2pipcam/nativecaller/NativeCaller;->SendCommonCGI(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    return-void
.end method

.method public recordPlay(Ljava/lang/String;)V
    .locals 2
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 460
    invoke-virtual {p0}, Lcom/easyview/ppcs/PPCSCamera;->getID()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lobject/p2pipcam/nativecaller/NativeCaller;->StartPlayBack(Ljava/lang/String;Ljava/lang/String;I)I

    .line 461
    return-void
.end method

.method public recordStop()V
    .locals 1

    .prologue
    .line 464
    invoke-virtual {p0}, Lcom/easyview/ppcs/PPCSCamera;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lobject/p2pipcam/nativecaller/NativeCaller;->StopPlayBack(Ljava/lang/String;)I

    .line 465
    return-void
.end method

.method public searchEvents(IILcom/easyview/basecamera/ICamera$IRespondListener;)V
    .locals 6
    .param p1, "beginIndex"    # I
    .param p2, "endIndex"    # I
    .param p3, "listener"    # Lcom/easyview/basecamera/ICamera$IRespondListener;

    .prologue
    .line 1107
    iput-object p3, p0, Lcom/easyview/ppcs/PPCSCamera;->_searchEventsListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

    .line 1108
    const/4 v0, 0x0

    .line 1109
    .local v0, "begin_time":I
    const/4 v4, -0x1

    if-ne p1, v4, :cond_0

    .line 1111
    invoke-static {}, Lobject/p2pipcam/utils/Pub;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/easyview/table/EventTable;->getInstance(Landroid/content/Context;)Lcom/easyview/table/EventTable;

    move-result-object v4

    invoke-virtual {p0}, Lcom/easyview/ppcs/PPCSCamera;->getID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/easyview/table/EventTable;->getMaxIndex(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v3

    .line 1112
    .local v3, "result":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 1113
    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1115
    .end local v3    # "result":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_0
    const/16 v4, -0x2711

    if-ne p1, v4, :cond_1

    .line 1117
    invoke-virtual {p0}, Lcom/easyview/ppcs/PPCSCamera;->ClearEvents()V

    .line 1120
    :cond_1
    const/4 v4, 0x0

    const/4 v5, 0x1

    :try_start_0
    invoke-static {p1, p2, v4, v5}, Lcom/easyview/struct/EVCommandDefs;->MakeSearchEventReqPacket(IIII)[B

    move-result-object v1

    .line 1121
    .local v1, "data":[B
    invoke-virtual {p0}, Lcom/easyview/ppcs/PPCSCamera;->getID()Ljava/lang/String;

    move-result-object v4

    array-length v5, v1

    invoke-static {v4, v1, v5}, Lobject/p2pipcam/nativecaller/NativeCaller;->EVCommand(Ljava/lang/String;[BI)I
    :try_end_0
    .catch Lstruct/StructException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1125
    .end local v1    # "data":[B
    :goto_0
    return-void

    .line 1122
    :catch_0
    move-exception v2

    .line 1123
    .local v2, "e":Lstruct/StructException;
    invoke-virtual {v2}, Lstruct/StructException;->printStackTrace()V

    goto :goto_0
.end method

.method public searchRecordList(JJLcom/easyview/basecamera/ICamera$IRespondListener;)V
    .locals 3
    .param p1, "beginTime"    # J
    .param p3, "endTime"    # J
    .param p5, "listener"    # Lcom/easyview/basecamera/ICamera$IRespondListener;

    .prologue
    .line 450
    invoke-virtual {p0}, Lcom/easyview/ppcs/PPCSCamera;->getID()Ljava/lang/String;

    move-result-object v0

    long-to-int v1, p1

    long-to-int v2, p3

    invoke-static {v0, v1, v2}, Lobject/p2pipcam/nativecaller/NativeCaller;->PPPPGetSDCardRecordFileList(Ljava/lang/String;II)I

    .line 457
    return-void
.end method

.method public searchRecords(IIILcom/easyview/basecamera/ICamera$IRespondListener;)V
    .locals 4
    .param p1, "beginTime"    # I
    .param p2, "endTime"    # I
    .param p3, "with_snap"    # I
    .param p4, "listener"    # Lcom/easyview/basecamera/ICamera$IRespondListener;

    .prologue
    .line 1099
    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/easyview/struct/EVCommandDefs;->MakeSearchRecordReqPacket(III)[B

    move-result-object v0

    .line 1100
    .local v0, "data":[B
    invoke-virtual {p0}, Lcom/easyview/ppcs/PPCSCamera;->getID()Ljava/lang/String;

    move-result-object v2

    array-length v3, v0

    invoke-static {v2, v0, v3}, Lobject/p2pipcam/nativecaller/NativeCaller;->EVCommand(Ljava/lang/String;[BI)I
    :try_end_0
    .catch Lstruct/StructException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1104
    .end local v0    # "data":[B
    :goto_0
    return-void

    .line 1101
    :catch_0
    move-exception v1

    .line 1102
    .local v1, "e":Lstruct/StructException;
    invoke-virtual {v1}, Lstruct/StructException;->printStackTrace()V

    goto :goto_0
.end method

.method public setAlarmParam(Lcom/easyview/bean/AlermBean;Lcom/easyview/basecamera/ICamera$IRespondListener;)V
    .locals 34
    .param p1, "alermBean"    # Lcom/easyview/bean/AlermBean;
    .param p2, "listener"    # Lcom/easyview/basecamera/ICamera$IRespondListener;

    .prologue
    .line 323
    invoke-virtual/range {p0 .. p0}, Lcom/easyview/ppcs/PPCSCamera;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/easyview/bean/AlermBean;->getMotion_armed()I

    move-result v1

    .line 324
    invoke-virtual/range {p1 .. p1}, Lcom/easyview/bean/AlermBean;->getMotion_sensitivity()I

    move-result v2

    .line 325
    invoke-virtual/range {p1 .. p1}, Lcom/easyview/bean/AlermBean;->getInput_armed()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Lcom/easyview/bean/AlermBean;->getIoin_level()I

    move-result v4

    .line 326
    invoke-virtual/range {p1 .. p1}, Lcom/easyview/bean/AlermBean;->getIolinkage()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Lcom/easyview/bean/AlermBean;->getIoout_level()I

    move-result v6

    .line 327
    invoke-virtual/range {p1 .. p1}, Lcom/easyview/bean/AlermBean;->getAlermpresetsit()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Lcom/easyview/bean/AlermBean;->getMail()I

    move-result v8

    .line 328
    invoke-virtual/range {p1 .. p1}, Lcom/easyview/bean/AlermBean;->getSnapshot()I

    move-result v9

    invoke-virtual/range {p1 .. p1}, Lcom/easyview/bean/AlermBean;->getRecord()I

    move-result v10

    .line 329
    invoke-virtual/range {p1 .. p1}, Lcom/easyview/bean/AlermBean;->getUpload_interval()I

    move-result v11

    .line 330
    invoke-virtual/range {p1 .. p1}, Lcom/easyview/bean/AlermBean;->getSchedule_enable()I

    move-result v12

    const/4 v13, -0x1

    const/4 v14, -0x1

    .line 331
    const/4 v15, -0x1

    const/16 v16, -0x1

    const/16 v17, -0x1

    const/16 v18, -0x1

    const/16 v19, -0x1

    .line 332
    const/16 v20, -0x1

    const/16 v21, -0x1

    const/16 v22, -0x1

    const/16 v23, -0x1

    const/16 v24, -0x1

    .line 333
    const/16 v25, -0x1

    const/16 v26, -0x1

    const/16 v27, -0x1

    const/16 v28, -0x1

    const/16 v29, -0x1

    .line 334
    const/16 v30, -0x1

    const/16 v31, -0x1

    const/16 v32, -0x1

    const/16 v33, -0x1

    .line 323
    invoke-static/range {v0 .. v33}, Lobject/p2pipcam/nativecaller/NativeCaller;->PPPPAlarmSetting(Ljava/lang/String;IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII)I

    .line 335
    return-void
.end method

.method public setBellCallTime(I)V
    .locals 0
    .param p1, "time"    # I

    .prologue
    .line 187
    iput p1, p0, Lcom/easyview/ppcs/PPCSCamera;->_bellCallTime:I

    .line 188
    return-void
.end method

.method public setBellDamageTime(I)V
    .locals 0
    .param p1, "time"    # I

    .prologue
    .line 195
    iput p1, p0, Lcom/easyview/ppcs/PPCSCamera;->_bellDamageTime:I

    .line 196
    return-void
.end method

.method public setBrightness(ILcom/easyview/basecamera/ICamera$IRespondListener;)V
    .locals 2
    .param p1, "value"    # I
    .param p2, "listener"    # Lcom/easyview/basecamera/ICamera$IRespondListener;

    .prologue
    .line 1389
    iput p1, p0, Lcom/easyview/ppcs/PPCSCamera;->_brightness:I

    .line 1390
    invoke-virtual {p0}, Lcom/easyview/ppcs/PPCSCamera;->getID()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lobject/p2pipcam/nativecaller/NativeCaller;->PPPPCameraControl(Ljava/lang/String;II)I

    .line 1391
    return-void
.end method

.method public setContrast(ILcom/easyview/basecamera/ICamera$IRespondListener;)V
    .locals 2
    .param p1, "value"    # I
    .param p2, "listener"    # Lcom/easyview/basecamera/ICamera$IRespondListener;

    .prologue
    .line 1394
    iput p1, p0, Lcom/easyview/ppcs/PPCSCamera;->_contrast:I

    .line 1395
    invoke-virtual {p0}, Lcom/easyview/ppcs/PPCSCamera;->getID()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1, p1}, Lobject/p2pipcam/nativecaller/NativeCaller;->PPPPCameraControl(Ljava/lang/String;II)I

    .line 1396
    return-void
.end method

.method public setExtThres(Lcom/easyview/basecamera/ICamera$IRespondListener;)V
    .locals 5
    .param p1, "listener"    # Lcom/easyview/basecamera/ICamera$IRespondListener;

    .prologue
    .line 1350
    iput-object p1, p0, Lcom/easyview/ppcs/PPCSCamera;->_extSetThresListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

    .line 1352
    const/16 v2, 0x118

    :try_start_0
    iget-object v3, p0, Lcom/easyview/ppcs/PPCSCamera;->_extThres:Lcom/easyview/struct/EVCommandDefs$ExtThresholds;

    const/16 v4, 0x7c

    invoke-static {v2, v3, v4}, Lcom/easyview/struct/EVCommandDefs;->MakeCommonReqPacket(SLjava/lang/Object;I)[B

    move-result-object v0

    .line 1353
    .local v0, "data":[B
    invoke-virtual {p0}, Lcom/easyview/ppcs/PPCSCamera;->getID()Ljava/lang/String;

    move-result-object v2

    array-length v3, v0

    invoke-static {v2, v0, v3}, Lobject/p2pipcam/nativecaller/NativeCaller;->EVCommand(Ljava/lang/String;[BI)I
    :try_end_0
    .catch Lstruct/StructException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1357
    .end local v0    # "data":[B
    :goto_0
    return-void

    .line 1354
    :catch_0
    move-exception v1

    .line 1355
    .local v1, "e":Lstruct/StructException;
    invoke-virtual {v1}, Lstruct/StructException;->printStackTrace()V

    goto :goto_0
.end method

.method public setIOSwitch(Lcom/easyview/basecamera/ICamera$IRespondListener;)V
    .locals 4
    .param p1, "listener"    # Lcom/easyview/basecamera/ICamera$IRespondListener;

    .prologue
    .line 1575
    iput-object p1, p0, Lcom/easyview/ppcs/PPCSCamera;->ioSwitchParamsListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

    .line 1576
    const-string v2, "PPCS"

    const-string v3, "setIOSwitch"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1578
    :try_start_0
    iget-object v2, p0, Lcom/easyview/ppcs/PPCSCamera;->ioSwitchParams:[Lcom/easyview/struct/EVCommandDefs$IOSwitchParam;

    invoke-static {v2}, Lcom/easyview/struct/EVCommandDefs;->MakeIOSwitchParamsReqPacket([Lcom/easyview/struct/EVCommandDefs$IOSwitchParam;)[B

    move-result-object v0

    .line 1579
    .local v0, "data":[B
    invoke-virtual {p0}, Lcom/easyview/ppcs/PPCSCamera;->getID()Ljava/lang/String;

    move-result-object v2

    array-length v3, v0

    invoke-static {v2, v0, v3}, Lobject/p2pipcam/nativecaller/NativeCaller;->EVCommand(Ljava/lang/String;[BI)I
    :try_end_0
    .catch Lstruct/StructException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 1592
    .end local v0    # "data":[B
    :goto_0
    return-void

    .line 1580
    :catch_0
    move-exception v1

    .line 1581
    .local v1, "e":Lstruct/StructException;
    invoke-virtual {v1}, Lstruct/StructException;->printStackTrace()V

    goto :goto_0

    .line 1582
    .end local v1    # "e":Lstruct/StructException;
    :catch_1
    move-exception v1

    .line 1584
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 1585
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v1

    .line 1587
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    .line 1588
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_3
    move-exception v1

    .line 1590
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public setLCDText(Lcom/easyview/basecamera/ICamera$IRespondListener;)V
    .locals 5
    .param p1, "listener"    # Lcom/easyview/basecamera/ICamera$IRespondListener;

    .prologue
    .line 1605
    iput-object p1, p0, Lcom/easyview/ppcs/PPCSCamera;->lcdParamsListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

    .line 1607
    :try_start_0
    iget-object v2, p0, Lcom/easyview/ppcs/PPCSCamera;->lcdCtrlParam:Lcom/easyview/struct/EVCommandDefs$LCDCtrlParam;

    const/4 v3, 0x1

    iput v3, v2, Lcom/easyview/struct/EVCommandDefs$LCDCtrlParam;->cmd:I

    .line 1608
    const/16 v2, 0x133

    iget-object v3, p0, Lcom/easyview/ppcs/PPCSCamera;->lcdCtrlParam:Lcom/easyview/struct/EVCommandDefs$LCDCtrlParam;

    const/16 v4, 0x80

    invoke-static {v2, v3, v4}, Lcom/easyview/struct/EVCommandDefs;->MakeObjectReqPacket(SLjava/lang/Object;I)[B

    move-result-object v0

    .line 1609
    .local v0, "data":[B
    invoke-virtual {p0}, Lcom/easyview/ppcs/PPCSCamera;->getID()Ljava/lang/String;

    move-result-object v2

    array-length v3, v0

    invoke-static {v2, v0, v3}, Lobject/p2pipcam/nativecaller/NativeCaller;->EVCommand(Ljava/lang/String;[BI)I
    :try_end_0
    .catch Lstruct/StructException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1613
    .end local v0    # "data":[B
    :goto_0
    return-void

    .line 1610
    :catch_0
    move-exception v1

    .line 1611
    .local v1, "e":Lstruct/StructException;
    invoke-virtual {v1}, Lstruct/StructException;->printStackTrace()V

    goto :goto_0
.end method

.method public setLanguage(ILcom/easyview/basecamera/ICamera$IRespondListener;)V
    .locals 5
    .param p1, "lang"    # I
    .param p2, "listener"    # Lcom/easyview/basecamera/ICamera$IRespondListener;

    .prologue
    .line 1337
    const/16 v2, 0x202

    const/4 v3, 0x1

    :try_start_0
    new-array v3, v3, [I

    const/4 v4, 0x0

    aput p1, v3, v4

    invoke-static {v2, v3}, Lcom/easyview/struct/EVCommandDefs;->MakeSimpleReqPacket(S[I)[B

    move-result-object v0

    .line 1338
    .local v0, "data":[B
    invoke-virtual {p0}, Lcom/easyview/ppcs/PPCSCamera;->getID()Ljava/lang/String;

    move-result-object v2

    array-length v3, v0

    invoke-static {v2, v0, v3}, Lobject/p2pipcam/nativecaller/NativeCaller;->EVCommand(Ljava/lang/String;[BI)I
    :try_end_0
    .catch Lstruct/StructException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1342
    .end local v0    # "data":[B
    :goto_0
    return-void

    .line 1339
    :catch_0
    move-exception v1

    .line 1340
    .local v1, "e":Lstruct/StructException;
    invoke-virtual {v1}, Lstruct/StructException;->printStackTrace()V

    goto :goto_0
.end method

.method public setLightValue(IIILcom/easyview/basecamera/ICamera$IRespondListener;)V
    .locals 6
    .param p1, "white"    # I
    .param p2, "yellow"    # I
    .param p3, "type"    # I
    .param p4, "listener"    # Lcom/easyview/basecamera/ICamera$IRespondListener;

    .prologue
    .line 1648
    const/16 v2, 0x140

    const/4 v3, 0x4

    :try_start_0
    new-array v3, v3, [I

    const/4 v4, 0x0

    const/4 v5, 0x1

    aput v5, v3, v4

    const/4 v4, 0x1

    aput p1, v3, v4

    const/4 v4, 0x2

    aput p2, v3, v4

    const/4 v4, 0x3

    aput p3, v3, v4

    invoke-static {v2, v3}, Lcom/easyview/struct/EVCommandDefs;->MakeSimpleReqPacket(S[I)[B

    move-result-object v0

    .line 1649
    .local v0, "data":[B
    invoke-virtual {p0}, Lcom/easyview/ppcs/PPCSCamera;->getID()Ljava/lang/String;

    move-result-object v2

    array-length v3, v0

    invoke-static {v2, v0, v3}, Lobject/p2pipcam/nativecaller/NativeCaller;->EVCommand(Ljava/lang/String;[BI)I
    :try_end_0
    .catch Lstruct/StructException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1653
    .end local v0    # "data":[B
    :goto_0
    return-void

    .line 1650
    :catch_0
    move-exception v1

    .line 1651
    .local v1, "e":Lstruct/StructException;
    invoke-virtual {v1}, Lstruct/StructException;->printStackTrace()V

    goto :goto_0
.end method

.method public setMailParam(Lcom/easyview/bean/MailBean;Lcom/easyview/basecamera/ICamera$IRespondListener;)V
    .locals 12
    .param p1, "mailBean"    # Lcom/easyview/bean/MailBean;
    .param p2, "listener"    # Lcom/easyview/basecamera/ICamera$IRespondListener;

    .prologue
    .line 355
    invoke-virtual {p0}, Lcom/easyview/ppcs/PPCSCamera;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/easyview/bean/MailBean;->getSvr()Ljava/lang/String;

    move-result-object v1

    .line 356
    invoke-virtual {p1}, Lcom/easyview/bean/MailBean;->getPort()I

    move-result v2

    invoke-virtual {p1}, Lcom/easyview/bean/MailBean;->getUser()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/easyview/bean/MailBean;->getPwd()Ljava/lang/String;

    move-result-object v4

    .line 357
    invoke-virtual {p1}, Lcom/easyview/bean/MailBean;->getSsl()I

    move-result v5

    invoke-virtual {p1}, Lcom/easyview/bean/MailBean;->getSender()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/easyview/bean/MailBean;->getAuth()I

    move-result v7

    .line 358
    invoke-virtual {p1}, Lcom/easyview/bean/MailBean;->getReceiver1()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Lcom/easyview/bean/MailBean;->getReceiver2()Ljava/lang/String;

    move-result-object v9

    .line 359
    invoke-virtual {p1}, Lcom/easyview/bean/MailBean;->getReceiver3()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1}, Lcom/easyview/bean/MailBean;->getReceiver4()Ljava/lang/String;

    move-result-object v11

    .line 355
    invoke-static/range {v0 .. v11}, Lobject/p2pipcam/nativecaller/NativeCaller;->PPPPMailSetting(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    return-void
.end method

.method public setPassword(Ljava/lang/String;Ljava/lang/String;Lcom/easyview/basecamera/ICamera$IRespondListener;)V
    .locals 0
    .param p1, "newPwd"    # Ljava/lang/String;
    .param p2, "oldPwd"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/easyview/basecamera/ICamera$IRespondListener;

    .prologue
    .line 315
    return-void
.end method

.method public setResolution(I)V
    .locals 2
    .param p1, "resolution"    # I

    .prologue
    const/4 v1, 0x0

    .line 400
    iput p1, p0, Lcom/easyview/ppcs/PPCSCamera;->_quality:I

    .line 401
    invoke-virtual {p0}, Lcom/easyview/ppcs/PPCSCamera;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1, p1}, Lobject/p2pipcam/nativecaller/NativeCaller;->PPPPCameraControl(Ljava/lang/String;II)I

    .line 402
    invoke-virtual {p0}, Lcom/easyview/ppcs/PPCSCamera;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/easyview/ppcs/PPCSCamera;->IsPPXW(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 404
    packed-switch p1, :pswitch_data_0

    .line 419
    :cond_0
    :goto_0
    return-void

    .line 408
    :pswitch_0
    invoke-virtual {p0}, Lcom/easyview/ppcs/PPCSCamera;->getID()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lobject/p2pipcam/nativecaller/NativeCaller;->StartPPPPLivestream(Ljava/lang/String;I)I

    goto :goto_0

    .line 411
    :pswitch_1
    invoke-virtual {p0}, Lcom/easyview/ppcs/PPCSCamera;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lobject/p2pipcam/nativecaller/NativeCaller;->StartPPPPLivestream(Ljava/lang/String;I)I

    goto :goto_0

    .line 415
    :pswitch_2
    invoke-virtual {p0}, Lcom/easyview/ppcs/PPCSCamera;->getID()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lobject/p2pipcam/nativecaller/NativeCaller;->StartPPPPLivestream(Ljava/lang/String;I)I

    goto :goto_0

    .line 404
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public setRotate(ILcom/easyview/basecamera/ICamera$IRespondListener;)V
    .locals 2
    .param p1, "value"    # I
    .param p2, "listener"    # Lcom/easyview/basecamera/ICamera$IRespondListener;

    .prologue
    .line 1404
    iput p1, p0, Lcom/easyview/ppcs/PPCSCamera;->_rotate:I

    .line 1405
    invoke-virtual {p0}, Lcom/easyview/ppcs/PPCSCamera;->getID()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    invoke-static {v0, v1, p1}, Lobject/p2pipcam/nativecaller/NativeCaller;->PPPPCameraControl(Ljava/lang/String;II)I

    .line 1406
    return-void
.end method

.method public setRssi(I)V
    .locals 0
    .param p1, "rssi"    # I

    .prologue
    .line 1544
    return-void
.end method

.method public setSensor(ILcom/easyview/basecamera/ICamera$IRespondListener;)V
    .locals 5
    .param p1, "value"    # I
    .param p2, "listener"    # Lcom/easyview/basecamera/ICamera$IRespondListener;

    .prologue
    .line 1547
    iput p1, p0, Lcom/easyview/ppcs/PPCSCamera;->_sensorres:I

    .line 1548
    if-eqz p1, :cond_0

    .line 1550
    const-string v1, "set_sensor_res.cgi?sensorres=%d&"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1551
    .local v0, "cgi":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/easyview/ppcs/PPCSCamera;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lobject/p2pipcam/nativecaller/NativeCaller;->SendCommonCGI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1553
    .end local v0    # "cgi":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public setShowOSD(ILcom/easyview/basecamera/ICamera$IRespondListener;)V
    .locals 2
    .param p1, "value"    # I
    .param p2, "listener"    # Lcom/easyview/basecamera/ICamera$IRespondListener;

    .prologue
    .line 1399
    iget-object v0, p0, Lcom/easyview/ppcs/PPCSCamera;->planeParams:Lcom/easyview/ppcs/PPCSCamera$PlaneParams;

    iput p1, v0, Lcom/easyview/ppcs/PPCSCamera$PlaneParams;->showDate:I

    .line 1400
    invoke-virtual {p0}, Lcom/easyview/ppcs/PPCSCamera;->getID()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x25d

    invoke-static {v0, v1, p1}, Lobject/p2pipcam/nativecaller/NativeCaller;->PPPPCameraControl(Ljava/lang/String;II)I

    .line 1401
    return-void
.end method

.method public setStoreParam(Lcom/easyview/bean/SdcardBean;Lcom/easyview/basecamera/ICamera$IRespondListener;)V
    .locals 27
    .param p1, "sdcardBean"    # Lcom/easyview/bean/SdcardBean;
    .param p2, "listener"    # Lcom/easyview/basecamera/ICamera$IRespondListener;

    .prologue
    .line 367
    invoke-virtual/range {p1 .. p1}, Lcom/easyview/bean/SdcardBean;->getRecord_time_enable()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 368
    invoke-virtual/range {p0 .. p0}, Lcom/easyview/ppcs/PPCSCamera;->getID()Ljava/lang/String;

    move-result-object v0

    .line 369
    invoke-virtual/range {p1 .. p1}, Lcom/easyview/bean/SdcardBean;->getRecord_conver_enable()I

    move-result v1

    .line 370
    invoke-virtual/range {p1 .. p1}, Lcom/easyview/bean/SdcardBean;->getRecord_timer()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Lcom/easyview/bean/SdcardBean;->getRecord_size()I

    move-result v3

    .line 371
    invoke-virtual/range {p1 .. p1}, Lcom/easyview/bean/SdcardBean;->getRecord_time_enable()I

    move-result v4

    const/4 v5, -0x1

    const/4 v6, -0x1

    .line 372
    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v10, -0x1

    const/4 v11, -0x1

    .line 373
    const/4 v12, -0x1

    const/4 v13, -0x1

    const/4 v14, -0x1

    const/4 v15, -0x1

    const/16 v16, -0x1

    .line 374
    const/16 v17, -0x1

    const/16 v18, -0x1

    const/16 v19, -0x1

    const/16 v20, -0x1

    const/16 v21, -0x1

    .line 375
    const/16 v22, -0x1

    const/16 v23, -0x1

    const/16 v24, -0x1

    const/16 v25, -0x1

    invoke-virtual/range {p1 .. p1}, Lcom/easyview/bean/SdcardBean;->getRecordMode()I

    move-result v26

    .line 368
    invoke-static/range {v0 .. v26}, Lobject/p2pipcam/nativecaller/NativeCaller;->PPPPSDRecordSetting(Ljava/lang/String;IIIIIIIIIIIIIIIIIIIIIIIIII)I

    .line 386
    :goto_0
    return-void

    .line 377
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/easyview/ppcs/PPCSCamera;->getID()Ljava/lang/String;

    move-result-object v0

    .line 378
    invoke-virtual/range {p1 .. p1}, Lcom/easyview/bean/SdcardBean;->getRecord_conver_enable()I

    move-result v1

    .line 379
    invoke-virtual/range {p1 .. p1}, Lcom/easyview/bean/SdcardBean;->getRecord_timer()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Lcom/easyview/bean/SdcardBean;->getRecord_size()I

    move-result v3

    .line 380
    invoke-virtual/range {p1 .. p1}, Lcom/easyview/bean/SdcardBean;->getRecord_time_enable()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 381
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 382
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 383
    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    .line 384
    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/easyview/bean/SdcardBean;->getRecordMode()I

    move-result v26

    .line 377
    invoke-static/range {v0 .. v26}, Lobject/p2pipcam/nativecaller/NativeCaller;->PPPPSDRecordSetting(Ljava/lang/String;IIIIIIIIIIIIIIIIIIIIIIIIII)I

    goto :goto_0
.end method

.method public setTimeParam(Lcom/easyview/bean/DateBean;Lcom/easyview/basecamera/ICamera$IRespondListener;)V
    .locals 5
    .param p1, "bean"    # Lcom/easyview/bean/DateBean;
    .param p2, "listener"    # Lcom/easyview/basecamera/ICamera$IRespondListener;

    .prologue
    .line 343
    const-string v0, "PPCS"

    const-string v1, "time:%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/easyview/bean/DateBean;->getNow()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    invoke-virtual {p0}, Lcom/easyview/ppcs/PPCSCamera;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/easyview/bean/DateBean;->getNow()I

    move-result v1

    invoke-virtual {p1}, Lcom/easyview/bean/DateBean;->getTz()I

    move-result v2

    .line 345
    invoke-virtual {p1}, Lcom/easyview/bean/DateBean;->getNtp_enable()I

    move-result v3

    invoke-virtual {p1}, Lcom/easyview/bean/DateBean;->getNtp_ser()Ljava/lang/String;

    move-result-object v4

    .line 344
    invoke-static {v0, v1, v2, v3, v4}, Lobject/p2pipcam/nativecaller/NativeCaller;->PPPPDatetimeSetting(Ljava/lang/String;IIILjava/lang/String;)I

    .line 347
    return-void
.end method

.method public setVideoQuality(I)V
    .locals 3
    .param p1, "quality"    # I

    .prologue
    const/4 v2, 0x0

    .line 422
    iput p1, p0, Lcom/easyview/ppcs/PPCSCamera;->_quality:I

    .line 423
    div-int/lit8 v1, p1, 0x14

    rsub-int/lit8 v0, v1, 0x4

    .line 424
    .local v0, "resolution":I
    invoke-virtual {p0}, Lcom/easyview/ppcs/PPCSCamera;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2, v0}, Lobject/p2pipcam/nativecaller/NativeCaller;->PPPPCameraControl(Ljava/lang/String;II)I

    .line 425
    invoke-virtual {p0}, Lcom/easyview/ppcs/PPCSCamera;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/easyview/ppcs/PPCSCamera;->IsPPXW(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 427
    packed-switch v0, :pswitch_data_0

    .line 442
    :cond_0
    :goto_0
    return-void

    .line 431
    :pswitch_0
    invoke-virtual {p0}, Lcom/easyview/ppcs/PPCSCamera;->getID()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lobject/p2pipcam/nativecaller/NativeCaller;->StartPPPPLivestream(Ljava/lang/String;I)I

    goto :goto_0

    .line 434
    :pswitch_1
    invoke-virtual {p0}, Lcom/easyview/ppcs/PPCSCamera;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lobject/p2pipcam/nativecaller/NativeCaller;->StartPPPPLivestream(Ljava/lang/String;I)I

    goto :goto_0

    .line 438
    :pswitch_2
    invoke-virtual {p0}, Lcom/easyview/ppcs/PPCSCamera;->getID()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lobject/p2pipcam/nativecaller/NativeCaller;->StartPPPPLivestream(Ljava/lang/String;I)I

    goto :goto_0

    .line 427
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public setWiFiName(Ljava/lang/String;Lcom/easyview/basecamera/ICamera$IRespondListener;)V
    .locals 4
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/easyview/basecamera/ICamera$IRespondListener;

    .prologue
    .line 1415
    iget-object v1, p0, Lcom/easyview/ppcs/PPCSCamera;->planeParams:Lcom/easyview/ppcs/PPCSCamera$PlaneParams;

    iget-object v1, v1, Lcom/easyview/ppcs/PPCSCamera$PlaneParams;->WiFiName:Lstruct/CString;

    invoke-virtual {v1, p1}, Lstruct/CString;->setString(Ljava/lang/String;)V

    .line 1416
    const-string v1, "set_wifi_ap.cgi?wifiname=%s&"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1417
    .local v0, "cgi":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/easyview/ppcs/PPCSCamera;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lobject/p2pipcam/nativecaller/NativeCaller;->SendCommonCGI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1418
    return-void
.end method

.method public setWifiParam(Lcom/easyview/bean/WifiBean;Lcom/easyview/basecamera/ICamera$IRespondListener;)V
    .locals 18
    .param p1, "bean"    # Lcom/easyview/bean/WifiBean;
    .param p2, "listener"    # Lcom/easyview/basecamera/ICamera$IRespondListener;

    .prologue
    .line 299
    invoke-virtual/range {p0 .. p0}, Lcom/easyview/ppcs/PPCSCamera;->getID()Ljava/lang/String;

    move-result-object v0

    .line 300
    invoke-virtual/range {p1 .. p1}, Lcom/easyview/bean/WifiBean;->getEnable()I

    move-result v1

    invoke-virtual/range {p1 .. p1}, Lcom/easyview/bean/WifiBean;->getSsid()Ljava/lang/String;

    move-result-object v2

    .line 301
    invoke-virtual/range {p1 .. p1}, Lcom/easyview/bean/WifiBean;->getChannel()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Lcom/easyview/bean/WifiBean;->getMode()I

    move-result v4

    .line 302
    invoke-virtual/range {p1 .. p1}, Lcom/easyview/bean/WifiBean;->getAuthtype()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual/range {p1 .. p1}, Lcom/easyview/bean/WifiBean;->getEncryp()I

    move-result v6

    .line 303
    invoke-virtual/range {p1 .. p1}, Lcom/easyview/bean/WifiBean;->getKeyformat()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Lcom/easyview/bean/WifiBean;->getDefkey()I

    move-result v8

    .line 304
    invoke-virtual/range {p1 .. p1}, Lcom/easyview/bean/WifiBean;->getKey1()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Lcom/easyview/bean/WifiBean;->getKey2()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Lcom/easyview/bean/WifiBean;->getKey3()Ljava/lang/String;

    move-result-object v11

    .line 305
    invoke-virtual/range {p1 .. p1}, Lcom/easyview/bean/WifiBean;->getKey4()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Lcom/easyview/bean/WifiBean;->getKey1_bits()I

    move-result v13

    .line 306
    invoke-virtual/range {p1 .. p1}, Lcom/easyview/bean/WifiBean;->getKey2_bits()I

    move-result v14

    invoke-virtual/range {p1 .. p1}, Lcom/easyview/bean/WifiBean;->getKey3_bits()I

    move-result v15

    .line 307
    invoke-virtual/range {p1 .. p1}, Lcom/easyview/bean/WifiBean;->getKey4_bits()I

    move-result v16

    invoke-virtual/range {p1 .. p1}, Lcom/easyview/bean/WifiBean;->getWpa_psk()Ljava/lang/String;

    move-result-object v17

    .line 299
    invoke-static/range {v0 .. v17}, Lobject/p2pipcam/nativecaller/NativeCaller;->PPPPWifiSetting(Ljava/lang/String;ILjava/lang/String;IIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;)I

    .line 309
    return-void
.end method

.method public snapShot(Lcom/easyview/basecamera/ICamera$IRespondListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/easyview/basecamera/ICamera$IRespondListener;

    .prologue
    .line 1321
    invoke-virtual {p0}, Lcom/easyview/ppcs/PPCSCamera;->getID()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lobject/p2pipcam/nativecaller/NativeCaller;->PPPPGetSystemParams(Ljava/lang/String;I)I

    .line 1322
    return-void
.end method

.method public startRecord(Lcom/easyview/basecamera/ICamera$IRespondListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/easyview/basecamera/ICamera$IRespondListener;

    .prologue
    const/4 v0, 0x0

    .line 1325
    iput v0, p0, Lcom/easyview/ppcs/PPCSCamera;->_startRecordTime:I

    .line 1326
    iput v0, p0, Lcom/easyview/ppcs/PPCSCamera;->_record_duration:I

    .line 1327
    invoke-virtual {p0}, Lcom/easyview/ppcs/PPCSCamera;->getID()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x36

    invoke-static {v0, v1}, Lobject/p2pipcam/nativecaller/NativeCaller;->PPPPGetSystemParams(Ljava/lang/String;I)I

    .line 1328
    return-void
.end method

.method public stopDownRecord(Lcom/easyview/basecamera/ICamera$IDownloadListener;)V
    .locals 7
    .param p1, "listener"    # Lcom/easyview/basecamera/ICamera$IDownloadListener;

    .prologue
    const/4 v6, 0x0

    .line 1076
    const-string v2, "DownRecord"

    const-string v3, "stop down %d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, p0, Lcom/easyview/ppcs/PPCSCamera;->write_file_size:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1077
    iget-object v2, p0, Lcom/easyview/ppcs/PPCSCamera;->down_fos:Ljava/io/FileOutputStream;

    if-eqz v2, :cond_0

    .line 1080
    :try_start_0
    iget-object v2, p0, Lcom/easyview/ppcs/PPCSCamera;->down_fos:Ljava/io/FileOutputStream;

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 1081
    iget-object v2, p0, Lcom/easyview/ppcs/PPCSCamera;->down_fos:Ljava/io/FileOutputStream;

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 1082
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/easyview/ppcs/PPCSCamera;->down_fos:Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1087
    :cond_0
    :goto_0
    iput-boolean v6, p0, Lcom/easyview/ppcs/PPCSCamera;->is_down_record:Z

    .line 1089
    const/16 v2, 0x106

    const/4 v3, 0x0

    :try_start_1
    new-array v3, v3, [I

    invoke-static {v2, v3}, Lcom/easyview/struct/EVCommandDefs;->MakeSimpleReqPacket(S[I)[B

    move-result-object v0

    .line 1090
    .local v0, "data":[B
    invoke-virtual {p0}, Lcom/easyview/ppcs/PPCSCamera;->getID()Ljava/lang/String;

    move-result-object v2

    array-length v3, v0

    invoke-static {v2, v0, v3}, Lobject/p2pipcam/nativecaller/NativeCaller;->EVCommand(Ljava/lang/String;[BI)I
    :try_end_1
    .catch Lstruct/StructException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1094
    .end local v0    # "data":[B
    :goto_1
    return-void

    .line 1083
    :catch_0
    move-exception v1

    .line 1084
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 1091
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 1092
    .local v1, "e":Lstruct/StructException;
    invoke-virtual {v1}, Lstruct/StructException;->printStackTrace()V

    goto :goto_1
.end method

.method public stopMusic(ILcom/easyview/basecamera/ICamera$IRespondListener;)V
    .locals 6
    .param p1, "index"    # I
    .param p2, "listener"    # Lcom/easyview/basecamera/ICamera$IRespondListener;

    .prologue
    .line 1371
    const/16 v2, 0x119

    const/4 v3, 0x1

    :try_start_0
    new-array v3, v3, [I

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v5, v3, v4

    invoke-static {v2, v3}, Lcom/easyview/struct/EVCommandDefs;->MakeSimpleReqPacket(S[I)[B

    move-result-object v0

    .line 1372
    .local v0, "data":[B
    invoke-virtual {p0}, Lcom/easyview/ppcs/PPCSCamera;->getID()Ljava/lang/String;

    move-result-object v2

    array-length v3, v0

    invoke-static {v2, v0, v3}, Lobject/p2pipcam/nativecaller/NativeCaller;->EVCommand(Ljava/lang/String;[BI)I
    :try_end_0
    .catch Lstruct/StructException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1376
    .end local v0    # "data":[B
    :goto_0
    return-void

    .line 1373
    :catch_0
    move-exception v1

    .line 1374
    .local v1, "e":Lstruct/StructException;
    invoke-virtual {v1}, Lstruct/StructException;->printStackTrace()V

    goto :goto_0
.end method

.method public stopRecord(Lcom/easyview/basecamera/ICamera$IRespondListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/easyview/basecamera/ICamera$IRespondListener;

    .prologue
    .line 1331
    invoke-virtual {p0}, Lcom/easyview/ppcs/PPCSCamera;->getID()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x37

    invoke-static {v0, v1}, Lobject/p2pipcam/nativecaller/NativeCaller;->PPPPGetSystemParams(Ljava/lang/String;I)I

    .line 1333
    return-void
.end method

.method public timing()V
    .locals 8

    .prologue
    .line 1534
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    .line 1535
    .local v2, "timeZone":Ljava/util/TimeZone;
    invoke-virtual {v2}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v4

    div-int/lit16 v3, v4, 0x3e8

    .line 1536
    .local v3, "tz":I
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1537
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    long-to-int v1, v4

    .line 1538
    .local v1, "now":I
    invoke-virtual {p0}, Lcom/easyview/ppcs/PPCSCamera;->getID()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const-string v6, ""

    invoke-static {v4, v1, v3, v5, v6}, Lobject/p2pipcam/nativecaller/NativeCaller;->PPPPDatetimeSetting(Ljava/lang/String;IIILjava/lang/String;)I

    .line 1539
    return-void
.end method

.method public upgradeCheck(Lcom/easyview/basecamera/ICamera$IRespondListener;)V
    .locals 4
    .param p1, "listener"    # Lcom/easyview/basecamera/ICamera$IRespondListener;

    .prologue
    .line 1637
    iput-object p1, p0, Lcom/easyview/ppcs/PPCSCamera;->upgradeCheckListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

    .line 1639
    const/16 v2, 0x205

    const/4 v3, 0x0

    :try_start_0
    new-array v3, v3, [I

    invoke-static {v2, v3}, Lcom/easyview/struct/EVCommandDefs;->MakeSimpleReqPacket(S[I)[B

    move-result-object v0

    .line 1640
    .local v0, "data":[B
    invoke-virtual {p0}, Lcom/easyview/ppcs/PPCSCamera;->getID()Ljava/lang/String;

    move-result-object v2

    array-length v3, v0

    invoke-static {v2, v0, v3}, Lobject/p2pipcam/nativecaller/NativeCaller;->EVCommand(Ljava/lang/String;[BI)I
    :try_end_0
    .catch Lstruct/StructException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1644
    .end local v0    # "data":[B
    :goto_0
    return-void

    .line 1641
    :catch_0
    move-exception v1

    .line 1642
    .local v1, "e":Lstruct/StructException;
    invoke-virtual {v1}, Lstruct/StructException;->printStackTrace()V

    goto :goto_0
.end method

.method public upgradeDevice(Lcom/easyview/basecamera/ICamera$IRespondListener;)V
    .locals 4
    .param p1, "listener"    # Lcom/easyview/basecamera/ICamera$IRespondListener;

    .prologue
    .line 1626
    iput-object p1, p0, Lcom/easyview/ppcs/PPCSCamera;->upgradeDeviceListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

    .line 1628
    const/16 v2, 0x204

    const/4 v3, 0x0

    :try_start_0
    new-array v3, v3, [I

    invoke-static {v2, v3}, Lcom/easyview/struct/EVCommandDefs;->MakeSimpleReqPacket(S[I)[B

    move-result-object v0

    .line 1629
    .local v0, "data":[B
    invoke-virtual {p0}, Lcom/easyview/ppcs/PPCSCamera;->getID()Ljava/lang/String;

    move-result-object v2

    array-length v3, v0

    invoke-static {v2, v0, v3}, Lobject/p2pipcam/nativecaller/NativeCaller;->EVCommand(Ljava/lang/String;[BI)I
    :try_end_0
    .catch Lstruct/StructException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1634
    .end local v0    # "data":[B
    :goto_0
    return-void

    .line 1630
    :catch_0
    move-exception v1

    .line 1631
    .local v1, "e":Lstruct/StructException;
    invoke-virtual {v1}, Lstruct/StructException;->printStackTrace()V

    goto :goto_0
.end method

.method public wifiScan(Lcom/easyview/basecamera/ICamera$IWifiScanListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/easyview/basecamera/ICamera$IWifiScanListener;

    .prologue
    .line 295
    invoke-virtual {p0}, Lcom/easyview/ppcs/PPCSCamera;->getID()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x14

    invoke-static {v0, v1}, Lobject/p2pipcam/nativecaller/NativeCaller;->PPPPGetSystemParams(Ljava/lang/String;I)I

    .line 296
    return-void
.end method
