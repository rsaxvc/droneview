.class public Lcom/easyview/table/RecordTable;
.super Ljava/lang/Object;
.source "RecordTable.java"


# static fields
.field public static final BEGIN_TIME:Ljava/lang/String; = "beginTime"

.field private static final CREATE_RECORD_TABLE:Ljava/lang/String;

.field private static final DATABASE_RECORD_TABLE:Ljava/lang/String; = "record"

.field public static final END_TIME:Ljava/lang/String; = "endTime"

.field public static final FILE_ID:Ljava/lang/String; = "fileID"

.field public static final HAVE_LOCAL:Ljava/lang/String; = "haveLocal"

.field public static final KEY_DID:Ljava/lang/String; = "did"

.field public static final KEY_ID:Ljava/lang/String; = "id"

.field private static final LOG_TAG:Ljava/lang/String; = "RecordTable"

.field public static final PATH_NAME:Ljava/lang/String; = "pathName"

.field public static final PICTURE_PATH:Ljava/lang/String; = "picturePath"

.field public static final RECORD_INDEX:Ljava/lang/String; = "recordIndex"


# instance fields
.field private _db:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 28
    const-string v0, "create table %s (%s integer primary key autoincrement, %s text not null,%s int,%s int,%s int,%s int,%s int,%s text,%s text);"

    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 29
    const-string v3, "record"

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

    const-string v3, "recordIndex"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "beginTime"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "endTime"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "haveLocal"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "picturePath"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "pathName"

    aput-object v3, v1, v2

    .line 28
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 27
    sput-object v0, Lcom/easyview/table/RecordTable;->CREATE_RECORD_TABLE:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/easyview/table/RecordTable;->_db:Landroid/database/sqlite/SQLiteDatabase;

    .line 44
    iput-object p1, p0, Lcom/easyview/table/RecordTable;->_db:Landroid/database/sqlite/SQLiteDatabase;

    .line 45
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/easyview/table/RecordTable;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    invoke-static {p0}, Lobject/p2pipcam/utils/DataBaseHelper;->getInstance(Landroid/content/Context;)Lobject/p2pipcam/utils/DataBaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lobject/p2pipcam/utils/DataBaseHelper;->getRecordTable()Lcom/easyview/table/RecordTable;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Landroid/database/sqlite/SQLiteDatabase;)Lcom/easyview/table/RecordTable;
    .locals 1
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 33
    new-instance v0, Lcom/easyview/table/RecordTable;

    invoke-direct {v0, p0}, Lcom/easyview/table/RecordTable;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    return-object v0
.end method


# virtual methods
.method public CreateTable()V
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/easyview/table/RecordTable;->_db:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/easyview/table/RecordTable;->_db:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v1, Lcom/easyview/table/RecordTable;->CREATE_RECORD_TABLE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 57
    :cond_0
    return-void
.end method

