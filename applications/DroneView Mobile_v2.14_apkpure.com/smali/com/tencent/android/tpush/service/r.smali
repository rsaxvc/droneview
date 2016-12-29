.class Lcom/tencent/android/tpush/service/r;
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
    .line 347
    iput-object p1, p0, Lcom/tencent/android/tpush/service/r;->a:Lcom/tencent/android/tpush/service/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/qq/taf/jce/JceStruct;ILcom/qq/taf/jce/JceStruct;Lcom/tencent/android/tpush/service/channel/a;)V
    .locals 3

    .prologue
    .line 351
    if-nez p2, :cond_0

    .line 352
    check-cast p3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsConfigRsp;

    .line 353
    invoke-static {}, Lcom/tencent/android/tpush/service/m;->e()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/android/tpush/service/a/a;->a(Landroid/content/Context;)Lcom/tencent/android/tpush/service/a/a;

    move-result-object v0

    iget-object v1, p3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsConfigRsp;->confContent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/android/tpush/service/a/a;->a(Ljava/lang/String;)V

    .line 370
    :goto_0
    return-void

    .line 365
    :cond_0
    const-string v0, "PushServiceNetworkHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">> loadConfig fail responseCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/a/a;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    iget-object v0, p0, Lcom/tencent/android/tpush/service/r;->a:Lcom/tencent/android/tpush/service/p;

    const-string v1, ""

    invoke-static {v0, p2, v1, p4}, Lcom/tencent/android/tpush/service/p;->a(Lcom/tencent/android/tpush/service/p;ILjava/lang/String;Lcom/tencent/android/tpush/service/channel/a;)V

    goto :goto_0
.end method

.method public a(Lcom/qq/taf/jce/JceStruct;Lcom/tencent/android/tpush/service/channel/a;)V
    .locals 0

    .prologue
    .line 393
    return-void
.end method

.method public a(Lcom/qq/taf/jce/JceStruct;Lcom/tencent/android/tpush/service/channel/exception/ChannelException;Lcom/tencent/android/tpush/service/channel/a;)V
    .locals 3

    .prologue
    .line 375
    const-string v0, "PushServiceNetworkHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@@ loadConfiguration.onMessageSendFailed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lcom/tencent/android/tpush/service/channel/exception/ChannelException;->errorCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/tencent/android/tpush/service/channel/exception/ChannelException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/a/a;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    iget-object v0, p0, Lcom/tencent/android/tpush/service/r;->a:Lcom/tencent/android/tpush/service/p;

    iget v1, p2, Lcom/tencent/android/tpush/service/channel/exception/ChannelException;->errorCode:I

    invoke-virtual {p2}, Lcom/tencent/android/tpush/service/channel/exception/ChannelException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, p3}, Lcom/tencent/android/tpush/service/p;->a(Lcom/tencent/android/tpush/service/p;ILjava/lang/String;Lcom/tencent/android/tpush/service/channel/a;)V

    .line 381
    return-void
.end method
