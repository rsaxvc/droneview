.class public Lcom/tencent/android/tpush/XGPushManager;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation build Lcom/jg/JgClassChecked;
    author = 0x1
    fComment = "\u786e\u8ba4\u5df2\u8fdb\u884c\u5b89\u5168\u6821\u9a8c"
    lastDate = "20150316"
    reviewer = 0x3
    vComment = {
        .enum Lcom/jg/EType;->RECEIVERCHECK:Lcom/jg/EType;,
        .enum Lcom/jg/EType;->INTENTCHECK:Lcom/jg/EType;
    }
.end annotation


# static fields
.field public static final ENABLE_SERVICE_SUFFIX:Ljava/lang/String; = ".enableService"

.field public static final OPERATION_FAIL:I = 0x1

.field public static final OPERATION_REQ_REGISTER:I = 0x64

.field public static final OPERATION_REQ_UNREGISTER:I = 0x65

.field public static final OPERATION_SUCCESS:I

.field private static final a:Ljava/lang/String;

.field private static b:Landroid/content/Context;

.field private static c:Lcom/tencent/android/tpush/XGPushNotifactionCallback;

.field private static d:Ljava/util/Map;

.field public static enableService:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 66
    const-class v0, Lcom/tencent/android/tpush/XGPushManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/android/tpush/XGPushManager;->a:Ljava/lang/String;

    .line 72
    sput-object v1, Lcom/tencent/android/tpush/XGPushManager;->b:Landroid/content/Context;

    .line 629
    sput-object v1, Lcom/tencent/android/tpush/XGPushManager;->c:Lcom/tencent/android/tpush/XGPushNotifactionCallback;

    .line 916
    const/4 v0, -0x1

    sput v0, Lcom/tencent/android/tpush/XGPushManager;->enableService:I

    .line 1102
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/tencent/android/tpush/XGPushManager;->d:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    return-void
.end method

