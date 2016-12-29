.class public Lcom/tutk/IOTC/AVIOCTRLDEFs$STimeDay;
.super Ljava/lang/Object;
.source "AVIOCTRLDEFs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tutk/IOTC/AVIOCTRLDEFs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "STimeDay"
.end annotation


# instance fields
.field public day:B

.field public hour:B

.field private mBuf:[B

.field public minute:B

.field public month:B

.field public second:B

.field public wday:B

.field public year:S


# direct methods
.method public constructor <init>([B)V
    .locals 3
    .param p1, "data"    # [B

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 708
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 710
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/tutk/IOTC/AVIOCTRLDEFs$STimeDay;->mBuf:[B

    .line 711
    iget-object v0, p0, Lcom/tutk/IOTC/AVIOCTRLDEFs$STimeDay;->mBuf:[B

    invoke-static {p1, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 713
    invoke-static {p1, v1}, Lcom/tutk/IOTC/Packet;->byteArrayToShort_Little([BI)S

    move-result v0

    iput-short v0, p0, Lcom/tutk/IOTC/AVIOCTRLDEFs$STimeDay;->year:S

    .line 714
    const/4 v0, 0x2

    aget-byte v0, p1, v0

    iput-byte v0, p0, Lcom/tutk/IOTC/AVIOCTRLDEFs$STimeDay;->month:B

    .line 715
    const/4 v0, 0x3

    aget-byte v0, p1, v0

    iput-byte v0, p0, Lcom/tutk/IOTC/AVIOCTRLDEFs$STimeDay;->day:B

    .line 716
    const/4 v0, 0x4

    aget-byte v0, p1, v0

    iput-byte v0, p0, Lcom/tutk/IOTC/AVIOCTRLDEFs$STimeDay;->wday:B

    .line 717
    const/4 v0, 0x5

    aget-byte v0, p1, v0

    iput-byte v0, p0, Lcom/tutk/IOTC/AVIOCTRLDEFs$STimeDay;->hour:B

    .line 718
    const/4 v0, 0x6

    aget-byte v0, p1, v0

    iput-byte v0, p0, Lcom/tutk/IOTC/AVIOCTRLDEFs$STimeDay;->minute:B

    .line 719
    const/4 v0, 0x7

    aget-byte v0, p1, v0

    iput-byte v0, p0, Lcom/tutk/IOTC/AVIOCTRLDEFs$STimeDay;->second:B

    .line 720
    return-void
.end method

.method public static parseContent(IIIIIII)[B
    .locals 5
    .param p0, "year"    # I
    .param p1, "month"    # I
    .param p2, "day"    # I
    .param p3, "wday"    # I
    .param p4, "hour"    # I
    .param p5, "minute"    # I
    .param p6, "second"    # I

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 749
    const/16 v2, 0x8

    new-array v0, v2, [B

    .line 751
    .local v0, "result":[B
    int-to-short v2, p0

    invoke-static {v2}, Lcom/tutk/IOTC/Packet;->shortToByteArray_Little(S)[B

    move-result-object v1

    .line 752
    .local v1, "y":[B
    invoke-static {v1, v3, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 754
    int-to-byte v2, p1

    aput-byte v2, v0, v4

    .line 755
    const/4 v2, 0x3

    int-to-byte v3, p2

    aput-byte v3, v0, v2

    .line 756
    const/4 v2, 0x4

    int-to-byte v3, p3

    aput-byte v3, v0, v2

    .line 757
    const/4 v2, 0x5

    int-to-byte v3, p4

    aput-byte v3, v0, v2

    .line 758
    const/4 v2, 0x6

    int-to-byte v3, p5

    aput-byte v3, v0, v2

    .line 759
    const/4 v2, 0x7

    int-to-byte v3, p6

    aput-byte v3, v0, v2

    .line 761
    return-object v0
.end method


# virtual methods
.method public getLocalTime()Ljava/lang/String;
    .locals 4

    .prologue
    .line 732
    const-string v2, "gmt"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 733
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {p0}, Lcom/tutk/IOTC/AVIOCTRLDEFs$STimeDay;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 736
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 738
    .local v1, "dateFormat":Ljava/text/SimpleDateFormat;
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 740
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getTimeInMillis()J
    .locals 7

    .prologue
    .line 724
    const-string v1, "gmt"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 725
    .local v0, "cal":Ljava/util/Calendar;
    iget-short v1, p0, Lcom/tutk/IOTC/AVIOCTRLDEFs$STimeDay;->year:S

    iget-byte v2, p0, Lcom/tutk/IOTC/AVIOCTRLDEFs$STimeDay;->month:B

    add-int/lit8 v2, v2, -0x1

    iget-byte v3, p0, Lcom/tutk/IOTC/AVIOCTRLDEFs$STimeDay;->day:B

    iget-byte v4, p0, Lcom/tutk/IOTC/AVIOCTRLDEFs$STimeDay;->hour:B

    iget-byte v5, p0, Lcom/tutk/IOTC/AVIOCTRLDEFs$STimeDay;->minute:B

    iget-byte v6, p0, Lcom/tutk/IOTC/AVIOCTRLDEFs$STimeDay;->second:B

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 727
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    return-wide v1
.end method

.method public toByteArray()[B
    .locals 1

    .prologue
    .line 744
    iget-object v0, p0, Lcom/tutk/IOTC/AVIOCTRLDEFs$STimeDay;->mBuf:[B

    return-object v0
.end method
