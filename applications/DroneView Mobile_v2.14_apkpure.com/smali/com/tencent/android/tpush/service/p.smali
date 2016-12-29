.class public Lcom/tencent/android/tpush/service/p;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field private static a:Lcom/tencent/android/tpush/service/p;

.field private static b:Lorg/json/JSONArray;

.field private static final c:Ljava/lang/String;


# instance fields
.field private d:Lcom/tencent/android/tpush/service/channel/p;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    new-instance v0, Lcom/tencent/android/tpush/service/p;

    invoke-direct {v0}, Lcom/tencent/android/tpush/service/p;-><init>()V

    sput-object v0, Lcom/tencent/android/tpush/service/p;->a:Lcom/tencent/android/tpush/service/p;

    .line 59
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    sput-object v0, Lcom/tencent/android/tpush/service/p;->b:Lorg/json/JSONArray;

    .line 60
    const-string v0, "com.tencent.tpush.last_wifi_ts"

    invoke-static {v0}, Lcom/tencent/android/tpush/encrypt/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/android/tpush/service/p;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    new-instance v0, Lcom/tencent/android/tpush/service/q;

    invoke-direct {v0, p0}, Lcom/tencent/android/tpush/service/q;-><init>(Lcom/tencent/android/tpush/service/p;)V

    iput-object v0, p0, Lcom/tencent/android/tpush/service/p;->d:Lcom/tencent/android/tpush/service/channel/p;

    return-void
.end method

