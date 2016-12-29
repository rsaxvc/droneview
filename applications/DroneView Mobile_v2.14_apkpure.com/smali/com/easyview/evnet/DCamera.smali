.class public Lcom/easyview/evnet/DCamera;
.super Lcom/easyview/camera/EVBaseCamera;
.source "DCamera.java"


# static fields
.field public static final EV_COMMAND_DEL_EVENTS:I = 0x107

.field public static final EV_COMMAND_DOWNLOAD_RECORD:I = 0x105

.field public static final EV_COMMAND_DOWN_RECORD:I = 0x103

.field public static final EV_COMMAND_GET_CAPS:I = 0x101

.field public static final EV_COMMAND_GET_EVENTS:I = 0x102

.field public static final EV_COMMAND_GET_STORAGE:I = 0x3

.field public static final EV_COMMAND_REQ_PARAMS:I = 0x1

.field public static final EV_COMMAND_SEARCH_RECORD:I = 0x104

.field public static final EV_COMMAND_SET_PARAMS:I = 0x2

.field public static final EV_COMMAND_SNAP:I = 0x19

.field public static final EV_COMMAND_START_AUDO:I = 0x13

.field public static final EV_COMMAND_START_RECORD:I = 0x17

.field public static final EV_COMMAND_START_TALK:I = 0x15

.field public static final EV_COMMAND_START_VIDEO:I = 0x11

.field public static final EV_COMMAND_STOP_AUDIO:I = 0x14

.field public static final EV_COMMAND_STOP_DOWN_RECORD:I = 0x106

.field public static final EV_COMMAND_STOP_RECORD:I = 0x18

.field public static final EV_COMMAND_STOP_TALK:I = 0x16

.field public static final EV_COMMAND_STOP_VIDEO:I = 0x12

.field public static final EV_COMMAND_TIMING:I = 0x4


# instance fields
.field private is_down_record:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "user"    # Ljava/lang/String;
    .param p4, "pwd"    # Ljava/lang/String;

    .prologue
    .line 72
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/easyview/camera/EVBaseCamera;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/easyview/evnet/DCamera;->is_down_record:Z

    .line 73
    invoke-static {p0}, Lcom/easyview/evnet/EVNet;->SetCamera(Lcom/easyview/evnet/DCamera;)V

    .line 74
    return-void
.end method

