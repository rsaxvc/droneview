.class public Lcom/easyview/table/EventIndexTable;
.super Ljava/lang/Object;
.source "EventIndexTable.java"


# static fields
.field private static final CREATE_ALARM_TABLE:Ljava/lang/String;

.field private static final DATABASE_TABLE:Ljava/lang/String; = "event_index"

.field public static final EVENT_INDEX:Ljava/lang/String; = "event_index"

.field public static final FILE_ID:Ljava/lang/String; = "file_id"

.field public static final KEY_DID:Ljava/lang/String; = "did"

.field public static final KEY_ID:Ljava/lang/String; = "id"

.field public static final UPDATE_TIME:Ljava/lang/String; = "update_time"


# instance fields
.field private _db:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 26
    const-string v0, "create table %s (%s integer primary key autoincrement, %s text not null,%s int,%s int,%s int);"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 27
    const-string v3, "event_index"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "id"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "did"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "file_id"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "event_index"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "update_time"

    aput-object v3, v1, v2

    .line 26
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 25
    sput-object v0, Lcom/easyview/table/EventIndexTable;->CREATE_ALARM_TABLE:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/easyview/table/EventIndexTable;->_db:Landroid/database/sqlite/SQLiteDatabase;

    .line 41
    iput-object p1, p0, Lcom/easyview/table/EventIndexTable;->_db:Landroid/database/sqlite/SQLiteDatabase;

    .line 42
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/easyview/table/EventIndexTable;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    invoke-static {p0}, Lobject/p2pipcam/utils/DataBaseHelper;->getInstance(Landroid/content/Context;)Lobject/p2pipcam/utils/DataBaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lobject/p2pipcam/utils/DataBaseHelper;->getEventIndexTable()Lcom/easyview/table/EventIndexTable;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Landroid/database/sqlite/SQLiteDatabase;)Lcom/easyview/table/EventIndexTable;
    .locals 1
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 31
    new-instance v0, Lcom/easyview/table/EventIndexTable;

    invoke-direct {v0, p0}, Lcom/easyview/table/EventIndexTable;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    return-object v0
.end method


# virtual methods
.method public CreateTable()V
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/easyview/table/EventIndexTable;->_db:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/easyview/table/EventIndexTable;->_db:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v1, Lcom/easyview/table/EventIndexTable;->CREATE_ALARM_TABLE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 54
    :cond_0
    return-void
.end method

.method public UpgradeToVersion4()V
    .locals 0

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/easyview/table/EventIndexTable;->CreateTable()V

    .line 58
    return-void
.end method

.method public getLastIndex(Ljava/lang/String;I)I
    .locals 8
    .param p1, "did"    # Ljava/lang/String;
    .param p2, "fileID"    # I

    .prologue
    const/4 v7, 0x0

    .line 94
    const/4 v1, 0x0

    .line 95
    .local v1, "result":I
    const-string v3, "select %s from %s where %s = %d order by %s desc limit 1"

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "event_index"

    aput-object v5, v4, v7

    const/4 v5, 0x1

    const-string v6, "event_index"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "file_id"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, "event_index"

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 96
    .local v2, "sql":Ljava/lang/String;
    iget-object v3, p0, Lcom/easyview/table/EventIndexTable;->_db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 97
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_1

    .line 99
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 100
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 102
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 104
    :cond_1
    if-nez v1, :cond_2

    .line 106
    iget-object v3, p0, Lcom/easyview/table/EventIndexTable;->_db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v3}, Lcom/easyview/table/EventTable;->getInstance(Landroid/database/sqlite/SQLiteDatabase;)Lcom/easyview/table/EventTable;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lcom/easyview/table/EventTable;->getLastIndex(Ljava/lang/String;I)I

    move-result v1

    .line 108
    :cond_2
    return v1
.end method

