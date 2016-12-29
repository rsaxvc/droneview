.class public Lcom/tutk/IOTC/AVIOCTRLDEFs$SMsgAVIoctrlGetTempAndPowerResp;
.super Ljava/lang/Object;
.source "AVIOCTRLDEFs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tutk/IOTC/AVIOCTRLDEFs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SMsgAVIoctrlGetTempAndPowerResp"
.end annotation


# static fields
.field static chn:I

.field static data_size:I

.field static dwSize:I

.field static nCmd:I


# instance fields
.field power:I

.field result_code:I

.field tempature:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x10

    .line 1105
    const/16 v0, 0x200

    sput v0, Lcom/tutk/IOTC/AVIOCTRLDEFs$SMsgAVIoctrlGetTempAndPowerResp;->nCmd:I

    .line 1107
    sput v1, Lcom/tutk/IOTC/AVIOCTRLDEFs$SMsgAVIoctrlGetTempAndPowerResp;->data_size:I

    .line 1108
    sput v1, Lcom/tutk/IOTC/AVIOCTRLDEFs$SMsgAVIoctrlGetTempAndPowerResp;->dwSize:I

    .line 1109
    const/4 v0, 0x0

    sput v0, Lcom/tutk/IOTC/AVIOCTRLDEFs$SMsgAVIoctrlGetTempAndPowerResp;->chn:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
