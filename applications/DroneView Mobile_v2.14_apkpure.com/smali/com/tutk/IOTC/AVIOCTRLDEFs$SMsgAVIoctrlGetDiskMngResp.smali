.class public Lcom/tutk/IOTC/AVIOCTRLDEFs$SMsgAVIoctrlGetDiskMngResp;
.super Ljava/lang/Object;
.source "AVIOCTRLDEFs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tutk/IOTC/AVIOCTRLDEFs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SMsgAVIoctrlGetDiskMngResp"
.end annotation


# static fields
.field static data_size:I

.field static dwSize:I

.field static nCmd:I


# instance fields
.field public OverWrite:I

.field public Redundancy:I

.field public bSaveFlash:I

.field public result_code:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x10

    .line 1246
    const v0, 0x10000015

    sput v0, Lcom/tutk/IOTC/AVIOCTRLDEFs$SMsgAVIoctrlGetDiskMngResp;->nCmd:I

    .line 1248
    sput v1, Lcom/tutk/IOTC/AVIOCTRLDEFs$SMsgAVIoctrlGetDiskMngResp;->data_size:I

    .line 1249
    sput v1, Lcom/tutk/IOTC/AVIOCTRLDEFs$SMsgAVIoctrlGetDiskMngResp;->dwSize:I

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "data"    # [B

    .prologue
    .line 1254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1255
    const/4 v0, 0x4

    invoke-static {p1, v0}, Lcom/tutk/IOTC/Packet;->byteArrayToInt_Little([BI)I

    move-result v0

    iput v0, p0, Lcom/tutk/IOTC/AVIOCTRLDEFs$SMsgAVIoctrlGetDiskMngResp;->result_code:I

    .line 1256
    const/16 v0, 0x14

    invoke-static {p1, v0}, Lcom/tutk/IOTC/Packet;->byteArrayToInt_Little([BI)I

    move-result v0

    iput v0, p0, Lcom/tutk/IOTC/AVIOCTRLDEFs$SMsgAVIoctrlGetDiskMngResp;->OverWrite:I

    .line 1257
    return-void
.end method