.method public Save(Ljava/lang/String;IIILjava/lang/String;)J
    .locals 8
    .param p1, "did"    # Ljava/lang/String;
    .param p2, "fileID"    # I
    .param p3, "beginTime"    # I
    .param p4, "endTime"    # I
    .param p5, "picPath"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 89
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 90
    .local v0, "initialValues":Landroid/content/ContentValues;
    const-string v3, "did"

    invoke-virtual {v0, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const-string v3, "fileID"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 92
    const-string v3, "beginTime"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 93
    const-string v3, "endTime"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 94
    const-string v3, "haveLocal"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 95
    const-string v3, "picturePath"

    invoke-virtual {v0, v3, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    iget-object v3, p0, Lcom/easyview/table/RecordTable;->_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "record"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 97
    .local v1, "result":J
    const-string v3, "RecordTable"

    const-string v4, "insert result: %d %s %d %d"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v7

    const/4 v6, 0x1

    aput-object p1, v5, v6

    const/4 v6, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    return-wide v1
.end method

.method public Save(Ljava/lang/String;ILcom/easyview/struct/EVCommandDefs$Event;Ljava/lang/String;)J
    .locals 8
    .param p1, "did"    # Ljava/lang/String;
    .param p2, "fileID"    # I
    .param p3, "event"    # Lcom/easyview/struct/EVCommandDefs$Event;
    .param p4, "picPath"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 73
    invoke-virtual {p0, p1, p2, p3}, Lcom/easyview/table/RecordTable;->isExist(Ljava/lang/String;ILcom/easyview/struct/EVCommandDefs$Event;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-wide/16 v1, 0x0

    .line 84
    :goto_0
    return-wide v1

    .line 74
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 75
    .local v0, "initialValues":Landroid/content/ContentValues;
    const-string v3, "did"

    invoke-virtual {v0, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const-string v3, "fileID"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 77
    const-string v3, "recordIndex"

    iget v4, p3, Lcom/easyview/struct/EVCommandDefs$Event;->record_index:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 78
    const-string v3, "beginTime"

    iget v4, p3, Lcom/easyview/struct/EVCommandDefs$Event;->event_time:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 79
    const-string v3, "endTime"

    iget v4, p3, Lcom/easyview/struct/EVCommandDefs$Event;->event_time:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 80
    const-string v3, "haveLocal"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 81
    const-string v3, "picturePath"

    invoke-virtual {v0, v3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    iget-object v3, p0, Lcom/easyview/table/RecordTable;->_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "record"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 83
    .local v1, "result":J
    const-string v3, "RecordTable"

    const-string v4, "insert result: %d %s %d %d"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v7

    const/4 v6, 0x1

    aput-object p1, v5, v6

    const/4 v6, 0x2

    iget v7, p3, Lcom/easyview/struct/EVCommandDefs$Event;->event_time:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    iget v7, p3, Lcom/easyview/struct/EVCommandDefs$Event;->record_index:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public Update(Ljava/lang/String;III)Z
    .locals 11
    .param p1, "did"    # Ljava/lang/String;
    .param p2, "fileID"    # I
    .param p3, "recordIndex"    # I
    .param p4, "endTime"    # I

    .prologue
    .line 103
    iget-object v6, p0, Lcom/easyview/table/RecordTable;->_db:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v6, :cond_0

    const/4 v6, 0x0

    .line 112
    :goto_0
    return v6

    .line 104
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/easyview/table/RecordTable;->getBeginTime(Ljava/lang/String;II)I

    move-result v2

    .line 105
    .local v2, "beginTime":I
    sub-int v6, p4, v2

    const/16 v7, 0xe10

    if-le v6, v7, :cond_1

    const/4 v6, 0x0

    goto :goto_0

    .line 106
    :cond_1
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 107
    .local v3, "cv":Landroid/content/ContentValues;
    const-string v6, "endTime"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 108
    const-string v6, "%s = ? and %s = ? and %s = ?"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "did"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-string v9, "recordIndex"

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const-string v9, "beginTime"

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 109
    .local v0, "Where":Ljava/lang/String;
    const/4 v6, 0x3

    new-array v1, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v1, v6

    const/4 v6, 0x1

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v6

    const/4 v6, 0x2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v6

    .line 110
    .local v1, "args":[Ljava/lang/String;
    iget-object v6, p0, Lcom/easyview/table/RecordTable;->_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v7, "record"

    invoke-virtual {v6, v7, v3, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    int-to-long v4, v6

    .line 111
    .local v4, "result":J
    const-string v6, "RecordTable"

    const-string v7, "Update result:%d %s %d %d"

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object p1, v8, v9

    const/4 v9, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-lez v6, :cond_2

    const/4 v6, 0x1

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public Update(Ljava/lang/String;IILjava/lang/String;)Z
    .locals 7
    .param p1, "did"    # Ljava/lang/String;
    .param p2, "fileID"    # I
    .param p3, "beginTime"    # I
    .param p4, "pathName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 134
    iget-object v3, p0, Lcom/easyview/table/RecordTable;->_db:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v3, :cond_0

    .line 139
    :goto_0
    return v1

    .line 135
    :cond_0
    const-string v3, "UPDATE %s SET %s = 1,%s = \'%s\' WHERE %s = \'%s\' AND %s = %d AND %s = %d "

    const/16 v4, 0xa

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "record"

    aput-object v5, v4, v1

    const-string v5, "haveLocal"

    aput-object v5, v4, v2

    const/4 v5, 0x2

    const-string v6, "pathName"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    aput-object p4, v4, v5

    const/4 v5, 0x4

    .line 136
    const-string v6, "did"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    aput-object p1, v4, v5

    const/4 v5, 0x6

    const-string v6, "fileID"

    aput-object v6, v4, v5

    const/4 v5, 0x7

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x8

    const-string v6, "beginTime"

    aput-object v6, v4, v5

    const/16 v5, 0x9

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    .line 135
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, "sql":Ljava/lang/String;
    const-string v3, "RecordTable"

    const-string v4, "SQL:%s"

    new-array v5, v2, [Ljava/lang/Object;

    aput-object v0, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object v1, p0, Lcom/easyview/table/RecordTable;->_db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    move v1, v2

    .line 139
    goto :goto_0
.end method

.method public UpgradeToVersion3()V
    .locals 5

    .prologue
    .line 63
    iget-object v1, p0, Lcom/easyview/table/RecordTable;->_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "alter table record rename to temp_B"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0}, Lcom/easyview/table/RecordTable;->CreateTable()V

    .line 65
    const-string v1, "INSERT INTO %s SELECT %s,%s,0,%s,%s,%s,%s,%s,%s FROM temp_B;"

    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "record"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 66
    const-string v4, "id"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "did"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "recordIndex"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "beginTime"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "endTime"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "haveLocal"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "picturePath"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "pathName"

    aput-object v4, v2, v3

    .line 65
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, "sql":Ljava/lang/String;
    iget-object v1, p0, Lcom/easyview/table/RecordTable;->_db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 68
    iget-object v1, p0, Lcom/easyview/table/RecordTable;->_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "DROP TABLE temp_B;"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method public delete(Ljava/lang/String;)Z
    .locals 6
    .param p1, "did"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 275
    iget-object v2, p0, Lcom/easyview/table/RecordTable;->_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "record"

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

.method public delete(Ljava/lang/String;II)Z
    .locals 10
    .param p1, "did"    # Ljava/lang/String;
    .param p2, "fileID"    # I
    .param p3, "recordIndex"    # I

    .prologue
    const/4 v6, 0x3

    const/4 v9, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 279
    const-string v3, "%s=? AND %s=? and %s=?"

    new-array v4, v6, [Ljava/lang/Object;

    const-string v5, "did"

    aput-object v5, v4, v2

    const-string v5, "fileID"

    aput-object v5, v4, v1

    const-string v5, "recordIndex"

    aput-object v5, v4, v9

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 280
    .local v0, "clause":Ljava/lang/String;
    iget-object v3, p0, Lcom/easyview/table/RecordTable;->_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "record"

    new-array v5, v6, [Ljava/lang/String;

    aput-object p1, v5, v2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

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

.method public getBeginTime(Ljava/lang/String;II)I
    .locals 7
    .param p1, "did"    # Ljava/lang/String;
    .param p2, "fileID"    # I
    .param p3, "recordIndex"    # I

    .prologue
    .line 117
    const-string v3, "select %s from %s where %s = \'%s\' AND %s = %d AND %s = %d order by %s desc"

    const/16 v4, 0x9

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 118
    const-string v6, "beginTime"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "record"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "did"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    aput-object p1, v4, v5

    const/4 v5, 0x4

    const-string v6, "fileID"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string v6, "recordIndex"

    aput-object v6, v4, v5

    const/4 v5, 0x7

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x8

    const-string v6, "beginTime"

    aput-object v6, v4, v5

    .line 117
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 119
    .local v2, "sql":Ljava/lang/String;
    iget-object v3, p0, Lcom/easyview/table/RecordTable;->_db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 120
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 121
    .local v1, "result":I
    if-eqz v0, :cond_1

    .line 123
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 124
    const-string v3, "beginTime"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 126
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 128
    :cond_1
    return v1
.end method

.method public getDuration(Ljava/lang/String;II)I
    .locals 8
    .param p1, "did"    # Ljava/lang/String;
    .param p2, "fileID"    # I
    .param p3, "recordIndex"    # I

    .prologue
    const/4 v7, 0x0

    .line 226
    const-string v3, "select %s - %s from %s where %s = \'%s\' AND %s = %d and %s = %d "

    const/16 v4, 0x9

    new-array v4, v4, [Ljava/lang/Object;

    .line 227
    const-string v5, "endTime"

    aput-object v5, v4, v7

    const/4 v5, 0x1

    const-string v6, "beginTime"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "record"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string v6, "did"

    aput-object v6, v4, v5

    const/4 v5, 0x4

    aput-object p1, v4, v5

    const/4 v5, 0x5

    const-string v6, "fileID"

    aput-object v6, v4, v5

    const/4 v5, 0x6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x7

    const-string v6, "recordIndex"

    aput-object v6, v4, v5

    const/16 v5, 0x8

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    .line 226
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 228
    .local v2, "sql":Ljava/lang/String;
    iget-object v3, p0, Lcom/easyview/table/RecordTable;->_db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 229
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 230
    .local v1, "haveVideo":I
    if-eqz v0, :cond_1

    .line 232
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 233
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 235
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 238
    :cond_1
    return v1
.end method

.method public getDuration(Ljava/lang/String;III)I
    .locals 8
    .param p1, "did"    # Ljava/lang/String;
    .param p2, "fileID"    # I
    .param p3, "recordIndex"    # I
    .param p4, "eventTime"    # I

    .prologue
    const/4 v7, 0x0

    .line 242
    const-string v3, "select %s - %s from %s where %s = \'%s\' AND %s = %d and %s = %d and %s <= %d and %s >= %d"

    const/16 v4, 0xd

    new-array v4, v4, [Ljava/lang/Object;

    .line 243
    const-string v5, "endTime"

    aput-object v5, v4, v7

    const/4 v5, 0x1

    const-string v6, "beginTime"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "record"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string v6, "did"

    aput-object v6, v4, v5

    const/4 v5, 0x4

    aput-object p1, v4, v5

    const/4 v5, 0x5

    const-string v6, "fileID"

    aput-object v6, v4, v5

    const/4 v5, 0x6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x7

    const-string v6, "recordIndex"

    aput-object v6, v4, v5

    const/16 v5, 0x8

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x9

    const-string v6, "beginTime"

    aput-object v6, v4, v5

    const/16 v5, 0xa

    add-int/lit8 v6, p4, 0xf

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0xb

    const-string v6, "endTime"

    aput-object v6, v4, v5

    const/16 v5, 0xc

    add-int/lit8 v6, p4, -0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    .line 242
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 244
    .local v2, "sql":Ljava/lang/String;
    iget-object v3, p0, Lcom/easyview/table/RecordTable;->_db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 245
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 246
    .local v1, "haveVideo":I
    if-eqz v0, :cond_1

    .line 248
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 249
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 251
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 254
    :cond_1
    return v1
.end method

.method public getHaveVideo(Ljava/lang/String;III)I
    .locals 7
    .param p1, "did"    # Ljava/lang/String;
    .param p2, "fileID"    # I
    .param p3, "recordIndex"    # I
    .param p4, "eventTime"    # I

    .prologue
    .line 199
    const-string v3, "select %s from %s where %s = \'%s\' AND %s = %d and %s = %d and %s <= %d and %s >= %d"

    const/16 v4, 0xc

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 200
    const-string v6, "haveLocal"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "record"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "did"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    aput-object p1, v4, v5

    const/4 v5, 0x4

    const-string v6, "fileID"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string v6, "recordIndex"

    aput-object v6, v4, v5

    const/4 v5, 0x7

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x8

    const-string v6, "beginTime"

    aput-object v6, v4, v5

    const/16 v5, 0x9

    add-int/lit8 v6, p4, 0xf

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0xa

    const-string v6, "endTime"

    aput-object v6, v4, v5

    const/16 v5, 0xb

    add-int/lit8 v6, p4, -0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    .line 199
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 201
    .local v2, "sql":Ljava/lang/String;
    iget-object v3, p0, Lcom/easyview/table/RecordTable;->_db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 202
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 203
    .local v1, "haveVideo":I
    if-eqz v0, :cond_1

    .line 205
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 206
    const-string v3, "haveLocal"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 208
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 211
    :cond_1
    return v1
.end method

.method public getPicturePath(Ljava/lang/String;II)Ljava/lang/String;
    .locals 7
    .param p1, "did"    # Ljava/lang/String;
    .param p2, "fileID"    # I
    .param p3, "beginTime"    # I

    .prologue
    .line 152
    const-string v3, "select %s from %s where %s = \'%s\' AND %s = %d and %s = %d"

    const/16 v4, 0x8

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "picturePath"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "record"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "did"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    aput-object p1, v4, v5

    const/4 v5, 0x4

    .line 153
    const-string v6, "fileID"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string v6, "beginTime"

    aput-object v6, v4, v5

    const/4 v5, 0x7

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    .line 152
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 154
    .local v2, "sql":Ljava/lang/String;
    iget-object v3, p0, Lcom/easyview/table/RecordTable;->_db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 155
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 156
    .local v1, "path":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 158
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 159
    const-string v3, "picturePath"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 161
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 164
    :cond_1
    return-object v1
.end method

.method public getVideoPath(Ljava/lang/String;III)Ljava/lang/String;
    .locals 7
    .param p1, "did"    # Ljava/lang/String;
    .param p2, "fileID"    # I
    .param p3, "recordIndex"    # I
    .param p4, "eventTime"    # I

    .prologue
    .line 168
    const-string v3, "select %s from %s where %s = \'%s\' AND %s = %d and %s = %d  and %s <= %d and %s >= %d"

    const/16 v4, 0xc

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 169
    const-string v6, "pathName"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "record"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "did"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    aput-object p1, v4, v5

    const/4 v5, 0x4

    const-string v6, "fileID"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string v6, "recordIndex"

    aput-object v6, v4, v5

    const/4 v5, 0x7

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x8

    const-string v6, "beginTime"

    aput-object v6, v4, v5

    const/16 v5, 0x9

    add-int/lit8 v6, p4, 0xf

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0xa

    const-string v6, "endTime"

    aput-object v6, v4, v5

    const/16 v5, 0xb

    add-int/lit8 v6, p4, -0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    .line 168
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 170
    .local v2, "sql":Ljava/lang/String;
    iget-object v3, p0, Lcom/easyview/table/RecordTable;->_db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 171
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 172
    .local v1, "path":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 174
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 175
    const-string v3, "pathName"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 177
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 180
    :cond_1
    return-object v1
.end method

.method public isExist(Ljava/lang/String;ILcom/easyview/struct/EVCommandDefs$Event;)Z
    .locals 7
    .param p1, "did"    # Ljava/lang/String;
    .param p2, "fileID"    # I
    .param p3, "event"    # Lcom/easyview/struct/EVCommandDefs$Event;

    .prologue
    .line 259
    const-string v3, "select * from %s where %s = \'%s\' AND %s = %d and %s = %d and %s = %d"

    const/16 v4, 0x9

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 260
    const-string v6, "record"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "did"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    aput-object p1, v4, v5

    const/4 v5, 0x3

    const-string v6, "fileID"

    aput-object v6, v4, v5

    const/4 v5, 0x4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x5

    const-string v6, "recordIndex"

    aput-object v6, v4, v5

    const/4 v5, 0x6

    iget v6, p3, Lcom/easyview/struct/EVCommandDefs$Event;->record_index:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x7

    const-string v6, "beginTime"

    aput-object v6, v4, v5

    const/16 v5, 0x8

    iget v6, p3, Lcom/easyview/struct/EVCommandDefs$Event;->event_time:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    .line 259
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 261
    .local v2, "sql":Ljava/lang/String;
    iget-object v3, p0, Lcom/easyview/table/RecordTable;->_db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 262
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 263
    .local v1, "result":Z
    if-eqz v0, :cond_1

    .line 265
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 266
    const/4 v1, 0x1

    .line 268
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 271
    :cond_1
    return v1
.end method

.method public setDatabase(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/easyview/table/RecordTable;->_db:Landroid/database/sqlite/SQLiteDatabase;

    .line 50
    return-void
.end method

.method public setHaveVideo(Ljava/lang/String;III)Z
    .locals 9
    .param p1, "did"    # Ljava/lang/String;
    .param p2, "fileID"    # I
    .param p3, "recordIndex"    # I
    .param p4, "eventTime"    # I

    .prologue
    .line 215
    iget-object v5, p0, Lcom/easyview/table/RecordTable;->_db:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v5, :cond_0

    const/4 v5, 0x0

    .line 221
    :goto_0
    return v5

    .line 216
    :cond_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 217
    .local v2, "cv":Landroid/content/ContentValues;
    const-string v5, "haveLocal"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 218
    const-string v5, "%s = ? and %s = ? AND %s = ? and %s = ?"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "did"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "fileID"

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-string v8, "beginTime"

    aput-object v8, v6, v7

    const/4 v7, 0x3

    const-string v8, "recordIndex"

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 219
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

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v5

    const/4 v5, 0x3

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v5

    .line 220
    .local v1, "args":[Ljava/lang/String;
    iget-object v5, p0, Lcom/easyview/table/RecordTable;->_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "record"

    invoke-virtual {v5, v6, v2, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    int-to-long v3, v5

    .line 221
    .local v3, "result":J
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-lez v5, :cond_1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    goto :goto_0
.end method
