.class public Lcom/tutk/IOTC/AVIOCTRLDEFs$SQVGetConfigReq;
.super Ljava/lang/Object;
.source "AVIOCTRLDEFs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tutk/IOTC/AVIOCTRLDEFs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SQVGetConfigReq"
.end annotation


# instance fields
.field data:[B

.field data_size:I

.field nCmd:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 373
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 376
    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/tutk/IOTC/AVIOCTRLDEFs$SQVGetConfigReq;->data:[B

    .line 373
    return-void
.end method

.method public static parseContent(II[B)[B
    .locals 6
    .param p0, "nCmd"    # I
    .param p1, "data_size"    # I
    .param p2, "data"    # [B

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 379
    const/16 v3, 0xc

    new-array v2, v3, [B

    .line 381
    .local v2, "result":[B
    invoke-static {p0}, Lcom/tutk/IOTC/Packet;->intToByteArray_Little(I)[B

    move-result-object v0

    .line 382
    .local v0, "cmd":[B
    invoke-static {v0, v4, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 384
    invoke-static {p0}, Lcom/tutk/IOTC/Packet;->intToByteArray_Little(I)[B

    move-result-object v1

    .line 385
    .local v1, "datasize":[B
    invoke-static {v1, v4, v2, v5, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 387
    const/16 v3, 0x8

    invoke-static {p2, v4, v2, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 389
    return-object v2
.end method
