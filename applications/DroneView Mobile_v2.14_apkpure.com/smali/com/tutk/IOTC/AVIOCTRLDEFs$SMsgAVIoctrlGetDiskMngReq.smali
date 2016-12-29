.class public Lcom/tutk/IOTC/AVIOCTRLDEFs$SMsgAVIoctrlGetDiskMngReq;
.super Ljava/lang/Object;
.source "AVIOCTRLDEFs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tutk/IOTC/AVIOCTRLDEFs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SMsgAVIoctrlGetDiskMngReq"
.end annotation


# static fields
.field static data_size:I

.field static dwSize:I

.field static nCmd:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x10

    .line 1191
    const v0, 0x10000015

    sput v0, Lcom/tutk/IOTC/AVIOCTRLDEFs$SMsgAVIoctrlGetDiskMngReq;->nCmd:I

    .line 1192
    sput v1, Lcom/tutk/IOTC/AVIOCTRLDEFs$SMsgAVIoctrlGetDiskMngReq;->data_size:I

    .line 1193
    sput v1, Lcom/tutk/IOTC/AVIOCTRLDEFs$SMsgAVIoctrlGetDiskMngReq;->dwSize:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseContent()[B
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x0

    .line 1196
    const/16 v4, 0x18

    new-array v3, v4, [B

    .line 1198
    .local v3, "result":[B
    sget v4, Lcom/tutk/IOTC/AVIOCTRLDEFs$SMsgAVIoctrlGetDiskMngReq;->nCmd:I

    invoke-static {v4}, Lcom/tutk/IOTC/Packet;->intToByteArray_Little(I)[B

    move-result-object v1

    .line 1199
    .local v1, "cmd":[B
    invoke-static {v1, v5, v3, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1201
    sget v4, Lcom/tutk/IOTC/AVIOCTRLDEFs$SMsgAVIoctrlGetDiskMngReq;->data_size:I

    invoke-static {v4}, Lcom/tutk/IOTC/Packet;->intToByteArray_Little(I)[B

    move-result-object v2

    .line 1202
    .local v2, "datasize":[B
    invoke-static {v2, v5, v3, v6, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1204
    sget v4, Lcom/tutk/IOTC/AVIOCTRLDEFs$SMsgAVIoctrlGetDiskMngReq;->dwSize:I

    invoke-static {v4}, Lcom/tutk/IOTC/Packet;->intToByteArray_Little(I)[B

    move-result-object v0

    .line 1205
    .local v0, "Size":[B
    const/16 v4, 0x8

    invoke-static {v0, v5, v3, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1207
    return-object v3
.end method
