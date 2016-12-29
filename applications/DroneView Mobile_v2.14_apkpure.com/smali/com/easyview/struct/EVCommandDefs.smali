.class public Lcom/easyview/struct/EVCommandDefs;
.super Ljava/lang/Object;
.source "EVCommandDefs.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/easyview/struct/EVCommandDefs$DeviceInfoParam;,
        Lcom/easyview/struct/EVCommandDefs$DeviceParams;,
        Lcom/easyview/struct/EVCommandDefs$EVCommandStruct;,
        Lcom/easyview/struct/EVCommandDefs$EVCommonResp;,
        Lcom/easyview/struct/EVCommandDefs$EVDownRecordReq;,
        Lcom/easyview/struct/EVCommandDefs$EVDownRecordResp;,
        Lcom/easyview/struct/EVCommandDefs$EVEventListResp;,
        Lcom/easyview/struct/EVCommandDefs$EVRecordDataHeader;,
        Lcom/easyview/struct/EVCommandDefs$EVSearchEventReq;,
        Lcom/easyview/struct/EVCommandDefs$EVSearchEventResp;,
        Lcom/easyview/struct/EVCommandDefs$EVSearchRecordReq;,
        Lcom/easyview/struct/EVCommandDefs$EVSearchRecordResp;,
        Lcom/easyview/struct/EVCommandDefs$EVSimpleReq;,
        Lcom/easyview/struct/EVCommandDefs$EVSimpleResp;,
        Lcom/easyview/struct/EVCommandDefs$EVTime;,
        Lcom/easyview/struct/EVCommandDefs$Event;,
        Lcom/easyview/struct/EVCommandDefs$EventInfo;,
        Lcom/easyview/struct/EVCommandDefs$EventListReq;,
        Lcom/easyview/struct/EVCommandDefs$ExtInfo;,
        Lcom/easyview/struct/EVCommandDefs$ExtInfos;,
        Lcom/easyview/struct/EVCommandDefs$ExtThreshold;,
        Lcom/easyview/struct/EVCommandDefs$ExtThresholds;,
        Lcom/easyview/struct/EVCommandDefs$IOSwitchParam;,
        Lcom/easyview/struct/EVCommandDefs$IOSwitchParams;,
        Lcom/easyview/struct/EVCommandDefs$LCDCtrlParam;,
        Lcom/easyview/struct/EVCommandDefs$RecordState;,
        Lcom/easyview/struct/EVCommandDefs$StorageStateStruct;
    }
.end annotation


# static fields
.field public static final DEL_EVENTS:S = 0x107s

.field public static final DOWNLOAD_RECORD:S = 0x105s

.field public static final DOWN_RECORD:S = 0x103s

.field public static final ENABLE_PAIRING:S = 0x11as

.field public static final EV_COMMAND_GET_IOSWITCH:S = 0x130s

.field public static final EV_COMMAND_LCD_CONTROL:S = 0x133s

.field public static final EV_COMMAND_LIGHT_CONTROL:S = 0x140s

.field public static final EV_COMMAND_OPEN_IOSWITCH:S = 0x132s

.field public static final EV_COMMAND_SET_IOSWITCH:S = 0x131s

.field public static final GET_CAPS:S = 0x101s

.field public static final GET_EVENT:S = 0x10as

.field public static final GET_EVENTS:S = 0x102s

.field public static final GET_EVENT_INFO:S = 0x108s

.field public static final GET_EVENT_LIST:S = 0x109s

.field public static final GET_EXT_THRES:S = 0x117s

.field public static final PARAMS_BRIGHT:I = 0x8

.field public static final PARAMS_CONTRAST:I = 0x10

.field public static final PARAMS_DATECODE:I = 0x2

.field public static final PARAMS_ROTATE:I = 0x4

.field public static final PARAMS_WIFINAME:I = 0x1

.field public static final PLAY_MUSIC:S = 0x119s

.field public static final QUERY_DEVINFO:S = 0x203s

.field public static final QUERY_WIFI_RESULT:S = 0x201s

.field public static final SEARCH_RECORD_LIST:S = 0x104s