.method public static a(Z)B
    .locals 1

    .prologue
    .line 641
    if-eqz p0, :cond_0

    .line 642
    const/4 v0, 0x1

    .line 644
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Lcom/tencent/android/tpush/service/channel/protocol/DeviceInfo;
    .locals 4

    .prologue
    .line 253
    new-instance v0, Lcom/tencent/android/tpush/service/channel/protocol/DeviceInfo;

    invoke-direct {v0}, Lcom/tencent/android/tpush/service/channel/protocol/DeviceInfo;-><init>()V

    .line 254
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/tencent/android/tpush/service/d/f;->c()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/android/tpush/service/channel/protocol/DeviceInfo;->apiLevel:Ljava/lang/String;

    .line 255
    invoke-static {p0}, Lcom/tencent/android/tpush/service/d/f;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/android/tpush/service/channel/protocol/DeviceInfo;->imei:Ljava/lang/String;

    .line 256
    invoke-static {}, Lcom/tencent/android/tpush/service/d/f;->d()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/android/tpush/service/channel/protocol/DeviceInfo;->model:Ljava/lang/String;

    .line 257
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/android/tpush/service/channel/protocol/DeviceInfo;->manu:Ljava/lang/String;

    .line 258
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/android/tpush/service/channel/protocol/DeviceInfo;->model:Ljava/lang/String;

    .line 259
    invoke-static {p0}, Lcom/tencent/android/tpush/stat/a/h;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/android/tpush/service/channel/protocol/DeviceInfo;->network:Ljava/lang/String;

    .line 261
    const-string v1, "android"

    iput-object v1, v0, Lcom/tencent/android/tpush/service/channel/protocol/DeviceInfo;->os:Ljava/lang/String;

    .line 262
    invoke-static {p0}, Lcom/tencent/android/tpush/stat/a/h;->c(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 264
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "*"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/android/tpush/service/channel/protocol/DeviceInfo;->resolution:Ljava/lang/String;

    .line 265
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/android/tpush/service/channel/protocol/DeviceInfo;->apiLevel:Ljava/lang/String;

    .line 266
    invoke-static {p0}, Lcom/tencent/android/tpush/stat/a/h;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/android/tpush/service/channel/protocol/DeviceInfo;->sdCard:Ljava/lang/String;

    .line 268
    invoke-static {p0}, Lcom/tencent/android/tpush/stat/a/h;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/android/tpush/service/channel/protocol/DeviceInfo;->sdDouble:Ljava/lang/String;

    .line 270
    const v1, 0x401d70a4    # 2.46f

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/android/tpush/service/channel/protocol/DeviceInfo;->sdkVersion:Ljava/lang/String;

    .line 271
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/android/tpush/service/channel/protocol/DeviceInfo;->sdkVersionName:Ljava/lang/String;

    .line 272
    invoke-static {p0}, Lcom/tencent/android/tpush/service/d/f;->l(Landroid/content/Context;)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, v0, Lcom/tencent/android/tpush/service/channel/protocol/DeviceInfo;->isRooted:J

    .line 273
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/android/tpush/service/channel/protocol/DeviceInfo;->language:Ljava/lang/String;

    .line 274
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/android/tpush/service/channel/protocol/DeviceInfo;->timezone:Ljava/lang/String;

    .line 275
    invoke-static {p0}, Lcom/tencent/android/tpush/service/d/f;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/android/tpush/service/channel/protocol/DeviceInfo;->launcherName:Ljava/lang/String;

    .line 276
    return-object v0
.end method

.method public static a()Lcom/tencent/android/tpush/service/p;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/tencent/android/tpush/service/p;->a:Lcom/tencent/android/tpush/service/p;

    return-object v0
.end method

.method private a(ILjava/lang/String;Lcom/tencent/android/tpush/service/channel/a;)V
    .locals 3

    .prologue
    .line 406
    const-string v0, "PushServiceNetworkHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@@ loadConfiguraionFailHandler("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/a/a;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    return-void
.end method

.method private a(ILjava/lang/String;Ljava/lang/String;Lcom/tencent/android/tpush/service/channel/protocol/TpnsUnregisterReq;Lcom/tencent/android/tpush/service/channel/a;)V
    .locals 3

    .prologue
    .line 496
    sget-boolean v0, Lcom/tencent/android/tpush/XGPushConfig;->enableDebug:Z

    if-eqz v0, :cond_0

    .line 497
    const-string v0, "XGService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@@ uninstallReportFailedHandler("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/tencent/android/tpush/service/p;ILjava/lang/String;Lcom/tencent/android/tpush/service/channel/a;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/android/tpush/service/p;->a(ILjava/lang/String;Lcom/tencent/android/tpush/service/channel/a;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/android/tpush/service/p;ILjava/lang/String;Ljava/lang/String;Lcom/tencent/android/tpush/service/channel/protocol/TpnsUnregisterReq;Lcom/tencent/android/tpush/service/channel/a;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct/range {p0 .. p5}, Lcom/tencent/android/tpush/service/p;->a(ILjava/lang/String;Ljava/lang/String;Lcom/tencent/android/tpush/service/channel/protocol/TpnsUnregisterReq;Lcom/tencent/android/tpush/service/channel/a;)V

    return-void
.end method

.method private b(Landroid/content/Context;)Ljava/lang/String;
    .locals 11

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 219
    const-string v2, ""

    .line 220
    if-eqz p1, :cond_4

    .line 221
    const/16 v0, 0xa

    invoke-static {p1, v0}, Lcom/tencent/android/tpush/common/e;->a(Landroid/content/Context;I)Lorg/json/JSONArray;

    move-result-object v4

    .line 222
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_4

    .line 224
    sget-object v0, Lcom/tencent/android/tpush/service/p;->c:Ljava/lang/String;

    const-wide/16 v5, 0x0

    invoke-static {p1, v0, v5, v6}, Lcom/tencent/android/tpush/service/d/f;->c(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v5

    .line 227
    sget-object v0, Lcom/tencent/android/tpush/service/p;->b:Lorg/json/JSONArray;

    if-eqz v0, :cond_5

    sget-object v0, Lcom/tencent/android/tpush/service/p;->b:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_5

    .line 229
    sget-object v0, Lcom/tencent/android/tpush/service/p;->b:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    const-string v0, ""

    .line 248
    :goto_0
    return-object v0

    .line 233
    :cond_0
    sget-object v0, Lcom/tencent/android/tpush/service/p;->b:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v7

    sub-int/2addr v0, v7

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 235
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 237
    const/4 v9, 0x3

    if-lt v0, v9, :cond_3

    move v0, v3

    .line 239
    :goto_2
    if-nez v0, :cond_1

    sub-long v5, v7, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v5

    const-wide/32 v9, 0x1b7740

    cmp-long v0, v5, v9

    if-lez v0, :cond_2

    :cond_1
    move v1, v3

    .line 241
    :cond_2
    if-eqz v1, :cond_4

    .line 242
    sget-object v0, Lcom/tencent/android/tpush/service/p;->c:Ljava/lang/String;

    invoke-static {p1, v0, v7, v8}, Lcom/tencent/android/tpush/service/d/f;->b(Landroid/content/Context;Ljava/lang/String;J)Z

    .line 243
    invoke-virtual {v4}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    .line 244
    sput-object v4, Lcom/tencent/android/tpush/service/p;->b:Lorg/json/JSONArray;

    goto :goto_0

    :cond_3
    move v0, v1

    .line 237
    goto :goto_2

    :cond_4
    move-object v0, v2

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_1
.end method


# virtual methods
.method public a(J)V
    .locals 3

    .prologue
    .line 345
    new-instance v0, Lcom/tencent/android/tpush/service/channel/protocol/TpnsConfigReq;

    invoke-direct {v0, p1, p2}, Lcom/tencent/android/tpush/service/channel/protocol/TpnsConfigReq;-><init>(J)V

    .line 346
    invoke-static {}, Lcom/tencent/android/tpush/service/channel/b;->a()Lcom/tencent/android/tpush/service/channel/b;

    move-result-object v1

    new-instance v2, Lcom/tencent/android/tpush/service/r;

    invoke-direct {v2, p0}, Lcom/tencent/android/tpush/service/r;-><init>(Lcom/tencent/android/tpush/service/p;)V

    invoke-virtual {v1, v0, v2}, Lcom/tencent/android/tpush/service/channel/b;->a(Lcom/qq/taf/jce/JceStruct;Lcom/tencent/android/tpush/service/channel/p;)V

    .line 395
    return-void
.end method

.method public a(JLjava/lang/String;ILjava/lang/String;Lcom/tencent/android/tpush/service/channel/p;)V
    .locals 4

    .prologue
    .line 533
    new-instance v0, Lcom/tencent/android/tpush/service/channel/protocol/TpnsTokenTagReq;

    invoke-direct {v0}, Lcom/tencent/android/tpush/service/channel/protocol/TpnsTokenTagReq;-><init>()V

    .line 534
    iput-wide p1, v0, Lcom/tencent/android/tpush/service/channel/protocol/TpnsTokenTagReq;->accessId:J

    .line 535
    iput p4, v0, Lcom/tencent/android/tpush/service/channel/protocol/TpnsTokenTagReq;->flag:I

    .line 536
    iput-object p5, v0, Lcom/tencent/android/tpush/service/channel/protocol/TpnsTokenTagReq;->tag:Ljava/lang/String;

    .line 537
    sget-boolean v1, Lcom/tencent/android/tpush/XGPushConfig;->enableDebug:Z

    if-eqz v1, :cond_0

    .line 538
    const-string v1, "PushServiceNetworkHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Action -> sendTag to server ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    :cond_0
    invoke-static {}, Lcom/tencent/android/tpush/service/channel/b;->a()Lcom/tencent/android/tpush/service/channel/b;

    move-result-object v1

    invoke-virtual {v1, v0, p6}, Lcom/tencent/android/tpush/service/channel/b;->a(Lcom/qq/taf/jce/JceStruct;Lcom/tencent/android/tpush/service/channel/p;)V

    .line 542
    return-void
.end method

.method public a(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/android/tpush/service/channel/p;)V
    .locals 6

    .prologue
    .line 658
    new-instance v0, Lcom/tencent/android/tpush/service/channel/protocol/TpnsUpdateTokenReq;

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/tencent/android/tpush/service/channel/protocol/TpnsUpdateTokenReq;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    invoke-static {}, Lcom/tencent/android/tpush/service/channel/b;->a()Lcom/tencent/android/tpush/service/channel/b;

    move-result-object v1

    invoke-virtual {v1, v0, p6}, Lcom/tencent/android/tpush/service/channel/b;->a(Lcom/qq/taf/jce/JceStruct;Lcom/tencent/android/tpush/service/channel/p;)V

    .line 660
    return-void
.end method

.method public a(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/android/tpush/service/channel/p;)V
    .locals 4

    .prologue
    .line 291
    new-instance v0, Lcom/tencent/android/tpush/service/channel/protocol/TpnsRegisterReq;

    invoke-direct {v0}, Lcom/tencent/android/tpush/service/channel/protocol/TpnsRegisterReq;-><init>()V

    .line 292
    iput-wide p1, v0, Lcom/tencent/android/tpush/service/channel/protocol/TpnsRegisterReq;->accessId:J

    .line 293
    iput-object p3, v0, Lcom/tencent/android/tpush/service/channel/protocol/TpnsRegisterReq;->accessKey:Ljava/lang/String;

    .line 294
    iput-object p4, v0, Lcom/tencent/android/tpush/service/channel/protocol/TpnsRegisterReq;->deviceId:Ljava/lang/String;

    .line 295
    iput-object p8, v0, Lcom/tencent/android/tpush/service/channel/protocol/TpnsRegisterReq;->appCert:Ljava/lang/String;

    .line 296
    iput-object p5, v0, Lcom/tencent/android/tpush/service/channel/protocol/TpnsRegisterReq;->account:Ljava/lang/String;

    .line 297
    iput-object p6, v0, Lcom/tencent/android/tpush/service/channel/protocol/TpnsRegisterReq;->ticket:Ljava/lang/String;

    .line 298
    int-to-short v1, p7

    iput-short v1, v0, Lcom/tencent/android/tpush/service/channel/protocol/TpnsRegisterReq;->ticketType:S

    .line 299
    invoke-static {}, Lcom/tencent/android/tpush/service/m;->e()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/android/tpush/service/p;->a(Landroid/content/Context;)Lcom/tencent/android/tpush/service/channel/protocol/DeviceInfo;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/android/tpush/service/channel/protocol/TpnsRegisterReq;->deviceInfo:Lcom/tencent/android/tpush/service/channel/protocol/DeviceInfo;

    .line 300
    invoke-static {}, Lcom/tencent/android/tpush/service/m;->e()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/android/tpush/service/cache/CacheManager;->getToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/android/tpush/service/channel/protocol/TpnsRegisterReq;->token:Ljava/lang/String;

    .line 301
    const/4 v1, 0x1

    iput-short v1, v0, Lcom/tencent/android/tpush/service/channel/protocol/TpnsRegisterReq;->version:S

    .line 303
    iput-object p9, v0, Lcom/tencent/android/tpush/service/channel/protocol/TpnsRegisterReq;->appVersion:Ljava/lang/String;

    .line 304
    iput-object p10, v0, Lcom/tencent/android/tpush/service/channel/protocol/TpnsRegisterReq;->reserved:Ljava/lang/String;

    .line 305
    sget-boolean v1, Lcom/tencent/android/tpush/XGPushConfig;->enableDebug:Z

    if-eqz v1, :cond_0

    .line 306
    const-string v1, "PushServiceNetworkHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Register("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/android/tpush/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    :cond_0
    invoke-static {}, Lcom/tencent/android/tpush/service/channel/b;->a()Lcom/tencent/android/tpush/service/channel/b;

    move-result-object v1

    invoke-virtual {v1, v0, p11}, Lcom/tencent/android/tpush/service/channel/b;->a(Lcom/qq/taf/jce/JceStruct;Lcom/tencent/android/tpush/service/channel/p;)V

    .line 310
    return-void
.end method

.method public a(Lcom/qq/taf/jce/JceStruct;Lcom/tencent/android/tpush/service/channel/a;)V
    .locals 4

    .prologue
    .line 80
    if-nez p1, :cond_0

    .line 91
    :goto_0
    return-void

    .line 84
    :cond_0
    instance-of v0, p1, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushClientReq;

    if-eqz v0, :cond_1

    .line 85
    check-cast p1, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushClientReq;

    .line 86
    invoke-static {}, Lcom/tencent/android/tpush/service/b/a;->a()Lcom/tencent/android/tpush/service/b/a;

    move-result-object v0

    iget-object v1, p1, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushClientReq;->msgList:Ljava/util/ArrayList;

    iget-wide v2, p1, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushClientReq;->timeUs:J

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/tencent/android/tpush/service/b/a;->a(Ljava/util/ArrayList;JLcom/tencent/android/tpush/service/channel/a;)V

    goto :goto_0

    .line 89
    :cond_1
    const-string v0, "PushServiceNetworkHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceivedServicePush unhandle message type"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/a/a;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 421
    sget-boolean v0, Lcom/tencent/android/tpush/XGPushConfig;->enableDebug:Z

    if-eqz v0, :cond_0

    .line 422
    const-string v0, "PushServiceNetworkHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Action uninstallReport : pkgName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    :cond_0
    invoke-static {p1}, Lcom/tencent/android/tpush/service/cache/CacheManager;->getRegisterInfoByPkgName(Ljava/lang/String;)Lcom/tencent/android/tpush/data/a;

    move-result-object v3

    .line 426
    if-eqz v3, :cond_1

    .line 428
    new-instance v6, Lcom/tencent/android/tpush/service/channel/protocol/TpnsUnregisterReq;

    invoke-direct {v6}, Lcom/tencent/android/tpush/service/channel/protocol/TpnsUnregisterReq;-><init>()V

    .line 429
    new-instance v7, Lcom/tencent/android/tpush/service/channel/protocol/UnregInfo;

    new-instance v0, Lcom/tencent/android/tpush/service/channel/protocol/AppInfo;

    iget-wide v1, v3, Lcom/tencent/android/tpush/data/a;->a:J

    iget-object v3, v3, Lcom/tencent/android/tpush/data/a;->b:Ljava/lang/String;

    const-string v4, ""

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/tencent/android/tpush/service/channel/protocol/AppInfo;-><init>(JLjava/lang/String;Ljava/lang/String;B)V

    const/4 v1, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v7, v0, v1, v2, v3}, Lcom/tencent/android/tpush/service/channel/protocol/UnregInfo;-><init>(Lcom/tencent/android/tpush/service/channel/protocol/AppInfo;BJ)V

    iput-object v7, v6, Lcom/tencent/android/tpush/service/channel/protocol/TpnsUnregisterReq;->unregInfo:Lcom/tencent/android/tpush/service/channel/protocol/UnregInfo;

    .line 432
    invoke-static {p1}, Lcom/tencent/android/tpush/service/cache/CacheManager;->UninstallInfoByPkgName(Ljava/lang/String;)Z

    .line 433
    invoke-static {}, Lcom/tencent/android/tpush/service/channel/b;->a()Lcom/tencent/android/tpush/service/channel/b;

    move-result-object v0

    new-instance v1, Lcom/tencent/android/tpush/service/s;

    invoke-direct {v1, p0, p1}, Lcom/tencent/android/tpush/service/s;-><init>(Lcom/tencent/android/tpush/service/p;Ljava/lang/String;)V

    invoke-virtual {v0, v6, v1}, Lcom/tencent/android/tpush/service/channel/b;->a(Lcom/qq/taf/jce/JceStruct;Lcom/tencent/android/tpush/service/channel/p;)V

    .line 492
    :goto_0
    return-void

    .line 489
    :cond_1
    const-string v0, "PushServiceNetworkHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The RegisterEntity entity is null, PkgName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/tencent/android/tpush/service/channel/p;)V
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 324
    new-instance v6, Lcom/tencent/android/tpush/service/channel/protocol/TpnsUnregisterReq;

    invoke-direct {v6}, Lcom/tencent/android/tpush/service/channel/protocol/TpnsUnregisterReq;-><init>()V

    .line 325
    const-string v4, ""

    .line 327
    :try_start_0
    invoke-static {}, Lcom/tencent/android/tpush/service/m;->e()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p6, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 329
    invoke-static {v0}, Lcom/tencent/android/tpush/service/channel/security/TpnsSecurity;->getEncryptAPKSignature(Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 334
    :goto_0
    new-instance v7, Lcom/tencent/android/tpush/service/channel/protocol/UnregInfo;

    new-instance v0, Lcom/tencent/android/tpush/service/channel/protocol/AppInfo;

    move-wide v1, p3

    move-object v3, p5

    invoke-direct/range {v0 .. v5}, Lcom/tencent/android/tpush/service/channel/protocol/AppInfo;-><init>(JLjava/lang/String;Ljava/lang/String;B)V

    const-wide/16 v1, 0x0

    invoke-direct {v7, v0, v5, v1, v2}, Lcom/tencent/android/tpush/service/channel/protocol/UnregInfo;-><init>(Lcom/tencent/android/tpush/service/channel/protocol/AppInfo;BJ)V

    iput-object v7, v6, Lcom/tencent/android/tpush/service/channel/protocol/TpnsUnregisterReq;->unregInfo:Lcom/tencent/android/tpush/service/channel/protocol/UnregInfo;

    .line 336
    invoke-static {}, Lcom/tencent/android/tpush/service/channel/b;->a()Lcom/tencent/android/tpush/service/channel/b;

    move-result-object v0

    invoke-virtual {v0, v6, p7}, Lcom/tencent/android/tpush/service/channel/b;->a(Lcom/qq/taf/jce/JceStruct;Lcom/tencent/android/tpush/service/channel/p;)V

    .line 337
    return-void

    .line 330
    :catch_0
    move-exception v0

    .line 331
    const-string v1, "PushServiceNetworkHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">> create context [for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] fail."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a(Ljava/util/ArrayList;Lcom/tencent/android/tpush/service/channel/p;)V
    .locals 2

    .prologue
    .line 515
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 516
    new-instance v0, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushVerifyReq;

    invoke-direct {v0, p1}, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushVerifyReq;-><init>(Ljava/util/ArrayList;)V

    .line 519
    invoke-static {}, Lcom/tencent/android/tpush/service/channel/b;->a()Lcom/tencent/android/tpush/service/channel/b;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Lcom/tencent/android/tpush/service/channel/b;->a(Lcom/qq/taf/jce/JceStruct;Lcom/tencent/android/tpush/service/channel/p;)V

    .line 521
    :cond_0
    return-void
.end method

.method public a(ZJ)V
    .locals 6

    .prologue
    .line 556
    invoke-static {}, Lcom/tencent/android/tpush/service/m;->e()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/android/tpush/service/cache/CacheManager;->getLastLoadIpTime(Landroid/content/Context;)J

    move-result-wide v0

    .line 558
    if-eqz p1, :cond_1

    .line 559
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-static {}, Lcom/tencent/android/tpush/service/m;->e()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/android/tpush/service/a/a;->a(Landroid/content/Context;)Lcom/tencent/android/tpush/service/a/a;

    move-result-object v4

    iget v4, v4, Lcom/tencent/android/tpush/service/a/a;->n:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 560
    invoke-static {}, Lcom/tencent/android/tpush/service/m;->e()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/android/tpush/service/a/a;->a(Landroid/content/Context;)Lcom/tencent/android/tpush/service/a/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/android/tpush/service/a/a;->b()J

    move-result-wide v2

    cmp-long v2, v2, p2

    if-eqz v2, :cond_0

    .line 561
    invoke-static {}, Lcom/tencent/android/tpush/service/p;->a()Lcom/tencent/android/tpush/service/p;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Lcom/tencent/android/tpush/service/p;->a(J)V

    .line 572
    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v0, v2, v0

    invoke-static {}, Lcom/tencent/android/tpush/service/m;->e()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/android/tpush/service/a/a;->a(Landroid/content/Context;)Lcom/tencent/android/tpush/service/a/a;

    move-result-object v2

    iget v2, v2, Lcom/tencent/android/tpush/service/a/a;->n:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    .line 632
    :goto_1
    return-void

    .line 566
    :cond_1
    invoke-static {}, Lcom/tencent/android/tpush/service/m;->e()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/android/tpush/service/a/a;->a(Landroid/content/Context;)Lcom/tencent/android/tpush/service/a/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/android/tpush/service/a/a;->b()J

    move-result-wide v2

    cmp-long v2, v2, p2

    if-eqz v2, :cond_0

    .line 567
    invoke-static {}, Lcom/tencent/android/tpush/service/p;->a()Lcom/tencent/android/tpush/service/p;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Lcom/tencent/android/tpush/service/p;->a(J)V

    goto :goto_0

    .line 575
    :cond_2
    new-instance v0, Lcom/tencent/android/tpush/service/channel/protocol/TpnsGetApListReq;

    invoke-direct {v0}, Lcom/tencent/android/tpush/service/channel/protocol/TpnsGetApListReq;-><init>()V

    .line 576
    new-instance v1, Lcom/tencent/android/tpush/service/channel/protocol/NetworkInfo;

    invoke-direct {v1}, Lcom/tencent/android/tpush/service/channel/protocol/NetworkInfo;-><init>()V

    .line 577
    invoke-static {}, Lcom/tencent/android/tpush/service/m;->e()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/android/tpush/service/d/f;->f(Landroid/content/Context;)B

    move-result v2

    iput-byte v2, v1, Lcom/tencent/android/tpush/service/channel/protocol/NetworkInfo;->network:B

    .line 578
    invoke-static {}, Lcom/tencent/android/tpush/service/m;->e()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/android/tpush/service/d/f;->g(Landroid/content/Context;)B

    move-result v2

    iput-byte v2, v1, Lcom/tencent/android/tpush/service/channel/protocol/NetworkInfo;->op:B

    .line 579
    iput-object v1, v0, Lcom/tencent/android/tpush/service/channel/protocol/TpnsGetApListReq;->netInfo:Lcom/tencent/android/tpush/service/channel/protocol/NetworkInfo;

    .line 580
    invoke-static {}, Lcom/tencent/android/tpush/service/channel/b;->a()Lcom/tencent/android/tpush/service/channel/b;

    move-result-object v1

    new-instance v2, Lcom/tencent/android/tpush/service/t;

    invoke-direct {v2, p0}, Lcom/tencent/android/tpush/service/t;-><init>(Lcom/tencent/android/tpush/service/p;)V

    invoke-virtual {v1, v0, v2}, Lcom/tencent/android/tpush/service/channel/b;->a(Lcom/qq/taf/jce/JceStruct;Lcom/tencent/android/tpush/service/channel/p;)V

    goto :goto_1
.end method

.method public b()Lcom/tencent/android/tpush/service/channel/o;
    .locals 7

    .prologue
    .line 175
    invoke-static {}, Lcom/tencent/android/tpush/service/m;->e()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/android/tpush/service/d/f;->e(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 176
    const-string v0, "PushServiceNetworkHandler"

    const-string v1, ">> no app registered!"

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/a/a;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    const/4 v0, 0x0

    .line 215
    :goto_0
    return-object v0

    .line 179
    :cond_0
    new-instance v1, Lcom/tencent/android/tpush/service/channel/protocol/TpnsReconnectReq;

    invoke-direct {v1}, Lcom/tencent/android/tpush/service/channel/protocol/TpnsReconnectReq;-><init>()V

    .line 180
    invoke-static {}, Lcom/tencent/android/tpush/service/d/c;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/android/tpush/service/channel/protocol/TpnsReconnectReq;->deviceId:Ljava/lang/String;

    .line 181
    invoke-static {}, Lcom/tencent/android/tpush/service/m;->e()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/android/tpush/service/d/f;->f(Landroid/content/Context;)B

    move-result v0

    int-to-short v0, v0

    iput-short v0, v1, Lcom/tencent/android/tpush/service/channel/protocol/TpnsReconnectReq;->networkType:S

    .line 182
    invoke-static {}, Lcom/tencent/android/tpush/service/m;->e()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/android/tpush/service/cache/CacheManager;->getToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/android/tpush/service/channel/protocol/TpnsReconnectReq;->token:Ljava/lang/String;

    .line 183
    invoke-static {}, Lcom/tencent/android/tpush/service/m;->e()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/android/tpush/service/cache/CacheManager;->getUninstallAndUnregisterInfo(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/android/tpush/service/channel/protocol/TpnsReconnectReq;->unregInfoList:Ljava/util/ArrayList;

    .line 185
    invoke-static {}, Lcom/tencent/android/tpush/service/b/a;->a()Lcom/tencent/android/tpush/service/b/a;

    move-result-object v0

    invoke-static {}, Lcom/tencent/android/tpush/service/m;->e()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lcom/tencent/android/tpush/service/b/a;->a()Lcom/tencent/android/tpush/service/b/a;

    move-result-object v3

    invoke-static {}, Lcom/tencent/android/tpush/service/m;->e()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/tencent/android/tpush/service/b/a;->b(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/tencent/android/tpush/service/b/a;->b(Landroid/content/Context;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/android/tpush/service/channel/protocol/TpnsReconnectReq;->recvMsgList:Ljava/util/ArrayList;

    .line 189
    invoke-static {}, Lcom/tencent/android/tpush/service/b/a;->a()Lcom/tencent/android/tpush/service/b/a;

    move-result-object v0

    invoke-static {}, Lcom/tencent/android/tpush/service/m;->e()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/android/tpush/service/b/a;->a(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/android/tpush/service/channel/protocol/TpnsReconnectReq;->msgClickList:Ljava/util/ArrayList;

    .line 191
    const v0, 0x401d70a4    # 2.46f

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/android/tpush/service/channel/protocol/TpnsReconnectReq;->sdkVersion:Ljava/lang/String;

    .line 192
    invoke-static {}, Lcom/tencent/android/tpush/service/m;->e()Landroid/content/Context;

    move-result-object v2

    .line 193
    new-instance v3, Lcom/tencent/android/tpush/service/channel/protocol/MutableInfo;

    invoke-direct {v3}, Lcom/tencent/android/tpush/service/channel/protocol/MutableInfo;-><init>()V

    .line 194
    if-eqz v2, :cond_1

    invoke-static {v2}, Lcom/tencent/android/tpush/stat/a/h;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v2}, Lcom/tencent/android/tpush/stat/a/h;->k(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 199
    invoke-static {v2}, Lcom/tencent/android/tpush/stat/a/h;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/tencent/android/tpush/service/channel/protocol/MutableInfo;->bssid:Ljava/lang/String;

    .line 201
    invoke-static {v2}, Lcom/tencent/android/tpush/stat/a/h;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/tencent/android/tpush/service/channel/protocol/MutableInfo;->ssid:Ljava/lang/String;

    .line 204
    :cond_1
    invoke-static {v2}, Lcom/tencent/android/tpush/stat/a/h;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/tencent/android/tpush/service/channel/protocol/MutableInfo;->mac:Ljava/lang/String;

    .line 207
    :try_start_0
    invoke-direct {p0, v2}, Lcom/tencent/android/tpush/service/p;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/tencent/android/tpush/service/channel/protocol/MutableInfo;->wflist:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    :goto_1
    iput-object v3, v1, Lcom/tencent/android/tpush/service/channel/protocol/TpnsReconnectReq;->mutableInfo:Lcom/tencent/android/tpush/service/channel/protocol/MutableInfo;

    .line 213
    new-instance v0, Lcom/tencent/android/tpush/service/channel/o;

    iget-object v2, p0, Lcom/tencent/android/tpush/service/p;->d:Lcom/tencent/android/tpush/service/channel/p;

    invoke-direct {v0, v1, v2}, Lcom/tencent/android/tpush/service/channel/o;-><init>(Lcom/qq/taf/jce/JceStruct;Lcom/tencent/android/tpush/service/channel/p;)V

    goto/16 :goto_0

    .line 208
    :catch_0
    move-exception v0

    .line 209
    const-string v4, "PushServiceNetworkHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ">> getWifiList("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ")"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/tencent/android/tpush/a/a;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public b(Ljava/util/ArrayList;Lcom/tencent/android/tpush/service/channel/p;)V
    .locals 2

    .prologue
    .line 546
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 552
    :cond_0
    :goto_0
    return-void

    .line 549
    :cond_1
    new-instance v0, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushClickReq;

    invoke-direct {v0}, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushClickReq;-><init>()V

    .line 550
    iput-object p1, v0, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushClickReq;->msgClickList:Ljava/util/ArrayList;

    .line 551
    invoke-static {}, Lcom/tencent/android/tpush/service/channel/b;->a()Lcom/tencent/android/tpush/service/channel/b;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Lcom/tencent/android/tpush/service/channel/b;->a(Lcom/qq/taf/jce/JceStruct;Lcom/tencent/android/tpush/service/channel/p;)V

    goto :goto_0
.end method
