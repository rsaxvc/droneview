.class public abstract Lcom/easyview/basecamera/BaseCamera;
.super Ljava/lang/Object;
.source "BaseCamera.java"

# interfaces
.implements Lcom/easyview/basecamera/ICamera;


# static fields
.field public static final CAMERA_STATE_CONNECTED:I = 0x2

.field public static final CAMERA_STATE_CONNECTING:I = 0x1

.field public static final CAMERA_STATE_CONNECT_FAILED:I = 0x8

.field public static final CAMERA_STATE_DISCONNECTED:I = 0x3

.field public static final CAMERA_STATE_NONE:I = 0x0

.field public static final CAMERA_STATE_TIMEOUT:I = 0x6

.field public static final CAMERA_STATE_UNKNOWN_DEVICE:I = 0x4

.field public static final CAMERA_STATE_UNSUPPORTED:I = 0x7

.field public static final CAMERA_STATE_WRONG_PASSWORD:I = 0x5

.field public static final COMMAND_RESPOND:I = 0x0

.field public static final COMMAND_RESPOND_OK:I = 0x1

.field public static final DATA_RESPOND:I = 0x1

.field public static final DOORBELL_ALARM:I = 0x22

.field public static final EVENT_BEGIN_RECORD:I = 0x201

.field public static final EVENT_CALL:I = 0x30

.field public static final EVENT_DEVICE_DESTROY:I = 0x28

.field public static final EVENT_END_RECORD:I = 0x202

.field public static final EVENT_PLAY_MUSIC_FINISH:I = 0x204

.field public static final EV_CUSTOM_EVENT:I = 0x4

.field public static final EV_CUSTOM_EVENTS:I = 0x5

.field public static final EV_CUSTOM_EXTINFO:I = 0x10

.field public static final EV_CUSTOM_PICTURE:I = 0x1

.field public static final EV_CUSTOM_RECORD_DOWN:I = 0x2

.field public static final EV_CUSTOM_RECORD_INDEX:I = 0x3

.field public static final EV_EVENT_BEGIN_MESSAGE:I = 0x102

.field public static final EV_EVENT_BODYTEMPALARM:I = 0x27

.field public static final EV_EVENT_HOVERALARM:I = 0x7

.field public static final EV_EVENT_HUMALARM:I = 0x20

.field public static final EV_EVENT_ILLEGAL_UNLOCK:I = 0x103

.field public static final EV_EVENT_LOWVOL:I = 0x2a

.field public static final EV_EVENT_OPEN_DOOR:I = 0x101

.field public static final EV_EVENT_POWERALARM:I = 0x13

.field public static final EV_EVENT_TEMPALARM:I = 0x21

.field public static final EV_EVENT_VOICEALARM:I = 0x12

.field public static final EXT_INFO_SN_433:I = 0x44e

.field public static final EXT_INFO_SN_BODYTEMP:I = 0x3eb

.field public static final EXT_INFO_SN_CALLBUTTON:I = 0x44d

.field public static final EXT_INFO_SN_HOVER:I = 0x3f3

.field public static final EXT_INFO_SN_HUMIDITY:I = 0x3e9

.field public static final EXT_INFO_SN_TEMPERATURE:I = 0x3ea

.field public static final EXT_INFO_SN_THERVOL:I = 0x3ec

.field public static final GPIO_ALARM:I = 0x2

.field public static final MOTION_ALARM:I = 0x1


# instance fields
.field private _DataListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/easyview/basecamera/ICameraDataListener;",
            ">;"
        }
    .end annotation
.end field

.field private _ParamListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/easyview/basecamera/ICameraParamListener;",
            ">;"
        }
    .end annotation
.end field

.field protected _activeTime:J

.field private _alarmListener:Lcom/easyview/basecamera/ICamera$IAlarmListener;

.field private _bitmap:Landroid/graphics/Bitmap;

.field private _caps:Lcom/easyview/basecamera/CameraCaps;

.field private _customListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

.field protected _eventFileID:I

.field protected _eventInfo:Lcom/easyview/struct/EVCommandDefs$EventInfo;

.field protected _events:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/easyview/struct/EVCommandDefs$Event;",
            ">;"
        }
    .end annotation
.end field

.field protected _extInfo:Lcom/easyview/struct/EVCommandDefs$ExtInfos;

.field protected _extThres:Lcom/easyview/struct/EVCommandDefs$ExtThresholds;

