.class public Lcom/tutk/IOTC/St_SInfo;
.super Ljava/lang/Object;
.source "St_SInfo.java"


# instance fields
.field public CorD:B

.field public GID:I

.field public IOTCVersion:J

.field public Mode:B

.field public NatType:B

.field public PID:I

.field public RX_count:J

.field public RemoteIP:[B

.field public RemotePort:I

.field public TX_count:J

.field public UID:[B

.field public VID:I

.field public isSecure:B


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/16 v0, 0x15

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/tutk/IOTC/St_SInfo;->UID:[B

    .line 22
    const/16 v0, 0x11

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/tutk/IOTC/St_SInfo;->RemoteIP:[B

    .line 18
    return-void
.end method
