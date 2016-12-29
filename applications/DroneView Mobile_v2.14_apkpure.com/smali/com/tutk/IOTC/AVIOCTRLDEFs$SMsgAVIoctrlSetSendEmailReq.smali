.class public Lcom/tutk/IOTC/AVIOCTRLDEFs$SMsgAVIoctrlSetSendEmailReq;
.super Ljava/lang/Object;
.source "AVIOCTRLDEFs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tutk/IOTC/AVIOCTRLDEFs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SMsgAVIoctrlSetSendEmailReq"
.end annotation


# static fields
.field static bSendEmail:C


# instance fields
.field channel:I

.field reserved:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 420
    const/4 v0, 0x1

    sput-char v0, Lcom/tutk/IOTC/AVIOCTRLDEFs$SMsgAVIoctrlSetSendEmailReq;->bSendEmail:C

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 418
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 419
    const/4 v0, 0x0

    iput v0, p0, Lcom/tutk/IOTC/AVIOCTRLDEFs$SMsgAVIoctrlSetSendEmailReq;->channel:I

    .line 418
    return-void
.end method

.method public static parseContent(IB)[B
    .locals 6
    .param p0, "channel"    # I
    .param p1, "quality"    # B

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x4

    .line 425
    const/16 v3, 0x8

    new-array v2, v3, [B

    .line 426
    .local v2, "result":[B
    invoke-static {p0}, Lcom/tutk/IOTC/Packet;->intToByteArray_Little(I)[B

    move-result-object v1

    .line 427
    .local v1, "nchannel":[B
    invoke-static {v1, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 428
    sget-char v3, Lcom/tutk/IOTC/AVIOCTRLDEFs$SMsgAVIoctrlSetSendEmailReq;->bSendEmail:C

    invoke-static {v3}, Lcom/tutk/IOTC/Packet;->intToByteArray_Little(I)[B

    move-result-object v0

    .line 429
    .local v0, "nbSendEmail":[B
    invoke-static {v0, v5, v2, v4, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 432
    aput-byte p1, v2, v4

    .line 434
    return-object v2
.end method
