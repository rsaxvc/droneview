.class public Lcom/tutk/IOTC/AVIOCTRLDEFs$SMsgAVIoctrlOperationExtStorageReq;
.super Ljava/lang/Object;
.source "AVIOCTRLDEFs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tutk/IOTC/AVIOCTRLDEFs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SMsgAVIoctrlOperationExtStorageReq"
.end annotation


# static fields
.field static chn:I

.field static data_size:I

.field static dwSize:I

.field static nCmd:I


# instance fields
.field opt:C


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0xc

    .line 1021
    const/16 v0, 0x200

    sput v0, Lcom/tutk/IOTC/AVIOCTRLDEFs$SMsgAVIoctrlOperationExtStorageReq;->nCmd:I

    .line 1022
    sput v1, Lcom/tutk/IOTC/AVIOCTRLDEFs$SMsgAVIoctrlOperationExtStorageReq;->data_size:I

    .line 1023
    sput v1, Lcom/tutk/IOTC/AVIOCTRLDEFs$SMsgAVIoctrlOperationExtStorageReq;->dwSize:I

    .line 1024
    const/4 v0, 0x0

    sput v0, Lcom/tutk/IOTC/AVIOCTRLDEFs$SMsgAVIoctrlOperationExtStorageReq;->chn:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1020
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseContent(C)[B
    .locals 9
    .param p0, "opt"    # C

    .prologue
    const/4 v7, 0x4

    const/4 v8, 0x0

    .line 1029
    const/16 v6, 0x14

    new-array v4, v6, [B

    .line 1031
    .local v4, "result":[B
    sget v6, Lcom/tutk/IOTC/AVIOCTRLDEFs$SMsgAVIoctrlOperationExtStorageReq;->nCmd:I

    invoke-static {v6}, Lcom/tutk/IOTC/Packet;->intToByteArray_Little(I)[B

    move-result-object v1

    .line 1032
    .local v1, "cmd":[B
    invoke-static {v1, v8, v4, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1034
    sget v6, Lcom/tutk/IOTC/AVIOCTRLDEFs$SMsgAVIoctrlOperationExtStorageReq;->data_size:I

    invoke-static {v6}, Lcom/tutk/IOTC/Packet;->intToByteArray_Little(I)[B

    move-result-object v2

    .line 1035
    .local v2, "datasize":[B
    invoke-static {v2, v8, v4, v7, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1037
    sget v6, Lcom/tutk/IOTC/AVIOCTRLDEFs$SMsgAVIoctrlOperationExtStorageReq;->dwSize:I

    invoke-static {v6}, Lcom/tutk/IOTC/Packet;->intToByteArray_Little(I)[B

    move-result-object v5

    .line 1038
    .local v5, "size":[B
    const/16 v6, 0x8

    invoke-static {v5, v8, v4, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1040
    sget v6, Lcom/tutk/IOTC/AVIOCTRLDEFs$SMsgAVIoctrlOperationExtStorageReq;->chn:I

    invoke-static {v6}, Lcom/tutk/IOTC/Packet;->intToByteArray_Little(I)[B

    move-result-object v0

    .line 1041
    .local v0, "channel":[B
    const/16 v6, 0xc

    invoke-static {v0, v8, v4, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1043
    invoke-static {p0}, Lcom/tutk/IOTC/Packet;->intToByteArray_Little(I)[B

    move-result-object v3

    .line 1044
    .local v3, "option":[B
    const/16 v6, 0x10

    const/4 v7, 0x1

    invoke-static {v3, v8, v4, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1046
    return-object v4
.end method
