.class public Lcom/easyview/table/EventTable;
.super Ljava/lang/Object;
.source "EventTable.java"


# static fields
.field private static final CREATE_ALARM_TABLE:Ljava/lang/String;

.field public static final CREATE_TIME:Ljava/lang/String; = "createTime"

.field private static final DATABASE_EVENT_TABLE:Ljava/lang/String; = "event"

.field public static final EVENT_INDEX:Ljava/lang/String; = "eventIndex"

.field public static final EVENT_TIME:Ljava/lang/String; = "eventTime"

.field public static final EVENT_TYPE:Ljava/lang/String; = "eventType"

.field public static final EVENT_VALUE:Ljava/lang/String; = "eventValue"

.field public static final FILE_ID:Ljava/lang/String; = "fileID"

.field public static final HAVE_PICTURE:Ljava/lang/String; = "havePicture"

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

.field public static final RECORD_INDEX:Ljava/lang/String; = "recordIndex"


# instance fields
.field private _db:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 50
    const-string v0, "create table %s (%s integer primary key autoincrement, %s text not null,%s int,%s int,%s int,%s int,%s int,%s int,%s int,%s int,%s text);"

    const/16 v1, 0xc

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 51
    const-string v3, "event"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "id"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "did"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "fileID"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "eventIndex"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "eventType"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "eventTime"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "createTime"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "eventValue"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "recordIndex"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "havePicture"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "picturePath"

    aput-object v3, v1, v2

    .line 50
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 49
    sput-object v0, Lcom/easyview/table/EventTable;->CREATE_ALARM_TABLE:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/easyview/table/EventTable;->_db:Landroid/database/sqlite/SQLiteDatabase;

    .line 66
    iput-object p1, p0, Lcom/easyview/table/EventTable;->_db:Landroid/database/sqlite/SQLiteDatabase;

    .line 67
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/easyview/table/EventTable;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 59
    invoke-static {p0}, Lobject/p2pipcam/utils/DataBaseHelper;->getInstance(Landroid/content/Context;)Lobject/p2pipcam/utils/DataBaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lobject/p2pipcam/utils/DataBaseHelper;->getEventTable()Lcom/easyview/table/EventTable;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Landroid/database/sqlite/SQLiteDatabase;)Lcom/easyview/table/EventTable;
    .locals 1
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 55
    new-instance v0, Lcom/easyview/table/EventTable;

    invoke-direct {v0, p0}, Lcom/easyview/table/EventTable;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    return-object v0
.end method


# virtual methods
.method public CreateTable()V
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/easyview/table/EventTable;->_db:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/easyview/table/EventTable;->_db:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v1, Lcom/easyview/table/EventTable;->CREATE_ALARM_TABLE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 79
    :cond_0
    return-void
.end method

