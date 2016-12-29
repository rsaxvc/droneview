.class public Lcom/tutk/IOTC/st_LanSearchInfo;
.super Ljava/lang/Object;
.source "st_LanSearchInfo.java"


# instance fields
.field public IP:[B

.field public UID:[B

.field public port:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object v0, p0, Lcom/tutk/IOTC/st_LanSearchInfo;->UID:[B

    .line 5
    iput-object v0, p0, Lcom/tutk/IOTC/st_LanSearchInfo;->IP:[B

    .line 6
    const/4 v0, 0x0

    iput v0, p0, Lcom/tutk/IOTC/st_LanSearchInfo;->port:I

    .line 3
    return-void
.end method
