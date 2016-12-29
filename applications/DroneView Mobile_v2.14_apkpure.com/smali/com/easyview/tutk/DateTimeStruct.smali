.class public Lcom/easyview/tutk/DateTimeStruct;
.super Ljava/lang/Object;
.source "DateTimeStruct.java"


# annotations
.annotation runtime Lstruct/StructClass;
.end annotation


# instance fields
.field public day:B
    .annotation runtime Lstruct/StructField;
        order = 0x2
    .end annotation
.end field

.field public hour:B
    .annotation runtime Lstruct/StructField;
        order = 0x4
    .end annotation
.end field

.field public minute:B
    .annotation runtime Lstruct/StructField;
        order = 0x5
    .end annotation
.end field

.field public month:B
    .annotation runtime Lstruct/StructField;
        order = 0x1
    .end annotation
.end field

.field public second:B
    .annotation runtime Lstruct/StructField;
        order = 0x6
    .end annotation
.end field

.field public wday:B
    .annotation runtime Lstruct/StructField;
        order = 0x3
    .end annotation
.end field

.field public year:S
    .annotation runtime Lstruct/StructField;
        order = 0x0
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLocalTime()Ljava/lang/String;
    .locals 4

    .prologue
    .line 71
    const-string v2, "gmt"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 72
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {p0}, Lcom/easyview/tutk/DateTimeStruct;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 73
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 75
    .local v1, "dateFormat":Ljava/text/SimpleDateFormat;
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 76
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getTimeInMillis()J
    .locals 7

    .prologue
    .line 42
    const-string v1, "gmt"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 43
    .local v0, "cal":Ljava/util/Calendar;
    iget-short v1, p0, Lcom/easyview/tutk/DateTimeStruct;->year:S

    iget-byte v2, p0, Lcom/easyview/tutk/DateTimeStruct;->month:B

    add-int/lit8 v2, v2, -0x1

    iget-byte v3, p0, Lcom/easyview/tutk/DateTimeStruct;->day:B

    iget-byte v4, p0, Lcom/easyview/tutk/DateTimeStruct;->hour:B

    iget-byte v5, p0, Lcom/easyview/tutk/DateTimeStruct;->minute:B

    iget-byte v6, p0, Lcom/easyview/tutk/DateTimeStruct;->second:B

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 45
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    return-wide v1
.end method

.method public parse(Ljava/lang/String;)V
    .locals 5
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 50
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v1, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 52
    .local v1, "dateFormat":Ljava/text/SimpleDateFormat;
    :try_start_0
    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    .line 53
    .local v3, "t":Ljava/util/Date;
    const-string v4, "gmt"

    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 54
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 55
    invoke-virtual {p0, v0}, Lcom/easyview/tutk/DateTimeStruct;->setCalendar(Ljava/util/Calendar;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    .end local v0    # "cal":Ljava/util/Calendar;
    .end local v3    # "t":Ljava/util/Date;
    :goto_0
    return-void

    .line 56
    :catch_0
    move-exception v2

    .line 58
    .local v2, "e":Ljava/text/ParseException;
    invoke-virtual {v2}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_0
.end method

.method public setCalendar(Ljava/util/Calendar;)V
    .locals 1
    .param p1, "cal"    # Ljava/util/Calendar;

    .prologue
    .line 31
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/easyview/tutk/DateTimeStruct;->year:S

    .line 32
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/easyview/tutk/DateTimeStruct;->month:B

    .line 33
    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/easyview/tutk/DateTimeStruct;->day:B

    .line 34
    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/easyview/tutk/DateTimeStruct;->wday:B

    .line 35
    const/16 v0, 0xb

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/easyview/tutk/DateTimeStruct;->hour:B

    .line 36
    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/easyview/tutk/DateTimeStruct;->minute:B

    .line 37
    const/16 v0, 0xd

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/easyview/tutk/DateTimeStruct;->second:B

    .line 38
    return-void
.end method
