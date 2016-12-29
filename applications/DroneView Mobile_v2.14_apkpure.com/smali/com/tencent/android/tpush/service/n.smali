.class Lcom/tencent/android/tpush/service/n;
.super Landroid/os/Handler;
.source "ProGuard"


# instance fields
.field final synthetic a:Lcom/tencent/android/tpush/service/m;


# direct methods
.method constructor <init>(Lcom/tencent/android/tpush/service/m;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 356
    iput-object p1, p0, Lcom/tencent/android/tpush/service/n;->a:Lcom/tencent/android/tpush/service/m;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 359
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 360
    if-eqz p1, :cond_0

    .line 361
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 408
    const-string v0, "PushServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown handler msg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/a/a;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    :cond_0
    :goto_0
    return-void

    .line 363
    :pswitch_0
    iget-object v0, p0, Lcom/tencent/android/tpush/service/n;->a:Lcom/tencent/android/tpush/service/m;

    invoke-static {v0}, Lcom/tencent/android/tpush/service/m;->a(Lcom/tencent/android/tpush/service/m;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 367
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 368
    invoke-static {}, Lcom/tencent/android/tpush/service/m;->g()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/tencent/android/tpush/service/XGPushService;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 369
    invoke-static {}, Lcom/tencent/android/tpush/service/m;->g()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    goto :goto_0

    .line 371
    :cond_1
    invoke-static {}, Lcom/tencent/android/tpush/service/m;->h()Z

    move-result v0

    if-nez v0, :cond_4

    .line 372
    sget-boolean v0, Lcom/tencent/android/tpush/XGPushConfig;->enableDebug:Z

    if-eqz v0, :cond_2

    .line 373
    const-string v0, "PushServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Service\'s first running at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/tencent/android/tpush/service/m;->g()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " version : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x401d70a4    # 2.46f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    :cond_2
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/tencent/android/tpush/service/m;->a(Z)Z

    .line 382
    invoke-static {}, Lcom/tencent/android/tpush/common/l;->a()Z

    move-result v0

    if-nez v0, :cond_3

    .line 383
    const-string v0, "permission check failed, kill service!"

    .line 384
    const-string v1, "XGService"

    invoke-static {v1, v0}, Lcom/tencent/android/tpush/a/a;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    iget-object v0, p0, Lcom/tencent/android/tpush/service/n;->a:Lcom/tencent/android/tpush/service/m;

    invoke-virtual {v0}, Lcom/tencent/android/tpush/service/m;->d()V

    .line 386
    invoke-static {}, Lcom/tencent/android/tpush/service/m;->e()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/android/tpush/service/d/f;->q(Landroid/content/Context;)V

    .line 389
    :cond_3
    invoke-static {}, Lcom/tencent/android/tpush/service/m;->g()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/android/tpush/service/d/f;->c(Landroid/content/Context;)Z

    .line 391
    invoke-static {}, Lcom/tencent/android/tpush/service/a;->a()Lcom/tencent/android/tpush/service/a;

    move-result-object v0

    invoke-static {}, Lcom/tencent/android/tpush/service/m;->g()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/android/tpush/service/a;->a(Landroid/content/Context;)V

    .line 397
    :cond_4
    invoke-static {}, Lcom/tencent/android/tpush/service/channel/b;->a()Lcom/tencent/android/tpush/service/channel/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/android/tpush/service/channel/b;->b()V

    goto/16 :goto_0

    .line 402
    :pswitch_1
    invoke-static {}, Lcom/tencent/android/tpush/service/channel/b;->a()Lcom/tencent/android/tpush/service/channel/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/android/tpush/service/channel/b;->b()V

    goto/16 :goto_0

    .line 405
    :pswitch_2
    invoke-static {}, Lcom/tencent/android/tpush/service/channel/b;->a()Lcom/tencent/android/tpush/service/channel/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/android/tpush/service/channel/b;->c()V

    goto/16 :goto_0

    .line 361
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
