.class public Lcom/tutk/IOTC/AVIOCTRLDEFs$SMsgAVIoctrlSetDiskMngReq;
.super Ljava/lang/Object;
.source "AVIOCTRLDEFs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tutk/IOTC/AVIOCTRLDEFs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SMsgAVIoctrlSetDiskMngReq"
.end annotation


# static fields
.field static Redundancy:I

.field static bSaveFlash:I

.field static data_size:I

.field static dwSize:I

.field static nCmd:I


# instance fields
.field OverWrite:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x10

    .line 1146
    const/16 v0, 0x11b

    sput v0, Lcom/tutk/IOTC/AVIOCTRLDEFs$SMsgAVIoctrlSetDiskMngReq;->nCmd:I

    .line 1147
    sput v1, Lcom/tutk/IOTC/AVIOCTRLDEFs$SMsgAVIoctrlSetDiskMngReq;->data_size:I

    .line 1148
    sput v1, Lcom/tutk/IOTC/AVIOCTRLDEFs$SMsgAVIoctrlSetDiskMngReq;->dwSize:I

    .line 1149
    const/4 v0, 0x0

    sput v0, Lcom/tutk/IOTC/AVIOCTRLDEFs$SMsgAVIoctrlSetDiskMngReq;->Redundancy:I

    .line 1151
    const/4 v0, 0x1

    sput v0, Lcom/tutk/IOTC/AVIOCTRLDEFs$SMsgAVIoctrlSetDiskMngReq;->bSaveFlash:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseContent(I)[B
    .locals 10
    .param p0, "nOverWrite"    # I

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x0

    .line 1154
    const/16 v7, 0x18

    new-array v4, v7, [B

    .line 1156
    .local v4, "result":[B
    sget v7, Lcom/tutk/IOTC/AVIOCTRLDEFs$SMsgAVIoctrlSetDiskMngReq;->nCmd:I

    invoke-static {v7}, Lcom/tutk/IOTC/Packet;->intToByteArray_Little(I)[B

    move-result-object v0

    .line 1157
    .local v0, "cmd":[B
    invoke-static {v0, v8, v4, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1159
    sget v7, Lcom/tutk/IOTC/AVIOCTRLDEFs$SMsgAVIoctrlSetDiskMngReq;->data_size:I

    invoke-static {v7}, Lcom/tutk/IOTC/Packet;->intToByteArray_Little(I)[B

    move-result-object v1

    .line 1160
    .local v1, "datasize":[B
    invoke-static {v1, v8, v4, v9, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1162
    sget v7, Lcom/tutk/IOTC/AVIOCTRLDEFs$SMsgAVIoctrlSetDiskMngReq;->dwSize:I

    invoke-static {v7}, Lcom/tutk/IOTC/Packet;->intToByteArray_Little(I)[B

    move-result-object v6

    .line 1163
    .local v6, "size":[B
    const/16 v7, 0x8

    invoke-static {v6, v8, v4, v7, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1165
    sget v7, Lcom/tutk/IOTC/AVIOCTRLDEFs$SMsgAVIoctrlSetDiskMngReq;->Redundancy:I

    invoke-static {v7}, Lcom/tutk/IOTC/Packet;->intToByteArray_Little(I)[B

    move-result-object v3

    .line 1166
    .local v3, "redundancy":[B
    const/16 v7, 0xc

    invoke-static {v3, v8, v4, v7, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1168
    invoke-static {p0}, Lcom/tutk/IOTC/Packet;->intToByteArray_Little(I)[B

    move-result-object v2

    .line 1169
    .local v2, "overwrite":[B
    const/16 v7, 0x10

    invoke-static {v2, v8, v4, v7, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1171
    sget v7, Lcom/tutk/IOTC/AVIOCTRLDEFs$SMsgAVIoctrlSetDiskMngReq;->bSaveFlash:I

    invoke-static {v7}, Lcom/tutk/IOTC/Packet;->intToByteArray_Little(I)[B

    move-result-object v5

    .line 1172
    .local v5, "saveflash":[B
    const/16 v7, 0x14

    invoke-static {v5, v8, v4, v7, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1174
    return-object v4
.end method
