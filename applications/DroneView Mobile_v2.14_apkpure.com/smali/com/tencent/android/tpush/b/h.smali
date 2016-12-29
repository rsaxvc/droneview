.class Lcom/tencent/android/tpush/b/h;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/tencent/android/tpush/b/g;

.field private final b:Ljava/lang/String;

.field private c:Landroid/content/Context;

.field private d:Landroid/content/Intent;

.field private e:Lcom/tencent/android/tpush/XGIOperateCallback;


# direct methods
.method public constructor <init>(Lcom/tencent/android/tpush/b/g;Landroid/content/Context;Landroid/content/Intent;Lcom/tencent/android/tpush/XGIOperateCallback;)V
    .locals 1

    .prologue
    .line 85
    iput-object p1, p0, Lcom/tencent/android/tpush/b/h;->a:Lcom/tencent/android/tpush/b/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const-class v0, Lcom/tencent/android/tpush/b/h;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/android/tpush/b/h;->b:Ljava/lang/String;

    .line 86
    iput-object p2, p0, Lcom/tencent/android/tpush/b/h;->c:Landroid/content/Context;

    .line 87
    iput-object p3, p0, Lcom/tencent/android/tpush/b/h;->d:Landroid/content/Intent;

    .line 88
    iput-object p4, p0, Lcom/tencent/android/tpush/b/h;->e:Lcom/tencent/android/tpush/XGIOperateCallback;

    .line 89
    return-void
.end method

