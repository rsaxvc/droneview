.class public abstract Lcom/easyview/camera/EVBaseCamera;
.super Lcom/easyview/basecamera/BaseCamera;
.source "EVBaseCamera.java"


# static fields
.field private static final LOW_POWER_FLAG:I = 0x2

.field private static final RECORD_STATE_FLAG:I = 0x1


# instance fields
.field protected DevInfoParam:Lcom/easyview/struct/EVCommandDefs$DeviceInfoParam;

.field protected DeviceParams:Lcom/easyview/struct/EVCommandDefs$DeviceParams;

.field protected _alermBean:Lcom/easyview/bean/AlermBean;

.field protected _audioDataListener:Lcom/easyview/basecamera/ICamera$IDataListener;

.field protected _commandListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

.field protected _deviceStateListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

.field protected _eventIndex:I

.field protected _eventTime:I

.field protected _extSetThresListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

.field protected _extThresListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

.field protected _getEventInfoListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

.field protected _isStartVideo:Z

.field private _listEventDetail:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lobject/p2pipcam/bean/EventDetailBean;",
            ">;"
        }
    .end annotation
.end field

.field protected _playAudioListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

.field protected _quality:I

.field protected _queryEventInfoListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

.field protected _queryEventListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

.field protected _queryEventsListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

.field protected _requestParamsListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

.field protected _searchEventsListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

.field protected _statusListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

.field protected _storageStateListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

.field protected _totalEvents:I

.field protected _videoDataListener:Lcom/easyview/basecamera/ICamera$IDataListener;

.field protected _yuvDataListener:Lcom/easyview/basecamera/ICamera$IYUVDataListener;