.method public getLastIndex(Ljava/lang/String;)Landroid/util/Pair;
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

    .line 64
    const/4 v1, 0x0

    .line 65
    .local v1, "fileID":I
    const/4 v2, 0x0

    .line 66
    .local v2, "index":I
    const-string v5, "select %s from %s where %s = \'%s\' order by %s desc limit 1"

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "file_id"

    aput-object v7, v6, v8

    const-string v7, "event_index"

    aput-object v7, v6, v9

    const-string v7, "did"

    aput-object v7, v6, v10

    aput-object p1, v6, v11

    const-string v7, "update_time"

    aput-object v7, v6, v12

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 67
    .local v4, "sql":Ljava/lang/String;
    iget-object v5, p0, Lcom/easyview/table/EventIndexTable;->_db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 68
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_1

    .line 70
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 71
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 73
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 76
    :cond_1
    const-string v5, "select %s from %s where %s = %d order by %s desc limit 1"

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "event_index"

    aput-object v7, v6, v8

    const-string v7, "event_index"

    aput-object v7, v6, v9

    const-string v7, "file_id"

    aput-object v7, v6, v10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v11

    const-string v7, "event_index"

    aput-object v7, v6, v12

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 77
    iget-object v5, p0, Lcom/easyview/table/EventIndexTable;->_db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 78
    if-eqz v0, :cond_3

    .line 80
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 81
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 83
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 85
    :cond_3
    new-instance v3, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 86
    .local v3, "result":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-nez v1, :cond_4

    if-nez v2, :cond_4

    .line 88
    iget-object v5, p0, Lcom/easyview/table/EventIndexTable;->_db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v5}, Lcom/easyview/table/EventTable;->getInstance(Landroid/database/sqlite/SQLiteDatabase;)Lcom/easyview/table/EventTable;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/easyview/table/EventTable;->getLastIndexAndFID(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v3

    .line 90
    :cond_4
    return-object v3
.end method

.method public isExist(Ljava/lang/String;I)Z
    .locals 7
    .param p1, "did"    # Ljava/lang/String;
    .param p2, "fileID"    # I

    .prologue
    .line 143
    const-string v3, "select * from %s where %s = \'%s\' and %s = %d"

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "event_index"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "did"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    aput-object p1, v4, v5

    const/4 v5, 0x3

    const-string v6, "file_id"

    aput-object v6, v4, v5

    const/4 v5, 0x4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 144
    .local v2, "sql":Ljava/lang/String;
    iget-object v3, p0, Lcom/easyview/table/EventIndexTable;->_db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 145
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 146
    .local v1, "result":Z
    if-eqz v0, :cond_1

    .line 148
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 149
    const/4 v1, 0x1

    .line 151
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 153
    :cond_1
    return v1
.end method

.method public setDatabase(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/easyview/table/EventIndexTable;->_db:Landroid/database/sqlite/SQLiteDatabase;

    .line 47
    return-void
.end method

.method public updateIndex(Ljava/lang/String;II)V
    .locals 12
    .param p1, "did"    # Ljava/lang/String;
    .param p2, "fileID"    # I
    .param p3, "index"    # I

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 119
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 120
    .local v3, "now":Ljava/util/Date;
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    long-to-int v4, v5

    .line 121
    .local v4, "time":I
    const-string v5, "Event"

    const-string v6, "update event index: %s fileID:%d index:%d"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p1, v7, v9

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    invoke-virtual {p0, p1, p2}, Lcom/easyview/table/EventIndexTable;->isExist(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 124
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 125
    .local v2, "cv":Landroid/content/ContentValues;
    const-string v5, "event_index"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 126
    const-string v5, "update_time"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 127
    const-string v5, "%s = ? and %s = ?"

    new-array v6, v11, [Ljava/lang/Object;

    const-string v7, "file_id"

    aput-object v7, v6, v9

    const-string v7, "did"

    aput-object v7, v6, v10

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, "Where":Ljava/lang/String;
    new-array v1, v11, [Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v9

    aput-object p1, v1, v10

    .line 129
    .local v1, "args":[Ljava/lang/String;
    iget-object v5, p0, Lcom/easyview/table/EventIndexTable;->_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "event_index"

    invoke-virtual {v5, v6, v2, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    int-to-long v5, v5

    .line 139
    .end local v0    # "Where":Ljava/lang/String;
    .end local v1    # "args":[Ljava/lang/String;
    :goto_0
    return-void

    .line 132
    .end local v2    # "cv":Landroid/content/ContentValues;
    :cond_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 133
    .restart local v2    # "cv":Landroid/content/ContentValues;
    const-string v5, "did"

    invoke-virtual {v2, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    const-string v5, "file_id"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 135
    const-string v5, "event_index"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 136
    const-string v5, "update_time"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 137
    iget-object v5, p0, Lcom/easyview/table/EventIndexTable;->_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "event_index"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_0
.end method
