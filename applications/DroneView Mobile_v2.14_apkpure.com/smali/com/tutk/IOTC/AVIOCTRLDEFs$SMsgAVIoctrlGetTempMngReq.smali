.class public Lcom/tutk/IOTC/AVIOCTRLDEFs$SMsgAVIoctrlGetTempMngReq;
.super Ljava/lang/Object;
.source "AVIOCTRLDEFs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tutk/IOTC/AVIOCTRLDEFs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SMsgAVIoctrlGetTempMngReq"
.end annotation


# static fields
.field static nchn:I

.field static reserved:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1212
    const/4 v0, 0x0

    sput v0, Lcom/tutk/IOTC/AVIOCTRLDEFs$SMsgAVIoctrlGetTempMngReq;->nchn:I

    .line 1213
    const/4 v0, 0x4

    new-array v0, v0, [B

    sput-object v0, Lcom/tutk/IOTC/AVIOCTRLDEFs$SMsgAVIoctrlGetTempMngReq;->reserved:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseContent()[B
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 1216
    const/16 v2, 0x8

    new-array v1, v2, [B

    .line 1218
    .local v1, "result":[B
    sget v2, Lcom/tutk/IOTC/AVIOCTRLDEFs$SMsgAVIoctrlGetTempMngReq;->nchn:I

    invoke-static {v2}, Lcom/tutk/IOTC/Packet;->intToByteArray_Little(I)[B

    move-result-object v0

    .line 1219
    .local v0, "chn":[B
    invoke-static {v0, v3, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1220
    sget-object v2, Lcom/tutk/IOTC/AVIOCTRLDEFs$SMsgAVIoctrlGetTempMngReq;->reserved:[B

    invoke-static {v2, v3, v1, v4, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1222
    return-object v1
.end method
