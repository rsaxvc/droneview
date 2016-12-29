.class public Lcom/easyview/struct/EVCommandDefs$EVTime;
.super Ljava/lang/Object;
.source "EVCommandDefs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/easyview/struct/EVCommandDefs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EVTime"
.end annotation

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
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public set(J)V
    .locals 2
    .param p1, "time"    # J

    .prologue
    .line 134
    const-string v1, "gmt"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 135
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 136
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    int-to-short v1, v1

    iput-short v1, p0, Lcom/easyview/struct/EVCommandDefs$EVTime;->year:S

    .line 137
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    iput-byte v1, p0, Lcom/easyview/struct/EVCommandDefs$EVTime;->month:B

    .line 138
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    int-to-byte v1, v1

    iput-byte v1, p0, Lcom/easyview/struct/EVCommandDefs$EVTime;->day:B

    .line 139
    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    int-to-byte v1, v1

    iput-byte v1, p0, Lcom/easyview/struct/EVCommandDefs$EVTime;->wday:B

    .line 140
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    int-to-byte v1, v1

    iput-byte v1, p0, Lcom/easyview/struct/EVCommandDefs$EVTime;->hour:B

    .line 141
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    int-to-byte v1, v1

    iput-byte v1, p0, Lcom/easyview/struct/EVCommandDefs$EVTime;->minute:B

    .line 142
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    int-to-byte v1, v1

    iput-byte v1, p0, Lcom/easyview/struct/EVCommandDefs$EVTime;->second:B

    .line 143
    return-void
.end method
