.class Lcom/tencent/android/tpush/service/q;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/tencent/android/tpush/service/channel/p;


# instance fields
.field final synthetic a:Lcom/tencent/android/tpush/service/p;


# direct methods
.method constructor <init>(Lcom/tencent/android/tpush/service/p;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/tencent/android/tpush/service/q;->a:Lcom/tencent/android/tpush/service/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/qq/taf/jce/JceStruct;ILcom/qq/taf/jce/JceStruct;Lcom/tencent/android/tpush/service/channel/a;)V
    .locals 4

    .prologue
    .line 100
    if-nez p2, :cond_3

    .line 101
    if-eqz p1, :cond_0

    .line 105
    const/4 v1, 0x7

    move-object v0, p1

    check-cast v0, Lcom/tencent/android/tpush/service/channel/protocol/TpnsReconnectReq;

    iget-object v0, v0, Lcom/tencent/android/tpush/service/channel/protocol/TpnsReconnectReq;->recvMsgList:Ljava/util/ArrayList;

    invoke-static {v1, v0}, Lcom/tencent/android/tpush/a/a;->a(ILjava/util/List;)V

    .line 106
    invoke-static {}, Lcom/tencent/android/tpush/service/m;->e()Landroid/content/Context;

    move-result-object v1

    move-object v0, p1

    check-cast v0, Lcom/tencent/android/tpush/service/channel/protocol/TpnsReconnectReq;

    iget-object v0, v0, Lcom/tencent/android/tpush/service/channel/protocol/TpnsReconnectReq;->unregInfoList:Ljava/util/ArrayList;

    invoke-static {v1, v0}, Lcom/tencent/android/tpush/service/cache/CacheManager;->updateUnregUninList(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 110
    invoke-static {}, Lcom/tencent/android/tpush/service/b/a;->a()Lcom/tencent/android/tpush/service/b/a;

    move-result-object v1

    invoke-static {}, Lcom/tencent/android/tpush/service/m;->e()Landroid/content/Context;

    move-result-object v2

    move-object v0, p1

    check-cast v0, Lcom/tencent/android/tpush/service/channel/protocol/TpnsReconnectReq;

    iget-object v0, v0, Lcom/tencent/android/tpush/service/channel/protocol/TpnsReconnectReq;->recvMsgList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Lcom/tencent/android/tpush/service/b/a;->c(Landroid/content/Context;Ljava/util/List;)V

    .line 113
    invoke-static {}, Lcom/tencent/android/tpush/service/b/a;->a()Lcom/tencent/android/tpush/service/b/a;

    move-result-object v0

    invoke-static {}, Lcom/tencent/android/tpush/service/m;->e()Landroid/content/Context;

    move-result-object v1

    check-cast p1, Lcom/tencent/android/tpush/service/channel/protocol/TpnsReconnectReq;

    iget-object v2, p1, Lcom/tencent/android/tpush/service/channel/protocol/TpnsReconnectReq;->msgClickList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Lcom/tencent/android/tpush/service/b/a;->b(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 117
    :cond_0
    check-cast p3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsReconnectRsp;

    .line 118
    if-eqz p3, :cond_1

    iget-object v0, p3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsReconnectRsp;->appOfflinePushMsgList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsReconnectRsp;->appOfflinePushMsgList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 120
    invoke-static {}, Lcom/tencent/android/tpush/service/b/a;->a()Lcom/tencent/android/tpush/service/b/a;

    move-result-object v0

    iget-object v1, p3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsReconnectRsp;->appOfflinePushMsgList:Ljava/util/ArrayList;

    iget-wide v2, p3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsReconnectRsp;->timeUs:J

    invoke-virtual {v0, v1, v2, v3, p4}, Lcom/tencent/android/tpush/service/b/a;->a(Ljava/util/ArrayList;JLcom/tencent/android/tpush/service/channel/a;)V

    .line 124
    :cond_1
    if-eqz p3, :cond_2

    .line 125
    iget-object v0, p0, Lcom/tencent/android/tpush/service/q;->a:Lcom/tencent/android/tpush/service/p;

    invoke-virtual {p4}, Lcom/tencent/android/tpush/service/channel/a;->b()Z

    move-result v1

    iget-wide v2, p3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsReconnectRsp;->confVersion:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/android/tpush/service/p;->a(ZJ)V

    .line 146
    :cond_2
    :goto_0
    return-void

    .line 135
    :cond_3
    const-string v0, "PushServiceNetworkHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">> reconn failed responseCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/a/a;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lcom/qq/taf/jce/JceStruct;Lcom/tencent/android/tpush/service/channel/a;)V
    .locals 0

    .prologue
    .line 166
    return-void
.end method

.method public a(Lcom/qq/taf/jce/JceStruct;Lcom/tencent/android/tpush/service/channel/exception/ChannelException;Lcom/tencent/android/tpush/service/channel/a;)V
    .locals 0

    .prologue
    .line 162
    return-void
.end method
