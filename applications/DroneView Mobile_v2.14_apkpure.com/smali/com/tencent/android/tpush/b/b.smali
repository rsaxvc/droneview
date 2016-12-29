.class public Lcom/tencent/android/tpush/b/b;
.super Ljava/lang/Object;
.source "ProGuard"


# direct methods
.method public static a(Landroid/content/Context;Lcom/tencent/android/tpush/b/e;Z)Landroid/content/Intent;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 173
    const/4 v0, 0x0

    .line 174
    iget v1, p1, Lcom/tencent/android/tpush/b/e;->a:I

    packed-switch v1, :pswitch_data_0

    .line 248
    const-string v1, "MessageHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unkown type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/tencent/android/tpush/b/e;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/android/tpush/a/a;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    :goto_0
    if-eqz v0, :cond_0

    .line 252
    const-string v1, "action_confirm"

    iget v2, p1, Lcom/tencent/android/tpush/b/e;->g:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 254
    :cond_0
    return-object v0

    .line 176
    :pswitch_0
    new-instance v2, Landroid/content/Intent;

    const-string v0, "com.tencent.android.tpush.action.INTERNAL_PUSH_MESSAGE"

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 177
    iget-object v0, p1, Lcom/tencent/android/tpush/b/e;->b:Ljava/lang/String;

    .line 178
    invoke-static {v0}, Lcom/tencent/android/tpush/common/p;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 179
    invoke-static {p0}, Lcom/tencent/android/tpush/b/b;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 181
    :cond_1
    const/high16 v1, 0x20200000

    .line 183
    iget-object v3, p1, Lcom/tencent/android/tpush/b/e;->c:Lcom/tencent/android/tpush/b/f;

    if-eqz v3, :cond_2

    iget-object v3, p1, Lcom/tencent/android/tpush/b/e;->c:Lcom/tencent/android/tpush/b/f;

    iget v3, v3, Lcom/tencent/android/tpush/b/f;->a:I

    if-gtz v3, :cond_4

    .line 185
    :cond_2
    if-eqz p2, :cond_3

    .line 186
    const/high16 v1, 0x10000000

    .line 188
    :cond_3
    invoke-virtual {v2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 190
    const/high16 v1, 0x4020000

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 196
    :goto_1
    const-string v1, "activity"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 197
    const-string v0, "notificationActionType"

    invoke-virtual {v2, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 199
    const-string v0, "action_type"

    invoke-virtual {v2, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 201
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/tencent/android/tpush/XGPushActivity;

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-object v0, v2

    .line 202
    goto :goto_0

    .line 193
    :cond_4
    iget-object v1, p1, Lcom/tencent/android/tpush/b/e;->c:Lcom/tencent/android/tpush/b/f;

    iget v1, v1, Lcom/tencent/android/tpush/b/f;->a:I

    .line 194
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_1

    .line 209
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.tencent.android.tpush.action.INTERNAL_PUSH_MESSAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 210
    const-string v1, "activity"

    iget-object v2, p1, Lcom/tencent/android/tpush/b/e;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 211
    const-string v1, "action_type"

    iget v2, p1, Lcom/tencent/android/tpush/b/e;->a:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 212
    const-string v1, "notificationActionType"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 214
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/tencent/android/tpush/XGPushActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    .line 219
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.tencent.android.tpush.action.INTERNAL_PUSH_MESSAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 223
    const-string v1, "activity"

    iget-object v2, p1, Lcom/tencent/android/tpush/b/e;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 224
    const-string v1, "action_type"

    iget v2, p1, Lcom/tencent/android/tpush/b/e;->a:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 225
    const-string v1, "notificationActionType"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 227
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/tencent/android/tpush/XGPushActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 233
    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.tencent.android.tpush.action.INTERNAL_PUSH_MESSAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 234
    iget-object v1, p1, Lcom/tencent/android/tpush/b/e;->h:Ljava/lang/String;

    .line 235
    invoke-static {v1}, Lcom/tencent/android/tpush/common/p;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 238
    const-string v2, "action_type"

    iget v3, p1, Lcom/tencent/android/tpush/b/e;->a:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 239
    const-string v2, "packageDownloadUrl"

    iget-object v3, p1, Lcom/tencent/android/tpush/b/e;->j:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 241
    const-string v2, "packageName"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 242
    const-string v2, "activity"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 243
    const-string v1, "notificationActionType"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 245
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/tencent/android/tpush/XGPushActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 174
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/tencent/android/tpush/XGPushNotificationBuilder;
    .locals 3

    .prologue
    .line 80
    const-class v1, Lcom/tencent/android/tpush/b/b;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/tencent/android/tpush/XGBasicPushNotificationBuilder;

    invoke-direct {v0}, Lcom/tencent/android/tpush/XGBasicPushNotificationBuilder;-><init>()V

    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Lcom/tencent/android/tpush/XGBasicPushNotificationBuilder;->setFlags(I)Lcom/tencent/android/tpush/XGPushNotificationBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Landroid/content/Context;I)Lcom/tencent/android/tpush/XGPushNotificationBuilder;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 112
    if-nez p0, :cond_1

    .line 142
    :cond_0
    :goto_0
    return-object v0

    .line 116
    :cond_1
    invoke-static {p1}, Lcom/tencent/android/tpush/b/b;->a(I)Ljava/lang/String;

    move-result-object v1

    .line 117
    invoke-static {p0, v1, v0}, Lcom/tencent/android/tpush/common/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 118
    if-eqz v1, :cond_0

    .line 120
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 122
    const-string v1, "basic"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 123
    new-instance v1, Lcom/tencent/android/tpush/XGBasicPushNotificationBuilder;

    invoke-direct {v1}, Lcom/tencent/android/tpush/XGBasicPushNotificationBuilder;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    :try_start_1
    const-string v0, "basic"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    .line 134
    :goto_1
    :try_start_2
    invoke-virtual {v0, v1}, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->decode(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 135
    :catch_0
    move-exception v1

    .line 136
    :goto_2
    const-string v2, "TPush"

    const-string v3, ""

    invoke-static {v2, v3, v1}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 126
    :cond_2
    :try_start_3
    const-string v1, "custom"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 128
    new-instance v1, Lcom/tencent/android/tpush/XGCustomPushNotificationBuilder;

    invoke-direct {v1}, Lcom/tencent/android/tpush/XGCustomPushNotificationBuilder;-><init>()V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    .line 129
    :try_start_4
    const-string v0, "custom"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_2

    move-result-object v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    goto :goto_1

    .line 135
    :catch_1
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    goto :goto_2

    :catch_2
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    goto :goto_2
.end method

.method private static a(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TPUSH_NOTIF_BUILDID_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;ILcom/tencent/android/tpush/XGPushNotificationBuilder;)V
    .locals 4

    .prologue
    .line 93
    invoke-static {p1}, Lcom/tencent/android/tpush/b/b;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 94
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 95
    invoke-virtual {p2, v1}, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->encode(Lorg/json/JSONObject;)V

    .line 96
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 97
    invoke-virtual {p2}, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/tencent/android/tpush/common/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 99
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 100
    invoke-static {p0, v0, v1}, Lcom/tencent/android/tpush/common/m;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/tencent/android/tpush/b/i;)V
    .locals 13
    .annotation build Lcom/jg/JgMethodChecked;
        author = 0x1
        fComment = "\u786e\u8ba4\u5df2\u8fdb\u884c\u5b89\u5168\u6821\u9a8c"
        lastDate = "20150316"
        reviewer = 0x3
        vComment = {
            .enum Lcom/jg/EType;->RECEIVERCHECK:Lcom/jg/EType;,
            .enum Lcom/jg/EType;->INTENTCHECK:Lcom/jg/EType;
        }
    .end annotation

    .prologue
    const/4 v12, 0x2

    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 260
    invoke-virtual {p1}, Lcom/tencent/android/tpush/b/i;->g()Lcom/tencent/android/tpush/b/a;

    move-result-object v0

    check-cast v0, Lcom/tencent/android/tpush/b/d;

    .line 262
    invoke-virtual {v0}, Lcom/tencent/android/tpush/b/d;->m()Lcom/tencent/android/tpush/b/e;

    move-result-object v6

    .line 264
    invoke-virtual {v0}, Lcom/tencent/android/tpush/b/d;->h()I

    move-result v2

    invoke-static {p0, v2}, Lcom/tencent/android/tpush/b/b;->a(Landroid/content/Context;I)Lcom/tencent/android/tpush/XGPushNotificationBuilder;

    move-result-object v2

    .line 266
    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/tencent/android/tpush/b/d;->t()I

    move-result v5

    if-ne v5, v3, :cond_5

    .line 268
    :cond_0
    if-nez v2, :cond_1

    .line 269
    invoke-static {p0}, Lcom/tencent/android/tpush/XGPushManager;->getDefaultNotificationBuilder(Landroid/content/Context;)Lcom/tencent/android/tpush/XGPushNotificationBuilder;

    move-result-object v2

    .line 271
    :cond_1
    if-nez v2, :cond_2

    .line 272
    invoke-static {p0}, Lcom/tencent/android/tpush/b/b;->a(Landroid/content/Context;)Lcom/tencent/android/tpush/XGPushNotificationBuilder;

    move-result-object v2

    .line 274
    :cond_2
    invoke-virtual {v0}, Lcom/tencent/android/tpush/b/d;->k()I

    move-result v5

    if-eqz v5, :cond_8

    .line 275
    const/16 v5, 0x10

    invoke-virtual {v2, v5}, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->setFlags(I)Lcom/tencent/android/tpush/XGPushNotificationBuilder;

    .line 279
    :goto_0
    invoke-virtual {v0}, Lcom/tencent/android/tpush/b/d;->i()I

    move-result v5

    if-eqz v5, :cond_b

    .line 280
    invoke-virtual {v0}, Lcom/tencent/android/tpush/b/d;->p()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 282
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v0}, Lcom/tencent/android/tpush/b/d;->p()Ljava/lang/String;

    move-result-object v7

    const-string v8, "raw"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 284
    if-lez v5, :cond_9

    .line 285
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "android.resource://"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 287
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 288
    invoke-virtual {v2, v5}, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->setSound(Landroid/net/Uri;)Lcom/tencent/android/tpush/XGPushNotificationBuilder;

    .line 298
    :goto_1
    invoke-virtual {v0}, Lcom/tencent/android/tpush/b/d;->j()I

    move-result v5

    if-eqz v5, :cond_c

    .line 299
    invoke-virtual {v2, v12}, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->setDefaults(I)Lcom/tencent/android/tpush/XGPushNotificationBuilder;

    .line 303
    :goto_2
    invoke-virtual {v0}, Lcom/tencent/android/tpush/b/d;->o()I

    move-result v5

    if-eqz v5, :cond_3

    .line 305
    invoke-virtual {v2, v3}, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->setFlags(I)Lcom/tencent/android/tpush/XGPushNotificationBuilder;

    .line 307
    :cond_3
    invoke-virtual {v0}, Lcom/tencent/android/tpush/b/d;->r()Ljava/lang/String;

    move-result-object v5

    .line 308
    if-eqz v5, :cond_e

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_e

    .line 309
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const-string v8, "drawable"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v5, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 311
    if-lez v5, :cond_d

    .line 312
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->setSmallIcon(Ljava/lang/Integer;)Lcom/tencent/android/tpush/XGPushNotificationBuilder;

    .line 322
    :goto_3
    invoke-virtual {v0}, Lcom/tencent/android/tpush/b/d;->s()I

    move-result v5

    .line 323
    invoke-virtual {v0}, Lcom/tencent/android/tpush/b/d;->q()Ljava/lang/String;

    move-result-object v7

    .line 325
    instance-of v8, v2, Lcom/tencent/android/tpush/XGCustomPushNotificationBuilder;

    if-eqz v8, :cond_4

    move-object v1, v2

    .line 326
    check-cast v1, Lcom/tencent/android/tpush/XGCustomPushNotificationBuilder;

    invoke-virtual {v1}, Lcom/tencent/android/tpush/XGCustomPushNotificationBuilder;->getLayoutIconId()Ljava/lang/Integer;

    move-result-object v1

    .line 329
    :cond_4
    if-eqz v7, :cond_11

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_11

    .line 330
    if-gtz v5, :cond_10

    .line 331
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v8, "drawable"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 333
    if-lez v5, :cond_f

    .line 334
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-static {v7, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->setLargeIcon(Landroid/graphics/Bitmap;)Lcom/tencent/android/tpush/XGPushNotificationBuilder;

    .line 336
    if-eqz v1, :cond_5

    move-object v1, v2

    .line 337
    check-cast v1, Lcom/tencent/android/tpush/XGCustomPushNotificationBuilder;

    invoke-virtual {v1, v5}, Lcom/tencent/android/tpush/XGCustomPushNotificationBuilder;->setLayoutIconDrawableId(I)Lcom/tencent/android/tpush/XGCustomPushNotificationBuilder;

    .line 355
    :cond_5
    :goto_4
    invoke-virtual {v0}, Lcom/tencent/android/tpush/b/d;->n()I

    move-result v1

    if-lez v1, :cond_6

    .line 356
    invoke-virtual {v0}, Lcom/tencent/android/tpush/b/d;->n()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->setIcon(Ljava/lang/Integer;)Lcom/tencent/android/tpush/XGPushNotificationBuilder;

    .line 358
    :cond_6
    invoke-virtual {v2}, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->getSmallIcon()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_7

    invoke-virtual {v2}, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->getLargeIcon()Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_7

    invoke-virtual {v2}, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->getIcon()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_7

    .line 361
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->setSmallIcon(Ljava/lang/Integer;)Lcom/tencent/android/tpush/XGPushNotificationBuilder;

    .line 362
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-static {v1, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->setLargeIcon(Landroid/graphics/Bitmap;)Lcom/tencent/android/tpush/XGPushNotificationBuilder;

    .line 368
    :cond_7
    invoke-virtual {v0}, Lcom/tencent/android/tpush/b/d;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->setTitle(Ljava/lang/String;)V

    .line 369
    invoke-virtual {v0}, Lcom/tencent/android/tpush/b/d;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->setTickerText(Ljava/lang/CharSequence;)Lcom/tencent/android/tpush/XGPushNotificationBuilder;

    .line 372
    invoke-virtual {v0}, Lcom/tencent/android/tpush/b/d;->g()Ljava/lang/String;

    move-result-object v1

    .line 373
    invoke-static {v1}, Lcom/tencent/android/tpush/common/p;->b(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1a

    .line 374
    const-string v5, "{}"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1a

    move v1, v3

    .line 379
    :goto_5
    invoke-static {p0, v6, v1}, Lcom/tencent/android/tpush/b/b;->a(Landroid/content/Context;Lcom/tencent/android/tpush/b/e;Z)Landroid/content/Intent;

    move-result-object v7

    .line 380
    if-nez v7, :cond_12

    .line 381
    const-string v0, "MessageHelper"

    const-string v1, "intent is null"

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/a/a;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    :goto_6
    return-void

    .line 277
    :cond_8
    const/16 v5, 0x20

    invoke-virtual {v2, v5}, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->setFlags(I)Lcom/tencent/android/tpush/XGPushNotificationBuilder;

    goto/16 :goto_0

    .line 290
    :cond_9
    invoke-virtual {v2, v3}, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->setDefaults(I)Lcom/tencent/android/tpush/XGPushNotificationBuilder;

    goto/16 :goto_1

    .line 293
    :cond_a
    invoke-virtual {v2, v3}, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->setDefaults(I)Lcom/tencent/android/tpush/XGPushNotificationBuilder;

    goto/16 :goto_1

    .line 296
    :cond_b
    invoke-virtual {v2, v1}, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->setSound(Landroid/net/Uri;)Lcom/tencent/android/tpush/XGPushNotificationBuilder;

    goto/16 :goto_1

    .line 301
    :cond_c
    invoke-virtual {v2, v1}, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->setVibrate([J)Lcom/tencent/android/tpush/XGPushNotificationBuilder;

    goto/16 :goto_2

    .line 316
    :cond_d
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->setSmallIcon(Ljava/lang/Integer;)Lcom/tencent/android/tpush/XGPushNotificationBuilder;

    goto/16 :goto_3

    .line 320
    :cond_e
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->setSmallIcon(Ljava/lang/Integer;)Lcom/tencent/android/tpush/XGPushNotificationBuilder;

    goto/16 :goto_3

    .line 341
    :cond_f
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-static {v1, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->setLargeIcon(Landroid/graphics/Bitmap;)Lcom/tencent/android/tpush/XGPushNotificationBuilder;

    goto/16 :goto_4

    .line 346
    :cond_10
    invoke-static {v7, v2, p0, v1}, Lcom/tencent/android/tpush/b/b;->a(Ljava/lang/String;Lcom/tencent/android/tpush/XGPushNotificationBuilder;Landroid/content/Context;Ljava/lang/Integer;)V

    goto/16 :goto_4

    .line 349
    :cond_11
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-static {v1, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->setLargeIcon(Landroid/graphics/Bitmap;)Lcom/tencent/android/tpush/XGPushNotificationBuilder;

    goto/16 :goto_4

    .line 386
    :cond_12
    if-eqz v1, :cond_13

    .line 387
    const-string v1, "custom_content"

    invoke-virtual {v0}, Lcom/tencent/android/tpush/b/d;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 392
    :cond_13
    const-string v1, "tag.tpush.MSG"

    const-string v3, "true"

    invoke-virtual {v7, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 393
    const-string v1, "title"

    invoke-virtual {v0}, Lcom/tencent/android/tpush/b/d;->e()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/android/tpush/encrypt/Rijndael;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 395
    const-string v1, "content"

    invoke-virtual {v0}, Lcom/tencent/android/tpush/b/d;->f()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/android/tpush/encrypt/Rijndael;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 397
    invoke-virtual {v0}, Lcom/tencent/android/tpush/b/d;->g()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_14

    .line 398
    const-string v1, "custom_content"

    invoke-virtual {v0}, Lcom/tencent/android/tpush/b/d;->g()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/android/tpush/encrypt/Rijndael;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 401
    :cond_14
    const-string v1, "msgId"

    invoke-virtual {p1}, Lcom/tencent/android/tpush/b/i;->b()J

    move-result-wide v8

    invoke-virtual {v7, v1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 402
    const-string v1, "accId"

    invoke-virtual {p1}, Lcom/tencent/android/tpush/b/i;->c()J

    move-result-wide v8

    invoke-virtual {v7, v1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 403
    const-string v1, "busiMsgId"

    invoke-virtual {p1}, Lcom/tencent/android/tpush/b/i;->d()J

    move-result-wide v8

    invoke-virtual {v7, v1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 404
    const-string v1, "timestamps"

    invoke-virtual {p1}, Lcom/tencent/android/tpush/b/i;->e()J

    move-result-wide v8

    invoke-virtual {v7, v1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 408
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    sub-long/2addr v8, v10

    .line 409
    const-string v1, "protect"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/android/tpush/encrypt/Rijndael;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 412
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 414
    invoke-virtual {v0}, Lcom/tencent/android/tpush/b/d;->l()I

    move-result v3

    .line 415
    if-gtz v3, :cond_19

    .line 416
    invoke-virtual {v0}, Lcom/tencent/android/tpush/b/d;->h()I

    move-result v3

    invoke-static {p0, v3}, Lcom/tencent/android/tpush/b/b;->b(Landroid/content/Context;I)I

    move-result v3

    move v5, v3

    .line 419
    :goto_7
    const/4 v3, -0x1

    if-ne v5, v3, :cond_15

    .line 420
    invoke-virtual {v1}, Landroid/app/NotificationManager;->cancelAll()V

    .line 422
    :cond_15
    const-string v3, "notifaction_id"

    invoke-virtual {v7, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 425
    const/high16 v3, 0x8000000

    .line 426
    iget-object v8, v6, Lcom/tencent/android/tpush/b/e;->c:Lcom/tencent/android/tpush/b/f;

    if-eqz v8, :cond_16

    iget-object v8, v6, Lcom/tencent/android/tpush/b/e;->c:Lcom/tencent/android/tpush/b/f;

    iget v8, v8, Lcom/tencent/android/tpush/b/f;->b:I

    if-lez v8, :cond_16

    .line 428
    iget-object v3, v6, Lcom/tencent/android/tpush/b/e;->c:Lcom/tencent/android/tpush/b/f;

    iget v3, v3, Lcom/tencent/android/tpush/b/f;->b:I

    .line 431
    :cond_16
    new-instance v6, Landroid/content/Intent;

    const-string v8, "com.tencent.android.tpush.action.PUSH_CANCELLED.RESULT"

    invoke-direct {v6, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 433
    const-string v8, "packName"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 434
    const-string v8, "action"

    invoke-virtual {v6, v8, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 437
    invoke-virtual {v6, v7}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 440
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x13

    if-ne v8, v9, :cond_17

    .line 441
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v5, v7, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    .line 444
    invoke-virtual {v8}, Landroid/app/PendingIntent;->cancel()V

    .line 447
    :cond_17
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v5, v7, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    .line 450
    invoke-virtual {v2, v8}, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->setContentIntent(Landroid/app/PendingIntent;)Lcom/tencent/android/tpush/XGPushNotificationBuilder;

    .line 454
    invoke-virtual {v2, p0}, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->buildNotification(Landroid/content/Context;)Landroid/app/Notification;

    move-result-object v2

    .line 455
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v5, v6, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    iput-object v3, v2, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 458
    invoke-static {}, Lcom/tencent/android/tpush/XGPushManager;->getNotifactionCallback()Lcom/tencent/android/tpush/XGPushNotifactionCallback;

    move-result-object v3

    .line 460
    if-nez v3, :cond_18

    .line 461
    invoke-virtual {v1, v5, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 471
    :goto_8
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.tencent.android.tpush.action.FEEDBACK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 472
    const-string v1, "TPUSH.ERRORCODE"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 473
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 474
    invoke-virtual {v0, v7}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 475
    const-string v1, "TPUSH.FEEDBACK"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 477
    const-string v1, "notifaction_id"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 478
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_6

    .line 463
    :cond_18
    const-string v1, "MessageHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "call notifactionCallback:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/tencent/android/tpush/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    new-instance v1, Lcom/tencent/android/tpush/XGNotifaction;

    invoke-direct {v1, p0, v5, v2, v0}, Lcom/tencent/android/tpush/XGNotifaction;-><init>(Landroid/content/Context;ILandroid/app/Notification;Lcom/tencent/android/tpush/b/d;)V

    .line 466
    invoke-interface {v3, v1}, Lcom/tencent/android/tpush/XGPushNotifactionCallback;->handleNotify(Lcom/tencent/android/tpush/XGNotifaction;)V

    goto :goto_8

    :cond_19
    move v5, v3

    goto/16 :goto_7

    :cond_1a
    move v1, v4

    goto/16 :goto_5
.end method

.method private static a(Ljava/lang/String;Lcom/tencent/android/tpush/XGPushNotificationBuilder;Landroid/content/Context;Ljava/lang/Integer;)V
    .locals 10

    .prologue
    const/16 v3, 0xfa0

    const/16 v2, 0xbb8

    const/4 v1, 0x0

    .line 572
    .line 574
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 575
    invoke-static {v0, v2}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 576
    invoke-static {v0, v2}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 577
    new-instance v6, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v6, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 578
    invoke-static {v0, v3}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 579
    invoke-static {v0, v3}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 580
    const-wide/16 v2, 0xfa0

    invoke-static {v0, v2, v3}, Lorg/apache/http/conn/params/ConnManagerParams;->setTimeout(Lorg/apache/http/params/HttpParams;J)V

    .line 582
    const/4 v0, 0x0

    .line 583
    const/4 v2, 0x0

    .line 584
    const/4 v3, 0x0

    .line 586
    :try_start_0
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 587
    new-instance v5, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v4}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v7

    invoke-direct {v5, v7}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/net/URI;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 588
    :try_start_1
    const-string v7, "X-Online-Host"

    invoke-virtual {v4}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v7, v4}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    invoke-interface {v6}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v4

    const-string v7, "http.socket.timeout"

    const/16 v8, 0x4e20

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v4, v7, v8}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 591
    invoke-interface {v6}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v4

    const-string v7, "http.connection.timeout"

    const/16 v8, 0x4e20

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v4, v7, v8}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 593
    invoke-interface {v6, v5}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v4

    .line 594
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v7

    .line 595
    const/16 v8, 0xc8

    if-eq v7, v8, :cond_5

    .line 596
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-static {v4, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->setLargeIcon(Landroid/graphics/Bitmap;)Lcom/tencent/android/tpush/XGPushNotificationBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 621
    if-eqz v1, :cond_0

    .line 622
    :try_start_2
    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 624
    :cond_0
    if-eqz v1, :cond_1

    .line 625
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 628
    :cond_1
    if-eqz v1, :cond_2

    .line 629
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 631
    :cond_2
    if-eqz v5, :cond_3

    .line 632
    invoke-virtual {v5}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 634
    :cond_3
    if-eqz v6, :cond_4

    .line 635
    invoke-interface {v6}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 641
    :cond_4
    :goto_0
    return-void

    .line 637
    :catch_0
    move-exception v0

    .line 638
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 600
    :cond_5
    :try_start_3
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v2

    .line 601
    if-eqz v2, :cond_15

    .line 602
    :try_start_4
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result-object v4

    .line 603
    :try_start_5
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_8
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 604
    const/16 v0, 0x400

    :try_start_6
    new-array v0, v0, [B

    .line 606
    :goto_1
    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v7, -0x1

    if-eq v1, v7, :cond_a

    .line 607
    const/4 v7, 0x0

    invoke-virtual {v3, v0, v7, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    goto :goto_1

    .line 617
    :catch_1
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    .line 618
    :goto_2
    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 621
    if-eqz v1, :cond_6

    .line 622
    :try_start_8
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 624
    :cond_6
    if-eqz v3, :cond_7

    .line 625
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 628
    :cond_7
    if-eqz v2, :cond_8

    .line 629
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 631
    :cond_8
    if-eqz v4, :cond_9

    .line 632
    invoke-virtual {v4}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 634
    :cond_9
    if-eqz v6, :cond_4

    .line 635
    invoke-interface {v6}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_0

    .line 637
    :catch_2
    move-exception v0

    .line 638
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 609
    :cond_a
    :try_start_9
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    array-length v7, v7

    invoke-static {v0, v1, v7}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 611
    invoke-virtual {p1, v0}, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->setLargeIcon(Landroid/graphics/Bitmap;)Lcom/tencent/android/tpush/XGPushNotificationBuilder;

    .line 612
    if-eqz p3, :cond_b

    .line 613
    check-cast p1, Lcom/tencent/android/tpush/XGCustomPushNotificationBuilder;

    invoke-virtual {p1, v0}, Lcom/tencent/android/tpush/XGCustomPushNotificationBuilder;->setLayoutIconDrawableBmp(Landroid/graphics/Bitmap;)Lcom/tencent/android/tpush/XGCustomPushNotificationBuilder;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 621
    :cond_b
    :goto_3
    if-eqz v2, :cond_c

    .line 622
    :try_start_a
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 624
    :cond_c
    if-eqz v4, :cond_d

    .line 625
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 628
    :cond_d
    if-eqz v3, :cond_e

    .line 629
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 631
    :cond_e
    if-eqz v5, :cond_f

    .line 632
    invoke-virtual {v5}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 634
    :cond_f
    if-eqz v6, :cond_4

    .line 635
    invoke-interface {v6}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    goto/16 :goto_0

    .line 637
    :catch_3
    move-exception v0

    .line 638
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 620
    :catchall_0
    move-exception v0

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    .line 621
    :goto_4
    if-eqz v1, :cond_10

    .line 622
    :try_start_b
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 624
    :cond_10
    if-eqz v4, :cond_11

    .line 625
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 628
    :cond_11
    if-eqz v3, :cond_12

    .line 629
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 631
    :cond_12
    if-eqz v5, :cond_13

    .line 632
    invoke-virtual {v5}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 634
    :cond_13
    if-eqz v6, :cond_14

    .line 635
    invoke-interface {v6}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4

    .line 639
    :cond_14
    :goto_5
    throw v0

    .line 637
    :catch_4
    move-exception v1

    .line 638
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 620
    :catchall_1
    move-exception v0

    move-object v3, v1

    move-object v4, v1

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v3, v1

    move-object v4, v1

    move-object v1, v2

    goto :goto_4

    :catchall_3
    move-exception v0

    move-object v3, v1

    move-object v1, v2

    goto :goto_4

    :catchall_4
    move-exception v0

    move-object v1, v2

    goto :goto_4

    :catchall_5
    move-exception v0

    move-object v5, v4

    move-object v4, v3

    move-object v3, v2

    goto :goto_4

    .line 617
    :catch_5
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    goto/16 :goto_2

    :catch_6
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    move-object v4, v5

    goto/16 :goto_2

    :catch_7
    move-exception v0

    move-object v3, v1

    move-object v4, v5

    move-object v9, v2

    move-object v2, v1

    move-object v1, v9

    goto/16 :goto_2

    :catch_8
    move-exception v0

    move-object v3, v4

    move-object v4, v5

    move-object v9, v2

    move-object v2, v1

    move-object v1, v9

    goto/16 :goto_2

    :cond_15
    move-object v3, v1

    move-object v4, v1

    goto :goto_3
.end method

.method private static declared-synchronized b(Landroid/content/Context;I)I
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 690
    const-class v2, Lcom/tencent/android/tpush/b/b;

    monitor-enter v2

    .line 692
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_XINGE_NOTIF_NUMBER_"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 693
    const/4 v0, 0x0

    invoke-static {p0, v3, v0}, Lcom/tencent/android/tpush/common/m;->a(Landroid/content/Context;Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 694
    const v4, 0x7ffffffe

    if-lt v0, v4, :cond_0

    move v0, v1

    .line 697
    :cond_0
    add-int/lit8 v1, v0, 0x1

    :try_start_1
    invoke-static {p0, v3, v1}, Lcom/tencent/android/tpush/common/m;->b(Landroid/content/Context;Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 701
    :goto_0
    monitor-exit v2

    return v0

    .line 698
    :catch_0
    move-exception v0

    move-object v5, v0

    move v0, v1

    move-object v1, v5

    .line 699
    :goto_1
    :try_start_2
    const-string v3, "MessageHelper"

    const-string v4, ""

    invoke-static {v3, v4, v1}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 690
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 698
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 154
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 155
    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 156
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 157
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 159
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 160
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 161
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 162
    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v3, :cond_0

    .line 163
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    :goto_0
    return-object v0

    .line 165
    :catch_0
    move-exception v0

    .line 166
    const-string v2, "MessageHelper"

    const-string v3, "get Activity error"

    invoke-static {v2, v3, v0}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    move-object v0, v1

    .line 168
    goto :goto_0
.end method

.method public static b(Landroid/content/Context;Lcom/tencent/android/tpush/b/i;)V
    .locals 3

    .prologue
    .line 663
    invoke-virtual {p1}, Lcom/tencent/android/tpush/b/i;->g()Lcom/tencent/android/tpush/b/a;

    move-result-object v0

    instance-of v0, v0, Lcom/tencent/android/tpush/b/d;

    if-eqz v0, :cond_2

    .line 666
    sget-boolean v0, Lcom/tencent/android/tpush/XGPushConfig;->enableDebug:Z

    if-eqz v0, :cond_0

    .line 667
    const-string v0, "MessageHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Action -> showNotification "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tencent/android/tpush/b/i;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    :cond_0
    invoke-virtual {p1}, Lcom/tencent/android/tpush/b/i;->g()Lcom/tencent/android/tpush/b/a;

    move-result-object v0

    check-cast v0, Lcom/tencent/android/tpush/b/d;

    .line 672
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/tencent/android/tpush/b/d;->m()Lcom/tencent/android/tpush/b/e;

    move-result-object v0

    if-nez v0, :cond_3

    .line 673
    :cond_1
    const-string v0, "MessageHelper"

    const-string v1, "showNotification holder == null || holder.getAction() == null"

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/a/a;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 679
    :cond_2
    :goto_0
    return-void

    .line 677
    :cond_3
    invoke-static {p0, p1}, Lcom/tencent/android/tpush/b/b;->a(Landroid/content/Context;Lcom/tencent/android/tpush/b/i;)V

    goto :goto_0
.end method
