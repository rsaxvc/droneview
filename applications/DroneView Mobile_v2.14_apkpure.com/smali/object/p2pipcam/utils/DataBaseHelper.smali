.class public Lobject/p2pipcam/utils/DataBaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DataBaseHelper.java"


# static fields
.field public static final ALARM_BOOT:Ljava/lang/String; = "bootAlarm"

.field public static final ALARM_COUNT:Ljava/lang/String; = "alarmCount"

.field public static final ALARM_MESSAGE:Ljava/lang/String; = "messageAlarm"

.field public static final ALARM_MOTION:Ljava/lang/String; = "motionAlarm"

.field public static final ALARM_TIME:Ljava/lang/String; = "alarmTime"

.field public static final ALARM_TYPE:Ljava/lang/String; = "alarmType"

.field public static final ALARM_VISITOR:Ljava/lang/String; = "visitorAlarm"

.field private static final CREATE_ALARMCOUNT_TABLE:Ljava/lang/String;

.field private static final CREATE_ALARMLOG_TABLE:Ljava/lang/String; = "create table alarmlog(id integer primary key autoincrement, did text not null, content text not null, createtime text not null);"

.field private static final CREATE_ALARMTYPENUM_TABLE:Ljava/lang/String; = "create table alarmtypenum(id integer primary key autoincrement, did text not null, motionAlarm text not null, visitorAlarm text not null, messageAlarm text not null, bootAlarm text not null);"

.field private static final CREATE_FIRSTPIC_TABLE:Ljava/lang/String; = "create table firstpic(id integer primary key autoincrement,did text not null, filepath text not null)"

.field private static final CREATE_STUDENT_TABLE:Ljava/lang/String; = "create table cameralist (id integer primary key autoincrement, name text not null, did text not null, user text not null,pwd text);"

.field private static final CREATE_VIDEO_PICTURE_TABLE:Ljava/lang/String; = "create table cameravidpic(id integer primary key autoincrement, did text not null, filepath text not null, createtime text not null, type text not null);"

.field private static final CREATE_WIFI_TABLE:Ljava/lang/String; = "create table wifilist (id integer primary key autoincrement,, ssid VARCHAR, password VARCHAR);"

.field private static final DATABASE_ALARMCOUNT_TABLE:Ljava/lang/String; = "alarmcount"

.field private static final DATABASE_ALARMLOG_TABLE:Ljava/lang/String; = "alarmlog"

.field private static final DATABASE_ALARMTYPENUM_TABLE:Ljava/lang/String; = "alarmtypenum"

.field private static final DATABASE_FIRSTPIC_TABLE:Ljava/lang/String; = "firstpic"

.field private static final DATABASE_NAME:Ljava/lang/String; = "p2p_camera_database"

.field private static final DATABASE_TABLE:Ljava/lang/String; = "cameralist"

.field private static final DATABASE_VERSION:I = 0x4

.field private static final DATABASE_WIFI_TABLE:Ljava/lang/String; = "wifilist"

.field private static final DATABASW_VIDEOPICTURE_TABLE:Ljava/lang/String; = "cameravidpic"

.field public static final HAVE_PICTURE:Ljava/lang/String; = "haveRecord"

.field public static final HAVE_RECORD:Ljava/lang/String; = "haveRecord"

.field public static final KEY_ALARMLOG_CONTENT:Ljava/lang/String; = "content"

.field public static final KEY_CREATETIME:Ljava/lang/String; = "createtime"

.field public static final KEY_DID:Ljava/lang/String; = "did"

.field public static final KEY_FILEPATH:Ljava/lang/String; = "filepath"

.field public static final KEY_ID:Ljava/lang/String; = "id"

.field public static final KEY_NAME:Ljava/lang/String; = "name"

.field public static final KEY_PWD:Ljava/lang/String; = "pwd"

.field public static final KEY_TYPE:Ljava/lang/String; = "type"

.field public static final KEY_USER:Ljava/lang/String; = "user"

.field public static final PICTURE_PATH:Ljava/lang/String; = "picturePath"

.field public static final TYPE_PICTURE:Ljava/lang/String; = "picture"

.field public static final TYPE_VIDEO:Ljava/lang/String; = "video"

.field private static _helper:Lobject/p2pipcam/utils/DataBaseHelper;


