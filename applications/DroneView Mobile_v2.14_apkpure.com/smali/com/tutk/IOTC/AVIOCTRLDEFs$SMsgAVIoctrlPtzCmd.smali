.class public Lcom/tutk/IOTC/AVIOCTRLDEFs$SMsgAVIoctrlPtzCmd;
.super Ljava/lang/Object;
.source "AVIOCTRLDEFs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tutk/IOTC/AVIOCTRLDEFs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SMsgAVIoctrlPtzCmd"
.end annotation


# instance fields
.field aux:B

.field channel:B

.field control:B

.field limit:B

.field point:B

.field reserved:[B

.field speed:B


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 350
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 357
    const/4 v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/tutk/IOTC/AVIOCTRLDEFs$SMsgAVIoctrlPtzCmd;->reserved:[B

    .line 350
    return-void
.end method

.method public static parseContent(BBBBBB)[B
    .locals 2
    .param p0, "control"    # B
    .param p1, "speed"    # B
    .param p2, "point"    # B
    .param p3, "limit"    # B
    .param p4, "aux"    # B
    .param p5, "channel"    # B

    .prologue
    .line 360
    const/16 v1, 0x8

    new-array v0, v1, [B

    .line 362
    .local v0, "result":[B
    const/4 v1, 0x0

    aput-byte p0, v0, v1

    .line 363
    const/4 v1, 0x1

    aput-byte p1, v0, v1

    .line 364
    const/4 v1, 0x2

    aput-byte p2, v0, v1

    .line 365
    const/4 v1, 0x3

    aput-byte p3, v0, v1

    .line 366
    const/4 v1, 0x4

    aput-byte p4, v0, v1

    .line 367
    const/4 v1, 0x5

    aput-byte p5, v0, v1

    .line 369
    return-object v0
.end method