.method static a(Landroid/content/Context;Lcom/tencent/android/tpush/XGLocalMessage;J)J
    .locals 10

    .prologue
    const-wide/16 v2, 0x0

    const-wide/16 v0, -0x1

    .line 558
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    .line 559
    :cond_0
    :try_start_0
    sget-object v4, Lcom/tencent/android/tpush/XGPushManager;->a:Ljava/lang/String;

    const-string v5, "addLocalNotification context == null or msg == null"

    invoke-static {v4, v5}, Lcom/tencent/android/tpush/a/a;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    :cond_1
    :goto_0
    return-wide v0

    .line 562
    :cond_2
    invoke-static {p0}, Lcom/tencent/android/tpush/service/channel/security/TpnsSecurity;->checkTpnsSecurityLibSo(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 566
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.tencent.android.tpush.action.CUSTOM_NOTIFICATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 567
    const-string v1, "appPkgName"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 568
    cmp-long v1, p2, v2

    if-gtz v1, :cond_3

    invoke-static {p0}, Lcom/tencent/android/tpush/XGPushConfig;->getAccessId(Landroid/content/Context;)J

    move-result-wide p2

    .line 569
    :cond_3
    const-string v1, "accessId"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 570
    const-string v1, "type"

    invoke-virtual {p1}, Lcom/tencent/android/tpush/XGLocalMessage;->getType()I

    move-result v4

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 571
    const-string v1, "title"

    invoke-virtual {p1}, Lcom/tencent/android/tpush/XGLocalMessage;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 572
    const-string v1, "content"

    invoke-virtual {p1}, Lcom/tencent/android/tpush/XGLocalMessage;->getContent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 573
    const-string v1, "custom_content"

    invoke-virtual {p1}, Lcom/tencent/android/tpush/XGLocalMessage;->getCustom_content()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 574
    const-string v1, "date"

    invoke-virtual {p1}, Lcom/tencent/android/tpush/XGLocalMessage;->getDate()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 575
    const-string v1, "hour"

    invoke-virtual {p1}, Lcom/tencent/android/tpush/XGLocalMessage;->getHour()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 576
    const-string v1, "min"

    invoke-virtual {p1}, Lcom/tencent/android/tpush/XGLocalMessage;->getMin()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 577
    const-string v1, "builderId"

    invoke-virtual {p1}, Lcom/tencent/android/tpush/XGLocalMessage;->getBuilderId()J

    move-result-wide v4

    invoke-virtual {v0, v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 578
    const-string v1, "ring"

    invoke-virtual {p1}, Lcom/tencent/android/tpush/XGLocalMessage;->getRing()I

    move-result v4

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 579
    const-string v1, "vibrate"

    invoke-virtual {p1}, Lcom/tencent/android/tpush/XGLocalMessage;->getVibrate()I

    move-result v4

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 580
    const-string v1, "lights"

    invoke-virtual {p1}, Lcom/tencent/android/tpush/XGLocalMessage;->getLights()I

    move-result v4

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 581
    const-string v1, "ring_raw"

    invoke-virtual {p1}, Lcom/tencent/android/tpush/XGLocalMessage;->getRing_raw()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 582
    const-string v1, "icon_type"

    invoke-virtual {p1}, Lcom/tencent/android/tpush/XGLocalMessage;->getIcon_type()I

    move-result v4

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 583
    const-string v1, "icon_res"

    invoke-virtual {p1}, Lcom/tencent/android/tpush/XGLocalMessage;->getIcon_res()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 584
    const-string v1, "style_id"

    invoke-virtual {p1}, Lcom/tencent/android/tpush/XGLocalMessage;->getStyle_id()I

    move-result v4

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 585
    const-string v1, "small_icon"

    invoke-virtual {p1}, Lcom/tencent/android/tpush/XGLocalMessage;->getSmall_icon()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 586
    const-string v1, "action_type"

    invoke-virtual {p1}, Lcom/tencent/android/tpush/XGLocalMessage;->getAction_type()I

    move-result v4

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 587
    const-string v1, "activity"

    invoke-virtual {p1}, Lcom/tencent/android/tpush/XGLocalMessage;->getActivity()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 588
    const-string v1, "url"

    invoke-virtual {p1}, Lcom/tencent/android/tpush/XGLocalMessage;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 589
    const-string v1, "intent"

    invoke-virtual {p1}, Lcom/tencent/android/tpush/XGLocalMessage;->getIntent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 590
    const-string v1, "packageDownloadUrl"

    invoke-virtual {p1}, Lcom/tencent/android/tpush/XGLocalMessage;->getPackageDownloadUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 591
    const-string v1, "packageName"

    invoke-virtual {p1}, Lcom/tencent/android/tpush/XGLocalMessage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 592
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 593
    const-string v1, "msgId"

    neg-long v6, v4

    invoke-virtual {v0, v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 594
    const-string v1, "timeUs"

    invoke-virtual {v0, v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 595
    const-string v1, "n_id"

    invoke-virtual {p1}, Lcom/tencent/android/tpush/XGLocalMessage;->getNotificationId()I

    move-result v6

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 596
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 600
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v0, 0x40

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 601
    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    neg-long v6, v4

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/tencent/android/tpush/XGLocalMessage;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, ""

    :goto_1
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/tencent/android/tpush/XGLocalMessage;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, ""

    :goto_2
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 605
    invoke-virtual {p1}, Lcom/tencent/android/tpush/XGLocalMessage;->getCustom_content()Ljava/lang/String;

    move-result-object v0

    .line 606
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lorg/json/JSONObject;->length()I

    move-result v6

    if-nez v6, :cond_5

    .line 607
    :cond_4
    const-string v0, ""

    .line 609
    :cond_5
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 610
    invoke-virtual {p1}, Lcom/tencent/android/tpush/XGLocalMessage;->getType()I

    move-result v0

    const/4 v6, 0x1

    if-ne v0, v6, :cond_6

    .line 611
    invoke-virtual {p1}, Lcom/tencent/android/tpush/XGLocalMessage;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, ""

    :goto_3
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/tencent/android/tpush/XGLocalMessage;->getIntent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, ""

    :goto_4
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/tencent/android/tpush/XGLocalMessage;->getActivity()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, ""

    :goto_5
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 615
    :cond_6
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 616
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "tpush.local.msg."

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/tencent/android/tpush/encrypt/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 619
    invoke-virtual {p1}, Lcom/tencent/android/tpush/XGLocalMessage;->getExpirationTimeMs()J

    move-result-wide v6

    .line 620
    invoke-static {p0, v1, v6, v7}, Lcom/tencent/android/tpush/common/m;->b(Landroid/content/Context;Ljava/lang/String;J)V

    .line 621
    const-string v8, "TPush"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, ",tag:"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",exp:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/tencent/android/tpush/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    neg-long v0, v4

    goto/16 :goto_0

    .line 601
    :cond_7
    invoke-virtual {p1}, Lcom/tencent/android/tpush/XGLocalMessage;->getTitle()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_8
    invoke-virtual {p1}, Lcom/tencent/android/tpush/XGLocalMessage;->getContent()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 611
    :cond_9
    invoke-virtual {p1}, Lcom/tencent/android/tpush/XGLocalMessage;->getUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_a
    invoke-virtual {p1}, Lcom/tencent/android/tpush/XGLocalMessage;->getIntent()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_b
    invoke-virtual {p1}, Lcom/tencent/android/tpush/XGLocalMessage;->getActivity()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_5

    .line 623
    :catch_0
    move-exception v0

    .line 624
    const-string v1, "TPush"

    const-string v4, "addLocalNotification "

    invoke-static {v1, v4, v0}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-wide v0, v2

    .line 626
    goto/16 :goto_0
.end method

.method static a(Landroid/app/Activity;)Lcom/tencent/android/tpush/XGPushClickedResult;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 488
    sget-boolean v1, Lcom/tencent/android/tpush/XGPushConfig;->enableDebug:Z

    if-eqz v1, :cond_0

    .line 489
    const-string v1, "TPush"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">>> onActivityStarted activity="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/android/tpush/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    :cond_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-nez v1, :cond_2

    .line 520
    :cond_1
    :goto_0
    return-object v0

    .line 495
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 496
    const-string v2, "tag.tpush.MSG"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 497
    if-eqz v2, :cond_1

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 500
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/android/tpush/common/p;->a(Landroid/content/Context;)I

    move-result v2

    if-gtz v2, :cond_1

    .line 506
    new-instance v0, Lcom/tencent/android/tpush/XGPushClickedResult;

    invoke-direct {v0}, Lcom/tencent/android/tpush/XGPushClickedResult;-><init>()V

    .line 507
    invoke-virtual {v0, v1}, Lcom/tencent/android/tpush/XGPushClickedResult;->parseIntent(Landroid/content/Intent;)V

    .line 509
    const-string v2, "tag.tpush.MSG"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 511
    invoke-static {}, Lcom/tencent/android/tpush/common/g;->a()Lcom/tencent/android/tpush/common/g;

    move-result-object v2

    new-instance v3, Lcom/tencent/android/tpush/w;

    invoke-direct {v3, p0, v1}, Lcom/tencent/android/tpush/w;-><init>(Landroid/app/Activity;Landroid/content/Intent;)V

    invoke-virtual {v2, v3}, Lcom/tencent/android/tpush/common/g;->a(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/tencent/android/tpush/XGPushManager;->a:Ljava/lang/String;

    return-object v0
.end method

.method static a(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 108
    if-eqz p0, :cond_1

    .line 109
    sget-boolean v0, Lcom/tencent/android/tpush/XGPushConfig;->enableDebug:Z

    if-eqz v0, :cond_0

    .line 110
    sget-object v0, Lcom/tencent/android/tpush/XGPushManager;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " call stop Push Service"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 114
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/tencent/android/tpush/service/XGPushService;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 116
    invoke-virtual {p0, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 118
    :cond_1
    return-void
.end method

.method static synthetic a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 55
    invoke-static {p0, p1}, Lcom/tencent/android/tpush/XGPushManager;->c(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic a(Landroid/content/Context;Landroid/content/Intent;Lcom/tencent/android/tpush/XGIOperateCallback;)V
    .locals 0

    .prologue
    .line 55
    invoke-static {p0, p1, p2}, Lcom/tencent/android/tpush/XGPushManager;->d(Landroid/content/Context;Landroid/content/Intent;Lcom/tencent/android/tpush/XGIOperateCallback;)V

    return-void
.end method

.method static a(Landroid/content/Context;Landroid/content/Intent;Lcom/tencent/android/tpush/XGIOperateCallback;Z)V
    .locals 4

    .prologue
    .line 1088
    invoke-static {p0}, Lcom/tencent/android/tpush/common/p;->e(Landroid/content/Context;)V

    .line 1089
    new-instance v0, Lcom/tencent/android/tpush/ac;

    invoke-direct {v0, p0, p1, p2}, Lcom/tencent/android/tpush/ac;-><init>(Landroid/content/Context;Landroid/content/Intent;Lcom/tencent/android/tpush/XGIOperateCallback;)V

    .line 1091
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.tencent.android.tpush.action.SERVICE_START"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1093
    new-instance v1, Lcom/tencent/android/tpush/ad;

    invoke-direct {v1, p0, p1, p2}, Lcom/tencent/android/tpush/ad;-><init>(Landroid/content/Context;Landroid/content/Intent;Lcom/tencent/android/tpush/XGIOperateCallback;)V

    .line 1095
    :try_start_0
    sget-object v2, Lcom/tencent/android/tpush/XGPushManager;->d:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1096
    invoke-static {}, Lcom/tencent/android/tpush/common/g;->a()Lcom/tencent/android/tpush/common/g;

    move-result-object v0

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/android/tpush/common/g;->a(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1100
    :goto_0
    return-void

    .line 1097
    :catch_0
    move-exception v0

    .line 1098
    const-string v1, "TPush"

    const-string v2, "mapTimeRunnableOfMessage error"

    invoke-static {v1, v2, v0}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static a(Landroid/content/Context;Lcom/tencent/android/tpush/XGIOperateCallback;JLjava/lang/String;)V
    .locals 7

    .prologue
    .line 293
    if-nez p0, :cond_1

    .line 294
    invoke-static {p0}, Lcom/tencent/android/tpush/XGPushManager;->setContext(Landroid/content/Context;)V

    .line 295
    if-eqz p1, :cond_0

    .line 296
    const/4 v0, 0x0

    const/16 v1, 0x2711

    const-string v2, "The context parameter can not be null!"

    invoke-interface {p1, v0, v1, v2}, Lcom/tencent/android/tpush/XGIOperateCallback;->onFail(Ljava/lang/Object;ILjava/lang/String;)V

    .line 393
    :goto_0
    return-void

    .line 300
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The context parameter can not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 303
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 304
    invoke-static {}, Lcom/tencent/android/tpush/common/g;->a()Lcom/tencent/android/tpush/common/g;

    move-result-object v6

    new-instance v0, Lcom/tencent/android/tpush/v;

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/tencent/android/tpush/v;-><init>(Landroid/content/Context;Lcom/tencent/android/tpush/XGIOperateCallback;JLjava/lang/String;)V

    invoke-virtual {v6, v0}, Lcom/tencent/android/tpush/common/g;->a(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;IJ)V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 452
    if-nez p0, :cond_0

    .line 453
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The context parameter can not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 456
    :cond_0
    invoke-static {p0}, Lcom/tencent/android/tpush/common/p;->a(Landroid/content/Context;)I

    move-result v0

    if-lez v0, :cond_1

    .line 478
    :goto_0
    return-void

    .line 459
    :cond_1
    if-nez p1, :cond_2

    .line 460
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The tagName parameter can not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 464
    :cond_2
    cmp-long v0, p3, v1

    if-gtz v0, :cond_3

    .line 465
    invoke-static {p0}, Lcom/tencent/android/tpush/XGPushConfig;->getAccessId(Landroid/content/Context;)J

    move-result-wide p3

    .line 467
    :cond_3
    cmp-long v0, p3, v1

    if-gez v0, :cond_4

    .line 468
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The accessId not set!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 471
    :cond_4
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.tencent.android.tpush.action.TAG"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 472
    const-string v1, "accId"

    invoke-virtual {v0, v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 473
    const-string v1, "packName"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/android/tpush/encrypt/Rijndael;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 475
    const-string v1, "tagFlag"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 476
    const-string v1, "tagName"

    invoke-static {p1}, Lcom/tencent/android/tpush/encrypt/Rijndael;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 477
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/tencent/android/tpush/XGIOperateCallback;JLjava/lang/String;)V
    .locals 12

    .prologue
    .line 971
    invoke-static {p0}, Lcom/tencent/android/tpush/XGPushManager;->setContext(Landroid/content/Context;)V

    .line 972
    if-nez p0, :cond_0

    .line 973
    const/4 v1, 0x0

    const/16 v2, 0x2711

    const-string v3, "The context parameter can not be null!"

    move-object/from16 v0, p5

    invoke-interface {v0, v1, v2, v3}, Lcom/tencent/android/tpush/XGIOperateCallback;->onFail(Ljava/lang/Object;ILjava/lang/String;)V

    .line 1083
    :goto_0
    return-void

    .line 979
    :cond_0
    invoke-static {}, Lcom/tencent/android/tpush/common/g;->a()Lcom/tencent/android/tpush/common/g;

    move-result-object v11

    new-instance v1, Lcom/tencent/android/tpush/y;

    move-object v2, p0

    move-object/from16 v3, p5

    move-wide/from16 v4, p6

    move-object/from16 v6, p8

    move-object v7, p1

    move-object v8, p2

    move-object/from16 v9, p4

    move v10, p3

    invoke-direct/range {v1 .. v10}, Lcom/tencent/android/tpush/y;-><init>(Landroid/content/Context;Lcom/tencent/android/tpush/XGIOperateCallback;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v11, v1}, Lcom/tencent/android/tpush/common/g;->a(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static addLocalNotification(Landroid/content/Context;Lcom/tencent/android/tpush/XGLocalMessage;)J
    .locals 2

    .prologue
    .line 552
    const-wide/16 v0, -0x1

    invoke-static {p0, p1, v0, v1}, Lcom/tencent/android/tpush/XGPushManager;->a(Landroid/content/Context;Lcom/tencent/android/tpush/XGLocalMessage;J)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic b()Ljava/util/Map;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/tencent/android/tpush/XGPushManager;->d:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic b(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 55
    invoke-static {p0, p1}, Lcom/tencent/android/tpush/XGPushManager;->d(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic b(Landroid/content/Context;Landroid/content/Intent;Lcom/tencent/android/tpush/XGIOperateCallback;)V
    .locals 0

    .prologue
    .line 55
    invoke-static {p0, p1, p2}, Lcom/tencent/android/tpush/XGPushManager;->c(Landroid/content/Context;Landroid/content/Intent;Lcom/tencent/android/tpush/XGIOperateCallback;)V

    return-void
.end method

.method private static c(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .prologue
    .line 658
    const-string v0, "msgId"

    const-wide/16 v1, -0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 659
    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 660
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.tencent.android.tpush.action.PUSH_CLICK.RESULT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 662
    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 663
    const-string v1, "packName"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 664
    const-string v1, "clickTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 666
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 668
    :cond_0
    return-void
.end method

.method private static declared-synchronized c(Landroid/content/Context;Landroid/content/Intent;Lcom/tencent/android/tpush/XGIOperateCallback;)V
    .locals 5

    .prologue
    .line 1199
    const-class v1, Lcom/tencent/android/tpush/XGPushManager;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lcom/tencent/android/tpush/common/p;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1200
    sget-boolean v2, Lcom/tencent/android/tpush/XGPushConfig;->enableDebug:Z

    if-eqz v2, :cond_0

    .line 1201
    sget-object v2, Lcom/tencent/android/tpush/XGPushManager;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Action -> Register to xinge server, svcPackName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/android/tpush/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1203
    :cond_0
    invoke-static {v0}, Lcom/tencent/android/tpush/common/p;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1204
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1206
    :cond_1
    if-eqz p2, :cond_2

    .line 1207
    new-instance v0, Lcom/tencent/android/tpush/z;

    invoke-direct {v0, p2}, Lcom/tencent/android/tpush/z;-><init>(Lcom/tencent/android/tpush/XGIOperateCallback;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.tencent.android.tpush.action.REGISTER.RESULT"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1230
    :cond_2
    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1231
    monitor-exit v1

    return-void

    .line 1199
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static cancelAllNotifaction(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 878
    :try_start_0
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 880
    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 883
    :goto_0
    return-void

    .line 881
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static cancelNotifaction(Landroid/content/Context;I)V
    .locals 1

    .prologue
    .line 864
    :try_start_0
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 866
    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 869
    :goto_0
    return-void

    .line 867
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static clearLocalNotifications(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 640
    if-nez p0, :cond_1

    .line 641
    sget-object v0, Lcom/tencent/android/tpush/XGPushManager;->a:Ljava/lang/String;

    const-string v1, "clearLocalNotifications  context==null."

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/a/a;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    :cond_0
    :goto_0
    return-void

    .line 644
    :cond_1
    invoke-static {p0}, Lcom/tencent/android/tpush/common/p;->a(Landroid/content/Context;)I

    move-result v0

    if-gtz v0, :cond_0

    .line 648
    invoke-static {}, Lcom/tencent/android/tpush/service/b/a;->a()Lcom/tencent/android/tpush/service/b/a;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/tencent/android/tpush/service/b/a;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 651
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.tencent.android.tpush.action.CLEAR_CUSTOM_NOTIFICATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 653
    const-string v1, "appPkgName"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 654
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private static d(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 672
    if-eqz p1, :cond_0

    .line 673
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.tencent.android.tpush.action.FEEDBACK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 674
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 675
    const-string v1, "TPUSH.FEEDBACK"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 677
    const-string v1, "TPUSH.ERRORCODE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 678
    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 679
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 681
    :cond_0
    return-void
.end method

.method private static d(Landroid/content/Context;Landroid/content/Intent;Lcom/tencent/android/tpush/XGIOperateCallback;)V
    .locals 3

    .prologue
    .line 1235
    sget-boolean v0, Lcom/tencent/android/tpush/XGPushConfig;->enableDebug:Z

    if-eqz v0, :cond_0

    .line 1236
    sget-object v0, Lcom/tencent/android/tpush/XGPushManager;->a:Ljava/lang/String;

    const-string v1, "Action ->UnRegister to xinge server"

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1238
    :cond_0
    invoke-static {p0}, Lcom/tencent/android/tpush/common/p;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1239
    invoke-static {v0}, Lcom/tencent/android/tpush/common/p;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1240
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1242
    :cond_1
    if-eqz p2, :cond_2

    .line 1244
    new-instance v0, Lcom/tencent/android/tpush/aa;

    invoke-direct {v0, p2}, Lcom/tencent/android/tpush/aa;-><init>(Lcom/tencent/android/tpush/XGIOperateCallback;)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.tencent.android.tpush.action.UNREGISTER.RESULT"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1261
    :cond_2
    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1262
    return-void
.end method

.method public static deleteKeyValueTag(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 426
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 427
    :cond_0
    sget-object v0, Lcom/tencent/android/tpush/XGPushManager;->a:Ljava/lang/String;

    const-string v1, "deleteKeyValueTag context or tagKey invalid."

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/a/a;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    :goto_0
    return-void

    .line 430
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "::::"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 431
    sget-object v1, Lcom/tencent/android/tpush/XGPushManager;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Action -> deleteKeyValueTag with tag = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/android/tpush/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    const/4 v1, 0x4

    const-wide/16 v2, -0x1

    invoke-static {p0, v0, v1, v2, v3}, Lcom/tencent/android/tpush/XGPushManager;->a(Landroid/content/Context;Ljava/lang/String;IJ)V

    goto :goto_0
.end method

.method public static deleteTag(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 444
    sget-boolean v0, Lcom/tencent/android/tpush/XGPushConfig;->enableDebug:Z

    if-eqz v0, :cond_0

    .line 445
    sget-object v0, Lcom/tencent/android/tpush/XGPushManager;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Action -> deleteTag with tag = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    :cond_0
    const/4 v0, 0x2

    const-wide/16 v1, -0x1

    invoke-static {p0, p1, v0, v1, v2}, Lcom/tencent/android/tpush/XGPushManager;->a(Landroid/content/Context;Ljava/lang/String;IJ)V

    .line 448
    return-void
.end method

.method public static enableService(Landroid/content/Context;Z)V
    .locals 3

    .prologue
    .line 929
    if-nez p0, :cond_0

    .line 956
    :goto_0
    return-void

    .line 933
    :cond_0
    if-nez p1, :cond_1

    .line 934
    const-string v0, "TPush"

    const-string v1, "XG is disable."

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/a/a;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 935
    new-instance v0, Lcom/tencent/android/tpush/x;

    invoke-direct {v0, p0}, Lcom/tencent/android/tpush/x;-><init>(Landroid/content/Context;)V

    invoke-static {p0, v0}, Lcom/tencent/android/tpush/XGPushManager;->unregisterPush(Landroid/content/Context;Lcom/tencent/android/tpush/XGIOperateCallback;)V

    .line 949
    :cond_1
    if-eqz p1, :cond_3

    const/4 v0, 0x1

    :goto_1
    sput v0, Lcom/tencent/android/tpush/XGPushManager;->enableService:I

    .line 950
    sget-boolean v0, Lcom/tencent/android/tpush/XGPushConfig;->enableDebug:Z

    if-eqz v0, :cond_2

    .line 951
    sget-object v0, Lcom/tencent/android/tpush/XGPushManager;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableService="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/tencent/android/tpush/XGPushManager;->enableService:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 953
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".enableService"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/tencent/android/tpush/XGPushManager;->enableService:I

    invoke-static {p0, v0, v1}, Lcom/tencent/android/tpush/service/d/f;->a(Landroid/content/Context;Ljava/lang/String;I)Z

    goto :goto_0

    .line 949
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/tencent/android/tpush/XGPushManager;->b:Landroid/content/Context;

    return-object v0
.end method

.method public static getDefaultNotificationBuilder(Landroid/content/Context;)Lcom/tencent/android/tpush/XGPushNotificationBuilder;
    .locals 1

    .prologue
    .line 833
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/tencent/android/tpush/XGPushManager;->getNotificationBuilder(Landroid/content/Context;I)Lcom/tencent/android/tpush/XGPushNotificationBuilder;

    move-result-object v0

    .line 834
    if-nez v0, :cond_0

    .line 835
    invoke-static {p0}, Lcom/tencent/android/tpush/b/b;->a(Landroid/content/Context;)Lcom/tencent/android/tpush/XGPushNotificationBuilder;

    .line 837
    :cond_0
    return-object v0
.end method

.method public static getNotifactionCallback()Lcom/tencent/android/tpush/XGPushNotifactionCallback;
    .locals 1

    .prologue
    .line 632
    sget-object v0, Lcom/tencent/android/tpush/XGPushManager;->c:Lcom/tencent/android/tpush/XGPushNotifactionCallback;

    return-object v0
.end method

.method public static getNotificationBuilder(Landroid/content/Context;I)Lcom/tencent/android/tpush/XGPushNotificationBuilder;
    .locals 2

    .prologue
    .line 849
    if-nez p0, :cond_0

    .line 850
    const-string v0, "TPush"

    const-string v1, "getNotificationBuilder  context == null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    const/4 v0, 0x0

    .line 853
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, p1}, Lcom/tencent/android/tpush/b/b;->a(Landroid/content/Context;I)Lcom/tencent/android/tpush/XGPushNotificationBuilder;

    move-result-object v0

    goto :goto_0
.end method

.method public static getServiceStatus(Landroid/content/Context;)I
    .locals 1

    .prologue
    .line 129
    if-eqz p0, :cond_0

    .line 130
    invoke-static {p0}, Lcom/tencent/android/tpush/common/p;->d(Landroid/content/Context;)I

    move-result v0

    .line 132
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getServiceTag(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 919
    invoke-static {p0}, Lcom/tencent/android/tpush/service/channel/security/TpnsSecurity;->checkTpnsSecurityLibSo(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 920
    const-string v0, "xg_service_enable"

    .line 922
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/tencent/android/tpush/XGPushConfig;->getAccessId(Landroid/content/Context;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "xg_service_enable"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/android/tpush/encrypt/Rijndael;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static msgAck(Landroid/content/Context;Lcom/tencent/android/tpush/b/i;)V
    .locals 4

    .prologue
    .line 894
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 895
    sget-boolean v0, Lcom/tencent/android/tpush/XGPushConfig;->enableDebug:Z

    if-eqz v0, :cond_0

    .line 896
    sget-object v0, Lcom/tencent/android/tpush/XGPushManager;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Action -> msgAck("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tencent/android/tpush/b/i;->b()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 900
    :cond_0
    const/4 v0, 0x3

    invoke-virtual {p1}, Lcom/tencent/android/tpush/b/i;->b()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/tencent/android/tpush/a/a;->a(IJ)V

    .line 901
    invoke-static {}, Lcom/tencent/android/tpush/service/b/a;->a()Lcom/tencent/android/tpush/service/b/a;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tencent/android/tpush/b/i;->b()J

    move-result-wide v2

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/tencent/android/tpush/service/b/a;->b(Landroid/content/Context;Ljava/lang/String;J)V

    .line 903
    invoke-virtual {p1}, Lcom/tencent/android/tpush/b/i;->b()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 904
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.tencent.android.tpush.action.MSG_ACK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 906
    const-string v1, "msgId"

    invoke-virtual {p1}, Lcom/tencent/android/tpush/b/i;->b()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 907
    const-string v1, "packName"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 908
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 912
    :cond_1
    return-void
.end method

.method public static onActivityStarted(Landroid/app/Activity;)Lcom/tencent/android/tpush/XGPushClickedResult;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 524
    sget-boolean v0, Lcom/tencent/android/tpush/XGPushConfig;->enableDebug:Z

    if-eqz v0, :cond_0

    .line 525
    const-string v0, "XGPushMessage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">>> onActivityStarted "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/android/tpush/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    :cond_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/tencent/android/tpush/common/p;->h(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    move-object v0, v1

    .line 548
    :goto_0
    return-object v0

    .line 532
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 534
    if-eqz v2, :cond_3

    :try_start_0
    const-string v0, "tag.tpush.NOTIFIC"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 536
    const-string v0, "tag.tpush.NOTIFIC"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    .line 538
    const-string v3, "tag.tpush.NOTIFIC"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 539
    if-eqz v0, :cond_3

    instance-of v3, v0, Lcom/tencent/android/tpush/XGPushClickedResult;

    if-eqz v3, :cond_3

    .line 540
    check-cast v0, Lcom/tencent/android/tpush/XGPushClickedResult;

    .line 541
    invoke-virtual {v0, v2}, Lcom/tencent/android/tpush/XGPushClickedResult;->parseIntent(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 545
    :catch_0
    move-exception v0

    .line 546
    sget-object v2, Lcom/tencent/android/tpush/XGPushManager;->a:Ljava/lang/String;

    const-string v3, "onActivityStarted"

    invoke-static {v2, v3, v0}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    move-object v0, v1

    .line 548
    goto :goto_0
.end method

.method public static onActivityStoped(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 762
    if-nez p0, :cond_0

    .line 770
    :cond_0
    return-void
.end method

.method public static registerPush(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 136
    new-instance v0, Lcom/tencent/android/tpush/s;

    invoke-direct {v0}, Lcom/tencent/android/tpush/s;-><init>()V

    invoke-static {p0, v0}, Lcom/tencent/android/tpush/XGPushManager;->registerPush(Landroid/content/Context;Lcom/tencent/android/tpush/XGIOperateCallback;)V

    .line 150
    return-void
.end method

.method public static registerPush(Landroid/content/Context;Lcom/tencent/android/tpush/XGIOperateCallback;)V
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 167
    if-nez p1, :cond_0

    .line 168
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The callback parameter can not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 172
    :cond_0
    const/4 v3, -0x1

    const-wide/16 v6, -0x1

    move-object v0, p0

    move-object v2, v1

    move-object v4, v1

    move-object v5, p1

    move-object v8, v1

    invoke-static/range {v0 .. v8}, Lcom/tencent/android/tpush/XGPushManager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/tencent/android/tpush/XGIOperateCallback;JLjava/lang/String;)V

    .line 173
    return-void
.end method

.method public static registerPush(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 185
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 186
    :cond_0
    const-string v0, "TPush"

    const-string v1, "the parameter context or account of registerPush is invalid."

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/a/a;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    :goto_0
    return-void

    .line 190
    :cond_1
    new-instance v0, Lcom/tencent/android/tpush/t;

    invoke-direct {v0}, Lcom/tencent/android/tpush/t;-><init>()V

    invoke-static {p0, p1, v0}, Lcom/tencent/android/tpush/XGPushManager;->registerPush(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/android/tpush/XGIOperateCallback;)V

    goto :goto_0
.end method

.method public static registerPush(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/android/tpush/XGIOperateCallback;)V
    .locals 6

    .prologue
    .line 177
    if-nez p2, :cond_0

    .line 178
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The callback parameter can not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 181
    :cond_0
    const-string v2, "0"

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/tencent/android/tpush/XGPushManager;->registerPush(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/tencent/android/tpush/XGIOperateCallback;)V

    .line 182
    return-void
.end method

.method public static registerPush(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/tencent/android/tpush/XGIOperateCallback;)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 229
    if-nez p5, :cond_0

    .line 230
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The callback parameter can not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 234
    :cond_0
    if-eqz p0, :cond_1

    invoke-static {p1}, Lcom/tencent/android/tpush/common/p;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Lcom/tencent/android/tpush/common/p;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    if-gez p3, :cond_2

    .line 236
    :cond_1
    const/16 v0, 0x2711

    const-string v1, "The context, account, ticket or ticketType is(are) invalid!"

    invoke-interface {p5, v8, v0, v1}, Lcom/tencent/android/tpush/XGIOperateCallback;->onFail(Ljava/lang/Object;ILjava/lang/String;)V

    .line 242
    :goto_0
    return-void

    .line 241
    :cond_2
    const-wide/16 v6, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v8}, Lcom/tencent/android/tpush/XGPushManager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/tencent/android/tpush/XGIOperateCallback;JLjava/lang/String;)V

    goto :goto_0
.end method

.method public static setContext(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lcom/tencent/android/tpush/XGPushManager;->b:Landroid/content/Context;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 80
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/tencent/android/tpush/XGPushManager;->b:Landroid/content/Context;

    .line 82
    :cond_0
    return-void
.end method

.method public static setDefaultNotificationBuilder(Landroid/content/Context;Lcom/tencent/android/tpush/XGPushNotificationBuilder;)V
    .locals 1

    .prologue
    .line 814
    if-nez p0, :cond_1

    .line 823
    :cond_0
    :goto_0
    return-void

    .line 818
    :cond_1
    if-eqz p1, :cond_0

    .line 822
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/tencent/android/tpush/b/b;->a(Landroid/content/Context;ILcom/tencent/android/tpush/XGPushNotificationBuilder;)V

    goto :goto_0
.end method

.method public static setKeyValueTag(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 412
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 415
    :cond_0
    sget-object v0, Lcom/tencent/android/tpush/XGPushManager;->a:Ljava/lang/String;

    const-string v1, "setKeyValueTag context or tagKey or tagValue invalid."

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/a/a;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    :goto_0
    return-void

    .line 419
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "::::"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 420
    sget-object v1, Lcom/tencent/android/tpush/XGPushManager;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Action -> setKeyValueTag with tag = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/android/tpush/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    const/4 v1, 0x3

    const-wide/16 v2, -0x1

    invoke-static {p0, v0, v1, v2, v3}, Lcom/tencent/android/tpush/XGPushManager;->a(Landroid/content/Context;Ljava/lang/String;IJ)V

    goto :goto_0
.end method

.method public static setNotifactionCallback(Lcom/tencent/android/tpush/XGPushNotifactionCallback;)V
    .locals 0

    .prologue
    .line 636
    sput-object p0, Lcom/tencent/android/tpush/XGPushManager;->c:Lcom/tencent/android/tpush/XGPushNotifactionCallback;

    .line 637
    return-void
.end method

.method public static setPushNotificationBuilder(Landroid/content/Context;ILcom/tencent/android/tpush/XGPushNotificationBuilder;)V
    .locals 2

    .prologue
    .line 788
    if-nez p0, :cond_0

    .line 789
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 795
    :cond_0
    const/4 v0, 0x1

    if-lt p1, v0, :cond_1

    const/16 v0, 0x1000

    if-le p1, v0, :cond_2

    .line 796
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "notificationBulderId\u4e0d\u5728\u8303\u56f4[1, 4096]."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 799
    :cond_2
    if-nez p2, :cond_3

    .line 804
    :goto_0
    return-void

    .line 802
    :cond_3
    invoke-static {p0, p1, p2}, Lcom/tencent/android/tpush/b/b;->a(Landroid/content/Context;ILcom/tencent/android/tpush/XGPushNotificationBuilder;)V

    goto :goto_0
.end method

.method public static setTag(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 404
    sget-boolean v0, Lcom/tencent/android/tpush/XGPushConfig;->enableDebug:Z

    if-eqz v0, :cond_0

    .line 405
    sget-object v0, Lcom/tencent/android/tpush/XGPushManager;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Action -> setTag with tag = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    :cond_0
    const/4 v0, 0x1

    const-wide/16 v1, -0x1

    invoke-static {p0, p1, v0, v1, v2}, Lcom/tencent/android/tpush/XGPushManager;->a(Landroid/content/Context;Ljava/lang/String;IJ)V

    .line 408
    return-void
.end method

.method public static startPushService(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 93
    if-eqz p0, :cond_1

    .line 94
    invoke-static {p0}, Lcom/tencent/android/tpush/XGPushManager;->setContext(Landroid/content/Context;)V

    .line 95
    sget-boolean v0, Lcom/tencent/android/tpush/XGPushConfig;->enableDebug:Z

    if-eqz v0, :cond_0

    .line 96
    sget-object v0, Lcom/tencent/android/tpush/XGPushManager;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "call start Push Service"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    :cond_0
    invoke-static {p0}, Lcom/tencent/android/tpush/common/p;->g(Landroid/content/Context;)V

    .line 101
    invoke-static {p0}, Lcom/tencent/android/tpush/common/p;->d(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_1

    .line 102
    invoke-static {p0}, Lcom/tencent/android/tpush/common/p;->e(Landroid/content/Context;)V

    .line 105
    :cond_1
    return-void
.end method

.method public static unregisterPush(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 245
    if-nez p0, :cond_0

    .line 246
    const-string v0, "TPush"

    const-string v1, "the context of unregisterPush is null"

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/a/a;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    :goto_0
    return-void

    .line 249
    :cond_0
    new-instance v0, Lcom/tencent/android/tpush/u;

    invoke-direct {v0}, Lcom/tencent/android/tpush/u;-><init>()V

    invoke-static {p0, v0}, Lcom/tencent/android/tpush/XGPushManager;->unregisterPush(Landroid/content/Context;Lcom/tencent/android/tpush/XGIOperateCallback;)V

    goto :goto_0
.end method

.method public static unregisterPush(Landroid/content/Context;Lcom/tencent/android/tpush/XGIOperateCallback;)V
    .locals 3

    .prologue
    .line 267
    invoke-static {p0}, Lcom/tencent/android/tpush/XGPushConfig;->getAccessId(Landroid/content/Context;)J

    move-result-wide v0

    invoke-static {p0}, Lcom/tencent/android/tpush/XGPushConfig;->getAccessKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, p1, v0, v1, v2}, Lcom/tencent/android/tpush/XGPushManager;->a(Landroid/content/Context;Lcom/tencent/android/tpush/XGIOperateCallback;JLjava/lang/String;)V

    .line 269
    return-void
.end method