.field protected downRecordListener:Lcom/easyview/basecamera/ICamera$IDownloadListener;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "user"    # Ljava/lang/String;
    .param p4, "pwd"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 68
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/easyview/basecamera/BaseCamera;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/easyview/camera/EVBaseCamera;->_listEventDetail:Ljava/util/List;

    .line 38
    iput v2, p0, Lcom/easyview/camera/EVBaseCamera;->_quality:I

    .line 39
    iput v2, p0, Lcom/easyview/camera/EVBaseCamera;->_totalEvents:I

    .line 40
    iput v2, p0, Lcom/easyview/camera/EVBaseCamera;->_eventIndex:I

    .line 41
    iput-boolean v2, p0, Lcom/easyview/camera/EVBaseCamera;->_isStartVideo:Z

    .line 42
    iput v2, p0, Lcom/easyview/camera/EVBaseCamera;->_eventTime:I

    .line 44
    iput-object v1, p0, Lcom/easyview/camera/EVBaseCamera;->downRecordListener:Lcom/easyview/basecamera/ICamera$IDownloadListener;

    .line 45
    iput-object v1, p0, Lcom/easyview/camera/EVBaseCamera;->_queryEventInfoListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

    .line 46
    iput-object v1, p0, Lcom/easyview/camera/EVBaseCamera;->_extThresListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

    .line 47
    iput-object v1, p0, Lcom/easyview/camera/EVBaseCamera;->_extSetThresListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

    .line 48
    iput-object v1, p0, Lcom/easyview/camera/EVBaseCamera;->_searchEventsListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

    .line 49
    iput-object v1, p0, Lcom/easyview/camera/EVBaseCamera;->_getEventInfoListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

    .line 50
    iput-object v1, p0, Lcom/easyview/camera/EVBaseCamera;->_commandListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

    .line 51
    iput-object v1, p0, Lcom/easyview/camera/EVBaseCamera;->_playAudioListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

    .line 52
    iput-object v1, p0, Lcom/easyview/camera/EVBaseCamera;->_storageStateListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

    .line 53
    iput-object v1, p0, Lcom/easyview/camera/EVBaseCamera;->_videoDataListener:Lcom/easyview/basecamera/ICamera$IDataListener;

    .line 54
    iput-object v1, p0, Lcom/easyview/camera/EVBaseCamera;->_audioDataListener:Lcom/easyview/basecamera/ICamera$IDataListener;

    .line 55
    iput-object v1, p0, Lcom/easyview/camera/EVBaseCamera;->_yuvDataListener:Lcom/easyview/basecamera/ICamera$IYUVDataListener;

    .line 56
    iput-object v1, p0, Lcom/easyview/camera/EVBaseCamera;->_queryEventsListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

    .line 57
    iput-object v1, p0, Lcom/easyview/camera/EVBaseCamera;->_queryEventListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

    .line 58
    iput-object v1, p0, Lcom/easyview/camera/EVBaseCamera;->_deviceStateListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

    .line 59
    iput-object v1, p0, Lcom/easyview/camera/EVBaseCamera;->_requestParamsListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

    .line 60
    iput-object v1, p0, Lcom/easyview/camera/EVBaseCamera;->_statusListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

    .line 62
    new-instance v0, Lcom/easyview/struct/EVCommandDefs$DeviceInfoParam;

    invoke-direct {v0}, Lcom/easyview/struct/EVCommandDefs$DeviceInfoParam;-><init>()V

    iput-object v0, p0, Lcom/easyview/camera/EVBaseCamera;->DevInfoParam:Lcom/easyview/struct/EVCommandDefs$DeviceInfoParam;

    .line 63
    new-instance v0, Lcom/easyview/struct/EVCommandDefs$DeviceParams;

    invoke-direct {v0}, Lcom/easyview/struct/EVCommandDefs$DeviceParams;-><init>()V

    iput-object v0, p0, Lcom/easyview/camera/EVBaseCamera;->DeviceParams:Lcom/easyview/struct/EVCommandDefs$DeviceParams;

    .line 64
    iput-object v1, p0, Lcom/easyview/camera/EVBaseCamera;->_alermBean:Lcom/easyview/bean/AlermBean;

    .line 69
    iget-object v0, p0, Lcom/easyview/camera/EVBaseCamera;->_storageStateStruct:Lcom/easyview/struct/EVCommandDefs$StorageStateStruct;

    const/4 v1, 0x1

    iput v1, v0, Lcom/easyview/struct/EVCommandDefs$StorageStateStruct;->power_val:I

    .line 70
    new-instance v0, Lcom/easyview/bean/AlermBean;

    invoke-direct {v0}, Lcom/easyview/bean/AlermBean;-><init>()V

    iput-object v0, p0, Lcom/easyview/camera/EVBaseCamera;->_alermBean:Lcom/easyview/bean/AlermBean;

    .line 71
    return-void
.end method

