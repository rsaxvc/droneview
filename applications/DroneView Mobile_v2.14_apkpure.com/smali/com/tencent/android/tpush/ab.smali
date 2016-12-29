.class Lcom/tencent/android/tpush/ab;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/content/Intent;

.field private c:Lcom/tencent/android/tpush/XGIOperateCallback;

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>(Lcom/tencent/android/tpush/XGIOperateCallback;Landroid/content/Context;Landroid/content/Intent;II)V
    .locals 1

    .prologue
    .line 1291
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1282
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/android/tpush/ab;->e:I

    .line 1292
    iput-object p1, p0, Lcom/tencent/android/tpush/ab;->c:Lcom/tencent/android/tpush/XGIOperateCallback;

    .line 1293
    iput-object p2, p0, Lcom/tencent/android/tpush/ab;->a:Landroid/content/Context;

    .line 1294
    iput-object p3, p0, Lcom/tencent/android/tpush/ab;->b:Landroid/content/Intent;

    .line 1295
    iput p4, p0, Lcom/tencent/android/tpush/ab;->d:I

    .line 1296
    iput p5, p0, Lcom/tencent/android/tpush/ab;->e:I

    .line 1297
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1302
    :try_start_0
    iget-object v0, p0, Lcom/tencent/android/tpush/ab;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/android/tpush/service/XGWatchdog;->getInstance(Landroid/content/Context;)Lcom/tencent/android/tpush/service/XGWatchdog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/android/tpush/service/XGWatchdog;->startWatchdog()V

    .line 1304
    iget-object v0, p0, Lcom/tencent/android/tpush/ab;->b:Landroid/content/Intent;

    const-string v1, "storage"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 1305
    iget v0, p0, Lcom/tencent/android/tpush/ab;->d:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 1306
    iget-object v0, p0, Lcom/tencent/android/tpush/ab;->b:Landroid/content/Intent;

    const-string v1, "data"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1314
    iget-object v1, p0, Lcom/tencent/android/tpush/ab;->b:Landroid/content/Intent;

    const-string v2, "operation"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1315
    packed-switch v1, :pswitch_data_0

    .line 1359
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/tencent/android/tpush/ab;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/android/tpush/service/XGWatchdog;->getInstance(Landroid/content/Context;)Lcom/tencent/android/tpush/service/XGWatchdog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/android/tpush/service/XGWatchdog;->sendAllLocalXGAppList()V

    .line 1360
    iget-object v0, p0, Lcom/tencent/android/tpush/ab;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/android/tpush/common/a;->a(Landroid/content/Context;)V

    .line 1361
    iget-object v0, p0, Lcom/tencent/android/tpush/ab;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/android/tpush/service/w;->a(Landroid/content/Context;)Lcom/tencent/android/tpush/service/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/android/tpush/service/w;->a()V

    .line 1365
    :goto_1
    return-void

    .line 1320
    :pswitch_0
    iget-object v1, p0, Lcom/tencent/android/tpush/ab;->c:Lcom/tencent/android/tpush/XGIOperateCallback;

    iget-object v2, p0, Lcom/tencent/android/tpush/ab;->b:Landroid/content/Intent;

    const-string v3, "flag"

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-interface {v1, v0, v2}, Lcom/tencent/android/tpush/XGIOperateCallback;->onSuccess(Ljava/lang/Object;I)V

    .line 1321
    iget v0, p0, Lcom/tencent/android/tpush/ab;->e:I

    if-nez v0, :cond_1

    .line 1323
    iget-object v0, p0, Lcom/tencent/android/tpush/ab;->a:Landroid/content/Context;

    const-string v1, ".firstregister"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/tencent/android/tpush/common/m;->b(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1329
    :cond_1
    iget-object v0, p0, Lcom/tencent/android/tpush/ab;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/android/tpush/common/o;->a(Landroid/content/Context;)Lcom/tencent/android/tpush/common/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/android/tpush/common/o;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/android/tpush/ab;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/android/tpush/c/a;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/android/tpush/c/a;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gcm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1333
    iget-object v0, p0, Lcom/tencent/android/tpush/ab;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/android/tpush/c/b;->a(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1362
    :catch_0
    move-exception v0

    .line 1363
    invoke-static {}, Lcom/tencent/android/tpush/XGPushManager;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/android/tpush/a/a;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1340
    :pswitch_1
    :try_start_1
    iget-object v1, p0, Lcom/tencent/android/tpush/ab;->c:Lcom/tencent/android/tpush/XGIOperateCallback;

    iget-object v2, p0, Lcom/tencent/android/tpush/ab;->b:Landroid/content/Intent;

    const-string v3, "code"

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iget-object v3, p0, Lcom/tencent/android/tpush/ab;->b:Landroid/content/Intent;

    const-string v4, "msg"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v0, v2, v3}, Lcom/tencent/android/tpush/XGIOperateCallback;->onFail(Ljava/lang/Object;ILjava/lang/String;)V

    goto :goto_0

    .line 1346
    :cond_2
    iget v0, p0, Lcom/tencent/android/tpush/ab;->d:I

    if-nez v0, :cond_0

    .line 1347
    iget-object v0, p0, Lcom/tencent/android/tpush/ab;->b:Landroid/content/Intent;

    const-string v1, "operation"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1348
    packed-switch v0, :pswitch_data_1

    goto/16 :goto_0

    .line 1350
    :pswitch_2
    iget-object v0, p0, Lcom/tencent/android/tpush/ab;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/tencent/android/tpush/ab;->b:Landroid/content/Intent;

    iget-object v2, p0, Lcom/tencent/android/tpush/ab;->c:Lcom/tencent/android/tpush/XGIOperateCallback;

    invoke-static {v0, v1, v2}, Lcom/tencent/android/tpush/XGPushManager;->b(Landroid/content/Context;Landroid/content/Intent;Lcom/tencent/android/tpush/XGIOperateCallback;)V

    goto/16 :goto_0

    .line 1353
    :pswitch_3
    iget-object v0, p0, Lcom/tencent/android/tpush/ab;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/tencent/android/tpush/ab;->b:Landroid/content/Intent;

    iget-object v2, p0, Lcom/tencent/android/tpush/ab;->c:Lcom/tencent/android/tpush/XGIOperateCallback;

    invoke-static {v0, v1, v2}, Lcom/tencent/android/tpush/XGPushManager;->a(Landroid/content/Context;Landroid/content/Intent;Lcom/tencent/android/tpush/XGIOperateCallback;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 1315
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 1348
    :pswitch_data_1
    .packed-switch 0x64
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
