.class public final Lcom/tencent/android/tpush/service/channel/protocol/TpnsTriggerReportRsp;
.super Lcom/qq/taf/jce/JceStruct;
.source "ProGuard"


# instance fields
.field public padding:B


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/tencent/android/tpush/service/channel/protocol/TpnsTriggerReportRsp;->padding:B

    .line 15
    return-void
.end method

.method public constructor <init>(B)V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/tencent/android/tpush/service/channel/protocol/TpnsTriggerReportRsp;->padding:B

    .line 19
    iput-byte p1, p0, Lcom/tencent/android/tpush/service/channel/protocol/TpnsTriggerReportRsp;->padding:B

    .line 20
    return-void
.end method


# virtual methods
.method public readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 3

    .prologue
    .line 30
    iget-byte v0, p0, Lcom/tencent/android/tpush/service/channel/protocol/TpnsTriggerReportRsp;->padding:B

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(BIZ)B

    move-result v0

    iput-byte v0, p0, Lcom/tencent/android/tpush/service/channel/protocol/TpnsTriggerReportRsp;->padding:B

    .line 31
    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    .prologue
    .line 24
    iget-byte v0, p0, Lcom/tencent/android/tpush/service/channel/protocol/TpnsTriggerReportRsp;->padding:B

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(BI)V

    .line 25
    return-void
.end method