# instance fields
.field private TAG:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private db:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 35
    const/4 v0, 0x0

    sput-object v0, Lobject/p2pipcam/utils/DataBaseHelper;->_helper:Lobject/p2pipcam/utils/DataBaseHelper;

    .line 106
    const-string v0, "create table %s (%s text not null,%s int,%s int,constraint pk_t2 primary key (%s,%s));"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 107
    const-string v3, "alarmcount"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "did"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "alarmType"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    .line 108
    const-string v3, "alarmCount"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "did"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "alarmType"

    aput-object v3, v1, v2

    .line 106
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 105
    sput-object v0, Lobject/p2pipcam/utils/DataBaseHelper;->CREATE_ALARMCOUNT_TABLE:Ljava/lang/String;

    .line 144
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 159
    const-string v0, "p2p_camera_database"

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 25
    const-string v0, "DataBaseHelper"

    iput-object v0, p0, Lobject/p2pipcam/utils/DataBaseHelper;->TAG:Ljava/lang/String;

    .line 160
    return-void
.end method

.method public static SaveEvent(Landroid/content/Context;Ljava/lang/String;IIIII)J
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "did"    # Ljava/lang/String;
    .param p2, "fileID"    # I
    .param p3, "eventIndex"    # I
    .param p4, "eventType"    # I
    .param p5, "eventTime"    # I
    .param p6, "value"    # I

    .prologue
    .line 373
    new-instance v8, Lobject/p2pipcam/utils/DataBaseHelper;

    invoke-direct {v8, p0}, Lobject/p2pipcam/utils/DataBaseHelper;-><init>(Landroid/content/Context;)V

    .line 374
    .local v8, "helper":Lobject/p2pipcam/utils/DataBaseHelper;
    invoke-virtual {v8}, Lobject/p2pipcam/utils/DataBaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    .line 375
    .local v7, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v7}, Lcom/easyview/table/EventTable;->getInstance(Landroid/database/sqlite/SQLiteDatabase;)Lcom/easyview/table/EventTable;

    move-result-object v0

    .local v0, "table":Lcom/easyview/table/EventTable;
    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    .line 376
    invoke-virtual/range {v0 .. v6}, Lcom/easyview/table/EventTable;->Save(Ljava/lang/String;IIIII)J

    move-result-wide v9

    .line 377
    .local v9, "result":J
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 378
    return-wide v9
.end method

