.class public Lcom/tutk/IOTC/AVIOCTRLDEFs$SMsgAVIoctrlSetDiskMngResp;
.super Ljava/lang/Object;
.source "AVIOCTRLDEFs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tutk/IOTC/AVIOCTRLDEFs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SMsgAVIoctrlSetDiskMngResp"
.end annotation


# static fields
.field static data_size:I

.field static dwSize:I

.field static nCmd:I


# instance fields
.field OverWrite:I

.field Redundancy:I

.field bSaveFlash:I

.field result_code:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x10

    .line 1179
    const/16 v0, 0x11b

    sput v0, Lcom/tutk/IOTC/AVIOCTRLDEFs$SMsgAVIoctrlSetDiskMngResp;->nCmd:I

    .line 1181
    sput v1, Lcom/tutk/IOTC/AVIOCTRLDEFs$SMsgAVIoctrlSetDiskMngResp;->data_size:I

    .line 1182
    sput v1, Lcom/tutk/IOTC/AVIOCTRLDEFs$SMsgAVIoctrlSetDiskMngResp;->dwSize:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
