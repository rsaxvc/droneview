.class public Lcom/tutk/IOTC/AVIOCTRLDEFs$SQVGetConfigReqResp;
.super Ljava/lang/Object;
.source "AVIOCTRLDEFs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tutk/IOTC/AVIOCTRLDEFs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SQVGetConfigReqResp"
.end annotation


# instance fields
.field cmd:I

.field data:[B

.field data_size:I

.field result_code:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 393
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 397
    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/tutk/IOTC/AVIOCTRLDEFs$SQVGetConfigReqResp;->data:[B

    .line 393
    return-void
.end method
