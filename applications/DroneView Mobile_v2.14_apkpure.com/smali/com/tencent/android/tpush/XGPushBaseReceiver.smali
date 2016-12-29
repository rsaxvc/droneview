.class public abstract Lcom/tencent/android/tpush/XGPushBaseReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ProGuard"


# static fields
.field public static final SUCCESS:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 55
    invoke-static {p1, p2}, Lcom/tencent/android/tpush/b/i;->a(Landroid/content/Context;Landroid/content/Intent;)Lcom/tencent/android/tpush/b/i;

    move-result-object v1

    .line 56
    invoke-virtual {v1}, Lcom/tencent/android/tpush/b/i;->g()Lcom/tencent/android/tpush/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/android/tpush/b/a;->c()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 57
    const-string v0, "busiMsgId"

    invoke-virtual {p2, v0, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 58
    const-string v0, "timestamps"

    invoke-virtual {p2, v0, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 60
    const-string v0, "msgId"

    const-wide/16 v6, -0x1

    invoke-virtual {p2, v0, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    .line 61
    new-instance v0, Lcom/tencent/android/tpush/b/c;

    invoke-direct {v0, p1, p2}, Lcom/tencent/android/tpush/b/c;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    .line 62
    invoke-static {p1, v1}, Lcom/tencent/android/tpush/XGPushManager;->msgAck(Landroid/content/Context;Lcom/tencent/android/tpush/b/i;)V

    .line 63
    invoke-virtual/range {v0 .. v7}, Lcom/tencent/android/tpush/b/c;->a(Lcom/tencent/android/tpush/b/i;JJJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    new-instance v0, Lcom/tencent/android/tpush/XGPushTextMessage;

    invoke-direct {v0}, Lcom/tencent/android/tpush/XGPushTextMessage;-><init>()V

    .line 65
    invoke-virtual {v1}, Lcom/tencent/android/tpush/b/i;->g()Lcom/tencent/android/tpush/b/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/android/tpush/b/a;->e()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/tencent/android/tpush/XGPushTextMessage;->a:Ljava/lang/String;

    .line 66
    invoke-virtual {v1}, Lcom/tencent/android/tpush/b/i;->g()Lcom/tencent/android/tpush/b/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/android/tpush/b/a;->f()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/tencent/android/tpush/XGPushTextMessage;->b:Ljava/lang/String;

    .line 67
    invoke-virtual {v1}, Lcom/tencent/android/tpush/b/i;->g()Lcom/tencent/android/tpush/b/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/android/tpush/b/a;->g()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/android/tpush/XGPushTextMessage;->c:Ljava/lang/String;

    .line 69
    invoke-virtual {p0, p1, v0}, Lcom/tencent/android/tpush/XGPushBaseReceiver;->onTextMessage(Landroid/content/Context;Lcom/tencent/android/tpush/XGPushTextMessage;)V

    .line 73
    :cond_0
    return-void
.end method

.method private b(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, -0x1

    .line 76
    const-string v0, "TPUSH.FEEDBACK"

    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 77
    const-string v1, "TPUSH.ERRORCODE"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 78
    packed-switch v0, :pswitch_data_0

    .line 136
    const-string v1, "XGPushMessage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u672a\u77e5\u7684feedbackType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/android/tpush/a/a;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 80
    :pswitch_0
    new-instance v0, Lcom/tencent/android/tpush/XGPushRegisterResult;

    invoke-direct {v0}, Lcom/tencent/android/tpush/XGPushRegisterResult;-><init>()V

    .line 81
    invoke-virtual {v0, p2}, Lcom/tencent/android/tpush/XGPushRegisterResult;->parseIntent(Landroid/content/Intent;)V

    .line 82
    invoke-virtual {p0, p1, v1, v0}, Lcom/tencent/android/tpush/XGPushBaseReceiver;->onRegisterResult(Landroid/content/Context;ILcom/tencent/android/tpush/XGPushRegisterResult;)V

    goto :goto_0

    .line 85
    :pswitch_1
    invoke-virtual {p0, p1, v1}, Lcom/tencent/android/tpush/XGPushBaseReceiver;->onUnregisterResult(Landroid/content/Context;I)V

    goto :goto_0

    .line 88
    :pswitch_2
    const-string v0, "tagName"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 89
    invoke-static {v0}, Lcom/tencent/android/tpush/encrypt/Rijndael;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 90
    invoke-static {v0}, Lcom/tencent/android/tpush/service/d/f;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 91
    const-string v2, "tagFlag"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 92
    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 93
    invoke-virtual {p0, p1, v1, v0}, Lcom/tencent/android/tpush/XGPushBaseReceiver;->onSetTagResult(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_0

    .line 94
    :cond_1
    if-ne v2, v4, :cond_2

    .line 95
    invoke-virtual {p0, p1, v1, v0}, Lcom/tencent/android/tpush/XGPushBaseReceiver;->onDeleteTagResult(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_0

    .line 97
    :cond_2
    const-string v1, "XGPushMessage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u9519\u8bef\u7684\u6807\u7b7e\u5904\u7406\u7c7b\u578b\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,\u6807\u7b7e\u540d\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/android/tpush/a/a;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 103
    :pswitch_3
    const-string v0, "action"

    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 108
    const-string v0, "accId"

    const-wide/16 v1, 0x0

    invoke-virtual {p2, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 109
    invoke-static {p1}, Lcom/tencent/android/tpush/XGPushConfig;->getAccessidList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    .line 110
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 111
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    new-instance v0, Lcom/tencent/android/tpush/XGPushClickedResult;

    invoke-direct {v0}, Lcom/tencent/android/tpush/XGPushClickedResult;-><init>()V

    .line 113
    invoke-virtual {v0, p2}, Lcom/tencent/android/tpush/XGPushClickedResult;->parseIntent(Landroid/content/Intent;)V

    .line 114
    invoke-virtual {p0, p1, v0}, Lcom/tencent/android/tpush/XGPushBaseReceiver;->onNotifactionClickedResult(Landroid/content/Context;Lcom/tencent/android/tpush/XGPushClickedResult;)V

    goto/16 :goto_0

    .line 131
    :pswitch_4
    new-instance v0, Lcom/tencent/android/tpush/XGPushShowedResult;

    invoke-direct {v0}, Lcom/tencent/android/tpush/XGPushShowedResult;-><init>()V

    .line 132
    invoke-virtual {v0, p2}, Lcom/tencent/android/tpush/XGPushShowedResult;->parseIntent(Landroid/content/Intent;)V

    .line 133
    invoke-virtual {p0, p1, v0}, Lcom/tencent/android/tpush/XGPushBaseReceiver;->onNotifactionShowedResult(Landroid/content/Context;Lcom/tencent/android/tpush/XGPushShowedResult;)V

    goto/16 :goto_0

    .line 78
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public abstract onDeleteTagResult(Landroid/content/Context;ILjava/lang/String;)V
.end method

.method public abstract onNotifactionClickedResult(Landroid/content/Context;Lcom/tencent/android/tpush/XGPushClickedResult;)V
.end method

.method public abstract onNotifactionShowedResult(Landroid/content/Context;Lcom/tencent/android/tpush/XGPushShowedResult;)V
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 30
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 32
    :try_start_0
    invoke-static {p1}, Lcom/tencent/android/tpush/common/p;->a(Landroid/content/Context;)I

    move-result v0

    if-lez v0, :cond_1

    .line 50
    :cond_0
    :goto_0
    return-void

    .line 35
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 36
    const-string v1, "com.tencent.android.tpush.action.PUSH_MESSAGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/tencent/android/tpush/XGPushBaseReceiver;->a(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 44
    :catch_0
    move-exception v0

    .line 45
    const-string v1, "XGPushMessage"

    const-string v2, "onReceive handle error."

    invoke-static {v1, v2, v0}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 38
    :cond_2
    :try_start_1
    const-string v1, "com.tencent.android.tpush.action.FEEDBACK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/tencent/android/tpush/XGPushBaseReceiver;->b(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 41
    :cond_3
    const-string v1, "XGPushMessage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u672a\u77e5\u7684action:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/android/tpush/a/a;->h(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public abstract onRegisterResult(Landroid/content/Context;ILcom/tencent/android/tpush/XGPushRegisterResult;)V
.end method

.method public abstract onSetTagResult(Landroid/content/Context;ILjava/lang/String;)V
.end method

.method public abstract onTextMessage(Landroid/content/Context;Lcom/tencent/android/tpush/XGPushTextMessage;)V
.end method

.method public abstract onUnregisterResult(Landroid/content/Context;I)V
.end method
