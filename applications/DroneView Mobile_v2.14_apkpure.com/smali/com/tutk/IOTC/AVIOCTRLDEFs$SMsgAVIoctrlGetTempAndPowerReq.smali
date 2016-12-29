.class public Lcom/tutk/IOTC/AVIOCTRLDEFs$SMsgAVIoctrlGetTempAndPowerReq;
.super Ljava/lang/Object;
.source "AVIOCTRLDEFs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tutk/IOTC/AVIOCTRLDEFs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SMsgAVIoctrlGetTempAndPowerReq"
.end annotation


# static fields
.field static data_size:I

.field static nCmd:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1060
    const v0, 0x10000201

    sput v0, Lcom/tutk/IOTC/AVIOCTRLDEFs$SMsgAVIoctrlGetTempAndPowerReq;->nCmd:I

    .line 1061
    const/16 v0, 0x10

    sput v0, Lcom/tutk/IOTC/AVIOCTRLDEFs$SMsgAVIoctrlGetTempAndPowerReq;->data_size:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1059
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseContent()[B
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 1064
    const/16 v3, 0x18

    new-array v2, v3, [B

    .line 1066
    .local v2, "result":[B
    sget v3, Lcom/tutk/IOTC/AVIOCTRLDEFs$SMsgAVIoctrlGetTempAndPowerReq;->nCmd:I

    invoke-static {v3}, Lcom/tutk/IOTC/Packet;->intToByteArray_Little(I)[B

    move-result-object v0

    .line 1067
    .local v0, "cmd":[B
    invoke-static {v0, v4, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1069
    sget v3, Lcom/tutk/IOTC/AVIOCTRLDEFs$SMsgAVIoctrlGetTempAndPowerReq;->data_size:I

    invoke-static {v3}, Lcom/tutk/IOTC/Packet;->intToByteArray_Little(I)[B

    move-result-object v1

    .line 1070
    .local v1, "datasize":[B
    invoke-static {v1, v4, v2, v5, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1072
    return-object v2
.end method
