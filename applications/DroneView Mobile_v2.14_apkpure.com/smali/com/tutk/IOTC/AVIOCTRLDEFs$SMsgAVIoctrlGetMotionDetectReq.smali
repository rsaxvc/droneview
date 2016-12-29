.class public Lcom/tutk/IOTC/AVIOCTRLDEFs$SMsgAVIoctrlGetMotionDetectReq;
.super Ljava/lang/Object;
.source "AVIOCTRLDEFs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tutk/IOTC/AVIOCTRLDEFs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SMsgAVIoctrlGetMotionDetectReq"
.end annotation


# instance fields
.field channel:I

.field reserved:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 485
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 487
    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/tutk/IOTC/AVIOCTRLDEFs$SMsgAVIoctrlGetMotionDetectReq;->reserved:[B

    .line 485
    return-void
.end method

.method public static parseContent(I)[B
    .locals 4
    .param p0, "channel"    # I

    .prologue
    const/4 v3, 0x0

    .line 491
    const/16 v2, 0x8

    new-array v1, v2, [B

    .line 492
    .local v1, "result":[B
    invoke-static {p0}, Lcom/tutk/IOTC/Packet;->intToByteArray_Little(I)[B

    move-result-object v0

    .line 493
    .local v0, "ch":[B
    const/4 v2, 0x4

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 495
    return-object v1
.end method