.method public Save(Ljava/lang/String;IIIII)J
    .locals 14
    .param p1, "did"    # Ljava/lang/String;
    .param p2, "fileID"    # I
    .param p3, "eventIndex"    # I
    .param p4, "eventType"    # I
    .param p5, "eventTime"    # I
    .param p6, "endTime"    # I

    .prologue
    .line 110
    move/from16 v0, p4

    move/from16 v1, p5

    invoke-virtual {p0, p1, v0, v1}, Lcom/easyview/table/EventTable;->isExist(Ljava/lang/String;II)Z

    move-result v9

    if-eqz v9, :cond_0

    const-wide/16 v6, 0x0

    .line 141
    :goto_0
    return-wide v6

    .line 111
    :cond_0
    if-nez p2, :cond_1

    .line 113
    invoke-virtual {p0, p1}, Lcom/easyview/table/EventTable;->getLastIndexAndFID(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v4

    .line 114
    .local v4, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v9, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 116
    .end local v4    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_1
    iget-object v9, p0, Lcom/easyview/table/EventTable;->_db:Landroid/database/sqlite/SQLiteDatabase;

    move/from16 v0, p4

    invoke-static {v9, p1, v0}, Lobject/p2pipcam/utils/DataBaseHelper;->incAlarmCount(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;I)V

    .line 117
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 118
    .local v2, "initialValues":Landroid/content/ContentValues;
    const-string v9, "did"

    invoke-virtual {v2, v9, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const-string v9, "fileID"

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 120
    const-string v9, "eventIndex"

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 121
    const-string v9, "eventType"

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 122
    const-string v9, "eventTime"

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 123
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 124
    .local v3, "now":Ljava/util/Date;
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    const-wide/16 v11, 0x3e8

    div-long/2addr v9, v11

    long-to-int v8, v9

    .line 125
    .local v8, "time":I
    const-string v9, "createTime"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 126
    const-string v9, "eventValue"

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 127
    const-string v9, "recordIndex"

    const/4 v10, -0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 128
    const-string v9, "havePicture"

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 129
    const/16 v9, 0x202

    move/from16 v0, p4

    if-ne v0, v9, :cond_2

    .line 131
    iget-object v9, p0, Lcom/easyview/table/EventTable;->_db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v9}, Lcom/easyview/table/RecordTable;->getInstance(Landroid/database/sqlite/SQLiteDatabase;)Lcom/easyview/table/RecordTable;

    move-result-object v9

    move/from16 v0, p2

    move/from16 v1, p5

    invoke-virtual {v9, p1, v0, v1}, Lcom/easyview/table/RecordTable;->getPicturePath(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v5

    .line 132
    .local v5, "path":Ljava/lang/String;
    if-eqz v5, :cond_2

    .line 134
    const-string v9, "havePicture"

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 135
    const-string v9, "recordIndex"

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 136
    const-string v9, "picturePath"

    invoke-virtual {v2, v9, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    .end local v5    # "path":Ljava/lang/String;
    :cond_2
    iget-object v9, p0, Lcom/easyview/table/EventTable;->_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v10, "event"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v6

    .line 140
    .local v6, "result":J
    const-string v9, "EventTable"

    const-string v10, "insert event result: %d %s fID:%d index:%d %d %d"

    const/4 v11, 0x6

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    aput-object p1, v11, v12

    const/4 v12, 0x2

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x3

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x4

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x5

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public Save(Ljava/lang/String;ILcom/easyview/struct/EVCommandDefs$Event;Ljava/lang/String;)J
    .locals 11
    .param p1, "did"    # Ljava/lang/String;
    .param p2, "fileID"    # I
    .param p3, "event"    # Lcom/easyview/struct/EVCommandDefs$Event;
    .param p4, "picPath"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 145
    invoke-virtual {p0, p2, p1, p3}, Lcom/easyview/table/EventTable;->isExist(ILjava/lang/String;Lcom/easyview/struct/EVCommandDefs$Event;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 147
    invoke-virtual {p0, p2, p1, p3, p4}, Lcom/easyview/table/EventTable;->Update(ILjava/lang/String;Lcom/easyview/struct/EVCommandDefs$Event;Ljava/lang/String;)Z

    .line 148
    const-wide/16 v2, 0x0

    .line 172
    :goto_0
    return-wide v2

    .line 150
    :cond_0
    iget-object v5, p0, Lcom/easyview/table/EventTable;->_db:Landroid/database/sqlite/SQLiteDatabase;

    iget-short v6, p3, Lcom/easyview/struct/EVCommandDefs$Event;->event_type:S

    invoke-static {v5, p1, v6}, Lobject/p2pipcam/utils/DataBaseHelper;->incAlarmCount(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;I)V

    .line 151
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 152
    .local v0, "initialValues":Landroid/content/ContentValues;
    const-string v5, "did"

    invoke-virtual {v0, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    const-string v5, "fileID"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 154
    const-string v5, "eventIndex"

    iget v6, p3, Lcom/easyview/struct/EVCommandDefs$Event;->index:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 155
    const-string v5, "eventType"

    iget-short v6, p3, Lcom/easyview/struct/EVCommandDefs$Event;->event_type:S

    invoke-static {v6}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Short;)V

    .line 156
    const-string v5, "eventTime"

    iget v6, p3, Lcom/easyview/struct/EVCommandDefs$Event;->event_time:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 157
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 158
    .local v1, "now":Ljava/util/Date;
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    long-to-int v4, v5

    .line 159
    .local v4, "time":I
    const-string v5, "createTime"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 160
    const-string v5, "eventValue"

    iget v6, p3, Lcom/easyview/struct/EVCommandDefs$Event;->value:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 161
    const-string v5, "recordIndex"

    iget v6, p3, Lcom/easyview/struct/EVCommandDefs$Event;->record_index:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 162
    if-eqz p4, :cond_1

    .line 164
    const-string v5, "havePicture"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 165
    const-string v5, "picturePath"

    invoke-virtual {v0, v5, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    :goto_1
    iget-object v5, p0, Lcom/easyview/table/EventTable;->_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "event"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 171
    .local v2, "result":J
    const-string v5, "Event"

    const-string v6, "insert event: result:%d index:%d fileID:%d %s %d %d %s"

    const/4 v7, 0x7

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v9

    iget v8, p3, Lcom/easyview/struct/EVCommandDefs$Event;->index:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    const/4 v8, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    aput-object p1, v7, v8

    const/4 v8, 0x4

    iget-short v9, p3, Lcom/easyview/struct/EVCommandDefs$Event;->event_type:S

    invoke-static {v9}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x5

    iget v9, p3, Lcom/easyview/struct/EVCommandDefs$Event;->event_time:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x6

    aput-object p4, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 168
    .end local v2    # "result":J
    :cond_1
    const-string v5, "havePicture"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1
.end method

.method public Update(ILjava/lang/String;Lcom/easyview/struct/EVCommandDefs$Event;Ljava/lang/String;)Z
    .locals 10
    .param p1, "fileID"    # I
    .param p2, "did"    # Ljava/lang/String;
    .param p3, "event"    # Lcom/easyview/struct/EVCommandDefs$Event;
    .param p4, "picPath"    # Ljava/lang/String;

    .prologue
    .line 207
    iget-object v5, p0, Lcom/easyview/table/EventTable;->_db:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v5, :cond_0

    const/4 v5, 0x0

    .line 222
    :goto_0
    return v5

    .line 208
    :cond_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 209
    .local v2, "cv":Landroid/content/ContentValues;
    const-string v5, "eventIndex"

    iget v6, p3, Lcom/easyview/struct/EVCommandDefs$Event;->index:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 210
    const-string v5, "eventType"

    iget-short v6, p3, Lcom/easyview/struct/EVCommandDefs$Event;->event_type:S

    invoke-static {v6}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Short;)V

    .line 211
    const-string v5, "eventTime"

    iget v6, p3, Lcom/easyview/struct/EVCommandDefs$Event;->event_time:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 213
    if-eqz p4, :cond_1

    .line 215
    const-string v5, "havePicture"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 216
    const-string v5, "picturePath"

    invoke-virtual {v2, v5, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    :cond_1
    const-string v5, "%s = ? and %s = ? and %s = ? and %s = ?"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "fileID"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "did"

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-string v8, "eventType"

    aput-object v8, v6, v7

    const/4 v7, 0x3

    const-string v8, "eventTime"

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 219
    .local v0, "Where":Ljava/lang/String;
    const/4 v5, 0x4

    new-array v1, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v5

    const/4 v5, 0x1

    aput-object p2, v1, v5

    const/4 v5, 0x2

    iget-short v6, p3, Lcom/easyview/struct/EVCommandDefs$Event;->event_type:S

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v5

    const/4 v5, 0x3

    iget v6, p3, Lcom/easyview/struct/EVCommandDefs$Event;->event_time:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v5

    .line 220
    .local v1, "args":[Ljava/lang/String;
    iget-object v5, p0, Lcom/easyview/table/EventTable;->_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "event"

    invoke-virtual {v5, v6, v2, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    int-to-long v3, v5

    .line 221
    .local v3, "result":J
    const-string v5, "EventTable"

    const-string v6, "Update event:%d %s %d %d %s"

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object p2, v7, v8

    const/4 v8, 0x2

    iget-short v9, p3, Lcom/easyview/struct/EVCommandDefs$Event;->event_type:S

    invoke-static {v9}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    iget v9, p3, Lcom/easyview/struct/EVCommandDefs$Event;->event_time:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x4

    aput-object p4, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-lez v5, :cond_2

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_2
    const/4 v5, 0x0

    goto/16 :goto_0
.end method

.method public Update(Ljava/lang/String;IIII)Z
    .locals 10
    .param p1, "did"    # Ljava/lang/String;
    .param p2, "fileID"    # I
    .param p3, "eventType"    # I
    .param p4, "beginTime"    # I
    .param p5, "endTime"    # I

    .prologue
    .line 240
    iget-object v5, p0, Lcom/easyview/table/EventTable;->_db:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v5, :cond_0

    const/4 v5, 0x0

    .line 247
    :goto_0
    return v5

    .line 241
    :cond_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 242
    .local v2, "cv":Landroid/content/ContentValues;
    const-string v5, "eventValue"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 243
    const-string v5, "%s = ? and %s = ? and %s = ? and %s = ?"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "did"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "fileID"

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-string v8, "eventType"

    aput-object v8, v6, v7

    const/4 v7, 0x3

    const-string v8, "eventTime"

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 244
    .local v0, "Where":Ljava/lang/String;
    const/4 v5, 0x4

    new-array v1, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v1, v5

    const/4 v5, 0x1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v5

    const/4 v5, 0x2

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v5

    const/4 v5, 0x3

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v5

    .line 245
    .local v1, "args":[Ljava/lang/String;
    iget-object v5, p0, Lcom/easyview/table/EventTable;->_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "event"

    invoke-virtual {v5, v6, v2, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    int-to-long v3, v5

    .line 246
    .local v3, "result":J
    const-string v5, "EventTable"

    const-string v6, "Update result:%d %s %d %d"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object p1, v7, v8

    const/4 v8, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-lez v5, :cond_1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public Update(Ljava/lang/String;IIILjava/lang/String;)Z
    .locals 10
    .param p1, "did"    # Ljava/lang/String;
    .param p2, "fileID"    # I
    .param p3, "eventType"    # I
    .param p4, "eventTime"    # I
    .param p5, "picPath"    # Ljava/lang/String;

    .prologue
    .line 227
    iget-object v5, p0, Lcom/easyview/table/EventTable;->_db:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v5, :cond_0

    const/4 v5, 0x0

    .line 235
    :goto_0
    return v5

    .line 228
    :cond_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 229
    .local v2, "cv":Landroid/content/ContentValues;
    const-string v5, "havePicture"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 230
    const-string v5, "picturePath"

    invoke-virtual {v2, v5, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    const-string v5, "%s = ? AND %s = ? and %s = ? and %s = ?"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "did"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "fileID"

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-string v8, "eventType"

    aput-object v8, v6, v7

    const/4 v7, 0x3

    const-string v8, "eventTime"

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 232
    .local v0, "Where":Ljava/lang/String;
    const/4 v5, 0x4

    new-array v1, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v1, v5

    const/4 v5, 0x1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v5

    const/4 v5, 0x2

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v5

    const/4 v5, 0x3

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v5

    .line 233
    .local v1, "args":[Ljava/lang/String;
    iget-object v5, p0, Lcom/easyview/table/EventTable;->_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "event"

    invoke-virtual {v5, v6, v2, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    int-to-long v3, v5

    .line 234
    .local v3, "result":J
    const-string v5, "EventTable"

    const-string v6, "Update result:%d %s %d %d"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object p1, v7, v8

    const/4 v8, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-lez v5, :cond_1

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_1
    const/4 v5, 0x0

    goto/16 :goto_0
.end method

.method public UpdateRecordIndex(Ljava/lang/String;IIII)Z
    .locals 10
    .param p1, "did"    # Ljava/lang/String;
    .param p2, "fileID"    # I
    .param p3, "beginTime"    # I
    .param p4, "endTime"    # I
    .param p5, "recordIndex"    # I

    .prologue
    .line 252
    iget-object v5, p0, Lcom/easyview/table/EventTable;->_db:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v5, :cond_0

    const/4 v5, 0x0

    .line 264
    :goto_0
    return v5

    .line 258
    :cond_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 259
    .local v2, "cv":Landroid/content/ContentValues;
    const-string v5, "recordIndex"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 260
    const-string v5, "%s = ? AND %s = ? and (%s BETWEEN ? and ?)"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "did"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "fileID"

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-string v8, "eventTime"

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 261
    .local v0, "Where":Ljava/lang/String;
    const/4 v5, 0x4

    new-array v1, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v1, v5

    const/4 v5, 0x1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v5

    const/4 v5, 0x2

    add-int/lit8 v6, p3, -0xf

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v5

    const/4 v5, 0x3

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v5

    .line 262
    .local v1, "args":[Ljava/lang/String;
    iget-object v5, p0, Lcom/easyview/table/EventTable;->_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "event"

    invoke-virtual {v5, v6, v2, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    int-to-long v3, v5

    .line 263
    .local v3, "result":J
    const-string v5, "EventTable"

    const-string v6, "Update event record index,result:%d %s %d %d record_index:%d"

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object p1, v7, v8

    const/4 v8, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x4

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    const/4 v5, 0x1

    goto :goto_0
.end method

.method public UpgradeToVersion2()V
    .locals 7

    .prologue
    .line 85
    iget-object v3, p0, Lcom/easyview/table/EventTable;->_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "alter table event rename to temp_A"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p0}, Lcom/easyview/table/EventTable;->CreateTable()V

    .line 87
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 88
    .local v0, "now":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    long-to-int v2, v3

    .line 89
    .local v2, "time":I
    const-string v3, "INSERT INTO %s SELECT %s,%s,%s,%s,%s,%d as %s,endTime as %s,%s,%s,%s FROM temp_A;"

    const/16 v4, 0xc

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "event"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    .line 90
    const-string v6, "id"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "did"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string v6, "eventIndex"

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, "eventType"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    const-string v6, "eventTime"

    aput-object v6, v4, v5

    const/4 v5, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x7

    const-string v6, "createTime"

    aput-object v6, v4, v5

    const/16 v5, 0x8

    const-string v6, "eventValue"

    aput-object v6, v4, v5

    const/16 v5, 0x9

    const-string v6, "recordIndex"

    aput-object v6, v4, v5

    const/16 v5, 0xa

    const-string v6, "havePicture"

    aput-object v6, v4, v5

    const/16 v5, 0xb

    const-string v6, "picturePath"

    aput-object v6, v4, v5

    .line 89
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 91
    .local v1, "sql":Ljava/lang/String;
    iget-object v3, p0, Lcom/easyview/table/EventTable;->_db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 92
    iget-object v3, p0, Lcom/easyview/table/EventTable;->_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "DROP TABLE temp_A;"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method public UpgradeToVersion3()V
    .locals 5

    .prologue
    .line 100
    iget-object v1, p0, Lcom/easyview/table/EventTable;->_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "alter table event rename to temp_A"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0}, Lcom/easyview/table/EventTable;->CreateTable()V

    .line 102
    const-string v1, "INSERT INTO %s SELECT %s,%s,0,%s,%s,%s,%s,%s,%s,%s,%s FROM temp_A;"

    const/16 v2, 0xb

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "event"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 103
    const-string v4, "id"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "did"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "eventIndex"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "eventType"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "eventTime"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "createTime"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "eventValue"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "recordIndex"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "havePicture"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "picturePath"

    aput-object v4, v2, v3

    .line 102
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, "sql":Ljava/lang/String;
    iget-object v1, p0, Lcom/easyview/table/EventTable;->_db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 105
    iget-object v1, p0, Lcom/easyview/table/EventTable;->_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "DROP TABLE temp_A;"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 106
    return-void
.end method

.method public allEvent(Ljava/lang/String;I)Ljava/util/List;
    .locals 11
    .param p1, "did"    # Ljava/lang/String;
    .param p2, "fileID"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lobject/p2pipcam/bean/EventDetailBean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 362
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 363
    .local v7, "list":Ljava/util/List;, "Ljava/util/List<Lobject/p2pipcam/bean/EventDetailBean;>;"
    invoke-virtual {p0, p1}, Lcom/easyview/table/EventTable;->queryAllEvent(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 364
    .local v1, "cursor":Landroid/database/Cursor;
    if-eqz v1, :cond_1

    .line 365
    :cond_0
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-nez v10, :cond_2

    .line 395
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 398
    :cond_1
    return-object v7

    .line 366
    :cond_2
    const-string v10, "eventIndex"

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 367
    .local v3, "eventIndex":I
    const-string v10, "eventType"

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 368
    .local v5, "eventType":I
    const-string v10, "eventTime"

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 369
    .local v4, "eventTime":I
    const-string v10, "eventValue"

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 370
    .local v2, "endTime":I
    const-string v10, "recordIndex"

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 371
    .local v9, "recordIndex":I
    const-string v10, "havePicture"

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 372
    .local v6, "havePicture":I
    const/4 v8, 0x0

    .line 373
    .local v8, "picturePath":Ljava/lang/String;
    const/4 v10, 0x1

    if-ne v6, v10, :cond_3

    const-string v10, "picturePath"

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 374
    :cond_3
    const/16 v10, 0x201

    if-eq v5, v10, :cond_0

    .line 380
    const/16 v10, 0x202

    if-eq v5, v10, :cond_0

    .line 384
    new-instance v0, Lobject/p2pipcam/bean/EventDetailBean;

    invoke-direct {v0, p1, p2}, Lobject/p2pipcam/bean/EventDetailBean;-><init>(Ljava/lang/String;I)V

    .line 385
    .local v0, "bean":Lobject/p2pipcam/bean/EventDetailBean;
    invoke-virtual {v0, p1}, Lobject/p2pipcam/bean/EventDetailBean;->setDid(Ljava/lang/String;)V

    .line 386
    invoke-virtual {v0, v3}, Lobject/p2pipcam/bean/EventDetailBean;->setEventIndex(I)V

    .line 387
    invoke-virtual {v0, v5}, Lobject/p2pipcam/bean/EventDetailBean;->setEventType(I)V

    .line 388
    invoke-virtual {v0, v4}, Lobject/p2pipcam/bean/EventDetailBean;->setEventTime(I)V

    .line 389
    invoke-virtual {v0, v2}, Lobject/p2pipcam/bean/EventDetailBean;->setEndTime(I)V

    .line 390
    invoke-virtual {v0, v9}, Lobject/p2pipcam/bean/EventDetailBean;->setRecordIndex(I)V

    .line 391
    invoke-virtual {v0, v6}, Lobject/p2pipcam/bean/EventDetailBean;->setHavePicture(I)V

    .line 392
    invoke-virtual {v0, v8}, Lobject/p2pipcam/bean/EventDetailBean;->setPicturePath(Ljava/lang/String;)V

    .line 393
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public allEvent(Ljava/lang/String;II)Ljava/util/List;
    .locals 17
    .param p1, "did"    # Ljava/lang/String;
    .param p2, "fileID"    # I
    .param p3, "time"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List",
            "<",
            "Lobject/p2pipcam/bean/EventDetailBean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 402
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 403
    .local v9, "list":Ljava/util/List;, "Ljava/util/List<Lobject/p2pipcam/bean/EventDetailBean;>;"
    const-string v13, "select * from %s where %s = \'%s\' and %s < %d "

    const/4 v14, 0x5

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    const-string v16, "event"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    const-string v16, "did"

    aput-object v16, v14, v15

    const/4 v15, 0x2

    aput-object p1, v14, v15

    const/4 v15, 0x3

    const-string v16, "createTime"

    aput-object v16, v14, v15

    const/4 v15, 0x4

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 404
    .local v12, "sql":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/easyview/table/EventTable;->_db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v14, 0x0

    invoke-virtual {v13, v12, v14}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 405
    .local v3, "cursor":Landroid/database/Cursor;
    if-eqz v3, :cond_1

    .line 406
    :cond_0
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v13

    if-nez v13, :cond_2

    .line 429
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 432
    :cond_1
    return-object v9

    .line 407
    :cond_2
    const-string v13, "eventType"

    invoke-interface {v3, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v3, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 408
    .local v7, "eventType":I
    const-string v13, "eventTime"

    invoke-interface {v3, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v3, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 409
    .local v6, "eventTime":I
    const-string v13, "eventValue"

    invoke-interface {v3, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v3, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 410
    .local v5, "endTime":I
    const-string v13, "recordIndex"

    invoke-interface {v3, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v3, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 411
    .local v11, "recordIndex":I
    const-string v13, "havePicture"

    invoke-interface {v3, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v3, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 412
    .local v8, "havePicture":I
    const/4 v10, 0x0

    .line 413
    .local v10, "picturePath":Ljava/lang/String;
    const/4 v13, 0x1

    if-ne v8, v13, :cond_3

    const-string v13, "picturePath"

    invoke-interface {v3, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v3, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 414
    :cond_3
    const/16 v13, 0x201

    if-ne v7, v13, :cond_4

    .line 416
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/easyview/table/EventTable;->_db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v13}, Lcom/easyview/table/RecordTable;->getInstance(Landroid/database/sqlite/SQLiteDatabase;)Lcom/easyview/table/RecordTable;

    move-result-object v13

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v13, v0, v1, v11}, Lcom/easyview/table/RecordTable;->getDuration(Ljava/lang/String;II)I

    move-result v4

    .line 417
    .local v4, "duration":I
    if-eqz v4, :cond_0

    .line 419
    .end local v4    # "duration":I
    :cond_4
    new-instance v2, Lobject/p2pipcam/bean/EventDetailBean;

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-direct {v2, v0, v1}, Lobject/p2pipcam/bean/EventDetailBean;-><init>(Ljava/lang/String;I)V

    .line 420
    .local v2, "bean":Lobject/p2pipcam/bean/EventDetailBean;
    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lobject/p2pipcam/bean/EventDetailBean;->setDid(Ljava/lang/String;)V

    .line 421
    invoke-virtual {v2, v7}, Lobject/p2pipcam/bean/EventDetailBean;->setEventType(I)V

    .line 422
    invoke-virtual {v2, v6}, Lobject/p2pipcam/bean/EventDetailBean;->setEventTime(I)V

    .line 423
    invoke-virtual {v2, v5}, Lobject/p2pipcam/bean/EventDetailBean;->setEndTime(I)V

    .line 424
    invoke-virtual {v2, v11}, Lobject/p2pipcam/bean/EventDetailBean;->setRecordIndex(I)V

    .line 425
    invoke-virtual {v2, v8}, Lobject/p2pipcam/bean/EventDetailBean;->setHavePicture(I)V

    .line 426
    invoke-virtual {v2, v10}, Lobject/p2pipcam/bean/EventDetailBean;->setPicturePath(Ljava/lang/String;)V

    .line 427
    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method public delEvent(Ljava/lang/String;)Z
    .locals 6
    .param p1, "did"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 454
    iget-object v2, p0, Lcom/easyview/table/EventTable;->_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "event"

    const-string v4, "did=? "

    new-array v5, v0, [Ljava/lang/String;

    aput-object p1, v5, v1

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public delEvent(Ljava/lang/String;II)Z
    .locals 10
    .param p1, "did"    # Ljava/lang/String;
    .param p2, "eventType"    # I
    .param p3, "eventTime"    # I

    .prologue
    const/4 v6, 0x3

    const/4 v9, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 450
    const-string v3, "%s=? and %s=? and %s=?"

    new-array v4, v6, [Ljava/lang/Object;

    const-string v5, "did"

    aput-object v5, v4, v2

    const-string v5, "eventType"

    aput-object v5, v4, v1

    const-string v5, "eventTime"

    aput-object v5, v4, v9

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 451
    .local v0, "clause":Ljava/lang/String;
    iget-object v3, p0, Lcom/easyview/table/EventTable;->_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "event"

    new-array v5, v6, [Ljava/lang/String;

    aput-object p1, v5, v2

    const-string v6, "%d"

    new-array v7, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    const-string v6, "%d"

    new-array v7, v1, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-virtual {v3, v4, v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public getLastIndex(Ljava/lang/String;I)I
    .locals 8
    .param p1, "did"    # Ljava/lang/String;
    .param p2, "fileID"    # I

    .prologue
    const/4 v7, 0x0

    .line 312
    const/4 v1, 0x0

    .line 313
    .local v1, "result":I
    const-string v3, "select %s from %s where %s = %d order by %s desc limit 1"

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "eventIndex"

    aput-object v5, v4, v7

    const/4 v5, 0x1

    const-string v6, "event"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "fileID"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, "eventIndex"

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 314
    .local v2, "sql":Ljava/lang/String;
    iget-object v3, p0, Lcom/easyview/table/EventTable;->_db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 315
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_1

    .line 317
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 318
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 320
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 322
    :cond_1
    return v1
.end method

.method public getLastIndexAndFID(Ljava/lang/String;)Landroid/util/Pair;
    .locals 13
    .param p1, "did"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 286
    const/4 v1, 0x0

    .line 287
    .local v1, "fileID":I
    const/4 v2, 0x0

    .line 288
    .local v2, "index":I
    const-string v5, "select %s from %s where %s = \'%s\' order by %s desc limit 1"

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "fileID"

    aput-object v7, v6, v8

    const-string v7, "event"

    aput-object v7, v6, v9

    const-string v7, "did"

    aput-object v7, v6, v10

    aput-object p1, v6, v11

    const-string v7, "createTime"

    aput-object v7, v6, v12

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 289
    .local v4, "sql":Ljava/lang/String;
    iget-object v5, p0, Lcom/easyview/table/EventTable;->_db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 290
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_1

    .line 292
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 293
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 295
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 298
    :cond_1
    const-string v5, "select %s from %s where %s = %d order by %s desc limit 1"

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "eventIndex"

    aput-object v7, v6, v8

    const-string v7, "event"

    aput-object v7, v6, v9

    const-string v7, "fileID"

    aput-object v7, v6, v10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v11

    const-string v7, "eventIndex"

    aput-object v7, v6, v12

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 299
    iget-object v5, p0, Lcom/easyview/table/EventTable;->_db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 300
    if-eqz v0, :cond_3

    .line 302
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 303
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 305
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 307
    :cond_3
    new-instance v3, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 308
    .local v3, "result":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    return-object v3
.end method

.method public getMaxIndex(Ljava/lang/String;)Landroid/util/Pair;
    .locals 9
    .param p1, "did"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v4, -0x1

    .line 269
    new-instance v1, Landroid/util/Pair;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 270
    .local v1, "result":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const-string v3, "select %s,%s from %s where %s = \'%s\' order by %s desc limit 1"

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "eventIndex"

    aput-object v5, v4, v7

    const-string v5, "eventTime"

    aput-object v5, v4, v8

    const/4 v5, 0x2

    const-string v6, "event"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string v6, "did"

    aput-object v6, v4, v5

    const/4 v5, 0x4

    aput-object p1, v4, v5

    const/4 v5, 0x5

    const-string v6, "eventIndex"

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 271
    .local v2, "sql":Ljava/lang/String;
    iget-object v3, p0, Lcom/easyview/table/EventTable;->_db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 272
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_1

    .line 274
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 275
    new-instance v1, Landroid/util/Pair;

    .end local v1    # "result":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 277
    .restart local v1    # "result":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 279
    :cond_1
    return-object v1
.end method

.method public getPicturePath(ILjava/lang/String;I)Ljava/lang/String;
    .locals 9
    .param p1, "fileID"    # I
    .param p2, "did"    # Ljava/lang/String;
    .param p3, "index"    # I

    .prologue
    const/4 v8, 0x1

    .line 436
    const/4 v2, 0x0

    .line 437
    .local v2, "picturePath":Ljava/lang/String;
    const-string v4, "SELECT %s,%s FROM %s WHERE %s = %d AND %s = \'%s\' AND %s = %d "

    const/16 v5, 0x9

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "havePicture"

    aput-object v7, v5, v6

    const-string v6, "picturePath"

    aput-object v6, v5, v8

    const/4 v6, 0x2

    .line 438
    const-string v7, "event"

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const-string v7, "fileID"

    aput-object v7, v5, v6

    const/4 v6, 0x4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x5

    const-string v7, "did"

    aput-object v7, v5, v6

    const/4 v6, 0x6

    aput-object p2, v5, v6

    const/4 v6, 0x7

    const-string v7, "eventIndex"

    aput-object v7, v5, v6

    const/16 v6, 0x8

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    .line 437
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 439
    .local v3, "sql":Ljava/lang/String;
    iget-object v4, p0, Lcom/easyview/table/EventTable;->_db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 440
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_1

    .line 441
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 442
    const-string v4, "havePicture"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 443
    .local v1, "havePicture":I
    if-ne v1, v8, :cond_0

    const-string v4, "picturePath"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 445
    .end local v1    # "havePicture":I
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 447
    :cond_1
    return-object v2
.end method

.method public isExist(ILjava/lang/String;Lcom/easyview/struct/EVCommandDefs$Event;)Z
    .locals 7
    .param p1, "fileID"    # I
    .param p2, "did"    # Ljava/lang/String;
    .param p3, "event"    # Lcom/easyview/struct/EVCommandDefs$Event;

    .prologue
    .line 176
    const-string v3, "select * from %s where %s = %d AND %s = \'%s\' and %s = %d and %s = %d"

    const/16 v4, 0x9

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 177
    const-string v6, "event"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "fileID"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string v6, "did"

    aput-object v6, v4, v5

    const/4 v5, 0x4

    aput-object p2, v4, v5

    const/4 v5, 0x5

    const-string v6, "eventType"

    aput-object v6, v4, v5

    const/4 v5, 0x6

    iget-short v6, p3, Lcom/easyview/struct/EVCommandDefs$Event;->event_type:S

    invoke-static {v6}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x7

    const-string v6, "eventTime"

    aput-object v6, v4, v5

    const/16 v5, 0x8

    iget v6, p3, Lcom/easyview/struct/EVCommandDefs$Event;->event_time:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    .line 176
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 178
    .local v2, "sql":Ljava/lang/String;
    iget-object v3, p0, Lcom/easyview/table/EventTable;->_db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 179
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 180
    .local v1, "result":Z
    if-eqz v0, :cond_1

    .line 182
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 183
    const/4 v1, 0x1

    .line 185
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 187
    :cond_1
    return v1
.end method

.method public isExist(Ljava/lang/String;II)Z
    .locals 7
    .param p1, "did"    # Ljava/lang/String;
    .param p2, "eventType"    # I
    .param p3, "eventTime"    # I

    .prologue
    .line 191
    const-string v3, "select * from %s where %s = \'%s\' and %s = %d and %s = %d"

    const/4 v4, 0x7

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 192
    const-string v6, "event"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "did"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    aput-object p1, v4, v5

    const/4 v5, 0x3

    const-string v6, "eventType"

    aput-object v6, v4, v5

    const/4 v5, 0x4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x5

    const-string v6, "eventTime"

    aput-object v6, v4, v5

    const/4 v5, 0x6

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    .line 191
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 193
    .local v2, "sql":Ljava/lang/String;
    iget-object v3, p0, Lcom/easyview/table/EventTable;->_db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 194
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 195
    .local v1, "result":Z
    if-eqz v0, :cond_1

    .line 197
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 198
    const/4 v1, 0x1

    .line 200
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 202
    :cond_1
    return v1
.end method

.method public lastNoPictures(Ljava/lang/String;II)Ljava/util/List;
    .locals 11
    .param p1, "did"    # Ljava/lang/String;
    .param p2, "fileID"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 337
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 338
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const-string v5, "select %s,%s from %s where %s = \'%s\' and %s = %d order by %s desc limit %d"

    const/16 v6, 0x9

    new-array v6, v6, [Ljava/lang/Object;

    .line 339
    const-string v7, "eventIndex"

    aput-object v7, v6, v9

    const-string v7, "havePicture"

    aput-object v7, v6, v10

    const/4 v7, 0x2

    const-string v8, "event"

    aput-object v8, v6, v7

    const/4 v7, 0x3

    const-string v8, "did"

    aput-object v8, v6, v7

    const/4 v7, 0x4

    aput-object p1, v6, v7

    const/4 v7, 0x5

    const-string v8, "fileID"

    aput-object v8, v6, v7

    const/4 v7, 0x6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x7

    const-string v8, "eventIndex"

    aput-object v8, v6, v7

    const/16 v7, 0x8

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    .line 338
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 340
    .local v4, "sql":Ljava/lang/String;
    const-string v5, "Event"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "SQL:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    iget-object v5, p0, Lcom/easyview/table/EventTable;->_db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 342
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_1

    .line 344
    :cond_0
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 353
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 355
    :cond_1
    const-string v5, "Event"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "result count:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    return-object v3

    .line 345
    :cond_2
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 346
    .local v2, "index":I
    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 347
    .local v1, "have":I
    if-nez v1, :cond_0

    .line 349
    const-string v5, "Event"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "no picture:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public queryAllEvent(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 5
    .param p1, "did"    # Ljava/lang/String;

    .prologue
    .line 329
    const-string v1, "select * from %s where %s = \'%s\' order by %s desc"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "event"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "did"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p1, v2, v3

    const/4 v3, 0x3

    const-string v4, "eventTime"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 330
    .local v0, "sql":Ljava/lang/String;
    iget-object v1, p0, Lcom/easyview/table/EventTable;->_db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1
.end method

.method public setDatabase(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/easyview/table/EventTable;->_db:Landroid/database/sqlite/SQLiteDatabase;

    .line 72
    return-void
.end method
