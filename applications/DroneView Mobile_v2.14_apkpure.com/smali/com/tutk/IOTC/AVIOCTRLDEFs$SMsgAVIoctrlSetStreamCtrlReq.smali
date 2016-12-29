.class public Lcom/tutk/IOTC/AVIOCTRLDEFs$SMsgAVIoctrlSetStreamCtrlReq;
.super Ljava/lang/Object;
.source "AVIOCTRLDEFs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tutk/IOTC/AVIOCTRLDEFs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SMsgAVIoctrlSetStreamCtrlReq"
.end annotation


# instance fields
.field channel:I

.field quality:B

.field reserved:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 400
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 403
    const/4 v0, 0x3

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/tutk/IOTC/AVIOCTRLDEFs$SMsgAVIoctrlSetStreamCtrlReq;->reserved:[B

    .line 400
    return-void
.end method

.method public static parseContent(IB)[B
    .locals 5
    .param p0, "channel"    # I
    .param p1, "quality"    # B

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 407
    const/16 v2, 0x8

    new-array v1, v2, [B

    .line 408
    .local v1, "result":[B
    invoke-static {p0}, Lcom/tutk/IOTC/Packet;->intToByteArray_Little(I)[B

    move-result-object v0

    .line 409
    .local v0, "ch":[B
    invoke-static {v0, v3, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 410
    aput-byte p1, v1, v4

    .line 412
    return-object v1
.end method
