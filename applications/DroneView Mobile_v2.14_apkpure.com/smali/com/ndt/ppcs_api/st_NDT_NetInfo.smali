.class public Lcom/ndt/ppcs_api/st_NDT_NetInfo;
.super Ljava/lang/Object;
.source "st_NDT_NetInfo.java"


# instance fields
.field public LanIP:[B

.field public LanIPv6:[B

.field public LanPort:I

.field public WanIP:[B

.field public WanIPv6:[B

.field public WanPort:I

.field public bReserved:[B

.field public bServerHelloAck:B


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/16 v3, 0x28

    const/16 v2, 0x10

    const/4 v1, 0x0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/ndt/ppcs_api/st_NDT_NetInfo;->LanIP:[B

    .line 5
    new-array v0, v3, [B

    iput-object v0, p0, Lcom/ndt/ppcs_api/st_NDT_NetInfo;->LanIPv6:[B

    .line 6
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/ndt/ppcs_api/st_NDT_NetInfo;->WanIP:[B

    .line 7
    new-array v0, v3, [B

    iput-object v0, p0, Lcom/ndt/ppcs_api/st_NDT_NetInfo;->WanIPv6:[B

    .line 11
    const/4 v0, 0x3

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/ndt/ppcs_api/st_NDT_NetInfo;->bReserved:[B

    .line 14
    iput-byte v1, p0, Lcom/ndt/ppcs_api/st_NDT_NetInfo;->bServerHelloAck:B

    .line 15
    iput v1, p0, Lcom/ndt/ppcs_api/st_NDT_NetInfo;->LanPort:I

    .line 16
    iput v1, p0, Lcom/ndt/ppcs_api/st_NDT_NetInfo;->WanPort:I

    .line 3
    return-void
.end method