.method private SetParams()V
    .locals 8

    .prologue
    .line 590
    new-instance v2, Lstruct/StructPacker;

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {v2, v3}, Lstruct/StructPacker;-><init>(Ljava/nio/ByteOrder;)V

    .line 592
    .local v2, "packer":Lstruct/StructPacker;
    :try_start_0
    iget-object v3, p0, Lcom/easyview/evnet/DCamera;->DeviceParams:Lcom/easyview/struct/EVCommandDefs$DeviceParams;

    invoke-virtual {v2, v3}, Lstruct/StructPacker;->writeObject(Ljava/lang/Object;)V

    .line 593
    invoke-virtual {v2}, Lstruct/StructPacker;->toArray()[B

    move-result-object v0

    .line 594
    .local v0, "data":[B
    const-string v3, "EVNet"

    const-string v4, "SetParams len:%d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    array-length v7, v0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    const/4 v3, 0x2

    array-length v4, v0

    invoke-static {v3, v0, v4}, Lcom/easyview/evnet/EVNet;->Command(I[BI)I
    :try_end_0
    .catch Lstruct/StructException; {:try_start_0 .. :try_end_0} :catch_0

    .line 600
    .end local v0    # "data":[B
    :goto_0
    return-void

    .line 596
    :catch_0
    move-exception v1

    .line 598
    .local v1, "e":Lstruct/StructException;
    invoke-virtual {v1}, Lstruct/StructException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/easyview/evnet/DCamera;)Lcom/easyview/basecamera/ICamera$IDownloadListener;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/easyview/evnet/DCamera;->downRecordListener:Lcom/easyview/basecamera/ICamera$IDownloadListener;

    return-object v0
.end method

.method private onEvent(Lstruct/StructUnpacker;)V
    .locals 4
    .param p1, "up"    # Lstruct/StructUnpacker;

    .prologue
    .line 172
    :try_start_0
    invoke-virtual {p1}, Lstruct/StructUnpacker;->readInt()I

    move-result v1

    .line 173
    .local v1, "result":I
    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 175
    iget-object v2, p0, Lcom/easyview/evnet/DCamera;->_queryEventListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/easyview/evnet/DCamera;->_queryEventListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

    const/4 v3, 0x0

    invoke-interface {v2, p0, v3, v1}, Lcom/easyview/basecamera/ICamera$IRespondListener;->OnRespondResult(Lcom/easyview/basecamera/ICamera;II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    .end local v1    # "result":I
    :cond_0
    :goto_0
    return-void

    .line 177
    :catch_0
    move-exception v0

    .line 179
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private onEventInfo(Lstruct/StructUnpacker;)V
    .locals 7
    .param p1, "up"    # Lstruct/StructUnpacker;

    .prologue
    .line 159
    :try_start_0
    new-instance v1, Lcom/easyview/struct/EVCommandDefs$EVCommonResp;

    invoke-direct {v1}, Lcom/easyview/struct/EVCommandDefs$EVCommonResp;-><init>()V

    .line 160
    .local v1, "resp":Lcom/easyview/struct/EVCommandDefs$EVCommonResp;
    invoke-virtual {p1, v1}, Lstruct/StructUnpacker;->readObject(Ljava/lang/Object;)V

    .line 162
    iget v2, v1, Lcom/easyview/struct/EVCommandDefs$EVCommonResp;->data1:I

    iput v2, p0, Lcom/easyview/evnet/DCamera;->_eventFileID:I

    .line 163
    const-string v2, "Event"

    const-string v3, "total:%d id:%d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, v1, Lcom/easyview/struct/EVCommandDefs$EVCommonResp;->data0:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget v6, p0, Lcom/easyview/evnet/DCamera;->_eventFileID:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-object v2, p0, Lcom/easyview/evnet/DCamera;->_queryEventInfoListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/easyview/evnet/DCamera;->_queryEventInfoListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

    iget v3, v1, Lcom/easyview/struct/EVCommandDefs$EVCommonResp;->command:I

    iget v4, v1, Lcom/easyview/struct/EVCommandDefs$EVCommonResp;->data0:I

    invoke-interface {v2, p0, v3, v4}, Lcom/easyview/basecamera/ICamera$IRespondListener;->OnRespondResult(Lcom/easyview/basecamera/ICamera;II)V
    :try_end_0
    .catch Lstruct/StructException; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    .end local v1    # "resp":Lcom/easyview/struct/EVCommandDefs$EVCommonResp;
    :cond_0
    :goto_0
    return-void

    .line 165
    :catch_0
    move-exception v0

    .line 166
    .local v0, "e":Lstruct/StructException;
    invoke-virtual {v0}, Lstruct/StructException;->printStackTrace()V

    goto :goto_0
.end method

.method private onParams(Lstruct/StructUnpacker;)V
    .locals 2
    .param p1, "up"    # Lstruct/StructUnpacker;

    .prologue
    .line 130
    :try_start_0
    iget-object v1, p0, Lcom/easyview/evnet/DCamera;->DeviceParams:Lcom/easyview/struct/EVCommandDefs$DeviceParams;

    invoke-virtual {p1, v1}, Lstruct/StructUnpacker;->readObject(Ljava/lang/Object;)V
    :try_end_0
    .catch Lstruct/StructException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    :goto_0
    return-void

    .line 131
    :catch_0
    move-exception v0

    .line 133
    .local v0, "e":Lstruct/StructException;
    invoke-virtual {v0}, Lstruct/StructException;->printStackTrace()V

    goto :goto_0
.end method

.method private onStorage(Lstruct/StructUnpacker;)V
    .locals 6
    .param p1, "up"    # Lstruct/StructUnpacker;

    .prologue
    .line 139
    :try_start_0
    iget-object v4, p0, Lcom/easyview/evnet/DCamera;->_storageStateStruct:Lcom/easyview/struct/EVCommandDefs$StorageStateStruct;

    invoke-virtual {p1, v4}, Lstruct/StructUnpacker;->readObject(Ljava/lang/Object;)V

    .line 140
    iget-object v4, p0, Lcom/easyview/evnet/DCamera;->_storageStateStruct:Lcom/easyview/struct/EVCommandDefs$StorageStateStruct;

    iget v4, v4, Lcom/easyview/struct/EVCommandDefs$StorageStateStruct;->record_state:I

    if-lez v4, :cond_2

    .line 142
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/easyview/evnet/DCamera;->_isRecording:Z

    .line 143
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 144
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 145
    .local v2, "ms":J
    iget-object v4, p0, Lcom/easyview/evnet/DCamera;->_storageStateStruct:Lcom/easyview/struct/EVCommandDefs$StorageStateStruct;

    iget v4, v4, Lcom/easyview/struct/EVCommandDefs$StorageStateStruct;->record_duration:I

    if-gez v4, :cond_0

    iget-object v4, p0, Lcom/easyview/evnet/DCamera;->_storageStateStruct:Lcom/easyview/struct/EVCommandDefs$StorageStateStruct;

    const/4 v5, 0x0

    iput v5, v4, Lcom/easyview/struct/EVCommandDefs$StorageStateStruct;->record_duration:I

    .line 146
    :cond_0
    iget-object v4, p0, Lcom/easyview/evnet/DCamera;->_storageStateStruct:Lcom/easyview/struct/EVCommandDefs$StorageStateStruct;

    iget v4, v4, Lcom/easyview/struct/EVCommandDefs$StorageStateStruct;->record_duration:I

    const/16 v5, 0xe10

    if-le v4, v5, :cond_1

    iget-object v4, p0, Lcom/easyview/evnet/DCamera;->_storageStateStruct:Lcom/easyview/struct/EVCommandDefs$StorageStateStruct;

    const/4 v5, 0x0

    iput v5, v4, Lcom/easyview/struct/EVCommandDefs$StorageStateStruct;->record_duration:I

    .line 147
    :cond_1
    const-wide/16 v4, 0x3e8

    div-long v4, v2, v4

    long-to-int v4, v4

    iget-object v5, p0, Lcom/easyview/evnet/DCamera;->_storageStateStruct:Lcom/easyview/struct/EVCommandDefs$StorageStateStruct;

    iget v5, v5, Lcom/easyview/struct/EVCommandDefs$StorageStateStruct;->record_duration:I

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/easyview/evnet/DCamera;->_startRecordTime:I

    .line 155
    .end local v0    # "date":Ljava/util/Date;
    .end local v2    # "ms":J
    :goto_0
    return-void

    .line 150
    :cond_2
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/easyview/evnet/DCamera;->_isRecording:Z
    :try_end_0
    .catch Lstruct/StructException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 152
    :catch_0
    move-exception v1

    .line 153
    .local v1, "e":Lstruct/StructException;
    invoke-virtual {v1}, Lstruct/StructException;->printStackTrace()V

    goto :goto_0
.end method

.method private varargs sendCommand(I[I)V
    .locals 6
    .param p1, "cmd"    # I
    .param p2, "params"    # [I

    .prologue
    .line 91
    new-instance v2, Lstruct/StructPacker;

    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {v2, v4}, Lstruct/StructPacker;-><init>(Ljava/nio/ByteOrder;)V

    .line 93
    .local v2, "packer":Lstruct/StructPacker;
    :try_start_0
    array-length v5, p2

    const/4 v4, 0x0

    :goto_0
    if-lt v4, v5, :cond_0

    .line 97
    invoke-virtual {v2}, Lstruct/StructPacker;->toArray()[B

    move-result-object v0

    .line 99
    .local v0, "data":[B
    array-length v4, v0

    invoke-static {p1, v0, v4}, Lcom/easyview/evnet/EVNet;->Command(I[BI)I

    .line 104
    .end local v0    # "data":[B
    :goto_1
    return-void

    .line 93
    :cond_0
    aget v3, p2, v4

    .line 95
    .local v3, "param":I
    invoke-virtual {v2, v3}, Lstruct/StructPacker;->writeInt(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 100
    .end local v3    # "param":I
    :catch_0
    move-exception v1

    .line 102
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method private sendCustomRequest(I)I
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 107
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/easyview/evnet/EVNet;->RequestCustomData(I[BI)I

    move-result v0

    return v0
.end method

.method private varargs sendCustomRequest(I[I)I
    .locals 7
    .param p1, "type"    # I
    .param p2, "params"    # [I

    .prologue
    .line 112
    new-instance v2, Lstruct/StructPacker;

    sget-object v5, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {v2, v5}, Lstruct/StructPacker;-><init>(Ljava/nio/ByteOrder;)V

    .line 113
    .local v2, "packer":Lstruct/StructPacker;
    const/4 v4, 0x0

    .line 115
    .local v4, "result":I
    :try_start_0
    array-length v6, p2

    const/4 v5, 0x0

    :goto_0
    if-lt v5, v6, :cond_0

    .line 119
    invoke-virtual {v2}, Lstruct/StructPacker;->toArray()[B

    move-result-object v0

    .line 120
    .local v0, "data":[B
    array-length v5, v0

    invoke-static {p1, v0, v5}, Lcom/easyview/evnet/EVNet;->RequestCustomData(I[BI)I

    move-result v4

    .line 125
    .end local v0    # "data":[B
    :goto_1
    return v4

    .line 115
    :cond_0
    aget v3, p2, v5

    .line 117
    .local v3, "param":I
    invoke-virtual {v2, v3}, Lstruct/StructPacker;->writeInt(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 121
    .end local v3    # "param":I
    :catch_0
    move-exception v1

    .line 123
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public OnCommand(I[BI)V
    .locals 8
    .param p1, "command"    # I
    .param p2, "data"    # [B
    .param p3, "len"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 192
    iput-boolean v7, p0, Lcom/easyview/evnet/DCamera;->_isOnline:Z

    .line 193
    const-string v2, "EVNet"

    const-string v3, "OnCommand:0x%X len:%d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    const/4 v1, 0x0

    .line 195
    .local v1, "up":Lstruct/StructUnpacker;
    if-lez p3, :cond_0

    new-instance v1, Lstruct/StructUnpacker;

    .end local v1    # "up":Lstruct/StructUnpacker;
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {v1, p2, v2}, Lstruct/StructUnpacker;-><init>([BLjava/nio/ByteOrder;)V

    .line 196
    .restart local v1    # "up":Lstruct/StructUnpacker;
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 203
    :goto_0
    iget-object v2, p0, Lcom/easyview/evnet/DCamera;->_commandListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

    if-eqz v2, :cond_1

    .line 205
    iget-object v0, p0, Lcom/easyview/evnet/DCamera;->_commandListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

    .line 206
    .local v0, "listener":Lcom/easyview/basecamera/ICamera$IRespondListener;
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/easyview/evnet/DCamera;->_commandListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

    .line 207
    invoke-interface {v0, p0, p1, v6}, Lcom/easyview/basecamera/ICamera$IRespondListener;->OnRespondResult(Lcom/easyview/basecamera/ICamera;II)V

    .line 209
    .end local v0    # "listener":Lcom/easyview/basecamera/ICamera$IRespondListener;
    :cond_1
    return-void

    .line 198
    :sswitch_0
    invoke-direct {p0, v1}, Lcom/easyview/evnet/DCamera;->onParams(Lstruct/StructUnpacker;)V

    goto :goto_0

    .line 199
    :sswitch_1
    invoke-direct {p0, v1}, Lcom/easyview/evnet/DCamera;->onStorage(Lstruct/StructUnpacker;)V

    goto :goto_0

    .line 200
    :sswitch_2
    invoke-direct {p0, v1}, Lcom/easyview/evnet/DCamera;->onEventInfo(Lstruct/StructUnpacker;)V

    goto :goto_0

    .line 201
    :sswitch_3
    invoke-direct {p0, v1}, Lcom/easyview/evnet/DCamera;->onEvent(Lstruct/StructUnpacker;)V

    goto :goto_0

    .line 196
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x3 -> :sswitch_1
        0x108 -> :sswitch_2
        0x10a -> :sswitch_3
    .end sparse-switch
.end method

.method public OnNotify(II)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "param"    # I

    .prologue
    .line 212
    return-void
.end method

.method public RequestParams(Lcom/easyview/basecamera/ICamera$IRespondListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/easyview/basecamera/ICamera$IRespondListener;

    .prologue
    .line 644
    iput-object p1, p0, Lcom/easyview/evnet/DCamera;->_commandListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

    .line 645
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/easyview/evnet/EVNet;->Command(I[BI)I

    .line 646
    return-void
.end method

.method public SaveEvent()V
    .locals 5

    .prologue
    .line 187
    invoke-static {}, Lobject/p2pipcam/utils/Pub;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/easyview/table/EventTable;->getInstance(Landroid/content/Context;)Lcom/easyview/table/EventTable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/easyview/evnet/DCamera;->getID()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/easyview/evnet/DCamera;->_eventFileID:I

    iget-object v3, p0, Lcom/easyview/evnet/DCamera;->event:Lcom/easyview/struct/EVCommandDefs$Event;

    iget-object v4, p0, Lcom/easyview/evnet/DCamera;->picturePathName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/easyview/table/EventTable;->Save(Ljava/lang/String;ILcom/easyview/struct/EVCommandDefs$Event;Ljava/lang/String;)J

    .line 188
    return-void
.end method

.method public Start()V
    .locals 1

    .prologue
    .line 216
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/easyview/evnet/DCamera;->_isOnline:Z

    .line 217
    invoke-static {}, Lcom/easyview/evnet/EVNet;->Initial()I

    .line 218
    return-void
.end method

.method public StartAudio()V
    .locals 0

    .prologue
    .line 241
    return-void
.end method

.method public StartTalk()V
    .locals 0

    .prologue
    .line 253
    return-void
.end method

.method public StartVideo(Lcom/easyview/basecamera/ICamera$IDataListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/easyview/basecamera/ICamera$IDataListener;

    .prologue
    .line 227
    iput-object p1, p0, Lcom/easyview/evnet/DCamera;->_videoDataListener:Lcom/easyview/basecamera/ICamera$IDataListener;

    .line 228
    invoke-static {}, Lcom/easyview/evnet/EVNet;->StartVideo()I

    .line 229
    return-void
.end method

.method public StartVideoYUV(Lcom/easyview/basecamera/ICamera$IYUVDataListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/easyview/basecamera/ICamera$IYUVDataListener;

    .prologue
    .line 758
    return-void
.end method

.method public Stop()V
    .locals 0

    .prologue
    .line 222
    invoke-static {}, Lcom/easyview/evnet/EVNet;->Deinitial()I

    .line 223
    return-void
.end method

.method public StopAudio()V
    .locals 0

    .prologue
    .line 247
    return-void
.end method

.method public StopTalk()V
    .locals 0

    .prologue
    .line 265
    return-void
.end method

.method public StopVideo()V
    .locals 1

    .prologue
    .line 233
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/easyview/evnet/DCamera;->_videoDataListener:Lcom/easyview/basecamera/ICamera$IDataListener;

    .line 234
    invoke-static {}, Lcom/easyview/evnet/EVNet;->StopVideo()I

    .line 235
    return-void
.end method

.method public TalkAudioData([BI)V
    .locals 0
    .param p1, "data"    # [B
    .param p2, "len"    # I

    .prologue
    .line 259
    return-void
.end method

.method public clearListener()V
    .locals 0

    .prologue
    .line 271
    return-void
.end method

.method public delEvents([ILcom/easyview/basecamera/ICamera$IRespondListener;)V
    .locals 5
    .param p1, "indexs"    # [I
    .param p2, "listener"    # Lcom/easyview/basecamera/ICamera$IRespondListener;

    .prologue
    .line 456
    new-instance v2, Lstruct/StructPacker;

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {v2, v3}, Lstruct/StructPacker;-><init>(Ljava/nio/ByteOrder;)V

    .line 458
    .local v2, "packer":Lstruct/StructPacker;
    :try_start_0
    array-length v3, p1

    invoke-virtual {v2, v3}, Lstruct/StructPacker;->writeInt(I)V

    .line 459
    array-length v3, p1

    invoke-virtual {v2, p1, v3}, Lstruct/StructPacker;->writeIntArray([II)V

    .line 460
    invoke-virtual {v2}, Lstruct/StructPacker;->toArray()[B

    move-result-object v0

    .line 461
    .local v0, "data":[B
    const/16 v3, 0x107

    array-length v4, v0

    invoke-static {v3, v0, v4}, Lcom/easyview/evnet/EVNet;->Command(I[BI)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 465
    .end local v0    # "data":[B
    :goto_0
    return-void

    .line 462
    :catch_0
    move-exception v1

    .line 463
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public downRecord(IILcom/easyview/basecamera/ICamera$IDownloadListener;)V
    .locals 19
    .param p1, "recordIndex"    # I
    .param p2, "offset"    # I
    .param p3, "listener"    # Lcom/easyview/basecamera/ICamera$IDownloadListener;

    .prologue
    .line 501
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/easyview/evnet/DCamera;->downRecordListener:Lcom/easyview/basecamera/ICamera$IDownloadListener;

    .line 502
    new-instance v2, Lcom/easyview/evnet/DCamera$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/easyview/evnet/DCamera$1;-><init>(Lcom/easyview/evnet/DCamera;)V

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/easyview/evnet/EVNet;->SetDownProgressListener(Ljava/lang/Object;Lcom/easyview/evnet/EVNet$IProgressListener;)V

    .line 516
    invoke-static {}, Lobject/p2pipcam/utils/Pub;->videoSavePathFile()Ljava/io/File;

    move-result-object v11

    .line 517
    .local v11, "div":Ljava/io/File;
    invoke-static {}, Lobject/p2pipcam/utils/Pub;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/easyview/table/RecordTable;->getInstance(Landroid/content/Context;)Lcom/easyview/table/RecordTable;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/easyview/evnet/DCamera;->getID()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/easyview/evnet/DCamera;->_eventFileID:I

    move/from16 v0, p1

    invoke-virtual {v2, v3, v4, v0}, Lcom/easyview/table/RecordTable;->getBeginTime(Ljava/lang/String;II)I

    move-result v9

    .line 518
    .local v9, "beginTime":I
    new-instance v10, Ljava/util/Date;

    invoke-direct {v10}, Ljava/util/Date;-><init>()V

    .line 519
    .local v10, "date":Ljava/util/Date;
    int-to-long v14, v9

    .line 520
    .local v14, "ms":J
    const-wide/16 v2, 0x3e8

    mul-long/2addr v14, v2

    .line 521
    invoke-virtual {v10, v14, v15}, Ljava/util/Date;->setTime(J)V

    .line 522
    new-instance v18, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMddHHmmss"

    move-object/from16 v0, v18

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 523
    .local v18, "sdf":Ljava/text/SimpleDateFormat;
    const-string v2, "%s/%s.avi"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 524
    .local v6, "pathName":Ljava/lang/String;
    const-string v2, "%s.avi"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/easyview/evnet/DCamera;->getID()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 525
    .local v13, "fileName":Ljava/lang/String;
    const/16 v17, 0x0

    .line 528
    .local v17, "retry":I
    :goto_0
    invoke-static {v13}, Lobject/p2pipcam/utils/Pub;->videoFileLength(Ljava/lang/String;)I

    move-result p2

    .line 530
    const-string v2, "admin"

    const-string v3, "admin"

    const-string v4, "192.168.234.1"

    const/16 v5, 0x2760

    move/from16 v7, p1

    move/from16 v8, p2

    invoke-static/range {v2 .. v8}, Lcom/easyview/evnet/EVNet;->DownRecord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;II)I

    move-result v16

    .line 531
    .local v16, "ret":I
    const-string v2, "DownRecord"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DownRecord ret:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    const/4 v2, -0x1

    move/from16 v0, v16

    if-ne v0, v2, :cond_1

    if-nez v17, :cond_1

    .line 534
    const-string v2, "DownRecord"

    const-string v3, "not support!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    :cond_0
    :goto_1
    return-void

    .line 537
    :cond_1
    const/4 v2, -0x2

    move/from16 v0, v16

    if-ne v0, v2, :cond_2

    .line 539
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/easyview/evnet/DCamera;->is_down_record:Z

    if-eqz v2, :cond_0

    .line 541
    const-wide/16 v2, 0x4

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 548
    :goto_2
    add-int/lit8 v17, v17, 0x1

    .line 549
    goto :goto_0

    .line 542
    :catch_0
    move-exception v12

    .line 544
    .local v12, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v12}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    .line 554
    .end local v12    # "e":Ljava/lang/InterruptedException;
    :cond_2
    if-nez v16, :cond_0

    .line 556
    invoke-static {}, Lobject/p2pipcam/utils/Pub;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/easyview/table/RecordTable;->getInstance(Landroid/content/Context;)Lcom/easyview/table/RecordTable;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/easyview/evnet/DCamera;->getID()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/easyview/evnet/DCamera;->_eventFileID:I

    invoke-virtual {v2, v3, v4, v9, v6}, Lcom/easyview/table/RecordTable;->Update(Ljava/lang/String;IILjava/lang/String;)Z

    .line 557
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

    .line 558
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

    goto :goto_1
.end method

.method public enablePairing(Lcom/easyview/basecamera/ICamera$IRespondListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/easyview/basecamera/ICamera$IRespondListener;

    .prologue
    .line 586
    return-void
.end method

.method public formatTF(Lcom/easyview/basecamera/ICamera$IRespondListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/easyview/basecamera/ICamera$IRespondListener;

    .prologue
    .line 401
    return-void
.end method

.method public getAlarmParam(Lcom/easyview/basecamera/ICamera$IAlarmParamListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/easyview/basecamera/ICamera$IAlarmParamListener;

    .prologue
    .line 308
    return-void
.end method

.method public getBrightness()I
    .locals 1

    .prologue
    .line 657
    iget-object v0, p0, Lcom/easyview/evnet/DCamera;->DeviceParams:Lcom/easyview/struct/EVCommandDefs$DeviceParams;

    iget v0, v0, Lcom/easyview/struct/EVCommandDefs$DeviceParams;->brightness:I

    return v0
.end method

.method public getCaps(Lcom/easyview/basecamera/ICamera$IRespondListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/easyview/basecamera/ICamera$IRespondListener;

    .prologue
    .line 497
    return-void
.end method

.method public getContrast()I
    .locals 1

    .prologue
    .line 662
    iget-object v0, p0, Lcom/easyview/evnet/DCamera;->DeviceParams:Lcom/easyview/struct/EVCommandDefs$DeviceParams;

    iget v0, v0, Lcom/easyview/struct/EVCommandDefs$DeviceParams;->contrast:I

    return v0
.end method

.method public getDefaultWiFiName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 682
    iget-object v0, p0, Lcom/easyview/evnet/DCamera;->DeviceParams:Lcom/easyview/struct/EVCommandDefs$DeviceParams;

    iget-object v0, v0, Lcom/easyview/struct/EVCommandDefs$DeviceParams;->DefaultName:Lstruct/CString;

    invoke-virtual {v0}, Lstruct/CString;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExtThres(Lcom/easyview/basecamera/ICamera$IRespondListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/easyview/basecamera/ICamera$IRespondListener;

    .prologue
    .line 361
    return-void
.end method

.method public getMailParam(Lcom/easyview/bean/MailBean;Lcom/easyview/basecamera/ICamera$IRespondListener;)V
    .locals 0
    .param p1, "bean"    # Lcom/easyview/bean/MailBean;
    .param p2, "listener"    # Lcom/easyview/basecamera/ICamera$IRespondListener;

    .prologue
    .line 332
    return-void
.end method

.method public getRotate()I
    .locals 1

    .prologue
    .line 672
    iget-object v0, p0, Lcom/easyview/evnet/DCamera;->DeviceParams:Lcom/easyview/struct/EVCommandDefs$DeviceParams;

    iget-short v0, v0, Lcom/easyview/struct/EVCommandDefs$DeviceParams;->rotate:S

    return v0
.end method

.method public getShowOSD()I
    .locals 1

    .prologue
    .line 667
    iget-object v0, p0, Lcom/easyview/evnet/DCamera;->DeviceParams:Lcom/easyview/struct/EVCommandDefs$DeviceParams;

    iget-short v0, v0, Lcom/easyview/struct/EVCommandDefs$DeviceParams;->date_code:S

    return v0
.end method

.method public getStoreParam(Lcom/easyview/bean/SdcardBean;Lcom/easyview/basecamera/ICamera$IRespondListener;)V
    .locals 0
    .param p1, "bean"    # Lcom/easyview/bean/SdcardBean;
    .param p2, "listener"    # Lcom/easyview/basecamera/ICamera$IRespondListener;

    .prologue
    .line 344
    return-void
.end method

.method public getTimeParam(Lcom/easyview/bean/DateBean;Lcom/easyview/basecamera/ICamera$IRespondListener;)V
    .locals 0
    .param p1, "bean"    # Lcom/easyview/bean/DateBean;
    .param p2, "listener"    # Lcom/easyview/basecamera/ICamera$IRespondListener;

    .prologue
    .line 320
    return-void
.end method

.method public getWiFiName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 677
    iget-object v0, p0, Lcom/easyview/evnet/DCamera;->DeviceParams:Lcom/easyview/struct/EVCommandDefs$DeviceParams;

    iget-object v0, v0, Lcom/easyview/struct/EVCommandDefs$DeviceParams;->WiFiName:Lstruct/CString;

    invoke-virtual {v0}, Lstruct/CString;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWifiParam(Lcom/easyview/bean/WifiBean;Lcom/easyview/basecamera/ICamera$IRespondListener;)V
    .locals 0
    .param p1, "bean"    # Lcom/easyview/bean/WifiBean;
    .param p2, "listener"    # Lcom/easyview/basecamera/ICamera$IRespondListener;

    .prologue
    .line 277
    return-void
.end method

.method public playMusic(ILcom/easyview/basecamera/ICamera$IRespondListener;)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "listener"    # Lcom/easyview/basecamera/ICamera$IRespondListener;

    .prologue
    .line 574
    return-void
.end method

.method public ptzControl(I)V
    .locals 0
    .param p1, "command"    # I

    .prologue
    .line 413
    return-void
.end method

.method public queryDeviceInfo(Lcom/easyview/basecamera/ICamera$IRespondListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/easyview/basecamera/ICamera$IRespondListener;

    .prologue
    .line 740
    return-void
.end method

.method public queryEvent(ILjava/lang/String;Lcom/easyview/basecamera/ICamera$IRespondListener;)V
    .locals 6
    .param p1, "index"    # I
    .param p2, "pathName"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/easyview/basecamera/ICamera$IRespondListener;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 708
    iput-object p3, p0, Lcom/easyview/evnet/DCamera;->_queryEventListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

    .line 709
    const-string v0, "EVNet"

    const-string v1, "queryEvent index:%d"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    const/16 v0, 0x10a

    new-array v1, v5, [I

    aput p1, v1, v4

    invoke-direct {p0, v0, v1}, Lcom/easyview/evnet/DCamera;->sendCustomRequest(I[I)I

    .line 714
    return-void
.end method

.method public queryEventInfo(Lcom/easyview/basecamera/ICamera$IRespondListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/easyview/basecamera/ICamera$IRespondListener;

    .prologue
    .line 450
    iput-object p1, p0, Lcom/easyview/evnet/DCamera;->_queryEventInfoListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

    .line 451
    const/16 v0, 0x108

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/easyview/evnet/EVNet;->Command(I[BI)I

    .line 452
    return-void
.end method

.method public queryEventList(IILcom/easyview/basecamera/ICamera$IRespondListener;)V
    .locals 1
    .param p1, "beginIndex"    # I
    .param p2, "endIndex"    # I
    .param p3, "listener"    # Lcom/easyview/basecamera/ICamera$IRespondListener;

    .prologue
    .line 687
    iput-object p3, p0, Lcom/easyview/evnet/DCamera;->_queryEventsListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

    .line 688
    invoke-virtual {p0}, Lcom/easyview/evnet/DCamera;->ClearEvents()V

    .line 689
    const/16 v0, 0x102

    invoke-direct {p0, v0}, Lcom/easyview/evnet/DCamera;->sendCustomRequest(I)I

    .line 705
    return-void
.end method

.method public queryLightValue(Lcom/easyview/basecamera/ICamera$IRespondListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/easyview/basecamera/ICamera$IRespondListener;

    .prologue
    .line 770
    return-void
.end method

.method public queryWifiResult(Lcom/easyview/basecamera/ICamera$IRespondListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/easyview/basecamera/ICamera$IRespondListener;

    .prologue
    .line 295
    return-void
.end method

.method public querystorageState(Lcom/easyview/basecamera/ICamera$IRespondListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/easyview/basecamera/ICamera$IRespondListener;

    .prologue
    .line 354
    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/easyview/evnet/EVNet;->Command(I[BI)I

    .line 355
    return-void
.end method

.method public recordPlay(Ljava/lang/String;)V
    .locals 0
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 485
    return-void
.end method

.method public recordStop()V
    .locals 0

    .prologue
    .line 491
    return-void
.end method

.method public searchEvents(IILcom/easyview/basecamera/ICamera$IRespondListener;)V
    .locals 8
    .param p1, "beginIndex"    # I
    .param p2, "endIndex"    # I
    .param p3, "listener"    # Lcom/easyview/basecamera/ICamera$IRespondListener;

    .prologue
    .line 418
    iput-object p3, p0, Lcom/easyview/evnet/DCamera;->_searchEventsListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

    .line 419
    const/4 v0, 0x0

    .line 420
    .local v0, "begin_time":I
    const/4 v6, -0x1

    if-ne p1, v6, :cond_0

    .line 422
    invoke-static {}, Lobject/p2pipcam/utils/Pub;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/easyview/table/EventTable;->getInstance(Landroid/content/Context;)Lcom/easyview/table/EventTable;

    move-result-object v6

    invoke-virtual {p0}, Lcom/easyview/evnet/DCamera;->getID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/easyview/table/EventTable;->getMaxIndex(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v5

    .line 423
    .local v5, "result":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 424
    iget-object v6, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 426
    .end local v5    # "result":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_0
    const/16 v6, -0x2711

    if-ne p1, v6, :cond_1

    .line 428
    invoke-virtual {p0}, Lcom/easyview/evnet/DCamera;->ClearEvents()V

    .line 431
    :cond_1
    :try_start_0
    new-instance v3, Lstruct/StructPacker;

    sget-object v6, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {v3, v6}, Lstruct/StructPacker;-><init>(Ljava/nio/ByteOrder;)V

    .line 432
    .local v3, "packer":Lstruct/StructPacker;
    new-instance v4, Lcom/easyview/struct/EVCommandDefs$EVSearchEventReq;

    invoke-direct {v4}, Lcom/easyview/struct/EVCommandDefs$EVSearchEventReq;-><init>()V

    .line 433
    .local v4, "req":Lcom/easyview/struct/EVCommandDefs$EVSearchEventReq;
    iput p1, v4, Lcom/easyview/struct/EVCommandDefs$EVSearchEventReq;->begin_index:I

    .line 434
    iput v0, v4, Lcom/easyview/struct/EVCommandDefs$EVSearchEventReq;->end_index:I

    .line 438
    invoke-virtual {v3, v4}, Lstruct/StructPacker;->writeObject(Ljava/lang/Object;)V

    .line 440
    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static {p1, p2, v6, v7}, Lcom/easyview/struct/EVCommandDefs;->MakeSearchEventReqPacket(IIII)[B

    move-result-object v1

    .line 441
    .local v1, "data":[B
    const/16 v6, 0x102

    array-length v7, v1

    invoke-static {v6, v1, v7}, Lcom/easyview/evnet/EVNet;->Command(I[BI)I
    :try_end_0
    .catch Lstruct/StructException; {:try_start_0 .. :try_end_0} :catch_0

    .line 446
    .end local v1    # "data":[B
    .end local v3    # "packer":Lstruct/StructPacker;
    .end local v4    # "req":Lcom/easyview/struct/EVCommandDefs$EVSearchEventReq;
    :goto_0
    return-void

    .line 443
    :catch_0
    move-exception v2

    .line 444
    .local v2, "e":Lstruct/StructException;
    invoke-virtual {v2}, Lstruct/StructException;->printStackTrace()V

    goto :goto_0
.end method

.method public searchRecordList(JJLcom/easyview/basecamera/ICamera$IRespondListener;)V
    .locals 0
    .param p1, "beginTime"    # J
    .param p3, "endTime"    # J
    .param p5, "listener"    # Lcom/easyview/basecamera/ICamera$IRespondListener;

    .prologue
    .line 472
    return-void
.end method

.method public searchRecords(IIILcom/easyview/basecamera/ICamera$IRespondListener;)V
    .locals 0
    .param p1, "beginTime"    # I
    .param p2, "endTime"    # I
    .param p3, "with_snap"    # I
    .param p4, "listener"    # Lcom/easyview/basecamera/ICamera$IRespondListener;

    .prologue
    .line 479
    return-void
.end method

.method public setAlarmParam(Lcom/easyview/bean/AlermBean;Lcom/easyview/basecamera/ICamera$IRespondListener;)V
    .locals 0
    .param p1, "bean"    # Lcom/easyview/bean/AlermBean;
    .param p2, "listener"    # Lcom/easyview/basecamera/ICamera$IRespondListener;

    .prologue
    .line 314
    return-void
.end method

.method public setBrightness(ILcom/easyview/basecamera/ICamera$IRespondListener;)V
    .locals 2
    .param p1, "value"    # I
    .param p2, "listener"    # Lcom/easyview/basecamera/ICamera$IRespondListener;

    .prologue
    .line 604
    iget-object v0, p0, Lcom/easyview/evnet/DCamera;->DeviceParams:Lcom/easyview/struct/EVCommandDefs$DeviceParams;

    iget v0, v0, Lcom/easyview/struct/EVCommandDefs$DeviceParams;->brightness:I

    if-eq p1, v0, :cond_0

    .line 606
    iget-object v0, p0, Lcom/easyview/evnet/DCamera;->DeviceParams:Lcom/easyview/struct/EVCommandDefs$DeviceParams;

    iput p1, v0, Lcom/easyview/struct/EVCommandDefs$DeviceParams;->brightness:I

    .line 607
    iget-object v0, p0, Lcom/easyview/evnet/DCamera;->DeviceParams:Lcom/easyview/struct/EVCommandDefs$DeviceParams;

    const/16 v1, 0x8

    iput v1, v0, Lcom/easyview/struct/EVCommandDefs$DeviceParams;->flag:I

    .line 608
    invoke-direct {p0}, Lcom/easyview/evnet/DCamera;->SetParams()V

    .line 610
    :cond_0
    return-void
.end method

.method public setContrast(ILcom/easyview/basecamera/ICamera$IRespondListener;)V
    .locals 2
    .param p1, "value"    # I
    .param p2, "listener"    # Lcom/easyview/basecamera/ICamera$IRespondListener;

    .prologue
    .line 614
    iget-object v0, p0, Lcom/easyview/evnet/DCamera;->DeviceParams:Lcom/easyview/struct/EVCommandDefs$DeviceParams;

    iget v0, v0, Lcom/easyview/struct/EVCommandDefs$DeviceParams;->contrast:I

    if-eq p1, v0, :cond_0

    .line 616
    iget-object v0, p0, Lcom/easyview/evnet/DCamera;->DeviceParams:Lcom/easyview/struct/EVCommandDefs$DeviceParams;

    iput p1, v0, Lcom/easyview/struct/EVCommandDefs$DeviceParams;->contrast:I

    .line 617
    iget-object v0, p0, Lcom/easyview/evnet/DCamera;->DeviceParams:Lcom/easyview/struct/EVCommandDefs$DeviceParams;

    const/16 v1, 0x10

    iput v1, v0, Lcom/easyview/struct/EVCommandDefs$DeviceParams;->flag:I

    .line 618
    invoke-direct {p0}, Lcom/easyview/evnet/DCamera;->SetParams()V

    .line 620
    :cond_0
    return-void
.end method

.method public setExtThres(Lcom/easyview/basecamera/ICamera$IRespondListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/easyview/basecamera/ICamera$IRespondListener;

    .prologue
    .line 367
    return-void
.end method

.method public setLanguage(ILcom/easyview/basecamera/ICamera$IRespondListener;)V
    .locals 0
    .param p1, "lang"    # I
    .param p2, "listener"    # Lcom/easyview/basecamera/ICamera$IRespondListener;

    .prologue
    .line 407
    return-void
.end method

.method public setLightValue(IIILcom/easyview/basecamera/ICamera$IRespondListener;)V
    .locals 0
    .param p1, "white"    # I
    .param p2, "yellow"    # I
    .param p3, "type"    # I
    .param p4, "listener"    # Lcom/easyview/basecamera/ICamera$IRespondListener;

    .prologue
    .line 764
    return-void
.end method

.method public setMailParam(Lcom/easyview/bean/MailBean;Lcom/easyview/basecamera/ICamera$IRespondListener;)V
    .locals 0
    .param p1, "bean"    # Lcom/easyview/bean/MailBean;
    .param p2, "listener"    # Lcom/easyview/basecamera/ICamera$IRespondListener;

    .prologue
    .line 338
    return-void
.end method

.method public setPassword(Ljava/lang/String;Ljava/lang/String;Lcom/easyview/basecamera/ICamera$IRespondListener;)V
    .locals 0
    .param p1, "newPwd"    # Ljava/lang/String;
    .param p2, "oldPwd"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/easyview/basecamera/ICamera$IRespondListener;

    .prologue
    .line 302
    return-void
.end method

.method public setResolution(I)V
    .locals 0
    .param p1, "resolution"    # I

    .prologue
    .line 389
    return-void
.end method

.method public setRotate(ILcom/easyview/basecamera/ICamera$IRespondListener;)V
    .locals 2
    .param p1, "value"    # I
    .param p2, "listener"    # Lcom/easyview/basecamera/ICamera$IRespondListener;

    .prologue
    .line 634
    iget-object v0, p0, Lcom/easyview/evnet/DCamera;->DeviceParams:Lcom/easyview/struct/EVCommandDefs$DeviceParams;

    iget-short v0, v0, Lcom/easyview/struct/EVCommandDefs$DeviceParams;->rotate:S

    if-eq p1, v0, :cond_0

    .line 636
    iget-object v0, p0, Lcom/easyview/evnet/DCamera;->DeviceParams:Lcom/easyview/struct/EVCommandDefs$DeviceParams;

    int-to-short v1, p1

    iput-short v1, v0, Lcom/easyview/struct/EVCommandDefs$DeviceParams;->rotate:S

    .line 637
    iget-object v0, p0, Lcom/easyview/evnet/DCamera;->DeviceParams:Lcom/easyview/struct/EVCommandDefs$DeviceParams;

    const/4 v1, 0x4

    iput v1, v0, Lcom/easyview/struct/EVCommandDefs$DeviceParams;->flag:I

    .line 638
    invoke-direct {p0}, Lcom/easyview/evnet/DCamera;->SetParams()V

    .line 640
    :cond_0
    return-void
.end method

.method public setRssi(I)V
    .locals 0
    .param p1, "level"    # I

    .prologue
    .line 727
    invoke-static {p1}, Lcom/easyview/evnet/EVNet;->SetRssi(I)I

    .line 728
    return-void
.end method

.method public setSensor(ILcom/easyview/basecamera/ICamera$IRespondListener;)V
    .locals 0
    .param p1, "value"    # I
    .param p2, "listener"    # Lcom/easyview/basecamera/ICamera$IRespondListener;

    .prologue
    .line 734
    return-void
.end method

.method public setShowOSD(ILcom/easyview/basecamera/ICamera$IRespondListener;)V
    .locals 2
    .param p1, "value"    # I
    .param p2, "listener"    # Lcom/easyview/basecamera/ICamera$IRespondListener;

    .prologue
    .line 624
    iget-object v0, p0, Lcom/easyview/evnet/DCamera;->DeviceParams:Lcom/easyview/struct/EVCommandDefs$DeviceParams;

    iget-short v0, v0, Lcom/easyview/struct/EVCommandDefs$DeviceParams;->date_code:S

    if-eq p1, v0, :cond_0

    .line 626
    iget-object v0, p0, Lcom/easyview/evnet/DCamera;->DeviceParams:Lcom/easyview/struct/EVCommandDefs$DeviceParams;

    int-to-short v1, p1

    iput-short v1, v0, Lcom/easyview/struct/EVCommandDefs$DeviceParams;->date_code:S

    .line 627
    iget-object v0, p0, Lcom/easyview/evnet/DCamera;->DeviceParams:Lcom/easyview/struct/EVCommandDefs$DeviceParams;

    const/4 v1, 0x2

    iput v1, v0, Lcom/easyview/struct/EVCommandDefs$DeviceParams;->flag:I

    .line 628
    invoke-direct {p0}, Lcom/easyview/evnet/DCamera;->SetParams()V

    .line 630
    :cond_0
    return-void
.end method

.method public setStoreParam(Lcom/easyview/bean/SdcardBean;Lcom/easyview/basecamera/ICamera$IRespondListener;)V
    .locals 0
    .param p1, "bean"    # Lcom/easyview/bean/SdcardBean;
    .param p2, "listener"    # Lcom/easyview/basecamera/ICamera$IRespondListener;

    .prologue
    .line 350
    return-void
.end method

.method public setTimeParam(Lcom/easyview/bean/DateBean;Lcom/easyview/basecamera/ICamera$IRespondListener;)V
    .locals 0
    .param p1, "bean"    # Lcom/easyview/bean/DateBean;
    .param p2, "listener"    # Lcom/easyview/basecamera/ICamera$IRespondListener;

    .prologue
    .line 326
    return-void
.end method

.method public setVideoQuality(I)V
    .locals 0
    .param p1, "quality"    # I

    .prologue
    .line 395
    return-void
.end method

.method public setWiFiName(Ljava/lang/String;Lcom/easyview/basecamera/ICamera$IRespondListener;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/easyview/basecamera/ICamera$IRespondListener;

    .prologue
    .line 650
    iget-object v0, p0, Lcom/easyview/evnet/DCamera;->DeviceParams:Lcom/easyview/struct/EVCommandDefs$DeviceParams;

    iget-object v0, v0, Lcom/easyview/struct/EVCommandDefs$DeviceParams;->WiFiName:Lstruct/CString;

    invoke-virtual {v0, p1}, Lstruct/CString;->setString(Ljava/lang/String;)V

    .line 651
    iget-object v0, p0, Lcom/easyview/evnet/DCamera;->DeviceParams:Lcom/easyview/struct/EVCommandDefs$DeviceParams;

    const/4 v1, 0x1

    iput v1, v0, Lcom/easyview/struct/EVCommandDefs$DeviceParams;->flag:I

    .line 652
    invoke-direct {p0}, Lcom/easyview/evnet/DCamera;->SetParams()V

    .line 653
    return-void
.end method

.method public setWifiParam(Lcom/easyview/bean/WifiBean;Lcom/easyview/basecamera/ICamera$IRespondListener;)V
    .locals 0
    .param p1, "bean"    # Lcom/easyview/bean/WifiBean;
    .param p2, "listener"    # Lcom/easyview/basecamera/ICamera$IRespondListener;

    .prologue
    .line 283
    return-void
.end method

.method public snapShot(Lcom/easyview/basecamera/ICamera$IRespondListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/easyview/basecamera/ICamera$IRespondListener;

    .prologue
    .line 371
    const/16 v0, 0x19

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/easyview/evnet/EVNet;->Command(I[BI)I

    .line 372
    return-void
.end method

.method public startRecord(Lcom/easyview/basecamera/ICamera$IRespondListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/easyview/basecamera/ICamera$IRespondListener;

    .prologue
    const/4 v2, 0x0

    .line 376
    iput v2, p0, Lcom/easyview/evnet/DCamera;->_startRecordTime:I

    .line 377
    const/16 v0, 0x17

    const/4 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/easyview/evnet/EVNet;->Command(I[BI)I

    .line 378
    return-void
.end method

.method public stopDownRecord(Lcom/easyview/basecamera/ICamera$IDownloadListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/easyview/basecamera/ICamera$IDownloadListener;

    .prologue
    .line 568
    return-void
.end method

.method public stopMusic(ILcom/easyview/basecamera/ICamera$IRespondListener;)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "listener"    # Lcom/easyview/basecamera/ICamera$IRespondListener;

    .prologue
    .line 580
    return-void
.end method

.method public stopRecord(Lcom/easyview/basecamera/ICamera$IRespondListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/easyview/basecamera/ICamera$IRespondListener;

    .prologue
    .line 382
    const/16 v0, 0x18

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/easyview/evnet/EVNet;->Command(I[BI)I

    .line 383
    return-void
.end method

.method public timing()V
    .locals 8

    .prologue
    .line 718
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    .line 719
    .local v2, "timeZone":Ljava/util/TimeZone;
    invoke-virtual {v2}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v4

    div-int/lit16 v3, v4, 0x3e8

    .line 720
    .local v3, "tz":I
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 721
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    long-to-int v1, v4

    .line 722
    .local v1, "now":I
    const/4 v4, 0x4

    const/4 v5, 0x2

    new-array v5, v5, [I

    const/4 v6, 0x0

    aput v1, v5, v6

    const/4 v6, 0x1

    aput v3, v5, v6

    invoke-direct {p0, v4, v5}, Lcom/easyview/evnet/DCamera;->sendCommand(I[I)V

    .line 723
    return-void
.end method

.method public upgradeCheck(Lcom/easyview/basecamera/ICamera$IRespondListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/easyview/basecamera/ICamera$IRespondListener;

    .prologue
    .line 752
    return-void
.end method

.method public upgradeDevice(Lcom/easyview/basecamera/ICamera$IRespondListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/easyview/basecamera/ICamera$IRespondListener;

    .prologue
    .line 746
    return-void
.end method

.method public wifiScan(Lcom/easyview/basecamera/ICamera$IWifiScanListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/easyview/basecamera/ICamera$IWifiScanListener;

    .prologue
    .line 289
    return-void
.end method
