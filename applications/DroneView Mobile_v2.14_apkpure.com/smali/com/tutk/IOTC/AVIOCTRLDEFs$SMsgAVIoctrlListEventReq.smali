.class public Lcom/tutk/IOTC/AVIOCTRLDEFs$SMsgAVIoctrlListEventReq;
.super Ljava/lang/Object;
.source "AVIOCTRLDEFs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tutk/IOTC/AVIOCTRLDEFs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SMsgAVIoctrlListEventReq"
.end annotation


# instance fields
.field channel:I

.field endutctime:[B

.field event:B

.field reversed:[B

.field startutctime:[B

.field status:B


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 765
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 768
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/tutk/IOTC/AVIOCTRLDEFs$SMsgAVIoctrlListEventReq;->startutctime:[B

    .line 769
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/tutk/IOTC/AVIOCTRLDEFs$SMsgAVIoctrlListEventReq;->endutctime:[B

    .line 772
    const/4 v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/tutk/IOTC/AVIOCTRLDEFs$SMsgAVIoctrlListEventReq;->reversed:[B

    .line 765
    return-void
.end method

.method public static parseConent(IJJBB)[B
    .locals 16
    .param p0, "channel"    # I
    .param p1, "startutctime"    # J
    .param p3, "endutctime"    # J
    .param p5, "event"    # B
    .param p6, "status"    # B

    .prologue
    .line 776
    const-string v2, "gmt"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v12

    .line 777
    .local v12, "startCal":Ljava/util/Calendar;
    const-string v2, "gmt"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v14

    .line 778
    .local v14, "stopCal":Ljava/util/Calendar;
    move-wide/from16 v0, p1

    invoke-virtual {v12, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 779
    move-wide/from16 v0, p3

    invoke-virtual {v14, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 783
    const/4 v15, 0x0

    .line 796
    .local v15, "zone":I
    const/16 v2, 0x18

    new-array v10, v2, [B

    .line 798
    .local v10, "result":[B
    invoke-static/range {p0 .. p0}, Lcom/tutk/IOTC/Packet;->intToByteArray_Little(I)[B

    move-result-object v9

    .line 799
    .local v9, "ch":[B
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x4

    invoke-static {v9, v2, v10, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 801
    const/4 v2, 0x1

    invoke-virtual {v12, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {v12, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    const/4 v4, 0x5

    invoke-virtual {v12, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 802
    const/4 v5, 0x7

    invoke-virtual {v12, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/16 v6, 0xb

    invoke-virtual {v12, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    add-int/2addr v6, v15

    const/16 v7, 0xc

    invoke-virtual {v12, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    const/4 v8, 0x0

    .line 801
    invoke-static/range {v2 .. v8}, Lcom/tutk/IOTC/AVIOCTRLDEFs$STimeDay;->parseContent(IIIIIII)[B

    move-result-object v11

    .line 803
    .local v11, "start":[B
    const/4 v2, 0x0

    const/4 v3, 0x4

    const/16 v4, 0x8

    invoke-static {v11, v2, v10, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 805
    const/4 v2, 0x1

    invoke-virtual {v14, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {v14, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    const/4 v4, 0x5

    invoke-virtual {v14, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 806
    const/4 v5, 0x7

    invoke-virtual {v14, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/16 v6, 0xb

    invoke-virtual {v14, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    add-int/2addr v6, v15

    const/16 v7, 0xc

    invoke-virtual {v14, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    const/4 v8, 0x0

    .line 805
    invoke-static/range {v2 .. v8}, Lcom/tutk/IOTC/AVIOCTRLDEFs$STimeDay;->parseContent(IIIIIII)[B

    move-result-object v13

    .line 807
    .local v13, "stop":[B
    const/4 v2, 0x0

    const/16 v3, 0xc

    const/16 v4, 0x8

    invoke-static {v13, v2, v10, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 809
    const/16 v2, 0x14

    aput-byte p5, v10, v2

    .line 810
    const/16 v2, 0x15

    aput-byte p6, v10, v2

    .line 812
    return-object v10
.end method
