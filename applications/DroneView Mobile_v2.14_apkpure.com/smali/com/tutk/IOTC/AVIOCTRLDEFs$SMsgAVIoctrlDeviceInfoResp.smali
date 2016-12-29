.class public Lcom/tutk/IOTC/AVIOCTRLDEFs$SMsgAVIoctrlDeviceInfoResp;
.super Ljava/lang/Object;
.source "AVIOCTRLDEFs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tutk/IOTC/AVIOCTRLDEFs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SMsgAVIoctrlDeviceInfoResp"
.end annotation


# instance fields
.field channel:I

.field free:I

.field model:[B

.field reserved:[B

.field final synthetic this$0:Lcom/tutk/IOTC/AVIOCTRLDEFs;

.field total:I

.field vendor:[B

.field version:I


# direct methods
.method public constructor <init>(Lcom/tutk/IOTC/AVIOCTRLDEFs;)V
    .locals 2

    .prologue
    const/16 v1, 0x10

    .line 513
    iput-object p1, p0, Lcom/tutk/IOTC/AVIOCTRLDEFs$SMsgAVIoctrlDeviceInfoResp;->this$0:Lcom/tutk/IOTC/AVIOCTRLDEFs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 514
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/tutk/IOTC/AVIOCTRLDEFs$SMsgAVIoctrlDeviceInfoResp;->model:[B

    .line 515
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/tutk/IOTC/AVIOCTRLDEFs$SMsgAVIoctrlDeviceInfoResp;->vendor:[B

    .line 520
    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/tutk/IOTC/AVIOCTRLDEFs$SMsgAVIoctrlDeviceInfoResp;->reserved:[B

    return-void
.end method