.method private dealEvent([BI)V
    .locals 17
    .param p1, "data"    # [B
    .param p2, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 329
    if-nez p2, :cond_0

    .line 360
    :goto_0
    return-void

    .line 330
    :cond_0
    const/4 v6, 0x0

    .line 331
    .local v6, "fos":Ljava/io/FileOutputStream;
    invoke-static {}, Lobject/p2pipcam/utils/Pub;->photoSavePathFile()Ljava/io/File;

    move-result-object v2

    .line 332
    .local v2, "div":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_1

    .line 333
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 336
    :cond_1
    :try_start_0
    new-instance v11, Lstruct/StructUnpacker;

    sget-object v12, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    move-object/from16 v0, p1

    invoke-direct {v11, v0, v12}, Lstruct/StructUnpacker;-><init>([BLjava/nio/ByteOrder;)V

    .line 337
    .local v11, "up":Lstruct/StructUnpacker;
    new-instance v12, Lcom/easyview/struct/EVCommandDefs$Event;

    invoke-direct {v12}, Lcom/easyview/struct/EVCommandDefs$Event;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/easyview/camera/EVBaseCamera;->event:Lcom/easyview/struct/EVCommandDefs$Event;

    .line 338
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/easyview/camera/EVBaseCamera;->event:Lcom/easyview/struct/EVCommandDefs$Event;

    invoke-virtual {v11, v12}, Lstruct/StructUnpacker;->readObject(Ljava/lang/Object;)V

    .line 339
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 340
    .local v1, "date":Ljava/util/Date;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/easyview/camera/EVBaseCamera;->event:Lcom/easyview/struct/EVCommandDefs$Event;

    iget v12, v12, Lcom/easyview/struct/EVCommandDefs$Event;->event_time:I

    int-to-long v8, v12

    .line 341
    .local v8, "ms":J
    const-wide/16 v12, 0x3e8

    mul-long/2addr v8, v12

    .line 342
    invoke-virtual {v1, v8, v9}, Ljava/util/Date;->setTime(J)V

    .line 343
    new-instance v10, Ljava/text/SimpleDateFormat;

    const-string v12, "yyyyMMddHHmmss"

    invoke-direct {v10, v12}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 344
    .local v10, "sdf":Ljava/text/SimpleDateFormat;
    const-string v12, "%04d_%s.jpg"

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/easyview/camera/EVBaseCamera;->event:Lcom/easyview/struct/EVCommandDefs$Event;

    iget-short v15, v15, Lcom/easyview/struct/EVCommandDefs$Event;->event_type:S

    invoke-static {v15}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    invoke-virtual {v10, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 345
    .local v5, "fileName":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 346
    .local v4, "file":Ljava/io/File;
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 347
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .local v7, "fos":Ljava/io/FileOutputStream;
    const/16 v12, 0x14

    add-int/lit8 v13, p2, -0x14

    :try_start_1
    move-object/from16 v0, p1

    invoke-virtual {v7, v0, v12, v13}, Ljava/io/FileOutputStream;->write([BII)V

    .line 348
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    .line 349
    const-string v12, "Event"

    const-string v13, "%d Save Picture:%s index:%d time:%d"

    const/4 v14, 0x4

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/easyview/camera/EVBaseCamera;->event:Lcom/easyview/struct/EVCommandDefs$Event;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-short v0, v0, Lcom/easyview/struct/EVCommandDefs$Event;->event_type:S

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    aput-object v5, v14, v15

    const/4 v15, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/easyview/camera/EVBaseCamera;->event:Lcom/easyview/struct/EVCommandDefs$Event;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/easyview/struct/EVCommandDefs$Event;->index:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/easyview/camera/EVBaseCamera;->event:Lcom/easyview/struct/EVCommandDefs$Event;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/easyview/struct/EVCommandDefs$Event;->event_time:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    invoke-static {}, Lobject/p2pipcam/utils/Pub;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Lcom/easyview/table/EventTable;->getInstance(Landroid/content/Context;)Lcom/easyview/table/EventTable;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lcom/easyview/camera/EVBaseCamera;->getID()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/easyview/camera/EVBaseCamera;->_eventFileID:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/easyview/camera/EVBaseCamera;->event:Lcom/easyview/struct/EVCommandDefs$Event;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v12 .. v16}, Lcom/easyview/table/EventTable;->Save(Ljava/lang/String;ILcom/easyview/struct/EVCommandDefs$Event;Ljava/lang/String;)J

    .line 351
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/easyview/camera/EVBaseCamera;->_queryEventListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

    if-eqz v12, :cond_2

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/easyview/camera/EVBaseCamera;->_queryEventListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/easyview/camera/EVBaseCamera;->event:Lcom/easyview/struct/EVCommandDefs$Event;

    iget v14, v14, Lcom/easyview/struct/EVCommandDefs$Event;->index:I

    move-object/from16 v0, p0

    invoke-interface {v12, v0, v13, v14}, Lcom/easyview/basecamera/ICamera$IRespondListener;->OnRespondResult(Lcom/easyview/basecamera/ICamera;II)V

    .line 353
    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/easyview/camera/EVBaseCamera;->event:Lcom/easyview/struct/EVCommandDefs$Event;

    iget-short v12, v12, Lcom/easyview/struct/EVCommandDefs$Event;->event_type:S

    const/16 v13, 0x202

    if-ne v12, v13, :cond_3

    .line 355
    invoke-static {}, Lobject/p2pipcam/utils/Pub;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Lcom/easyview/table/RecordTable;->getInstance(Landroid/content/Context;)Lcom/easyview/table/RecordTable;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lcom/easyview/camera/EVBaseCamera;->getID()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/easyview/camera/EVBaseCamera;->_eventFileID:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/easyview/camera/EVBaseCamera;->event:Lcom/easyview/struct/EVCommandDefs$Event;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v12 .. v16}, Lcom/easyview/table/RecordTable;->Save(Ljava/lang/String;ILcom/easyview/struct/EVCommandDefs$Event;Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v6, v7

    .line 357
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_0

    .end local v1    # "date":Ljava/util/Date;
    .end local v4    # "file":Ljava/io/File;
    .end local v5    # "fileName":Ljava/lang/String;
    .end local v8    # "ms":J
    .end local v10    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v11    # "up":Lstruct/StructUnpacker;
    :catch_0
    move-exception v3

    .line 358
    .local v3, "e":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 357
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "date":Ljava/util/Date;
    .restart local v4    # "file":Ljava/io/File;
    .restart local v5    # "fileName":Ljava/lang/String;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v8    # "ms":J
    .restart local v10    # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v11    # "up":Lstruct/StructUnpacker;
    :catch_1
    move-exception v3

    move-object v6, v7

    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    goto :goto_1

    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    :cond_3
    move-object v6, v7

    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_0
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
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 291
    new-instance v3, Lstruct/StructUnpacker;

    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {v3, p1, v4}, Lstruct/StructUnpacker;-><init>([BLjava/nio/ByteOrder;)V

    .line 292
    .local v3, "up":Lstruct/StructUnpacker;
    new-instance v2, Lcom/easyview/struct/EVCommandDefs$EVEventListResp;

    invoke-direct {v2}, Lcom/easyview/struct/EVCommandDefs$EVEventListResp;-><init>()V

    .line 293
    .local v2, "resp":Lcom/easyview/struct/EVCommandDefs$EVEventListResp;
    invoke-virtual {v3, v2}, Lstruct/StructUnpacker;->readObject(Ljava/lang/Object;)V

    .line 294
    const-string v4, "Event"

    const-string v5, "event list,total: %d index:%d count:%d flag:%d"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    iget v7, v2, Lcom/easyview/struct/EVCommandDefs$EVEventListResp;->total:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    iget-byte v7, v2, Lcom/easyview/struct/EVCommandDefs$EVEventListResp;->index:B

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v6, v10

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

    .line 296
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-short v4, v2, Lcom/easyview/struct/EVCommandDefs$EVEventListResp;->count:S

    if-lt v1, v4, :cond_1

    .line 302
    iget-byte v4, v2, Lcom/easyview/struct/EVCommandDefs$EVEventListResp;->endflag:B

    if-ne v4, v10, :cond_0

    .line 304
    const-string v4, "Event"

    const-string v5, "event count %d"

    new-array v6, v10, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/easyview/camera/EVBaseCamera;->_events:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    iget-object v4, p0, Lcom/easyview/camera/EVBaseCamera;->_queryEventsListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/easyview/camera/EVBaseCamera;->_queryEventsListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

    iget-object v5, p0, Lcom/easyview/camera/EVBaseCamera;->_events:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {v4, p0, v9, v5}, Lcom/easyview/basecamera/ICamera$IRespondListener;->OnRespondResult(Lcom/easyview/basecamera/ICamera;II)V

    .line 307
    :cond_0
    return-void

    .line 298
    :cond_1
    new-instance v0, Lcom/easyview/struct/EVCommandDefs$Event;

    invoke-direct {v0}, Lcom/easyview/struct/EVCommandDefs$Event;-><init>()V

    .line 299
    .local v0, "event":Lcom/easyview/struct/EVCommandDefs$Event;
    invoke-virtual {v3, v0}, Lstruct/StructUnpacker;->readObject(Ljava/lang/Object;)V

    .line 300
    iget-object v4, p0, Lcom/easyview/camera/EVBaseCamera;->_events:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 296
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private onEvents([BI)V
    .locals 9
    .param p1, "data"    # [B
    .param p2, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lstruct/StructException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 310
    if-nez p2, :cond_1

    .line 312
    const-string v4, "Event"

    const-string v5, "event count %d"

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/easyview/camera/EVBaseCamera;->_events:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    iget-object v4, p0, Lcom/easyview/camera/EVBaseCamera;->_queryEventsListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/easyview/camera/EVBaseCamera;->_queryEventsListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

    iget-object v5, p0, Lcom/easyview/camera/EVBaseCamera;->_events:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {v4, p0, v8, v5}, Lcom/easyview/basecamera/ICamera$IRespondListener;->OnRespondResult(Lcom/easyview/basecamera/ICamera;II)V

    .line 326
    :cond_0
    return-void

    .line 316
    :cond_1
    new-instance v3, Lstruct/StructUnpacker;

    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {v3, p1, v4}, Lstruct/StructUnpacker;-><init>([BLjava/nio/ByteOrder;)V

    .line 317
    .local v3, "up":Lstruct/StructUnpacker;
    div-int/lit8 v0, p2, 0x14

    .line 318
    .local v0, "count":I
    const-string v4, "Event"

    const-string v5, "onevents count:%d"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 322
    new-instance v1, Lcom/easyview/struct/EVCommandDefs$Event;

    invoke-direct {v1}, Lcom/easyview/struct/EVCommandDefs$Event;-><init>()V

    .line 323
    .local v1, "event":Lcom/easyview/struct/EVCommandDefs$Event;
    invoke-virtual {v3, v1}, Lstruct/StructUnpacker;->readObject(Ljava/lang/Object;)V

    .line 324
    iget-object v4, p0, Lcom/easyview/camera/EVBaseCamera;->_events:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 320
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public OnCustomData(I[BI)V
    .locals 6
    .param p1, "type"    # I
    .param p2, "data"    # [B
    .param p3, "len"    # I

    .prologue
    .line 165
    const-string v1, "EVNet"

    const-string v2, "OnCustomData:0x%X len:%d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    sparse-switch p1, :sswitch_data_0

    .line 266
    :goto_0
    :sswitch_0
    return-void

    .line 212
    :sswitch_1
    :try_start_0
    invoke-direct {p0, p2, p3}, Lcom/easyview/camera/EVBaseCamera;->dealEvent([BI)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 213
    :catch_0
    move-exception v0

    .line 214
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 233
    .end local v0    # "e":Ljava/io/IOException;
    :sswitch_2
    :try_start_1
    invoke-direct {p0, p2, p3}, Lcom/easyview/camera/EVBaseCamera;->dealEvents([BI)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lstruct/StructException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 234
    :catch_1
    move-exception v0

    .line 235
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 236
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 238
    .local v0, "e":Lstruct/StructException;
    invoke-virtual {v0}, Lstruct/StructException;->printStackTrace()V

    goto :goto_0

    .line 245
    .end local v0    # "e":Lstruct/StructException;
    :sswitch_3
    :try_start_2
    invoke-direct {p0, p2, p3}, Lcom/easyview/camera/EVBaseCamera;->onEvents([BI)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lstruct/StructException; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_0

    .line 246
    :catch_3
    move-exception v0

    .line 247
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 248
    .end local v0    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v0

    .line 250
    .local v0, "e":Lstruct/StructException;
    invoke-virtual {v0}, Lstruct/StructException;->printStackTrace()V

    goto :goto_0

    .line 258
    .end local v0    # "e":Lstruct/StructException;
    :sswitch_4
    :try_start_3
    invoke-direct {p0, p2, p3}, Lcom/easyview/camera/EVBaseCamera;->dealEvent([BI)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    goto :goto_0

    .line 259
    :catch_5
    move-exception v0

    .line 260
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 166
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x4 -> :sswitch_1
        0x5 -> :sswitch_2
        0x10 -> :sswitch_0
        0x102 -> :sswitch_3
        0x10a -> :sswitch_4
    .end sparse-switch
.end method

.method public OnEventNotify(IIIII)V
    .locals 7
    .param p1, "index"    # I
    .param p2, "type"    # I
    .param p3, "beginTime"    # I
    .param p4, "endTime"    # I
    .param p5, "value"    # I

    .prologue
    .line 270
    invoke-static {}, Lobject/p2pipcam/utils/Pub;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/easyview/table/EventTable;->getInstance(Landroid/content/Context;)Lcom/easyview/table/EventTable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/easyview/camera/EVBaseCamera;->getID()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/easyview/camera/EVBaseCamera;->_eventFileID:I

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/easyview/table/EventTable;->Save(Ljava/lang/String;IIIII)J

    .line 278
    return-void
.end method

.method public OnStatusNotify(I)V
    .locals 3
    .param p1, "type"    # I

    .prologue
    .line 281
    const-string v0, "EVBaseCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "OnStatusNotify:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " l:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/easyview/camera/EVBaseCamera;->_statusListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    iget-object v0, p0, Lcom/easyview/camera/EVBaseCamera;->_statusListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/easyview/camera/EVBaseCamera;->_statusListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1, p1}, Lcom/easyview/basecamera/ICamera$IRespondListener;->OnRespondResult(Lcom/easyview/basecamera/ICamera;II)V

    .line 283
    :cond_0
    return-void
.end method

.method public OnVideoData([BI)V
    .locals 1
    .param p1, "data"    # [B
    .param p2, "length"    # I

    .prologue
    .line 156
    iget-object v0, p0, Lcom/easyview/camera/EVBaseCamera;->_videoDataListener:Lcom/easyview/basecamera/ICamera$IDataListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/easyview/camera/EVBaseCamera;->_videoDataListener:Lcom/easyview/basecamera/ICamera$IDataListener;

    invoke-interface {v0, p0, p1, p2}, Lcom/easyview/basecamera/ICamera$IDataListener;->OnData(Lcom/easyview/basecamera/ICamera;[BI)V

    .line 157
    :cond_0
    return-void
.end method

.method public OnYUVData([BIII)V
    .locals 6
    .param p1, "data"    # [B
    .param p2, "len"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 160
    iget-object v0, p0, Lcom/easyview/camera/EVBaseCamera;->_yuvDataListener:Lcom/easyview/basecamera/ICamera$IYUVDataListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/easyview/camera/EVBaseCamera;->_yuvDataListener:Lcom/easyview/basecamera/ICamera$IYUVDataListener;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/easyview/basecamera/ICamera$IYUVDataListener;->OnData(Lcom/easyview/basecamera/ICamera;[BIII)V

    .line 161
    :cond_0
    return-void
.end method

.method public clearListener()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 364
    iput-object v0, p0, Lcom/easyview/camera/EVBaseCamera;->downRecordListener:Lcom/easyview/basecamera/ICamera$IDownloadListener;

    .line 365
    iput-object v0, p0, Lcom/easyview/camera/EVBaseCamera;->_queryEventInfoListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

    .line 366
    iput-object v0, p0, Lcom/easyview/camera/EVBaseCamera;->_extThresListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

    .line 367
    iput-object v0, p0, Lcom/easyview/camera/EVBaseCamera;->_extSetThresListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

    .line 368
    iput-object v0, p0, Lcom/easyview/camera/EVBaseCamera;->_searchEventsListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

    .line 369
    iput-object v0, p0, Lcom/easyview/camera/EVBaseCamera;->_getEventInfoListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

    .line 370
    iput-object v0, p0, Lcom/easyview/camera/EVBaseCamera;->_commandListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

    .line 371
    iput-object v0, p0, Lcom/easyview/camera/EVBaseCamera;->_playAudioListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

    .line 372
    iput-object v0, p0, Lcom/easyview/camera/EVBaseCamera;->_storageStateListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

    .line 373
    iput-object v0, p0, Lcom/easyview/camera/EVBaseCamera;->_queryEventsListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

    .line 374
    iput-object v0, p0, Lcom/easyview/camera/EVBaseCamera;->_queryEventListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

    .line 375
    return-void
.end method

.method public getAlarm()Lcom/easyview/bean/AlermBean;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/easyview/camera/EVBaseCamera;->_alermBean:Lcom/easyview/bean/AlermBean;

    return-object v0
.end method

.method public getDeviceInfo()Lcom/easyview/struct/EVCommandDefs$DeviceInfoParam;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/easyview/camera/EVBaseCamera;->DevInfoParam:Lcom/easyview/struct/EVCommandDefs$DeviceInfoParam;

    return-object v0
.end method

.method public getEventDetailList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lobject/p2pipcam/bean/EventDetailBean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 125
    iget-object v0, p0, Lcom/easyview/camera/EVBaseCamera;->_listEventDetail:Ljava/util/List;

    return-object v0
.end method

.method public getEventIndex()I
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Lcom/easyview/camera/EVBaseCamera;->_eventIndex:I

    return v0
.end method

.method public getEventTime()I
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Lcom/easyview/camera/EVBaseCamera;->_eventTime:I

    return v0
.end method

.method public getPicturePath(Lcom/easyview/struct/EVCommandDefs$Event;)Ljava/lang/String;
    .locals 11
    .param p1, "event"    # Lcom/easyview/struct/EVCommandDefs$Event;

    .prologue
    .line 75
    invoke-static {}, Lobject/p2pipcam/utils/Pub;->photoSavePathFile()Ljava/io/File;

    move-result-object v1

    .line 76
    .local v1, "div":Ljava/io/File;
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 77
    .local v0, "date":Ljava/util/Date;
    iget v7, p1, Lcom/easyview/struct/EVCommandDefs$Event;->event_time:I

    int-to-long v4, v7

    .line 78
    .local v4, "ms":J
    const-wide/16 v7, 0x3e8

    mul-long/2addr v4, v7

    .line 79
    invoke-virtual {v0, v4, v5}, Ljava/util/Date;->setTime(J)V

    .line 80
    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v7, "yyyyMMddHHmmss"

    invoke-direct {v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 81
    .local v6, "sdf":Ljava/text/SimpleDateFormat;
    const-string v7, "%04d_%s.jpg"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-short v10, p1, Lcom/easyview/struct/EVCommandDefs$Event;->event_type:S

    invoke-static {v10}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-virtual {v6, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 82
    .local v3, "fileName":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 83
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method public getQuality()I
    .locals 1

    .prologue
    .line 133
    iget v0, p0, Lcom/easyview/camera/EVBaseCamera;->_quality:I

    return v0
.end method

.method public haveStorage()Z
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/easyview/camera/EVBaseCamera;->_storageStateStruct:Lcom/easyview/struct/EVCommandDefs$StorageStateStruct;

    iget v0, v0, Lcom/easyview/struct/EVCommandDefs$StorageStateStruct;->total_bytes:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 94
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLowMemory(I)Z
    .locals 2
    .param p1, "bytes"    # I

    .prologue
    const/4 v0, 0x0

    .line 98
    iget-object v1, p0, Lcom/easyview/camera/EVBaseCamera;->_storageStateStruct:Lcom/easyview/struct/EVCommandDefs$StorageStateStruct;

    iget v1, v1, Lcom/easyview/struct/EVCommandDefs$StorageStateStruct;->total_bytes:I

    if-nez v1, :cond_1

    .line 100
    :cond_0
    :goto_0
    return v0

    .line 99
    :cond_1
    iget-object v1, p0, Lcom/easyview/camera/EVBaseCamera;->_storageStateStruct:Lcom/easyview/struct/EVCommandDefs$StorageStateStruct;

    iget v1, v1, Lcom/easyview/struct/EVCommandDefs$StorageStateStruct;->remain_bytes:I

    if-gt v1, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isLowPower()Z
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/easyview/camera/EVBaseCamera;->_storageStateStruct:Lcom/easyview/struct/EVCommandDefs$StorageStateStruct;

    iget v0, v0, Lcom/easyview/struct/EVCommandDefs$StorageStateStruct;->power_val:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 105
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStartVideo()Z
    .locals 1

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/easyview/camera/EVBaseCamera;->_isStartVideo:Z

    return v0
.end method

.method public onDeviceState(II)V
    .locals 3
    .param p1, "state"    # I
    .param p2, "quality"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 145
    iput p2, p0, Lcom/easyview/camera/EVBaseCamera;->_quality:I

    .line 146
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/easyview/camera/EVBaseCamera;->_isRecording:Z

    .line 149
    :goto_0
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/easyview/camera/EVBaseCamera;->_storageStateStruct:Lcom/easyview/struct/EVCommandDefs$StorageStateStruct;

    iput v2, v0, Lcom/easyview/struct/EVCommandDefs$StorageStateStruct;->power_val:I

    .line 152
    :goto_1
    iget-object v0, p0, Lcom/easyview/camera/EVBaseCamera;->_deviceStateListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/easyview/camera/EVBaseCamera;->_deviceStateListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

    invoke-interface {v0, p0, v1, p1}, Lcom/easyview/basecamera/ICamera$IRespondListener;->OnRespondResult(Lcom/easyview/basecamera/ICamera;II)V

    .line 153
    :cond_0
    return-void

    .line 147
    :cond_1
    iput-boolean v2, p0, Lcom/easyview/camera/EVBaseCamera;->_isRecording:Z

    goto :goto_0

    .line 150
    :cond_2
    iget-object v0, p0, Lcom/easyview/camera/EVBaseCamera;->_storageStateStruct:Lcom/easyview/struct/EVCommandDefs$StorageStateStruct;

    iput v1, v0, Lcom/easyview/struct/EVCommandDefs$StorageStateStruct;->power_val:I

    goto :goto_1
.end method

.method public setDeviceStateListener(Lcom/easyview/basecamera/ICamera$IRespondListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/easyview/basecamera/ICamera$IRespondListener;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/easyview/camera/EVBaseCamera;->_deviceStateListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

    .line 130
    return-void
.end method

.method public setEventTime(I)V
    .locals 0
    .param p1, "time"    # I

    .prologue
    .line 117
    iput p1, p0, Lcom/easyview/camera/EVBaseCamera;->_eventTime:I

    .line 118
    return-void
.end method

.method public setStatusListener(Lcom/easyview/basecamera/ICamera$IRespondListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/easyview/basecamera/ICamera$IRespondListener;

    .prologue
    .line 286
    iput-object p1, p0, Lcom/easyview/camera/EVBaseCamera;->_statusListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

    .line 287
    return-void
.end method

.method public setStorageMemory(II)V
    .locals 1
    .param p1, "total"    # I
    .param p2, "free"    # I

    .prologue
    .line 87
    iget-object v0, p0, Lcom/easyview/camera/EVBaseCamera;->_storageStateStruct:Lcom/easyview/struct/EVCommandDefs$StorageStateStruct;

    iput p1, v0, Lcom/easyview/struct/EVCommandDefs$StorageStateStruct;->total_bytes:I

    .line 88
    iget-object v0, p0, Lcom/easyview/camera/EVBaseCamera;->_storageStateStruct:Lcom/easyview/struct/EVCommandDefs$StorageStateStruct;

    iput p2, v0, Lcom/easyview/struct/EVCommandDefs$StorageStateStruct;->remain_bytes:I

    .line 89
    return-void
.end method
