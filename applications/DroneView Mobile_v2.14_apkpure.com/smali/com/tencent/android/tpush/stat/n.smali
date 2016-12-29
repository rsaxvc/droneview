.class final Lcom/tencent/android/tpush/stat/n;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 449
    iput-object p1, p0, Lcom/tencent/android/tpush/stat/n;->a:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/tencent/android/tpush/stat/n;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    .prologue
    .line 453
    :try_start_0
    new-instance v9, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/android/tpush/stat/n;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v9, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 455
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/android/tpush/stat/n;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushClientReport;

    .line 456
    iget-wide v2, v1, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushClientReport;->type:J

    .line 457
    iget-wide v7, v1, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushClientReport;->timestamp:J

    .line 458
    iget-wide v11, v1, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushClientReport;->broadcastId:J

    .line 459
    iget-wide v13, v1, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushClientReport;->msgId:J

    .line 460
    iget-wide v5, v1, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushClientReport;->accessId:J

    .line 462
    new-instance v15, Lorg/json/JSONObject;

    invoke-direct {v15}, Lorg/json/JSONObject;-><init>()V

    .line 463
    const-string v1, "type"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, ""

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 464
    const-string v1, "busiMsgId"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 465
    const-string v1, "msgId"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 467
    new-instance v1, Lcom/tencent/android/tpush/stat/event/a;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/android/tpush/stat/n;->b:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/android/tpush/stat/n;->b:Landroid/content/Context;

    invoke-static {v3, v5, v6}, Lcom/tencent/android/tpush/stat/h;->b(Landroid/content/Context;J)I

    move-result v3

    const-string v4, "Ack"

    invoke-direct/range {v1 .. v8}, Lcom/tencent/android/tpush/stat/event/a;-><init>(Landroid/content/Context;ILjava/lang/String;JJ)V

    .line 470
    invoke-virtual {v1}, Lcom/tencent/android/tpush/stat/event/a;->a()Lcom/tencent/android/tpush/stat/event/b;

    move-result-object v2

    iput-object v15, v2, Lcom/tencent/android/tpush/stat/event/b;->c:Lorg/json/JSONObject;

    .line 471
    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 474
    :catch_0
    move-exception v1

    .line 475
    invoke-static {}, Lcom/tencent/android/tpush/stat/h;->e()Lcom/tencent/android/tpush/stat/a/f;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/tencent/android/tpush/stat/a/f;->b(Ljava/lang/Throwable;)V

    .line 477
    :goto_1
    return-void

    .line 473
    :cond_0
    :try_start_1
    invoke-static {v9}, Lcom/tencent/android/tpush/stat/h;->a(Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