.field public static final SET_EXT_THRES:S = 0x118s

.field public static final SET_LANGUAGE:S = 0x202s

.field public static final STOP_DOWN_RECORD:S = 0x106s

.field public static final UPGRADE_CHECK:S = 0x205s

.field public static final UPGRADE_DEVICE:S = 0x204s


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static MakeCommonReqPacket(SLjava/lang/Object;I)[B
    .locals 3
    .param p0, "command"    # S
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lstruct/StructException;
        }
    .end annotation

    .prologue
    .line 449
    new-instance v0, Lstruct/StructPacker;

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {v0, v2}, Lstruct/StructPacker;-><init>(Ljava/nio/ByteOrder;)V

    .line 450
    .local v0, "packer":Lstruct/StructPacker;
    new-instance v1, Lcom/easyview/struct/EVCommandDefs$EVCommandStruct;

    invoke-direct {v1}, Lcom/easyview/struct/EVCommandDefs$EVCommandStruct;-><init>()V

    .line 451
    .local v1, "s":Lcom/easyview/struct/EVCommandDefs$EVCommandStruct;
    const/16 v2, 0x45

    iput-byte v2, v1, Lcom/easyview/struct/EVCommandDefs$EVCommandStruct;->symbol:B

    .line 452
    const/16 v2, 0x8

    iput-byte v2, v1, Lcom/easyview/struct/EVCommandDefs$EVCommandStruct;->size:B

    .line 453
    iput-short p0, v1, Lcom/easyview/struct/EVCommandDefs$EVCommandStruct;->command:S

    .line 454
    iput p2, v1, Lcom/easyview/struct/EVCommandDefs$EVCommandStruct;->length:I

    .line 455
    invoke-virtual {v0, v1}, Lstruct/StructPacker;->writeObject(Ljava/lang/Object;)V

    .line 456
    invoke-virtual {v0, p1}, Lstruct/StructPacker;->writeObject(Ljava/lang/Object;)V

    .line 457
    invoke-virtual {v0}, Lstruct/StructPacker;->toArray()[B

    move-result-object v2

    return-object v2
.end method

.method public static MakeDelEventsReqPacket([I)[B
    .locals 3
    .param p0, "data"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lstruct/StructException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 461
    new-instance v0, Lstruct/StructPacker;

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {v0, v2}, Lstruct/StructPacker;-><init>(Ljava/nio/ByteOrder;)V

    .line 462
    .local v0, "packer":Lstruct/StructPacker;
    new-instance v1, Lcom/easyview/struct/EVCommandDefs$EVCommandStruct;

    invoke-direct {v1}, Lcom/easyview/struct/EVCommandDefs$EVCommandStruct;-><init>()V

    .line 463
    .local v1, "s":Lcom/easyview/struct/EVCommandDefs$EVCommandStruct;
    const/16 v2, 0x45

    iput-byte v2, v1, Lcom/easyview/struct/EVCommandDefs$EVCommandStruct;->symbol:B

    .line 464
    const/16 v2, 0x8

    iput-byte v2, v1, Lcom/easyview/struct/EVCommandDefs$EVCommandStruct;->size:B

    .line 465
    const/16 v2, 0x107

    iput-short v2, v1, Lcom/easyview/struct/EVCommandDefs$EVCommandStruct;->command:S

    .line 466
    array-length v2, p0

    iput v2, v1, Lcom/easyview/struct/EVCommandDefs$EVCommandStruct;->length:I

    .line 467
    invoke-virtual {v0, v1}, Lstruct/StructPacker;->writeObject(Ljava/lang/Object;)V

    .line 468
    array-length v2, p0

    invoke-virtual {v0, p0, v2}, Lstruct/StructPacker;->writeIntArray([II)V

    .line 469
    invoke-virtual {v0}, Lstruct/StructPacker;->toArray()[B

    move-result-object v2

    return-object v2
.end method

.method public static MakeDownRecordReqPacket(II)[B
    .locals 5
    .param p0, "recordIndex"    # I
    .param p1, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lstruct/StructException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x8

    .line 210
    new-instance v0, Lstruct/StructPacker;

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {v0, v3}, Lstruct/StructPacker;-><init>(Ljava/nio/ByteOrder;)V

    .line 211
    .local v0, "packer":Lstruct/StructPacker;
    new-instance v2, Lcom/easyview/struct/EVCommandDefs$EVCommandStruct;

    invoke-direct {v2}, Lcom/easyview/struct/EVCommandDefs$EVCommandStruct;-><init>()V

    .line 212
    .local v2, "s":Lcom/easyview/struct/EVCommandDefs$EVCommandStruct;
    const/16 v3, 0x45

    iput-byte v3, v2, Lcom/easyview/struct/EVCommandDefs$EVCommandStruct;->symbol:B

    .line 213
    iput-byte v4, v2, Lcom/easyview/struct/EVCommandDefs$EVCommandStruct;->size:B

    .line 214
    const/16 v3, 0x105

    iput-short v3, v2, Lcom/easyview/struct/EVCommandDefs$EVCommandStruct;->command:S

    .line 215
    iput v4, v2, Lcom/easyview/struct/EVCommandDefs$EVCommandStruct;->length:I

    .line 216
    new-instance v1, Lcom/easyview/struct/EVCommandDefs$EVDownRecordReq;

    invoke-direct {v1}, Lcom/easyview/struct/EVCommandDefs$EVDownRecordReq;-><init>()V

    .line 217
    .local v1, "req":Lcom/easyview/struct/EVCommandDefs$EVDownRecordReq;
    iput p0, v1, Lcom/easyview/struct/EVCommandDefs$EVDownRecordReq;->recordIndex:I

    .line 218
    iput p1, v1, Lcom/easyview/struct/EVCommandDefs$EVDownRecordReq;->offset:I

    .line 219
    invoke-virtual {v0, v2}, Lstruct/StructPacker;->writeObject(Ljava/lang/Object;)V

    .line 220
    invoke-virtual {v0, v1}, Lstruct/StructPacker;->writeObject(Ljava/lang/Object;)V

    .line 221
    invoke-virtual {v0}, Lstruct/StructPacker;->toArray()[B

    move-result-object v3

    return-object v3
.end method

.method public static MakeEventListReqPacket(JJI)[B
    .locals 4
    .param p0, "beginTime"    # J
    .param p2, "endTime"    # J
    .param p4, "begin_index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lstruct/StructException;
        }
    .end annotation

    .prologue
    .line 162
    new-instance v0, Lstruct/StructPacker;

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {v0, v3}, Lstruct/StructPacker;-><init>(Ljava/nio/ByteOrder;)V

    .line 163
    .local v0, "packer":Lstruct/StructPacker;
    new-instance v2, Lcom/easyview/struct/EVCommandDefs$EVCommandStruct;

    invoke-direct {v2}, Lcom/easyview/struct/EVCommandDefs$EVCommandStruct;-><init>()V

    .line 164
    .local v2, "s":Lcom/easyview/struct/EVCommandDefs$EVCommandStruct;
    const/16 v3, 0x45

    iput-byte v3, v2, Lcom/easyview/struct/EVCommandDefs$EVCommandStruct;->symbol:B

    .line 165
    const/16 v3, 0x8

    iput-byte v3, v2, Lcom/easyview/struct/EVCommandDefs$EVCommandStruct;->size:B

    .line 166
    const/16 v3, 0x102

    iput-short v3, v2, Lcom/easyview/struct/EVCommandDefs$EVCommandStruct;->command:S

    .line 167
    const/16 v3, 0x18

    iput v3, v2, Lcom/easyview/struct/EVCommandDefs$EVCommandStruct;->length:I

    .line 168
    new-instance v1, Lcom/easyview/struct/EVCommandDefs$EventListReq;

    invoke-direct {v1}, Lcom/easyview/struct/EVCommandDefs$EventListReq;-><init>()V

    .line 169
    .local v1, "req":Lcom/easyview/struct/EVCommandDefs$EventListReq;
    iput p4, v1, Lcom/easyview/struct/EVCommandDefs$EventListReq;->begin_index:I

    .line 170
    iget-object v3, v1, Lcom/easyview/struct/EVCommandDefs$EventListReq;->begin_time:Lcom/easyview/struct/EVCommandDefs$EVTime;

    invoke-virtual {v3, p0, p1}, Lcom/easyview/struct/EVCommandDefs$EVTime;->set(J)V

    .line 171
    iget-object v3, v1, Lcom/easyview/struct/EVCommandDefs$EventListReq;->end_time:Lcom/easyview/struct/EVCommandDefs$EVTime;

    invoke-virtual {v3, p2, p3}, Lcom/easyview/struct/EVCommandDefs$EVTime;->set(J)V

    .line 172
    invoke-virtual {v0, v2}, Lstruct/StructPacker;->writeObject(Ljava/lang/Object;)V

    .line 173
    invoke-virtual {v0, v1}, Lstruct/StructPacker;->writeObject(Ljava/lang/Object;)V

    .line 174
    invoke-virtual {v0}, Lstruct/StructPacker;->toArray()[B

    move-result-object v3

    return-object v3
.end method

.method public static MakeIOSwitchParamsReqPacket([Lcom/easyview/struct/EVCommandDefs$IOSwitchParam;)[B
    .locals 3
    .param p0, "params"    # [Lcom/easyview/struct/EVCommandDefs$IOSwitchParam;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lstruct/StructException;,
            Ljava/io/IOException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    .line 490
    new-instance v0, Lstruct/StructPacker;

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {v0, v2}, Lstruct/StructPacker;-><init>(Ljava/nio/ByteOrder;)V

    .line 491
    .local v0, "packer":Lstruct/StructPacker;
    new-instance v1, Lcom/easyview/struct/EVCommandDefs$EVCommandStruct;

    invoke-direct {v1}, Lcom/easyview/struct/EVCommandDefs$EVCommandStruct;-><init>()V

    .line 492
    .local v1, "s":Lcom/easyview/struct/EVCommandDefs$EVCommandStruct;
    const/16 v2, 0x45

    iput-byte v2, v1, Lcom/easyview/struct/EVCommandDefs$EVCommandStruct;->symbol:B

    .line 493
    const/16 v2, 0x8

    iput-byte v2, v1, Lcom/easyview/struct/EVCommandDefs$EVCommandStruct;->size:B

    .line 494
    const/16 v2, 0x131

    iput-short v2, v1, Lcom/easyview/struct/EVCommandDefs$EVCommandStruct;->command:S

    .line 495
    array-length v2, p0

    mul-int/lit8 v2, v2, 0x14

    iput v2, v1, Lcom/easyview/struct/EVCommandDefs$EVCommandStruct;->length:I

    .line 496
    invoke-virtual {v0, v1}, Lstruct/StructPacker;->writeObject(Ljava/lang/Object;)V

    .line 497
    array-length v2, p0

    invoke-virtual {v0, p0, v2}, Lstruct/StructPacker;->writeObjectArray([Ljava/lang/Object;I)V

    .line 498
    invoke-virtual {v0}, Lstruct/StructPacker;->toArray()[B

    move-result-object v2

    return-object v2
.end method

.method public static MakeObjectReqPacket(SLjava/lang/Object;I)[B
    .locals 3
    .param p0, "command"    # S
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lstruct/StructException;
        }
    .end annotation

    .prologue
    .line 436
    new-instance v0, Lstruct/StructPacker;

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {v0, v2}, Lstruct/StructPacker;-><init>(Ljava/nio/ByteOrder;)V

    .line 437
    .local v0, "packer":Lstruct/StructPacker;
    new-instance v1, Lcom/easyview/struct/EVCommandDefs$EVCommandStruct;

    invoke-direct {v1}, Lcom/easyview/struct/EVCommandDefs$EVCommandStruct;-><init>()V

    .line 438
    .local v1, "s":Lcom/easyview/struct/EVCommandDefs$EVCommandStruct;
    const/16 v2, 0x45

    iput-byte v2, v1, Lcom/easyview/struct/EVCommandDefs$EVCommandStruct;->symbol:B

    .line 439
    const/16 v2, 0x8

    iput-byte v2, v1, Lcom/easyview/struct/EVCommandDefs$EVCommandStruct;->size:B

    .line 440
    iput-short p0, v1, Lcom/easyview/struct/EVCommandDefs$EVCommandStruct;->command:S

    .line 441
    iput p2, v1, Lcom/easyview/struct/EVCommandDefs$EVCommandStruct;->length:I

    .line 442
    invoke-virtual {v0, v1}, Lstruct/StructPacker;->writeObject(Ljava/lang/Object;)V

    .line 443
    invoke-virtual {v0, p1}, Lstruct/StructPacker;->writeObject(Ljava/lang/Object;)V

    .line 444
    invoke-virtual {v0}, Lstruct/StructPacker;->toArray()[B

    move-result-object v2

    return-object v2
.end method

.method public static MakeSearchEventReqPacket(IIII)[B
    .locals 4
    .param p0, "begin_index"    # I
    .param p1, "begin_time"    # I
    .param p2, "end_time"    # I
    .param p3, "with_snap"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lstruct/StructException;
        }
    .end annotation

    .prologue
    .line 279
    new-instance v0, Lstruct/StructPacker;

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {v0, v3}, Lstruct/StructPacker;-><init>(Ljava/nio/ByteOrder;)V

    .line 280
    .local v0, "packer":Lstruct/StructPacker;
    new-instance v2, Lcom/easyview/struct/EVCommandDefs$EVCommandStruct;

    invoke-direct {v2}, Lcom/easyview/struct/EVCommandDefs$EVCommandStruct;-><init>()V

    .line 281
    .local v2, "s":Lcom/easyview/struct/EVCommandDefs$EVCommandStruct;
    const/16 v3, 0x45

    iput-byte v3, v2, Lcom/easyview/struct/EVCommandDefs$EVCommandStruct;->symbol:B

    .line 282
    const/16 v3, 0x8

    iput-byte v3, v2, Lcom/easyview/struct/EVCommandDefs$EVCommandStruct;->size:B

    .line 283
    const/16 v3, 0x102

    iput-short v3, v2, Lcom/easyview/struct/EVCommandDefs$EVCommandStruct;->command:S

    .line 284
    const/16 v3, 0x10

    iput v3, v2, Lcom/easyview/struct/EVCommandDefs$EVCommandStruct;->length:I

    .line 285
    new-instance v1, Lcom/easyview/struct/EVCommandDefs$EVSearchEventReq;

    invoke-direct {v1}, Lcom/easyview/struct/EVCommandDefs$EVSearchEventReq;-><init>()V

    .line 286
    .local v1, "req":Lcom/easyview/struct/EVCommandDefs$EVSearchEventReq;
    iput p0, v1, Lcom/easyview/struct/EVCommandDefs$EVSearchEventReq;->begin_index:I

    .line 287
    iput p1, v1, Lcom/easyview/struct/EVCommandDefs$EVSearchEventReq;->end_index:I

    .line 289
    iput p3, v1, Lcom/easyview/struct/EVCommandDefs$EVSearchEventReq;->with_picture:I

    .line 290
    invoke-virtual {v0, v2}, Lstruct/StructPacker;->writeObject(Ljava/lang/Object;)V

    .line 291
    invoke-virtual {v0, v1}, Lstruct/StructPacker;->writeObject(Ljava/lang/Object;)V

    .line 292
    invoke-virtual {v0}, Lstruct/StructPacker;->toArray()[B

    move-result-object v3

    return-object v3
.end method

.method public static MakeSearchRecordReqPacket(III)[B
    .locals 5
    .param p0, "begin_time"    # I
    .param p1, "end_time"    # I
    .param p2, "with_snap"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lstruct/StructException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x8

    .line 243
    new-instance v0, Lstruct/StructPacker;

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {v0, v3}, Lstruct/StructPacker;-><init>(Ljava/nio/ByteOrder;)V

    .line 244
    .local v0, "packer":Lstruct/StructPacker;
    new-instance v2, Lcom/easyview/struct/EVCommandDefs$EVCommandStruct;

    invoke-direct {v2}, Lcom/easyview/struct/EVCommandDefs$EVCommandStruct;-><init>()V

    .line 245
    .local v2, "s":Lcom/easyview/struct/EVCommandDefs$EVCommandStruct;
    const/16 v3, 0x45

    iput-byte v3, v2, Lcom/easyview/struct/EVCommandDefs$EVCommandStruct;->symbol:B

    .line 246
    iput-byte v4, v2, Lcom/easyview/struct/EVCommandDefs$EVCommandStruct;->size:B

    .line 247
    const/16 v3, 0x104

    iput-short v3, v2, Lcom/easyview/struct/EVCommandDefs$EVCommandStruct;->command:S

    .line 248
    iput v4, v2, Lcom/easyview/struct/EVCommandDefs$EVCommandStruct;->length:I

    .line 249
    new-instance v1, Lcom/easyview/struct/EVCommandDefs$EVSearchRecordReq;

    invoke-direct {v1}, Lcom/easyview/struct/EVCommandDefs$EVSearchRecordReq;-><init>()V

    .line 250
    .local v1, "req":Lcom/easyview/struct/EVCommandDefs$EVSearchRecordReq;
    iput p0, v1, Lcom/easyview/struct/EVCommandDefs$EVSearchRecordReq;->begin_time:I

    .line 251
    iput p1, v1, Lcom/easyview/struct/EVCommandDefs$EVSearchRecordReq;->end_time:I

    .line 252
    iput p2, v1, Lcom/easyview/struct/EVCommandDefs$EVSearchRecordReq;->with_snap:I

    .line 253
    invoke-virtual {v0, v2}, Lstruct/StructPacker;->writeObject(Ljava/lang/Object;)V

    .line 254
    invoke-virtual {v0, v1}, Lstruct/StructPacker;->writeObject(Ljava/lang/Object;)V

    .line 255
    invoke-virtual {v0}, Lstruct/StructPacker;->toArray()[B

    move-result-object v3

    return-object v3
.end method

.method public static varargs MakeSimpleReqPacket(S[I)[B
    .locals 6
    .param p0, "command"    # S
    .param p1, "params"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lstruct/StructException;
        }
    .end annotation

    .prologue
    .line 415
    new-instance v1, Lstruct/StructPacker;

    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {v1, v4}, Lstruct/StructPacker;-><init>(Ljava/nio/ByteOrder;)V

    .line 416
    .local v1, "packer":Lstruct/StructPacker;
    new-instance v3, Lcom/easyview/struct/EVCommandDefs$EVCommandStruct;

    invoke-direct {v3}, Lcom/easyview/struct/EVCommandDefs$EVCommandStruct;-><init>()V

    .line 417
    .local v3, "s":Lcom/easyview/struct/EVCommandDefs$EVCommandStruct;
    const/16 v4, 0x45

    iput-byte v4, v3, Lcom/easyview/struct/EVCommandDefs$EVCommandStruct;->symbol:B

    .line 418
    const/16 v4, 0x8

    iput-byte v4, v3, Lcom/easyview/struct/EVCommandDefs$EVCommandStruct;->size:B

    .line 419
    iput-short p0, v3, Lcom/easyview/struct/EVCommandDefs$EVCommandStruct;->command:S

    .line 420
    array-length v4, p1

    mul-int/lit8 v4, v4, 0x4

    iput v4, v3, Lcom/easyview/struct/EVCommandDefs$EVCommandStruct;->length:I

    .line 422
    invoke-virtual {v1, v3}, Lstruct/StructPacker;->writeObject(Ljava/lang/Object;)V

    .line 423
    array-length v5, p1

    const/4 v4, 0x0

    :goto_0
    if-lt v4, v5, :cond_0

    .line 432
    invoke-virtual {v1}, Lstruct/StructPacker;->toArray()[B

    move-result-object v4

    return-object v4

    .line 423
    :cond_0
    aget v2, p1, v4

    .line 426
    .local v2, "param":I
    :try_start_0
    invoke-virtual {v1, v2}, Lstruct/StructPacker;->writeInt(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 423
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 427
    :catch_0
    move-exception v0

    .line 429
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method
