.class public Lcom/tutk/IOTC/AVIOCTRLDEFs$SMsgAVIoctrlSetWifiReq;
.super Ljava/lang/Object;
.source "AVIOCTRLDEFs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tutk/IOTC/AVIOCTRLDEFs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SMsgAVIoctrlSetWifiReq"
.end annotation


# instance fields
.field enctype:B

.field mode:B

.field password:[B

.field reserved:[B

.field ssid:[B


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x20

    .line 590
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 591
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/tutk/IOTC/AVIOCTRLDEFs$SMsgAVIoctrlSetWifiReq;->ssid:[B

    .line 592
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/tutk/IOTC/AVIOCTRLDEFs$SMsgAVIoctrlSetWifiReq;->password:[B

    .line 595
    const/16 v0, 0xa

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/tutk/IOTC/AVIOCTRLDEFs$SMsgAVIoctrlSetWifiReq;->reserved:[B

    .line 590
    return-void
.end method

.method public static parseContent([B[BBB)[B
    .locals 4
    .param p0, "ssid"    # [B
    .param p1, "password"    # [B
    .param p2, "mode"    # B
    .param p3, "enctype"    # B

    .prologue
    const/4 v3, 0x0

    .line 599
    const/16 v1, 0x4c

    new-array v0, v1, [B

    .line 601
    .local v0, "result":[B
    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 602
    const/16 v1, 0x20

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 603
    const/16 v1, 0x40

    aput-byte p2, v0, v1

    .line 604
    const/16 v1, 0x41

    aput-byte p3, v0, v1

    .line 606
    return-object v0
.end method
