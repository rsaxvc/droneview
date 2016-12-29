.class public Lcom/tutk/IOTC/AVIOCTRLDEFs$SFrameInfo;
.super Ljava/lang/Object;
.source "AVIOCTRLDEFs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tutk/IOTC/AVIOCTRLDEFs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SFrameInfo"
.end annotation


# instance fields
.field cam_index:B

.field codec_id:S

.field flags:B

.field onlineNum:B

.field reserved:[B

.field reserved2:I

.field timestamp:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 301
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 307
    const/4 v0, 0x3

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/tutk/IOTC/AVIOCTRLDEFs$SFrameInfo;->reserved:[B

    .line 301
    return-void
.end method

.method public static parseContent(SBBBI)[B
    .locals 7
    .param p0, "codec_id"    # S
    .param p1, "flags"    # B
    .param p2, "cam_index"    # B
    .param p3, "online_num"    # B
    .param p4, "timestamp"    # I

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 313
    const/16 v3, 0x10

    new-array v1, v3, [B

    .line 315
    .local v1, "result":[B
    invoke-static {p0}, Lcom/tutk/IOTC/Packet;->shortToByteArray_Little(S)[B

    move-result-object v0

    .line 316
    .local v0, "codec":[B
    invoke-static {v0, v4, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 318
    aput-byte p1, v1, v5

    .line 319
    const/4 v3, 0x3

    aput-byte p2, v1, v3

    .line 320
    aput-byte p3, v1, v6

    .line 322
    invoke-static {p4}, Lcom/tutk/IOTC/Packet;->intToByteArray_Little(I)[B

    move-result-object v2

    .line 323
    .local v2, "time":[B
    const/16 v3, 0xc

    invoke-static {v2, v4, v1, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 325
    return-object v1
.end method