.method public static getCamera(Landroid/content/Context;Ljava/lang/String;)Lcom/easyview/basecamera/BaseCamera;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "did"    # Ljava/lang/String;

    .prologue
    .line 328
    new-instance v9, Lobject/p2pipcam/utils/DataBaseHelper;

    invoke-direct {v9, p0}, Lobject/p2pipcam/utils/DataBaseHelper;-><init>(Landroid/content/Context;)V

    .line 329
    .local v9, "helper":Lobject/p2pipcam/utils/DataBaseHelper;
    invoke-virtual {v9}, Lobject/p2pipcam/utils/DataBaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 330
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v4, v1

    .line 331
    .local v4, "args":[Ljava/lang/String;
    const-string v1, "cameralist"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "id"

    aput-object v5, v2, v3

    const/4 v3, 0x1

    const-string v5, "name"

    aput-object v5, v2, v3

    const/4 v3, 0x2

    .line 332
    const-string v5, "did"

    aput-object v5, v2, v3

    const/4 v3, 0x3

    const-string v5, "user"

    aput-object v5, v2, v3

    const/4 v3, 0x4

    const-string v5, "pwd"

    aput-object v5, v2, v3

    const-string v3, "did=?"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 331
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 333
    .local v8, "cursor":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 334
    const/4 v1, 0x1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 335
    .local v10, "name":Ljava/lang/String;
    const/4 v1, 0x3

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 336
    .local v12, "user":Ljava/lang/String;
    const/4 v1, 0x4

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 337
    .local v11, "pwd":Ljava/lang/String;
    invoke-static {p0}, Lobject/p2pipcam/utils/Pub;->isBell(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 339
    invoke-static {p0}, Lobject/p2pipcam/utils/Pub;->getCameraUser(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    .line 341
    :cond_0
    invoke-static {}, Lcom/easyview/camera/CameraList;->GetInstance()Lcom/easyview/camera/CameraList;

    move-result-object v1

    invoke-virtual {v1, v10, p1, v12, v11}, Lcom/easyview/camera/CameraList;->Add(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 343
    .end local v10    # "name":Ljava/lang/String;
    .end local v11    # "pwd":Ljava/lang/String;
    .end local v12    # "user":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 344
    invoke-static {}, Lcom/easyview/camera/CameraList;->GetInstance()Lcom/easyview/camera/CameraList;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/easyview/camera/CameraList;->getCamera(Ljava/lang/String;)Lcom/easyview/basecamera/BaseCamera;

    move-result-object v1

    return-object v1
.end method

.method public static getCameras(Landroid/content/Context;)Ljava/util/List;
    .locals 17
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/easyview/ppcs/PPCSCamera;",
            ">;"
        }
    .end annotation

    .prologue
    .line 349
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 351
    .local v10, "cameras":Ljava/util/List;, "Ljava/util/List<Lcom/easyview/ppcs/PPCSCamera;>;"
    new-instance v13, Lobject/p2pipcam/utils/DataBaseHelper;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lobject/p2pipcam/utils/DataBaseHelper;-><init>(Landroid/content/Context;)V

    .line 352
    .local v13, "helper":Lobject/p2pipcam/utils/DataBaseHelper;
    invoke-virtual {v13}, Lobject/p2pipcam/utils/DataBaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 353
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "cameralist"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "id"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "name"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    .line 354
    const-string v5, "did"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string v5, "user"

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string v5, "pwd"

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 353
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 355
    .local v11, "cursor":Landroid/database/Cursor;
    :goto_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 367
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 368
    return-object v10

    .line 356
    :cond_0
    const/4 v2, 0x1

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 357
    .local v14, "name":Ljava/lang/String;
    const/4 v2, 0x2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 358
    .local v12, "did":Ljava/lang/String;
    const/4 v2, 0x3

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 359
    .local v16, "user":Ljava/lang/String;
    const/4 v2, 0x4

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 360
    .local v15, "pwd":Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Lobject/p2pipcam/utils/Pub;->isBell(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 362
    invoke-static/range {p0 .. p0}, Lobject/p2pipcam/utils/Pub;->getCameraUser(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v16

    .line 364
    :cond_1
    new-instance v9, Lcom/easyview/ppcs/PPCSCamera;

    move-object/from16 v0, v16

    invoke-direct {v9, v14, v12, v0, v15}, Lcom/easyview/ppcs/PPCSCamera;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    .local v9, "camera":Lcom/easyview/ppcs/PPCSCamera;
    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static getInstance()Lobject/p2pipcam/utils/DataBaseHelper;
    .locals 1

    .prologue
    .line 156
    sget-object v0, Lobject/p2pipcam/utils/DataBaseHelper;->_helper:Lobject/p2pipcam/utils/DataBaseHelper;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lobject/p2pipcam/utils/DataBaseHelper;
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 147
    sget-object v0, Lobject/p2pipcam/utils/DataBaseHelper;->_helper:Lobject/p2pipcam/utils/DataBaseHelper;

    if-nez v0, :cond_0

    .line 149
    new-instance v0, Lobject/p2pipcam/utils/DataBaseHelper;

    invoke-direct {v0, p0}, Lobject/p2pipcam/utils/DataBaseHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lobject/p2pipcam/utils/DataBaseHelper;->_helper:Lobject/p2pipcam/utils/DataBaseHelper;

    .line 150
    sget-object v0, Lobject/p2pipcam/utils/DataBaseHelper;->_helper:Lobject/p2pipcam/utils/DataBaseHelper;

    sget-object v1, Lobject/p2pipcam/utils/DataBaseHelper;->_helper:Lobject/p2pipcam/utils/DataBaseHelper;

    invoke-virtual {v1}, Lobject/p2pipcam/utils/DataBaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, v0, Lobject/p2pipcam/utils/DataBaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 152
    :cond_0
    sget-object v0, Lobject/p2pipcam/utils/DataBaseHelper;->_helper:Lobject/p2pipcam/utils/DataBaseHelper;

    return-object v0
.end method

.method public static incAlarmCount(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;I)V
    .locals 9
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "did"    # Ljava/lang/String;
    .param p2, "alarmType"    # I

    .prologue
    const/4 v8, 0x0

    .line 608
    invoke-static {p0, p1, p2}, Lobject/p2pipcam/utils/DataBaseHelper;->queryAlarmCount(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;I)I

    move-result v1

    .line 609
    .local v1, "count":I
    add-int/lit8 v0, v1, 0x1

    .line 610
    .local v0, "alarm_count":I
    if-nez v0, :cond_0

    .line 611
    const/4 v0, 0x1

    .line 612
    :cond_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 613
    .local v2, "values":Landroid/content/ContentValues;
    const-string v4, "did"

    invoke-virtual {v2, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    const-string v4, "alarmType"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 615
    const-string v4, "alarmCount"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 616
    const/4 v4, -0x1

    if-ne v1, v4, :cond_1

    .line 618
    const-string v4, "alarmcount"

    invoke-virtual {p0, v4, v8, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 624
    :goto_0
    return-void

    .line 620
    :cond_1
    const-string v4, "%s = \'%s\' and %s = %d"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 621
    const-string v7, "did"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    const/4 v6, 0x2

    const-string v7, "alarmType"

    aput-object v7, v5, v6

    const/4 v6, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    .line 620
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 622
    .local v3, "whereClause":Ljava/lang/String;
    const-string v4, "alarmcount"

    invoke-virtual {p0, v4, v2, v3, v8}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static queryAlarmCount(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;I)I
    .locals 8
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "did"    # Ljava/lang/String;
    .param p2, "alarmType"    # I

    .prologue
    const/4 v7, 0x0

    .line 587
    const-string v3, "select %s from %s where %s = \'%s\' and %s = %d"

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "alarmCount"

    aput-object v5, v4, v7

    const/4 v5, 0x1

    .line 588
    const-string v6, "alarmcount"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "did"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    aput-object p1, v4, v5

    const/4 v5, 0x4

    const-string v6, "alarmType"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    .line 586
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 589
    .local v2, "sql":Ljava/lang/String;
    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 590
    .local v1, "cursor":Landroid/database/Cursor;
    const/4 v0, -0x1

    .line 591
    .local v0, "count":I
    if-eqz v1, :cond_1

    .line 592
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 593
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 595
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 597
    :cond_1
    return v0
.end method


# virtual methods
.method public addFirstpic(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "did"    # Ljava/lang/String;
    .param p2, "filepath"    # Ljava/lang/String;

    .prologue
    .line 627
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 628
    .local v0, "initialValues":Landroid/content/ContentValues;
    const-string v1, "did"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    const-string v1, "filepath"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    iget-object v1, p0, Lobject/p2pipcam/utils/DataBaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "firstpic"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public clearAlarmCount(Ljava/lang/String;)Z
    .locals 6
    .param p1, "did"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 601
    iget-object v2, p0, Lobject/p2pipcam/utils/DataBaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "alarmcount"

    const-string v4, "did=? "

    .line 602
    new-array v5, v0, [Ljava/lang/String;

    aput-object p1, v5, v1

    .line 601
    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 258
    const/4 v0, 0x0

    sput-object v0, Lobject/p2pipcam/utils/DataBaseHelper;->_helper:Lobject/p2pipcam/utils/DataBaseHelper;

    .line 259
    iget-object v0, p0, Lobject/p2pipcam/utils/DataBaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 260
    return-void
.end method

.method public createCamera(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "did"    # Ljava/lang/String;
    .param p3, "user"    # Ljava/lang/String;
    .param p4, "pwd"    # Ljava/lang/String;

    .prologue
    .line 272
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 273
    .local v0, "initialValues":Landroid/content/ContentValues;
    const-string v1, "name"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    const-string v1, "did"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    const-string v1, "user"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    const-string v1, "pwd"

    invoke-virtual {v0, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    iget-object v1, p0, Lobject/p2pipcam/utils/DataBaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "cameralist"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    return-wide v1
.end method

.method public createCameraAlarm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .locals 4
    .param p1, "did"    # Ljava/lang/String;
    .param p2, "motionalarm"    # Ljava/lang/String;
    .param p3, "visitoralarm"    # Ljava/lang/String;
    .param p4, "messagealarm"    # Ljava/lang/String;
    .param p5, "bootalarm"    # Ljava/lang/String;

    .prologue
    .line 395
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 396
    .local v0, "initialValues":Landroid/content/ContentValues;
    const-string v1, "did"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    const-string v1, "motionAlarm"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    const-string v1, "visitorAlarm"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    const-string v1, "messageAlarm"

    invoke-virtual {v0, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    const-string v1, "bootAlarm"

    invoke-virtual {v0, v1, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    iget-object v1, p0, Lobject/p2pipcam/utils/DataBaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "alarmtypenum"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    return-wide v1
.end method

.method public createVideoOrPic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .locals 4
    .param p1, "did"    # Ljava/lang/String;
    .param p2, "filepath"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "createtime"    # Ljava/lang/String;

    .prologue
    .line 469
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 470
    .local v0, "initialValues":Landroid/content/ContentValues;
    const-string v1, "did"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    const-string v1, "filepath"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    const-string v1, "type"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    const-string v1, "createtime"

    invoke-virtual {v0, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    iget-object v1, p0, Lobject/p2pipcam/utils/DataBaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "cameravidpic"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    return-wide v1
.end method

.method public delAlarmLog(Ljava/lang/String;)Z
    .locals 6
    .param p1, "did"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 566
    iget-object v2, p0, Lobject/p2pipcam/utils/DataBaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "alarmlog"

    const-string v4, "did=? "

    .line 567
    new-array v5, v0, [Ljava/lang/String;

    aput-object p1, v5, v1

    .line 566
    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public delAlarmLog(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "did"    # Ljava/lang/String;
    .param p2, "createtime"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 561
    iget-object v2, p0, Lobject/p2pipcam/utils/DataBaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "alarmlog"

    const-string v4, "did=? and createtime=?"

    .line 562
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    aput-object p1, v5, v1

    aput-object p2, v5, v0

    .line 561
    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public deldteAllVideoPicture(Ljava/lang/String;)Z
    .locals 6
    .param p1, "did"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 532
    iget-object v2, p0, Lobject/p2pipcam/utils/DataBaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "cameravidpic"

    const-string v4, "did=?"

    .line 533
    new-array v5, v0, [Ljava/lang/String;

    aput-object p1, v5, v1

    .line 532
    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public deleteAllVideoOrPicture(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "did"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 524
    iget-object v2, p0, Lobject/p2pipcam/utils/DataBaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "cameravidpic"

    const-string v4, "did=? and type=?"

    .line 525
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    aput-object p1, v5, v1

    aput-object p2, v5, v0

    .line 524
    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public deleteCamera(J)Z
    .locals 4
    .param p1, "rowId"    # J

    .prologue
    .line 287
    iget-object v0, p0, Lobject/p2pipcam/utils/DataBaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "cameralist"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public deleteCamera(Ljava/lang/String;)Z
    .locals 9
    .param p1, "did"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 295
    iget-object v4, p0, Lobject/p2pipcam/utils/DataBaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "firstpic"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "did=\'"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 296
    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 295
    invoke-virtual {v4, v5, v6, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 298
    .local v0, "count1":I
    iget-object v4, p0, Lobject/p2pipcam/utils/DataBaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "cameravidpic"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "did=\'"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 299
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 298
    invoke-virtual {v4, v5, v6, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 301
    .local v1, "count2":I
    iget-object v4, p0, Lobject/p2pipcam/utils/DataBaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "alarmlog"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "did=\'"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 302
    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 301
    invoke-virtual {v4, v5, v6, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 303
    .local v3, "delete":I
    iget-object v4, p0, Lobject/p2pipcam/utils/DataBaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "alarmtypenum"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "did=\'"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 304
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 303
    invoke-virtual {v4, v5, v6, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 307
    .local v2, "count3":I
    iget-object v4, p0, Lobject/p2pipcam/utils/DataBaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "cameralist"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "did=\'"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public deleteVideoOrPicture(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1, "did"    # Ljava/lang/String;
    .param p2, "filePath"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 514
    iget-object v2, p0, Lobject/p2pipcam/utils/DataBaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "cameravidpic"

    const-string v4, "did=? and filepath=? and type=?"

    .line 515
    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    .line 516
    aput-object p1, v5, v1

    aput-object p2, v5, v0

    const/4 v6, 0x2

    aput-object p3, v5, v6

    .line 514
    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public fetchAllAlarmCameras()Landroid/database/Cursor;
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 387
    iget-object v0, p0, Lobject/p2pipcam/utils/DataBaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "alarmtypenum"

    .line 388
    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "id"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "did"

    aput-object v5, v2, v4

    const/4 v4, 0x2

    const-string v5, "motionAlarm"

    aput-object v5, v2, v4

    const/4 v4, 0x3

    const-string v5, "visitorAlarm"

    aput-object v5, v2, v4

    const/4 v4, 0x4

    .line 389
    const-string v5, "messageAlarm"

    aput-object v5, v2, v4

    const/4 v4, 0x5

    const-string v5, "bootAlarm"

    aput-object v5, v2, v4

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    .line 387
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public fetchAllCameras()Landroid/database/Cursor;
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 316
    iget-object v0, p0, Lobject/p2pipcam/utils/DataBaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "cameralist"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "id"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "name"

    aput-object v5, v2, v4

    const/4 v4, 0x2

    .line 317
    const-string v5, "did"

    aput-object v5, v2, v4

    const/4 v4, 0x3

    const-string v5, "user"

    aput-object v5, v2, v4

    const/4 v4, 0x4

    const-string v5, "pwd"

    aput-object v5, v2, v4

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    .line 316
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public fetchCamera(J)Landroid/database/Cursor;
    .locals 11
    .param p1, "id"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 423
    iget-object v0, p0, Lobject/p2pipcam/utils/DataBaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "cameralist"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v6, "id"

    aput-object v6, v3, v4

    .line 424
    const-string v4, "name"

    aput-object v4, v3, v1

    const/4 v4, 0x2

    const-string v6, "did"

    aput-object v6, v3, v4

    const/4 v4, 0x3

    const-string v6, "user"

    aput-object v6, v3, v4

    const/4 v4, 0x4

    const-string v6, "pwd"

    aput-object v6, v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "id="

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v6, v5

    move-object v7, v5

    move-object v8, v5

    move-object v9, v5

    .line 423
    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 426
    .local v10, "mCursor":Landroid/database/Cursor;
    if-eqz v10, :cond_0

    .line 427
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 429
    :cond_0
    return-object v10
.end method

.method public fetchCamera(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .param p1, "did"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 321
    new-array v4, v7, [Ljava/lang/String;

    aput-object p1, v4, v6

    .line 322
    .local v4, "args":[Ljava/lang/String;
    iget-object v0, p0, Lobject/p2pipcam/utils/DataBaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "cameralist"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "id"

    aput-object v3, v2, v6

    const-string v3, "name"

    aput-object v3, v2, v7

    const/4 v3, 0x2

    .line 323
    const-string v6, "did"

    aput-object v6, v2, v3

    const/4 v3, 0x3

    const-string v6, "user"

    aput-object v6, v2, v3

    const/4 v3, 0x4

    const-string v6, "pwd"

    aput-object v6, v2, v3

    const-string v3, "did=?"

    move-object v6, v5

    move-object v7, v5

    .line 322
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lobject/p2pipcam/utils/DataBaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method public getEventIndexTable()Lcom/easyview/table/EventIndexTable;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lobject/p2pipcam/utils/DataBaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0}, Lcom/easyview/table/EventIndexTable;->getInstance(Landroid/database/sqlite/SQLiteDatabase;)Lcom/easyview/table/EventIndexTable;

    move-result-object v0

    return-object v0
.end method

.method public getEventTable()Lcom/easyview/table/EventTable;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lobject/p2pipcam/utils/DataBaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0}, Lcom/easyview/table/EventTable;->getInstance(Landroid/database/sqlite/SQLiteDatabase;)Lcom/easyview/table/EventTable;

    move-result-object v0

    return-object v0
.end method

.method public getRecordTable()Lcom/easyview/table/RecordTable;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lobject/p2pipcam/utils/DataBaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0}, Lcom/easyview/table/RecordTable;->getInstance(Landroid/database/sqlite/SQLiteDatabase;)Lcom/easyview/table/RecordTable;

    move-result-object v0

    return-object v0
.end method

.method public insertAlarmLogToDB(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .locals 4
    .param p1, "did"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;
    .param p3, "createTime"    # Ljava/lang/String;

    .prologue
    .line 540
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 541
    .local v0, "initialValues":Landroid/content/ContentValues;
    const-string v1, "did"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    const-string v1, "content"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    const-string v1, "createtime"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    iget-object v1, p0, Lobject/p2pipcam/utils/DataBaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "alarmlog"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    return-wide v1
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 164
    iget-object v0, p0, Lobject/p2pipcam/utils/DataBaseHelper;->TAG:Ljava/lang/String;

    const-string v1, "Creating student_table: create table cameralist (id integer primary key autoincrement, name text not null, did text not null, user text not null,pwd text);"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object v0, p0, Lobject/p2pipcam/utils/DataBaseHelper;->TAG:Ljava/lang/String;

    const-string v1, "Creating Video_Picture_Table: create table cameravidpic(id integer primary key autoincrement, did text not null, filepath text not null, createtime text not null, type text not null);"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget-object v0, p0, Lobject/p2pipcam/utils/DataBaseHelper;->TAG:Ljava/lang/String;

    const-string v1, "Creating alarmlog_table: create table alarmlog(id integer primary key autoincrement, did text not null, content text not null, createtime text not null);"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget-object v0, p0, Lobject/p2pipcam/utils/DataBaseHelper;->TAG:Ljava/lang/String;

    const-string v1, "Creating Firstpic_tablecreate table firstpic(id integer primary key autoincrement,did text not null, filepath text not null)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iget-object v0, p0, Lobject/p2pipcam/utils/DataBaseHelper;->TAG:Ljava/lang/String;

    const-string v1, "CREATE_ALARMTYPENUM_TABLE == create table alarmtypenum(id integer primary key autoincrement, did text not null, motionAlarm text not null, visitorAlarm text not null, messageAlarm text not null, bootAlarm text not null);"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    const-string v0, "create table cameralist (id integer primary key autoincrement, name text not null, did text not null, user text not null,pwd text);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 173
    const-string v0, "create table cameravidpic(id integer primary key autoincrement, did text not null, filepath text not null, createtime text not null, type text not null);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 174
    const-string v0, "create table alarmlog(id integer primary key autoincrement, did text not null, content text not null, createtime text not null);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 175
    const-string v0, "create table firstpic(id integer primary key autoincrement,did text not null, filepath text not null)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 176
    const-string v0, "create table alarmtypenum(id integer primary key autoincrement, did text not null, motionAlarm text not null, visitorAlarm text not null, messageAlarm text not null, bootAlarm text not null);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 177
    sget-object v0, Lobject/p2pipcam/utils/DataBaseHelper;->CREATE_ALARMCOUNT_TABLE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 179
    invoke-static {p1}, Lcom/easyview/table/EventTable;->getInstance(Landroid/database/sqlite/SQLiteDatabase;)Lcom/easyview/table/EventTable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easyview/table/EventTable;->CreateTable()V

    .line 180
    invoke-static {p1}, Lcom/easyview/table/RecordTable;->getInstance(Landroid/database/sqlite/SQLiteDatabase;)Lcom/easyview/table/RecordTable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easyview/table/RecordTable;->CreateTable()V

    .line 181
    invoke-static {p1}, Lcom/easyview/table/EventIndexTable;->getInstance(Landroid/database/sqlite/SQLiteDatabase;)Lcom/easyview/table/EventIndexTable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easyview/table/EventIndexTable;->CreateTable()V

    .line 182
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 190
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 193
    :cond_0
    :goto_0
    if-ne p2, p3, :cond_1

    .line 212
    :try_start_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 219
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 242
    :goto_1
    return-void

    .line 195
    :cond_1
    const/4 v1, 0x1

    if-ne p2, v1, :cond_2

    .line 197
    :try_start_1
    invoke-static {p1}, Lcom/easyview/table/EventTable;->getInstance(Landroid/database/sqlite/SQLiteDatabase;)Lcom/easyview/table/EventTable;

    move-result-object v1

    invoke-virtual {v1}, Lcom/easyview/table/EventTable;->UpgradeToVersion2()V

    .line 198
    add-int/lit8 p2, p2, 0x1

    .line 200
    :cond_2
    const/4 v1, 0x2

    if-ne p2, v1, :cond_3

    .line 202
    invoke-static {p1}, Lcom/easyview/table/EventTable;->getInstance(Landroid/database/sqlite/SQLiteDatabase;)Lcom/easyview/table/EventTable;

    move-result-object v1

    invoke-virtual {v1}, Lcom/easyview/table/EventTable;->UpgradeToVersion3()V

    .line 203
    invoke-static {p1}, Lcom/easyview/table/RecordTable;->getInstance(Landroid/database/sqlite/SQLiteDatabase;)Lcom/easyview/table/RecordTable;

    move-result-object v1

    invoke-virtual {v1}, Lcom/easyview/table/RecordTable;->UpgradeToVersion3()V

    .line 204
    add-int/lit8 p2, p2, 0x1

    .line 206
    :cond_3
    const/4 v1, 0x3

    if-ne p2, v1, :cond_0

    .line 208
    invoke-static {p1}, Lcom/easyview/table/EventIndexTable;->getInstance(Landroid/database/sqlite/SQLiteDatabase;)Lcom/easyview/table/EventIndexTable;

    move-result-object v1

    invoke-virtual {v1}, Lcom/easyview/table/EventIndexTable;->UpgradeToVersion4()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 209
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 214
    :catch_0
    move-exception v0

    .line 216
    .local v0, "ex":Ljava/lang/Throwable;
    :try_start_2
    iget-object v1, p0, Lobject/p2pipcam/utils/DataBaseHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 219
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_1

    .line 218
    .end local v0    # "ex":Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    .line 219
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 220
    throw v1
.end method

.method public queryAlarmCount(Ljava/lang/String;)I
    .locals 8
    .param p1, "did"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 571
    const-string v3, "select SUM(%s) from %s where %s = \'%s\'"

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    .line 572
    const-string v5, "alarmCount"

    aput-object v5, v4, v7

    const/4 v5, 0x1

    const-string v6, "alarmcount"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "did"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    aput-object p1, v4, v5

    const/4 v5, 0x4

    .line 573
    const-string v6, "alarmType"

    aput-object v6, v4, v5

    .line 571
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 574
    .local v2, "sql":Ljava/lang/String;
    iget-object v3, p0, Lobject/p2pipcam/utils/DataBaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 575
    .local v1, "cursor":Landroid/database/Cursor;
    const/4 v0, -0x1

    .line 576
    .local v0, "count":I
    if-eqz v1, :cond_1

    .line 577
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 578
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 580
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 582
    :cond_1
    return v0
.end method

.method public queryAllAlarmLog(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 3
    .param p1, "did"    # Ljava/lang/String;

    .prologue
    .line 551
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "select * from alarmlog where did=\'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 552
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' order by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "createtime"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 553
    const-string v2, " desc"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 551
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 554
    .local v0, "sql":Ljava/lang/String;
    iget-object v1, p0, Lobject/p2pipcam/utils/DataBaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1
.end method

.method public queryAllPicture(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 3
    .param p1, "did"    # Ljava/lang/String;

    .prologue
    .line 491
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "select * from cameravidpic where  type=\'picture\' and did=\'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 493
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 491
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 494
    .local v0, "sql":Ljava/lang/String;
    iget-object v1, p0, Lobject/p2pipcam/utils/DataBaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1
.end method

.method public queryAllVideo(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 3
    .param p1, "did"    # Ljava/lang/String;

    .prologue
    .line 481
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "select * from cameravidpic where  type=\'video\' and did=\'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 483
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' order by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "filepath"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " desc"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 481
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 484
    .local v0, "sql":Ljava/lang/String;
    iget-object v1, p0, Lobject/p2pipcam/utils/DataBaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1
.end method

.method public queryFirstpic(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 3
    .param p1, "did"    # Ljava/lang/String;

    .prologue
    .line 634
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "select *  from firstpic where did=\'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 635
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 634
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 636
    .local v0, "sql":Ljava/lang/String;
    iget-object v1, p0, Lobject/p2pipcam/utils/DataBaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1
.end method

.method public queryVideoOrPictureByDate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 3
    .param p1, "did"    # Ljava/lang/String;
    .param p2, "date"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;

    .prologue
    .line 502
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "select * from cameravidpic where  type=\'picture\' and did=\'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 504
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "createtime"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 505
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 502
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 506
    .local v0, "sql":Ljava/lang/String;
    iget-object v1, p0, Lobject/p2pipcam/utils/DataBaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1
.end method

.method public updateCamera(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "oldDID"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "did"    # Ljava/lang/String;
    .param p4, "user"    # Ljava/lang/String;
    .param p5, "pwd"    # Ljava/lang/String;

    .prologue
    .line 445
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 446
    .local v0, "args":Landroid/content/ContentValues;
    const-string v1, "name"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    const-string v1, "did"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    const-string v1, "user"

    invoke-virtual {v0, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    const-string v1, "pwd"

    invoke-virtual {v0, v1, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    iget-object v1, p0, Lobject/p2pipcam/utils/DataBaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "cameralist"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "did=\'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 451
    const/4 v4, 0x0

    .line 450
    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public updateCameraAlarm(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 8
    .param p1, "did"    # Ljava/lang/String;
    .param p2, "alarm"    # Ljava/lang/String;
    .param p3, "num"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 405
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 406
    .local v0, "alarmvalues":Landroid/content/ContentValues;
    const/4 v4, 0x4

    new-array v1, v4, [Ljava/lang/String;

    const-string v4, "motionAlarm"

    aput-object v4, v1, v3

    const-string v4, "visitorAlarm"

    aput-object v4, v1, v2

    const/4 v4, 0x2

    const-string v5, "messageAlarm"

    aput-object v5, v1, v4

    const/4 v4, 0x3

    .line 407
    const-string v5, "bootAlarm"

    aput-object v5, v1, v4

    .line 409
    .local v1, "arlarmName":[Ljava/lang/String;
    add-int/lit8 v4, p3, -0x2

    aget-object v4, v1, v4

    invoke-virtual {v0, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    iget-object v4, p0, Lobject/p2pipcam/utils/DataBaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "alarmtypenum"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "did=\'"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 411
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    .line 410
    invoke-virtual {v4, v5, v0, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_0

    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0
.end method

.method public updateCameraUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "did"    # Ljava/lang/String;
    .param p2, "username"    # Ljava/lang/String;
    .param p3, "pwd"    # Ljava/lang/String;

    .prologue
    .line 455
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 456
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "user"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    const-string v1, "pwd"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    iget-object v1, p0, Lobject/p2pipcam/utils/DataBaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "cameralist"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "did=\'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 459
    const/4 v4, 0x0

    .line 458
    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
