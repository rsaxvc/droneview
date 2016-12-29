.class public Lcom/tutk/IOTC/AVIOCTRLDEFs$SMsgAVIoctrlSetMotionDetectReq;
.super Ljava/lang/Object;
.source "AVIOCTRLDEFs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tutk/IOTC/AVIOCTRLDEFs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SMsgAVIoctrlSetMotionDetectReq"
.end annotation


# instance fields
.field channel:I

.field sensitivity:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 463
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseContent(II)[B
    .locals 6
    .param p0, "channel"    # I
    .param p1, "sensitivity"    # I

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 469
    const/16 v3, 0x8

    new-array v1, v3, [B

    .line 470
    .local v1, "result":[B
    invoke-static {p0}, Lcom/tutk/IOTC/Packet;->intToByteArray_Little(I)[B

    move-result-object v0

    .line 471
    .local v0, "ch":[B
    invoke-static {p1}, Lcom/tutk/IOTC/Packet;->intToByteArray_Little(I)[B

    move-result-object v2

    .line 473
    .local v2, "sen":[B
    invoke-static {v0, v4, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 474
    invoke-static {v2, v4, v1, v5, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 476
    return-object v1
.end method