.method private a()V
    .locals 3

    .prologue
    .line 93
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.tencent.android.tpush.action.PUSH_MESSAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 94
    iget-object v1, p0, Lcom/tencent/android/tpush/b/h;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    iget-object v1, p0, Lcom/tencent/android/tpush/b/h;->d:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 96
    iget-object v1, p0, Lcom/tencent/android/tpush/b/h;->c:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 98
    iget-object v0, p0, Lcom/tencent/android/tpush/b/h;->d:Landroid/content/Intent;

    const-string v1, "svrPkgName"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 100
    invoke-static {v0}, Lcom/tencent/android/tpush/service/d/f;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 101
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.tencent.android.tpush.action.ack.sdk2srv"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 103
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 104
    iget-object v0, p0, Lcom/tencent/android/tpush/b/h;->d:Landroid/content/Intent;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 105
    iget-object v0, p0, Lcom/tencent/android/tpush/b/h;->c:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 108
    :cond_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    .prologue
    .line 113
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/tencent/android/tpush/b/h;->a:Lcom/tencent/android/tpush/b/g;

    monitor-enter v10

    .line 114
    :try_start_0
    sget-boolean v1, Lcom/tencent/android/tpush/XGPushConfig;->enableDebug:Z

    if-eqz v1, :cond_0

    .line 115
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/android/tpush/b/h;->b:Ljava/lang/String;

    const-string v2, "Action -> handlerPushMessage"

    invoke-static {v1, v2}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    :cond_0
    const/4 v9, 0x0

    .line 120
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/android/tpush/b/h;->d:Landroid/content/Intent;

    const-string v2, "expire_time"

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    .line 122
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/android/tpush/b/h;->d:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v1

    .line 123
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 124
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/android/tpush/b/h;->d:Landroid/content/Intent;

    const-string v7, "msgId"

    const-wide/16 v11, -0x1

    invoke-virtual {v2, v7, v11, v12}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v7

    .line 125
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/android/tpush/b/h;->c:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/tencent/android/tpush/b/h;->d:Landroid/content/Intent;

    invoke-static {v2, v11}, Lcom/tencent/android/tpush/b/i;->a(Landroid/content/Context;Landroid/content/Intent;)Lcom/tencent/android/tpush/b/i;

    move-result-object v2

    .line 127
    const-wide/16 v11, 0x0

    cmp-long v11, v3, v11

    if-lez v11, :cond_1

    cmp-long v3, v5, v3

    if-lez v3, :cond_1

    .line 129
    const-string v1, "PushMessageHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "msg is expired, currentTimeMillis="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "current="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/android/tpush/b/h;->d:Landroid/content/Intent;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/tencent/android/tpush/a/a;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/android/tpush/b/h;->c:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/tencent/android/tpush/XGPushManager;->msgAck(Landroid/content/Context;Lcom/tencent/android/tpush/b/i;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 134
    :try_start_2
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 229
    :goto_0
    return-void

    .line 137
    :cond_1
    :try_start_3
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/android/tpush/b/g;->a(Ljava/lang/Long;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 138
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/android/tpush/b/h;->c:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/tencent/android/tpush/XGPushManager;->msgAck(Landroid/content/Context;Lcom/tencent/android/tpush/b/i;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 139
    :try_start_4
    monitor-exit v10

    goto :goto_0

    .line 228
    :catchall_0
    move-exception v1

    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1

    .line 141
    :cond_2
    const/4 v3, 0x2

    :try_start_5
    invoke-static {v3, v7, v8}, Lcom/tencent/android/tpush/a/a;->a(IJ)V

    .line 142
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/android/tpush/b/h;->d:Landroid/content/Intent;

    const-string v4, "busiMsgId"

    const-wide/16 v5, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    .line 144
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/android/tpush/b/h;->d:Landroid/content/Intent;

    const-string v4, "timestamps"

    const-wide/16 v11, 0x0

    invoke-virtual {v3, v4, v11, v12}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    .line 146
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "@"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v11, "@"

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 147
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/tencent/android/tpush/b/h;->d:Landroid/content/Intent;

    const-string v12, "accId"

    const-wide/16 v13, -0x1

    invoke-virtual {v11, v12, v13, v14}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v11

    .line 149
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/android/tpush/b/h;->c:Landroid/content/Context;

    invoke-static {v13}, Lcom/tencent/android/tpush/XGPushConfig;->getAccessidList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v13

    .line 151
    if-eqz v13, :cond_3

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v14

    if-lez v14, :cond_3

    .line 152
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_3

    .line 153
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PushMessageRunnable match accessId failed, message droped cause accessId:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " not in "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " msgId = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 158
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/android/tpush/b/h;->b:Ljava/lang/String;

    invoke-static {v3, v1}, Lcom/tencent/android/tpush/a/a;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/android/tpush/b/h;->c:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/tencent/android/tpush/XGPushManager;->msgAck(Landroid/content/Context;Lcom/tencent/android/tpush/b/i;)V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 160
    :try_start_6
    monitor-exit v10
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    .line 163
    :cond_3
    :try_start_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/android/tpush/b/h;->c:Landroid/content/Context;

    invoke-static {v13, v11, v12}, Lcom/tencent/android/tpush/service/d/f;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v13

    .line 165
    invoke-virtual {v13, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_8

    .line 167
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/tencent/android/tpush/b/h;->c:Landroid/content/Context;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "tpush_msgId_"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v14 .. v16}, Lcom/tencent/android/tpush/common/m;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/tencent/android/tpush/b/h;->c:Landroid/content/Context;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "tpush_msgId_"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-static {v14, v15, v13, v0}, Lcom/tencent/android/tpush/service/d/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 173
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/android/tpush/b/h;->c:Landroid/content/Context;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "tpush_msgId_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, ""

    invoke-static {v13, v11, v12}, Lcom/tencent/android/tpush/common/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 176
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/android/tpush/b/h;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " flag write failed"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/tencent/android/tpush/a/a;->h(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 177
    :try_start_8
    monitor-exit v10
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_0

    .line 181
    :cond_4
    :try_start_9
    sget-boolean v1, Lcom/tencent/android/tpush/XGPushConfig;->enableDebug:Z

    if-eqz v1, :cond_5

    .line 182
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/android/tpush/b/h;->b:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Receiver msg from server :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Lcom/tencent/android/tpush/b/i;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v1, v11}, Lcom/tencent/android/tpush/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/android/tpush/b/h;->c:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/tencent/android/tpush/XGPushManager;->msgAck(Landroid/content/Context;Lcom/tencent/android/tpush/b/i;)V

    .line 186
    invoke-virtual {v2}, Lcom/tencent/android/tpush/b/i;->g()Lcom/tencent/android/tpush/b/a;

    move-result-object v11

    .line 188
    if-eqz v11, :cond_9

    invoke-virtual {v2}, Lcom/tencent/android/tpush/b/i;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/android/tpush/service/d/f;->a(Ljava/lang/String;)Z
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-result v1

    if-nez v1, :cond_9

    .line 192
    :try_start_a
    new-instance v1, Lcom/tencent/android/tpush/b/c;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/tencent/android/tpush/b/h;->c:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/android/tpush/b/h;->d:Landroid/content/Intent;

    invoke-direct {v1, v12, v13}, Lcom/tencent/android/tpush/b/c;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    .line 194
    invoke-direct/range {p0 .. p0}, Lcom/tencent/android/tpush/b/h;->a()V

    .line 195
    invoke-virtual {v11}, Lcom/tencent/android/tpush/b/a;->c()I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_6

    .line 196
    invoke-virtual/range {v1 .. v8}, Lcom/tencent/android/tpush/b/c;->a(Lcom/tencent/android/tpush/b/i;JJJ)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 197
    invoke-virtual {v2}, Lcom/tencent/android/tpush/b/i;->a()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_0
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :cond_6
    move-object v1, v9

    .line 221
    :goto_1
    :try_start_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/android/tpush/b/h;->e:Lcom/tencent/android/tpush/XGIOperateCallback;

    if-eqz v2, :cond_7

    .line 222
    if-eqz v1, :cond_a

    .line 223
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/android/tpush/b/h;->e:Lcom/tencent/android/tpush/XGIOperateCallback;

    const-string v3, ""

    const/4 v4, -0x1

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v4, v1}, Lcom/tencent/android/tpush/XGIOperateCallback;->onFail(Ljava/lang/Object;ILjava/lang/String;)V

    .line 228
    :cond_7
    :goto_2
    monitor-exit v10
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_0

    .line 200
    :catch_0
    move-exception v1

    .line 201
    :try_start_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/android/tpush/b/h;->b:Ljava/lang/String;

    const-string v3, "unknown error"

    invoke-static {v2, v3, v1}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_c
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_c} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_1

    .line 208
    :catch_1
    move-exception v1

    .line 209
    :try_start_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/android/tpush/b/h;->b:Ljava/lang/String;

    const-string v3, "push parse error"

    invoke-static {v2, v3, v1}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_1

    .line 206
    :cond_8
    const/4 v1, 0x0

    :try_start_e
    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/tencent/android/tpush/b/h;->e:Lcom/tencent/android/tpush/XGIOperateCallback;
    :try_end_e
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_e} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e .. :try_end_e} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_3
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    :cond_9
    move-object v1, v9

    goto :goto_1

    .line 211
    :catch_2
    move-exception v1

    .line 212
    :try_start_f
    const-string v2, "XGService"

    const-string v3, "push msg type error"

    invoke-static {v2, v3, v1}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 216
    :catch_3
    move-exception v1

    .line 217
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/android/tpush/b/h;->b:Ljava/lang/String;

    const-string v3, "unknown error"

    invoke-static {v2, v3, v1}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 225
    :cond_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/android/tpush/b/h;->e:Lcom/tencent/android/tpush/XGIOperateCallback;

    const-string v2, ""

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/tencent/android/tpush/XGIOperateCallback;->onSuccess(Ljava/lang/Object;I)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto :goto_2
.end method
