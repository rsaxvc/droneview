.class public Lcom/tutk/IOTC/AVIOCTRLDEFs$SMsgAVIoctrlPlayRecord;
.super Ljava/lang/Object;
.source "AVIOCTRLDEFs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tutk/IOTC/AVIOCTRLDEFs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SMsgAVIoctrlPlayRecord"
.end annotation


# instance fields
.field Param:I

.field channel:I

.field command:I

.field reserved:[B

.field stTimeDay:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 837
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 841
    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/tutk/IOTC/AVIOCTRLDEFs$SMsgAVIoctrlPlayRecord;->stTimeDay:[B

    .line 842
    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/tutk/IOTC/AVIOCTRLDEFs$SMsgAVIoctrlPlayRecord;->reserved:[B

    .line 837
    return-void
.end method

.method public static parseContent(IIIJ)[B
    .locals 15
    .param p0, "channel"    # I
    .param p1, "command"    # I
    .param p2, "param"    # I
    .param p3, "time"    # J

    .prologue
    .line 846
    const/16 v2, 0x18

    new-array v13, v2, [B

    .line 848
    .local v13, "result":[B
    invoke-static {p0}, Lcom/tutk/IOTC/Packet;->intToByteArray_Little(I)[B

    move-result-object v10

    .line 849
    .local v10, "ch":[B
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x4

    invoke-static {v10, v2, v13, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 851
    invoke-static/range {p1 .. p1}, Lcom/tutk/IOTC/Packet;->intToByteArray_Little(I)[B

    move-result-object v11

    .line 852
    .local v11, "cmd":[B
    const/4 v2, 0x0

    const/4 v3, 0x4

    const/4 v4, 0x4

    invoke-static {v11, v2, v13, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 854
    invoke-static/range {p2 .. p2}, Lcom/tutk/IOTC/Packet;->intToByteArray_Little(I)[B

    move-result-object v12

    .line 855
    .local v12, "p":[B
    const/4 v2, 0x0

    const/16 v3, 0x8

    const/4 v4, 0x4

    invoke-static {v12, v2, v13, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 857
    const-string v2, "gmt"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v9

    .line 858
    .local v9, "cal":Ljava/util/Calendar;
    move-wide/from16 v0, p3

    invoke-virtual {v9, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 859
    const/4 v2, 0x5

    const/4 v3, -0x1

    invoke-virtual {v9, v2, v3}, Ljava/util/Calendar;->add(II)V

    .line 860
    const/4 v2, 0x5

    const/4 v3, 0x1

    invoke-virtual {v9, v2, v3}, Ljava/util/Calendar;->add(II)V

    .line 861
    const/4 v2, 0x1

    invoke-virtual {v9, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {v9, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x5

    invoke-virtual {v9, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 862
    const/4 v5, 0x7

    invoke-virtual {v9, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/16 v6, 0xb

    invoke-virtual {v9, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const/16 v7, 0xc

    invoke-virtual {v9, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    const/16 v8, 0xd

    invoke-virtual {v9, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 861
    invoke-static/range {v2 .. v8}, Lcom/tutk/IOTC/AVIOCTRLDEFs$STimeDay;->parseContent(IIIIIII)[B

    move-result-object v14

    .line 863
    .local v14, "timedata":[B
    const/4 v2, 0x0

    const/16 v3, 0xc

    const/16 v4, 0x8

    invoke-static {v14, v2, v13, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 865
    return-object v13
.end method

.method public static parseContent(III[B)[B
    .locals 8
    .param p0, "channel"    # I
    .param p1, "command"    # I
    .param p2, "param"    # I
    .param p3, "time"    # [B

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x4

    const/4 v5, 0x0

    .line 870
    const/16 v4, 0x18

    new-array v3, v4, [B

    .line 872
    .local v3, "result":[B
    invoke-static {p0}, Lcom/tutk/IOTC/Packet;->intToByteArray_Little(I)[B

    move-result-object v0

    .line 873
    .local v0, "ch":[B
    invoke-static {v0, v5, v3, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 875
    invoke-static {p1}, Lcom/tutk/IOTC/Packet;->intToByteArray_Little(I)[B

    move-result-object v1

    .line 876
    .local v1, "cmd":[B
    invoke-static {v1, v5, v3, v6, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 878
    invoke-static {p2}, Lcom/tutk/IOTC/Packet;->intToByteArray_Little(I)[B

    move-result-object v2

    .line 879
    .local v2, "p":[B
    invoke-static {v2, v5, v3, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 881
    const/16 v4, 0xc

    invoke-static {p3, v5, v3, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 883
    return-object v3
.end method
