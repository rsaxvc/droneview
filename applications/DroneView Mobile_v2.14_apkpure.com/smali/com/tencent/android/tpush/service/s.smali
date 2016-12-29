.class Lcom/tencent/android/tpush/service/s;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/tencent/android/tpush/service/channel/p;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/tencent/android/tpush/service/p;


# direct methods
.method constructor <init>(Lcom/tencent/android/tpush/service/p;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 434
    iput-object p1, p0, Lcom/tencent/android/tpush/service/s;->b:Lcom/tencent/android/tpush/service/p;

    iput-object p2, p0, Lcom/tencent/android/tpush/service/s;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/qq/taf/jce/JceStruct;ILcom/qq/taf/jce/JceStruct;Lcom/tencent/android/tpush/service/channel/a;)V
    .locals 6

    .prologue
    .line 440
    sget-boolean v0, Lcom/tencent/android/tpush/XGPushConfig;->enableDebug:Z

    if-eqz v0, :cond_0

    .line 441
    const-string v0, "PushServiceNetworkHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Report uninstall with pkgName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/android/tpush/service/s;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", reponseCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    :cond_0
    if-nez p2, :cond_1

    .line 446
    iget-object v0, p0, Lcom/tencent/android/tpush/service/s;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/android/tpush/service/cache/CacheManager;->UninstallInfoSuccessByPkgName(Ljava/lang/String;)Z

    .line 448
    invoke-static {}, Lcom/tencent/android/tpush/service/b/j;->a()Lcom/tencent/android/tpush/service/b/j;

    move-result-object v0

    invoke-static {}, Lcom/tencent/android/tpush/service/m;->e()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/android/tpush/service/s;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/tencent/android/tpush/service/b/j;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 451
    invoke-static {}, Lcom/tencent/android/tpush/service/b/a;->a()Lcom/tencent/android/tpush/service/b/a;

    move-result-object v0

    invoke-static {}, Lcom/tencent/android/tpush/service/m;->e()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/android/tpush/service/s;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/tencent/android/tpush/service/b/a;->d(Landroid/content/Context;Ljava/lang/String;)V

    .line 465
    :goto_0
    return-void

    .line 457
    :cond_1
    const-string v0, "PushServiceNetworkHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " uninstall report fail responseCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/a/a;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    iget-object v0, p0, Lcom/tencent/android/tpush/service/s;->b:Lcom/tencent/android/tpush/service/p;

    const-string v2, "\u670d\u52a1\u5668\u5904\u7406\u5931\u8d25\uff0c\u8fd4\u56de\u9519\u8bef"

    iget-object v3, p0, Lcom/tencent/android/tpush/service/s;->a:Ljava/lang/String;

    move-object v4, p1

    check-cast v4, Lcom/tencent/android/tpush/service/channel/protocol/TpnsUnregisterReq;

    move v1, p2

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/tencent/android/tpush/service/p;->a(Lcom/tencent/android/tpush/service/p;ILjava/lang/String;Ljava/lang/String;Lcom/tencent/android/tpush/service/channel/protocol/TpnsUnregisterReq;Lcom/tencent/android/tpush/service/channel/a;)V

    goto :goto_0
.end method

.method public a(Lcom/qq/taf/jce/JceStruct;Lcom/tencent/android/tpush/service/channel/a;)V
    .locals 0

    .prologue
    .line 486
    return-void
.end method

.method public a(Lcom/qq/taf/jce/JceStruct;Lcom/tencent/android/tpush/service/channel/exception/ChannelException;Lcom/tencent/android/tpush/service/channel/a;)V
    .locals 6

    .prologue
    .line 470
    iget-object v0, p0, Lcom/tencent/android/tpush/service/s;->b:Lcom/tencent/android/tpush/service/p;

    iget v1, p2, Lcom/tencent/android/tpush/service/channel/exception/ChannelException;->errorCode:I

    invoke-virtual {p2}, Lcom/tencent/android/tpush/service/channel/exception/ChannelException;->getMessage()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/android/tpush/service/s;->a:Ljava/lang/String;

    move-object v4, p1

    check-cast v4, Lcom/tencent/android/tpush/service/channel/protocol/TpnsUnregisterReq;

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/tencent/android/tpush/service/p;->a(Lcom/tencent/android/tpush/service/p;ILjava/lang/String;Ljava/lang/String;Lcom/tencent/android/tpush/service/channel/protocol/TpnsUnregisterReq;Lcom/tencent/android/tpush/service/channel/a;)V

    .line 474
    return-void
.end method
