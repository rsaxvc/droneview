.class public Lcom/tutk/IOTC/AVIOCTRLDEFs$SWifiAp;
.super Ljava/lang/Object;
.source "AVIOCTRLDEFs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tutk/IOTC/AVIOCTRLDEFs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SWifiAp"
.end annotation


# instance fields
.field public enctype:B

.field public mode:B

.field public signal:B

.field public ssid:[B

.field public status:B


# direct methods
.method public constructor <init>([B)V
    .locals 5
    .param p1, "data"    # [B

    .prologue
    const/16 v4, 0x20

    .line 566
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 556
    new-array v0, v4, [B

    iput-object v0, p0, Lcom/tutk/IOTC/AVIOCTRLDEFs$SWifiAp;->ssid:[B

    .line 568
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/tutk/IOTC/AVIOCTRLDEFs$SWifiAp;->ssid:[B

    const/4 v2, 0x0

    array-length v3, p1

    invoke-static {p1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 569
    aget-byte v0, p1, v4

    iput-byte v0, p0, Lcom/tutk/IOTC/AVIOCTRLDEFs$SWifiAp;->mode:B

    .line 570
    const/16 v0, 0x21

    aget-byte v0, p1, v0

    iput-byte v0, p0, Lcom/tutk/IOTC/AVIOCTRLDEFs$SWifiAp;->enctype:B

    .line 571
    const/16 v0, 0x22

    aget-byte v0, p1, v0

    iput-byte v0, p0, Lcom/tutk/IOTC/AVIOCTRLDEFs$SWifiAp;->signal:B

    .line 572
    const/16 v0, 0x23

    aget-byte v0, p1, v0

    iput-byte v0, p0, Lcom/tutk/IOTC/AVIOCTRLDEFs$SWifiAp;->status:B

    .line 573
    return-void
.end method

.method public constructor <init>([BBBBB)V
    .locals 3
    .param p1, "bytsSSID"    # [B
    .param p2, "bytMode"    # B
    .param p3, "bytEnctype"    # B
    .param p4, "bytSignal"    # B
    .param p5, "bytStatus"    # B

    .prologue
    const/4 v2, 0x0

    .line 575
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 556
    const/16 v0, 0x20

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/tutk/IOTC/AVIOCTRLDEFs$SWifiAp;->ssid:[B

    .line 577
    iget-object v0, p0, Lcom/tutk/IOTC/AVIOCTRLDEFs$SWifiAp;->ssid:[B

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 578
    iput-byte p2, p0, Lcom/tutk/IOTC/AVIOCTRLDEFs$SWifiAp;->mode:B

    .line 579
    iput-byte p3, p0, Lcom/tutk/IOTC/AVIOCTRLDEFs$SWifiAp;->enctype:B

    .line 580
    iput-byte p4, p0, Lcom/tutk/IOTC/AVIOCTRLDEFs$SWifiAp;->signal:B

    .line 581
    iput-byte p5, p0, Lcom/tutk/IOTC/AVIOCTRLDEFs$SWifiAp;->status:B

    .line 582
    return-void
.end method

.method public static getTotalSize()I
    .locals 1

    .prologue
    .line 563
    const/16 v0, 0x24

    return v0
.end method