.field private _id:Ljava/lang/String;

.field protected _isOnline:Z

.field protected _isRecording:Z

.field private _name:Ljava/lang/String;

.field private _pwd:Ljava/lang/String;

.field protected _quality:I

.field private _reconnect:I

.field protected _record_duration:I

.field protected _sensorres:I

.field protected _startRecordTime:I

.field protected _storageStateBean:Lcom/easyview/bean/StorageStateBean;

.field protected _storageStateStruct:Lcom/easyview/struct/EVCommandDefs$StorageStateStruct;

.field private _user:Ljava/lang/String;

.field public event:Lcom/easyview/struct/EVCommandDefs$Event;

.field public picturePathName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "user"    # Ljava/lang/String;
    .param p4, "pwd"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0xa

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/easyview/basecamera/BaseCamera;->_DataListeners:Ljava/util/List;

    .line 80
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/easyview/basecamera/BaseCamera;->_ParamListeners:Ljava/util/List;

    .line 82
    iput-object v3, p0, Lcom/easyview/basecamera/BaseCamera;->_alarmListener:Lcom/easyview/basecamera/ICamera$IAlarmListener;

    .line 83
    iput-object v3, p0, Lcom/easyview/basecamera/BaseCamera;->_customListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

    .line 88
    iput-object v3, p0, Lcom/easyview/basecamera/BaseCamera;->_bitmap:Landroid/graphics/Bitmap;

    .line 89
    iput v2, p0, Lcom/easyview/basecamera/BaseCamera;->_reconnect:I

    .line 91
    iput-object v3, p0, Lcom/easyview/basecamera/BaseCamera;->_storageStateBean:Lcom/easyview/bean/StorageStateBean;

    .line 92
    new-instance v1, Lcom/easyview/struct/EVCommandDefs$StorageStateStruct;

    invoke-direct {v1}, Lcom/easyview/struct/EVCommandDefs$StorageStateStruct;-><init>()V

    iput-object v1, p0, Lcom/easyview/basecamera/BaseCamera;->_storageStateStruct:Lcom/easyview/struct/EVCommandDefs$StorageStateStruct;

    .line 93
    iput v4, p0, Lcom/easyview/basecamera/BaseCamera;->_quality:I

    .line 94
    iput-boolean v2, p0, Lcom/easyview/basecamera/BaseCamera;->_isOnline:Z

    .line 95
    iput-boolean v2, p0, Lcom/easyview/basecamera/BaseCamera;->_isRecording:Z

    .line 96
    iput v2, p0, Lcom/easyview/basecamera/BaseCamera;->_startRecordTime:I

    .line 97
    iput v2, p0, Lcom/easyview/basecamera/BaseCamera;->_record_duration:I

    .line 98
    new-instance v1, Lcom/easyview/basecamera/CameraCaps;

    invoke-direct {v1}, Lcom/easyview/basecamera/CameraCaps;-><init>()V

    iput-object v1, p0, Lcom/easyview/basecamera/BaseCamera;->_caps:Lcom/easyview/basecamera/CameraCaps;

    .line 99
    new-instance v1, Lcom/easyview/struct/EVCommandDefs$ExtInfos;

    invoke-direct {v1}, Lcom/easyview/struct/EVCommandDefs$ExtInfos;-><init>()V

    iput-object v1, p0, Lcom/easyview/basecamera/BaseCamera;->_extInfo:Lcom/easyview/struct/EVCommandDefs$ExtInfos;

    .line 100
    new-instance v1, Lcom/easyview/struct/EVCommandDefs$ExtThresholds;

    invoke-direct {v1}, Lcom/easyview/struct/EVCommandDefs$ExtThresholds;-><init>()V

    iput-object v1, p0, Lcom/easyview/basecamera/BaseCamera;->_extThres:Lcom/easyview/struct/EVCommandDefs$ExtThresholds;

    .line 101
    new-instance v1, Lcom/easyview/struct/EVCommandDefs$EventInfo;

    invoke-direct {v1}, Lcom/easyview/struct/EVCommandDefs$EventInfo;-><init>()V

    iput-object v1, p0, Lcom/easyview/basecamera/BaseCamera;->_eventInfo:Lcom/easyview/struct/EVCommandDefs$EventInfo;

    .line 103
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/easyview/basecamera/BaseCamera;->_events:Ljava/util/List;

    .line 104
    iput v2, p0, Lcom/easyview/basecamera/BaseCamera;->_eventFileID:I

    .line 105
    iput v2, p0, Lcom/easyview/basecamera/BaseCamera;->_sensorres:I

    .line 106
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/easyview/basecamera/BaseCamera;->_activeTime:J

    .line 108
    iput-object v3, p0, Lcom/easyview/basecamera/BaseCamera;->event:Lcom/easyview/struct/EVCommandDefs$Event;

    .line 109
    iput-object v3, p0, Lcom/easyview/basecamera/BaseCamera;->picturePathName:Ljava/lang/String;

    .line 113
    iput-object p1, p0, Lcom/easyview/basecamera/BaseCamera;->_name:Ljava/lang/String;

    .line 114
    iput-object p2, p0, Lcom/easyview/basecamera/BaseCamera;->_id:Ljava/lang/String;

    .line 115
    iput-object p3, p0, Lcom/easyview/basecamera/BaseCamera;->_user:Ljava/lang/String;

    .line 116
    iput-object p4, p0, Lcom/easyview/basecamera/BaseCamera;->_pwd:Ljava/lang/String;

    .line 117
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v4, :cond_0

    .line 121
    const/4 v0, 0x0

    :goto_1
    if-lt v0, v4, :cond_1

    .line 125
    return-void

    .line 119
    :cond_0
    iget-object v1, p0, Lcom/easyview/basecamera/BaseCamera;->_extInfo:Lcom/easyview/struct/EVCommandDefs$ExtInfos;

    iget-object v1, v1, Lcom/easyview/struct/EVCommandDefs$ExtInfos;->values:[Lcom/easyview/struct/EVCommandDefs$ExtInfo;

    new-instance v2, Lcom/easyview/struct/EVCommandDefs$ExtInfo;

    invoke-direct {v2}, Lcom/easyview/struct/EVCommandDefs$ExtInfo;-><init>()V

    aput-object v2, v1, v0

    .line 117
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 123
    :cond_1
    iget-object v1, p0, Lcom/easyview/basecamera/BaseCamera;->_extThres:Lcom/easyview/struct/EVCommandDefs$ExtThresholds;

    iget-object v1, v1, Lcom/easyview/struct/EVCommandDefs$ExtThresholds;->values:[Lcom/easyview/struct/EVCommandDefs$ExtThreshold;

    new-instance v2, Lcom/easyview/struct/EVCommandDefs$ExtThreshold;

    invoke-direct {v2}, Lcom/easyview/struct/EVCommandDefs$ExtThreshold;-><init>()V

    aput-object v2, v1, v0

    .line 121
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public AddDataListener(Lcom/easyview/basecamera/ICameraDataListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/easyview/basecamera/ICameraDataListener;

    .prologue
    .line 159
    iget-object v0, p0, Lcom/easyview/basecamera/BaseCamera;->_DataListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/easyview/basecamera/BaseCamera;->_DataListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    :cond_0
    return-void
.end method

.method public AddParamListener(Lcom/easyview/basecamera/ICameraParamListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/easyview/basecamera/ICameraParamListener;

    .prologue
    .line 175
    iget-object v0, p0, Lcom/easyview/basecamera/BaseCamera;->_ParamListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/easyview/basecamera/BaseCamera;->_ParamListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    :cond_0
    return-void
.end method

.method public ClearEvents()V
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/easyview/basecamera/BaseCamera;->_events:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 249
    return-void
.end method

.method public GetEventFileID()I
    .locals 1

    .prologue
    .line 256
    iget v0, p0, Lcom/easyview/basecamera/BaseCamera;->_eventFileID:I

    return v0
.end method

.method public GetEvents()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/easyview/struct/EVCommandDefs$Event;",
            ">;"
        }
    .end annotation

    .prologue
    .line 252
    iget-object v0, p0, Lcom/easyview/basecamera/BaseCamera;->_events:Ljava/util/List;

    return-object v0
.end method

.method protected OnAlarm(I)V
    .locals 1
    .param p1, "alarmType"    # I

    .prologue
    .line 198
    iget-object v0, p0, Lcom/easyview/basecamera/BaseCamera;->_alarmListener:Lcom/easyview/basecamera/ICamera$IAlarmListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/easyview/basecamera/BaseCamera;->_alarmListener:Lcom/easyview/basecamera/ICamera$IAlarmListener;

    invoke-interface {v0, p0, p1}, Lcom/easyview/basecamera/ICamera$IAlarmListener;->OnAlarm(Lcom/easyview/basecamera/ICamera;I)V

    .line 199
    :cond_0
    return-void
.end method

.method protected OnCustom(II)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "result"    # I

    .prologue
    .line 202
    iget-object v0, p0, Lcom/easyview/basecamera/BaseCamera;->_customListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/easyview/basecamera/BaseCamera;->_customListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

    invoke-interface {v0, p0, p1, p2}, Lcom/easyview/basecamera/ICamera$IRespondListener;->OnRespondResult(Lcom/easyview/basecamera/ICamera;II)V

    .line 203
    :cond_0
    return-void
.end method

.method public OnH264Data([BII)V
    .locals 3
    .param p1, "data"    # [B
    .param p2, "length"    # I
    .param p3, "type"    # I

    .prologue
    .line 213
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/easyview/basecamera/BaseCamera;->_DataListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 217
    return-void

    .line 214
    :cond_0
    iget-object v2, p0, Lcom/easyview/basecamera/BaseCamera;->_DataListeners:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/easyview/basecamera/ICameraDataListener;

    .line 215
    .local v1, "listener":Lcom/easyview/basecamera/ICameraDataListener;
    invoke-interface {v1, p0, p1, p2, p3}, Lcom/easyview/basecamera/ICameraDataListener;->OnH264Data(Lcom/easyview/basecamera/ICamera;[BII)V

    .line 213
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public OnParam(I)V
    .locals 3
    .param p1, "type"    # I

    .prologue
    .line 206
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/easyview/basecamera/BaseCamera;->_ParamListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 210
    return-void

    .line 207
    :cond_0
    iget-object v2, p0, Lcom/easyview/basecamera/BaseCamera;->_ParamListeners:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/easyview/basecamera/ICameraParamListener;

    .line 208
    .local v1, "listener":Lcom/easyview/basecamera/ICameraParamListener;
    invoke-interface {v1, p0, p1}, Lcom/easyview/basecamera/ICameraParamListener;->OnParam(Lcom/easyview/basecamera/ICamera;I)V

    .line 206
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public Reconnect()Z
    .locals 2

    .prologue
    .line 238
    iget v0, p0, Lcom/easyview/basecamera/BaseCamera;->_reconnect:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 240
    iget v0, p0, Lcom/easyview/basecamera/BaseCamera;->_reconnect:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/easyview/basecamera/BaseCamera;->_reconnect:I

    .line 241
    const/4 v0, 0x1

    .line 243
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public RemoveDataListener(Lcom/easyview/basecamera/ICameraDataListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/easyview/basecamera/ICameraDataListener;

    .prologue
    .line 165
    iget-object v0, p0, Lcom/easyview/basecamera/BaseCamera;->_DataListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/easyview/basecamera/BaseCamera;->_DataListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 168
    :cond_0
    return-void
.end method

.method public RemoveParamListener(Lcom/easyview/basecamera/ICameraParamListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/easyview/basecamera/ICameraParamListener;

    .prologue
    .line 181
    iget-object v0, p0, Lcom/easyview/basecamera/BaseCamera;->_ParamListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/easyview/basecamera/BaseCamera;->_ParamListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 184
    :cond_0
    return-void
.end method

.method public SetAlarmListener(Lcom/easyview/basecamera/ICamera$IAlarmListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/easyview/basecamera/ICamera$IAlarmListener;

    .prologue
    .line 188
    iput-object p1, p0, Lcom/easyview/basecamera/BaseCamera;->_alarmListener:Lcom/easyview/basecamera/ICamera$IAlarmListener;

    .line 189
    return-void
.end method

.method public getActivePeriod(I)I
    .locals 5
    .param p1, "minMS"    # I

    .prologue
    .line 264
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 265
    .local v0, "now":J
    iget-wide v3, p0, Lcom/easyview/basecamera/BaseCamera;->_activeTime:J

    sub-long v3, v0, v3

    long-to-int v2, v3

    .line 266
    .local v2, "period":I
    if-le v2, p1, :cond_0

    .line 268
    iput-wide v0, p0, Lcom/easyview/basecamera/BaseCamera;->_activeTime:J

    .line 270
    :cond_0
    return v2
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/easyview/basecamera/BaseCamera;->_bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getExtInfo()Lcom/easyview/struct/EVCommandDefs$ExtInfos;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/easyview/basecamera/BaseCamera;->_extInfo:Lcom/easyview/struct/EVCommandDefs$ExtInfos;

    return-object v0
.end method

.method public getExtThres()Lcom/easyview/struct/EVCommandDefs$ExtThresholds;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/easyview/basecamera/BaseCamera;->_extThres:Lcom/easyview/struct/EVCommandDefs$ExtThresholds;

    return-object v0
.end method

.method public getID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/easyview/basecamera/BaseCamera;->_id:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/easyview/basecamera/BaseCamera;->_name:Ljava/lang/String;

    return-object v0
.end method

.method public getPwd()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/easyview/basecamera/BaseCamera;->_pwd:Ljava/lang/String;

    return-object v0
.end method

.method public getQuality()I
    .locals 1

    .prologue
    .line 233
    iget v0, p0, Lcom/easyview/basecamera/BaseCamera;->_quality:I

    return v0
.end method

.method public getRecordText()Ljava/lang/String;
    .locals 12

    .prologue
    const-wide/16 v10, 0x3e8

    .line 136
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 137
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    .line 138
    .local v1, "ms":J
    div-long v6, v1, v10

    iget v8, p0, Lcom/easyview/basecamera/BaseCamera;->_startRecordTime:I

    int-to-long v8, v8

    sub-long v4, v6, v8

    .line 139
    .local v4, "sec":J
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-ltz v6, :cond_0

    const-wide/16 v6, 0xe10

    cmp-long v6, v4, v6

    if-lez v6, :cond_1

    .line 141
    :cond_0
    const-wide/16 v4, 0x0

    .line 142
    div-long v6, v1, v10

    long-to-int v6, v6

    iput v6, p0, Lcom/easyview/basecamera/BaseCamera;->_startRecordTime:I

    .line 144
    :cond_1
    const-string v6, "  %02d:%02d  "

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget v9, p0, Lcom/easyview/basecamera/BaseCamera;->_record_duration:I

    div-int/lit8 v9, v9, 0x3c

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget v9, p0, Lcom/easyview/basecamera/BaseCamera;->_record_duration:I

    rem-int/lit8 v9, v9, 0x3c

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 145
    .local v3, "result":Ljava/lang/String;
    iget v6, p0, Lcom/easyview/basecamera/BaseCamera;->_record_duration:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/easyview/basecamera/BaseCamera;->_record_duration:I

    .line 146
    return-object v3
.end method

.method public getSensorRes()I
    .locals 1

    .prologue
    .line 260
    iget v0, p0, Lcom/easyview/basecamera/BaseCamera;->_sensorres:I

    return v0
.end method

.method public getStorageState()Lcom/easyview/struct/EVCommandDefs$StorageStateStruct;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/easyview/basecamera/BaseCamera;->_storageStateStruct:Lcom/easyview/struct/EVCommandDefs$StorageStateStruct;

    return-object v0
.end method

.method public getUser()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/easyview/basecamera/BaseCamera;->_user:Ljava/lang/String;

    return-object v0
.end method

.method public get_caps()Lcom/easyview/basecamera/CameraCaps;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/easyview/basecamera/BaseCamera;->_caps:Lcom/easyview/basecamera/CameraCaps;

    return-object v0
.end method

.method public isOnline()Z
    .locals 1

    .prologue
    .line 132
    iget-boolean v0, p0, Lcom/easyview/basecamera/BaseCamera;->_isOnline:Z

    return v0
.end method

.method public isRecording()Z
    .locals 1

    .prologue
    .line 133
    iget-boolean v0, p0, Lcom/easyview/basecamera/BaseCamera;->_isRecording:Z

    return v0
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/easyview/basecamera/BaseCamera;->_bitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setCustomListener(Lcom/easyview/basecamera/ICamera$IRespondListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/easyview/basecamera/ICamera$IRespondListener;

    .prologue
    .line 192
    iput-object p1, p0, Lcom/easyview/basecamera/BaseCamera;->_customListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

    .line 193
    return-void
.end method

.method public setPwd(Ljava/lang/String;)V
    .locals 0
    .param p1, "pwd"    # Ljava/lang/String;

    .prologue
    .line 154
    iput-object p1, p0, Lcom/easyview/basecamera/BaseCamera;->_pwd:Ljava/lang/String;

    return-void
.end method
