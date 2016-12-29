.class public Lcom/tutk/IOTC/AVIOCTRLDEFs$SMsgAVIoctrlSetRecordReq;
.super Ljava/lang/Object;
.source "AVIOCTRLDEFs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tutk/IOTC/AVIOCTRLDEFs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SMsgAVIoctrlSetRecordReq"
.end annotation


# instance fields
.field channel:I

.field recordType:I

.field reserved:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 633
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 636
    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/tutk/IOTC/AVIOCTRLDEFs$SMsgAVIoctrlSetRecordReq;->reserved:[B

    .line 633
    return-void
.end method

.method public static parseContent(II)[B
    .locals 6
    .param p0, "channel"    # I
    .param p1, "recordType"    # I

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 640
    const/16 v3, 0xc

    new-array v1, v3, [B

    .line 641
    .local v1, "result":[B
    invoke-static {p0}, Lcom/tutk/IOTC/Packet;->intToByteArray_Little(I)[B

    move-result-object v0

    .line 642
    .local v0, "ch":[B
    invoke-static {p1}, Lcom/tutk/IOTC/Packet;->intToByteArray_Little(I)[B

    move-result-object v2

    .line 644
    .local v2, "type":[B
    invoke-static {v0, v4, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 645
    invoke-static {v2, v4, v1, v5, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 647
    return-object v1
.end method
