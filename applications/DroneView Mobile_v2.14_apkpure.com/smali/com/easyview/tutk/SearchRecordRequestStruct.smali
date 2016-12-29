.class public Lcom/easyview/tutk/SearchRecordRequestStruct;
.super Ljava/lang/Object;
.source "SearchRecordRequestStruct.java"


# annotations
.annotation runtime Lstruct/StructClass;
.end annotation


# instance fields
.field public BeginTime:Lcom/easyview/tutk/DateTimeStruct;
    .annotation runtime Lstruct/StructField;
        order = 0x1
    .end annotation
.end field

.field public EndTime:Lcom/easyview/tutk/DateTimeStruct;
    .annotation runtime Lstruct/StructField;
        order = 0x2
    .end annotation
.end field

.field public channel:I
    .annotation runtime Lstruct/StructField;
        order = 0x0
    .end annotation
.end field

.field public event:B
    .annotation runtime Lstruct/StructField;
        order = 0x3
    .end annotation
.end field

.field public reserved:[B
    .annotation runtime Lstruct/StructField;
        order = 0x5
    .end annotation
.end field

.field public status:B
    .annotation runtime Lstruct/StructField;
        order = 0x4
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Lcom/easyview/tutk/DateTimeStruct;

    invoke-direct {v0}, Lcom/easyview/tutk/DateTimeStruct;-><init>()V

    iput-object v0, p0, Lcom/easyview/tutk/SearchRecordRequestStruct;->BeginTime:Lcom/easyview/tutk/DateTimeStruct;

    .line 16
    new-instance v0, Lcom/easyview/tutk/DateTimeStruct;

    invoke-direct {v0}, Lcom/easyview/tutk/DateTimeStruct;-><init>()V

    iput-object v0, p0, Lcom/easyview/tutk/SearchRecordRequestStruct;->EndTime:Lcom/easyview/tutk/DateTimeStruct;

    .line 24
    const/4 v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/easyview/tutk/SearchRecordRequestStruct;->reserved:[B

    .line 10
    return-void
.end method


# virtual methods
.method public setBeginTime(J)V
    .locals 3
    .param p1, "time"    # J

    .prologue
    .line 28
    const-string v1, "gmt"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 29
    .local v0, "cal":Ljava/util/Calendar;
    const-wide/16 v1, 0x3e8

    mul-long/2addr v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 30
    iget-object v1, p0, Lcom/easyview/tutk/SearchRecordRequestStruct;->BeginTime:Lcom/easyview/tutk/DateTimeStruct;

    invoke-virtual {v1, v0}, Lcom/easyview/tutk/DateTimeStruct;->setCalendar(Ljava/util/Calendar;)V

    .line 32
    return-void
.end method

.method public setEndTime(J)V
    .locals 3
    .param p1, "time"    # J

    .prologue
    .line 35
    const-string v1, "gmt"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 36
    .local v0, "cal":Ljava/util/Calendar;
    const-wide/16 v1, 0x3e8

    mul-long/2addr v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 37
    iget-object v1, p0, Lcom/easyview/tutk/SearchRecordRequestStruct;->EndTime:Lcom/easyview/tutk/DateTimeStruct;

    invoke-virtual {v1, v0}, Lcom/easyview/tutk/DateTimeStruct;->setCalendar(Ljava/util/Calendar;)V

    .line 38
    return-void
.end method
