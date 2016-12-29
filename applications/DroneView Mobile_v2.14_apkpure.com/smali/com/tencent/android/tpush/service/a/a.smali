.class public Lcom/tencent/android/tpush/service/a/a;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field private static D:Lcom/tencent/android/tpush/service/a/a;


# instance fields
.field public A:I

.field public B:I

.field public C:Z

.field private E:Landroid/content/Context;

.field public a:J

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:I

.field public m:I

.field public n:I

.field public o:I

.field public p:I

.field public q:I

.field public r:I

.field public s:I

.field public t:I

.field public u:Ljava/lang/String;

.field public v:I

.field public w:I

.field public x:Ljava/lang/String;

.field public y:I

.field public z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/android/tpush/service/a/a;->D:Lcom/tencent/android/tpush/service/a/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 318
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object v0, p0, Lcom/tencent/android/tpush/service/a/a;->E:Landroid/content/Context;

    .line 124
    iput-object v0, p0, Lcom/tencent/android/tpush/service/a/a;->x:Ljava/lang/String;

    .line 126
    iput v1, p0, Lcom/tencent/android/tpush/service/a/a;->y:I

    .line 128
    iput v1, p0, Lcom/tencent/android/tpush/service/a/a;->z:I

    .line 130
    const v0, 0xea60

    iput v0, p0, Lcom/tencent/android/tpush/service/a/a;->A:I

    .line 135
    iput v1, p0, Lcom/tencent/android/tpush/service/a/a;->B:I

    .line 137
    iput-boolean v1, p0, Lcom/tencent/android/tpush/service/a/a;->C:Z

    .line 320
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object v0, p0, Lcom/tencent/android/tpush/service/a/a;->E:Landroid/content/Context;

    .line 124
    iput-object v0, p0, Lcom/tencent/android/tpush/service/a/a;->x:Ljava/lang/String;

    .line 126
    iput v1, p0, Lcom/tencent/android/tpush/service/a/a;->y:I

    .line 128
    iput v1, p0, Lcom/tencent/android/tpush/service/a/a;->z:I

    .line 130
    const v0, 0xea60

    iput v0, p0, Lcom/tencent/android/tpush/service/a/a;->A:I

    .line 135
    iput v1, p0, Lcom/tencent/android/tpush/service/a/a;->B:I

    .line 137
    iput-boolean v1, p0, Lcom/tencent/android/tpush/service/a/a;->C:Z

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/android/tpush/service/a/a;->E:Landroid/content/Context;

    .line 36
    invoke-virtual {p0}, Lcom/tencent/android/tpush/service/a/a;->a()V

    .line 37
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/tencent/android/tpush/service/a/a;
    .locals 2

    .prologue
    .line 40
    sget-object v0, Lcom/tencent/android/tpush/service/a/a;->D:Lcom/tencent/android/tpush/service/a/a;

    if-nez v0, :cond_1

    .line 41
    const-class v1, Lcom/tencent/android/tpush/service/a/a;

    monitor-enter v1

    .line 42
    :try_start_0
    sget-object v0, Lcom/tencent/android/tpush/service/a/a;->D:Lcom/tencent/android/tpush/service/a/a;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Lcom/tencent/android/tpush/service/a/a;

    invoke-direct {v0, p0}, Lcom/tencent/android/tpush/service/a/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tencent/android/tpush/service/a/a;->D:Lcom/tencent/android/tpush/service/a/a;

    .line 45
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    :cond_1
    sget-object v0, Lcom/tencent/android/tpush/service/a/a;->D:Lcom/tencent/android/tpush/service/a/a;

    return-object v0

    .line 45
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private c()Landroid/content/Context;
    .locals 1

    .prologue
    .line 519
    iget-object v0, p0, Lcom/tencent/android/tpush/service/a/a;->E:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 520
    iget-object v0, p0, Lcom/tencent/android/tpush/service/a/a;->E:Landroid/content/Context;

    .line 529
    :goto_0
    return-object v0

    .line 522
    :cond_0
    invoke-direct {p0}, Lcom/tencent/android/tpush/service/a/a;->c()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 523
    invoke-static {}, Lcom/tencent/android/tpush/service/m;->e()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/android/tpush/service/a/a;->E:Landroid/content/Context;

    .line 524
    iget-object v0, p0, Lcom/tencent/android/tpush/service/a/a;->E:Landroid/content/Context;

    goto :goto_0

    .line 526
    :cond_1
    invoke-static {}, Lcom/tencent/android/tpush/XGPushManager;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 527
    invoke-static {}, Lcom/tencent/android/tpush/XGPushManager;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/android/tpush/service/a/a;->E:Landroid/content/Context;

    .line 529
    :cond_2
    iget-object v0, p0, Lcom/tencent/android/tpush/service/a/a;->E:Landroid/content/Context;

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;I)I
    .locals 2

    .prologue
    .line 542
    invoke-direct {p0}, Lcom/tencent/android/tpush/service/a/a;->c()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/tencent/android/tpush/service/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/tencent/android/tpush/common/m;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;Lorg/json/JSONObject;)I
    .locals 3

    .prologue
    .line 573
    if-eqz p2, :cond_0

    invoke-static {p1}, Lcom/tencent/android/tpush/service/d/f;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 575
    :try_start_0
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 580
    :goto_0
    return v0

    .line 576
    :catch_0
    move-exception v0

    .line 577
    const-string v1, "XGService"

    const-string v2, "getJsonInt"

    invoke-static {v1, v2, v0}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 580
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 554
    invoke-direct {p0}, Lcom/tencent/android/tpush/service/a/a;->c()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/tencent/android/tpush/service/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/tencent/android/tpush/common/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 563
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-object p2

    :cond_0
    move-object p2, v0

    goto :goto_0
.end method

.method public a()V
    .locals 9

    .prologue
    const v8, 0xea60

    const/16 v7, 0x7530

    const/4 v6, 0x5

    const/4 v5, 0x3

    const/4 v4, 0x1

    .line 278
    iget-wide v0, p0, Lcom/tencent/android/tpush/service/a/a;->a:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 279
    invoke-virtual {p0}, Lcom/tencent/android/tpush/service/a/a;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/android/tpush/service/a/a;->a:J

    .line 281
    const-string v0, "recTo"

    invoke-virtual {p0, v0, v7}, Lcom/tencent/android/tpush/service/a/a;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/tencent/android/tpush/service/a/a;->b:I

    .line 282
    const-string v0, "hbIntvl"

    const v1, 0x493cc

    invoke-virtual {p0, v0, v1}, Lcom/tencent/android/tpush/service/a/a;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/tencent/android/tpush/service/a/a;->c:I

    .line 283
    const-string v0, "httpHbIntvl"

    const v1, 0x927c0

    invoke-virtual {p0, v0, v1}, Lcom/tencent/android/tpush/service/a/a;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/tencent/android/tpush/service/a/a;->d:I

    .line 284
    const-string v0, "stIntvl"

    const v1, 0x337f980

    invoke-virtual {p0, v0, v1}, Lcom/tencent/android/tpush/service/a/a;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/tencent/android/tpush/service/a/a;->e:I

    .line 285
    const-string v0, "cnMsgExp"

    invoke-virtual {p0, v0, v8}, Lcom/tencent/android/tpush/service/a/a;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/tencent/android/tpush/service/a/a;->f:I

    .line 287
    const-string v0, "fqcSuc"

    const/16 v1, 0xa

    invoke-virtual {p0, v0, v1}, Lcom/tencent/android/tpush/service/a/a;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/tencent/android/tpush/service/a/a;->g:I

    .line 288
    const-string v0, "fqcFal"

    const/16 v1, 0x64

    invoke-virtual {p0, v0, v1}, Lcom/tencent/android/tpush/service/a/a;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/tencent/android/tpush/service/a/a;->h:I

    .line 289
    const-string v0, "rptIntvl"

    const/16 v1, 0x4b0

    invoke-virtual {p0, v0, v1}, Lcom/tencent/android/tpush/service/a/a;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/tencent/android/tpush/service/a/a;->i:I

    .line 290
    const-string v0, "rptMaxCnt"

    invoke-virtual {p0, v0, v6}, Lcom/tencent/android/tpush/service/a/a;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/tencent/android/tpush/service/a/a;->j:I

    .line 291
    const-string v0, "httpRtCnt"

    invoke-virtual {p0, v0, v5}, Lcom/tencent/android/tpush/service/a/a;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/tencent/android/tpush/service/a/a;->k:I

    .line 293
    const-string v0, "ackMaxCnt"

    invoke-virtual {p0, v0, v5}, Lcom/tencent/android/tpush/service/a/a;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/tencent/android/tpush/service/a/a;->l:I

    .line 294
    const-string v0, "ackDuration"

    const v1, 0x2bf20

    invoke-virtual {p0, v0, v1}, Lcom/tencent/android/tpush/service/a/a;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/tencent/android/tpush/service/a/a;->m:I

    .line 296
    const-string v0, "loadIpIntvl"

    const v1, 0x44aa200

    invoke-virtual {p0, v0, v1}, Lcom/tencent/android/tpush/service/a/a;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/tencent/android/tpush/service/a/a;->n:I

    .line 298
    const-string v0, "redirectConnectTime"

    invoke-virtual {p0, v0, v7}, Lcom/tencent/android/tpush/service/a/a;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/tencent/android/tpush/service/a/a;->o:I

    .line 299
    const-string v0, "redirectSoTime"

    const/16 v1, 0x4e20

    invoke-virtual {p0, v0, v1}, Lcom/tencent/android/tpush/service/a/a;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/tencent/android/tpush/service/a/a;->p:I

    .line 300
    const-string v0, "strategyExpiredTime"

    const/16 v1, 0x5a0

    invoke-virtual {p0, v0, v1}, Lcom/tencent/android/tpush/service/a/a;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/tencent/android/tpush/service/a/a;->q:I

    .line 301
    const-string v0, "rptLive"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/tencent/android/tpush/service/a/a;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/tencent/android/tpush/service/a/a;->v:I

    .line 302
    const-string v0, "rptLiveIntvl"

    const/16 v1, 0xe10

    invoke-virtual {p0, v0, v1}, Lcom/tencent/android/tpush/service/a/a;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/tencent/android/tpush/service/a/a;->w:I

    .line 304
    const-string v0, "logFileSizeLimit"

    const/high16 v1, 0x40000

    invoke-virtual {p0, v0, v1}, Lcom/tencent/android/tpush/service/a/a;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/tencent/android/tpush/service/a/a;->s:I

    .line 306
    const-string v0, "errCount"

    invoke-virtual {p0, v0, v6}, Lcom/tencent/android/tpush/service/a/a;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/tencent/android/tpush/service/a/a;->t:I

    .line 307
    const-string v0, "logUploadDomain"

    const-string v1, "183.61.46.193"

    invoke-virtual {p0, v0, v1}, Lcom/tencent/android/tpush/service/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/android/tpush/service/a/a;->u:Ljava/lang/String;

    .line 309
    const-string v0, "stopXG"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/tencent/android/tpush/service/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/android/tpush/service/a/a;->x:Ljava/lang/String;

    .line 310
    const-string v0, "enableNewWd"

    invoke-virtual {p0, v0, v4}, Lcom/tencent/android/tpush/service/a/a;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/tencent/android/tpush/service/a/a;->y:I

    .line 311
    const-string v0, "report"

    invoke-virtual {p0, v0, v4}, Lcom/tencent/android/tpush/service/a/a;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/tencent/android/tpush/service/a/a;->B:I

    .line 313
    const-string v0, "enable.monitor"

    invoke-virtual {p0, v0, v4}, Lcom/tencent/android/tpush/service/a/a;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/tencent/android/tpush/service/a/a;->z:I

    .line 314
    const-string v0, "m.freq"

    invoke-virtual {p0, v0, v8}, Lcom/tencent/android/tpush/service/a/a;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/tencent/android/tpush/service/a/a;->A:I

    .line 316
    :cond_0
    return-void
.end method

.method public a(J)V
    .locals 2

    .prologue
    .line 513
    iget-object v0, p0, Lcom/tencent/android/tpush/service/a/a;->E:Landroid/content/Context;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/android/tpush/service/a/a;->b()J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-eqz v0, :cond_0

    .line 514
    iget-object v0, p0, Lcom/tencent/android/tpush/service/a/a;->E:Landroid/content/Context;

    const-string v1, "confVer"

    invoke-virtual {p0, v1}, Lcom/tencent/android/tpush/service/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1, p2}, Lcom/tencent/android/tpush/common/m;->b(Landroid/content/Context;Ljava/lang/String;J)V

    .line 516
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 9

    .prologue
    const/16 v2, 0x7530

    const/16 v1, 0xe10

    const/4 v0, 0x5

    const/4 v3, 0x3

    .line 329
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 330
    const-string v4, "confVer"

    invoke-virtual {p0, v4, v6}, Lcom/tencent/android/tpush/service/a/a;->a(Ljava/lang/String;Lorg/json/JSONObject;)I

    move-result v4

    int-to-long v4, v4

    iput-wide v4, p0, Lcom/tencent/android/tpush/service/a/a;->a:J

    .line 331
    iget-wide v4, p0, Lcom/tencent/android/tpush/service/a/a;->a:J

    const-wide/16 v7, 0x0

    cmp-long v4, v4, v7

    if-nez v4, :cond_3

    const-wide/16 v4, 0x1

    :goto_0
    iput-wide v4, p0, Lcom/tencent/android/tpush/service/a/a;->a:J

    .line 333
    const-string v4, "recTo"

    invoke-virtual {p0, v4, v6}, Lcom/tencent/android/tpush/service/a/a;->a(Ljava/lang/String;Lorg/json/JSONObject;)I

    move-result v4

    mul-int/lit16 v4, v4, 0x3e8

    iput v4, p0, Lcom/tencent/android/tpush/service/a/a;->b:I

    .line 334
    iget v4, p0, Lcom/tencent/android/tpush/service/a/a;->b:I

    if-nez v4, :cond_4

    move v4, v2

    :goto_1
    iput v4, p0, Lcom/tencent/android/tpush/service/a/a;->b:I

    .line 336
    const-string v4, "hbIntvl"

    invoke-virtual {p0, v4, v6}, Lcom/tencent/android/tpush/service/a/a;->a(Ljava/lang/String;Lorg/json/JSONObject;)I

    move-result v4

    mul-int/lit8 v4, v4, 0x3c

    mul-int/lit16 v4, v4, 0x3e8

    iput v4, p0, Lcom/tencent/android/tpush/service/a/a;->c:I

    .line 337
    iget v4, p0, Lcom/tencent/android/tpush/service/a/a;->c:I

    if-nez v4, :cond_5

    const v4, 0x493cc

    :goto_2
    iput v4, p0, Lcom/tencent/android/tpush/service/a/a;->c:I

    .line 339
    const-string v4, "httpHbIntvl"

    invoke-virtual {p0, v4, v6}, Lcom/tencent/android/tpush/service/a/a;->a(Ljava/lang/String;Lorg/json/JSONObject;)I

    move-result v4

    mul-int/lit8 v4, v4, 0x3c

    mul-int/lit16 v4, v4, 0x3e8

    iput v4, p0, Lcom/tencent/android/tpush/service/a/a;->d:I

    .line 340
    iget v4, p0, Lcom/tencent/android/tpush/service/a/a;->d:I

    if-nez v4, :cond_6

    const v4, 0x927c0

    :goto_3
    iput v4, p0, Lcom/tencent/android/tpush/service/a/a;->d:I

    .line 342
    const-string v4, "stIntvl"

    invoke-virtual {p0, v4, v6}, Lcom/tencent/android/tpush/service/a/a;->a(Ljava/lang/String;Lorg/json/JSONObject;)I

    move-result v4

    mul-int/lit8 v4, v4, 0x3c

    mul-int/lit16 v4, v4, 0x3e8

    iput v4, p0, Lcom/tencent/android/tpush/service/a/a;->e:I

    .line 343
    iget v4, p0, Lcom/tencent/android/tpush/service/a/a;->e:I

    if-nez v4, :cond_7

    const v4, 0x337f980

    :goto_4
    iput v4, p0, Lcom/tencent/android/tpush/service/a/a;->e:I

    .line 345
    const-string v4, "cnMsgExp"

    invoke-virtual {p0, v4, v6}, Lcom/tencent/android/tpush/service/a/a;->a(Ljava/lang/String;Lorg/json/JSONObject;)I

    move-result v4

    mul-int/lit16 v4, v4, 0x3e8

    iput v4, p0, Lcom/tencent/android/tpush/service/a/a;->f:I

    .line 346
    iget v4, p0, Lcom/tencent/android/tpush/service/a/a;->f:I

    if-nez v4, :cond_8

    const v4, 0xea60

    :goto_5
    iput v4, p0, Lcom/tencent/android/tpush/service/a/a;->f:I

    .line 348
    const-string v4, "fqcSuc"

    invoke-virtual {p0, v4, v6}, Lcom/tencent/android/tpush/service/a/a;->a(Ljava/lang/String;Lorg/json/JSONObject;)I

    move-result v4

    iput v4, p0, Lcom/tencent/android/tpush/service/a/a;->g:I

    .line 349
    iget v4, p0, Lcom/tencent/android/tpush/service/a/a;->g:I

    if-nez v4, :cond_9

    const/16 v4, 0xa

    :goto_6
    iput v4, p0, Lcom/tencent/android/tpush/service/a/a;->g:I

    .line 351
    const-string v4, "fqcFal"

    invoke-virtual {p0, v4, v6}, Lcom/tencent/android/tpush/service/a/a;->a(Ljava/lang/String;Lorg/json/JSONObject;)I

    move-result v4

    iput v4, p0, Lcom/tencent/android/tpush/service/a/a;->h:I

    .line 352
    iget v4, p0, Lcom/tencent/android/tpush/service/a/a;->h:I

    if-nez v4, :cond_a

    const/16 v4, 0x64

    :goto_7
    iput v4, p0, Lcom/tencent/android/tpush/service/a/a;->h:I

    .line 354
    const-string v4, "rptIntvl"

    invoke-virtual {p0, v4, v6}, Lcom/tencent/android/tpush/service/a/a;->a(Ljava/lang/String;Lorg/json/JSONObject;)I

    move-result v4

    iput v4, p0, Lcom/tencent/android/tpush/service/a/a;->i:I

    .line 355
    iget v4, p0, Lcom/tencent/android/tpush/service/a/a;->i:I

    if-nez v4, :cond_b

    const/16 v4, 0x4b0

    :goto_8
    iput v4, p0, Lcom/tencent/android/tpush/service/a/a;->i:I

    .line 357
    const-string v4, "rptMaxCnt"

    invoke-virtual {p0, v4, v6}, Lcom/tencent/android/tpush/service/a/a;->a(Ljava/lang/String;Lorg/json/JSONObject;)I

    move-result v4

    iput v4, p0, Lcom/tencent/android/tpush/service/a/a;->j:I

    .line 358
    iget v4, p0, Lcom/tencent/android/tpush/service/a/a;->j:I

    if-nez v4, :cond_c

    move v4, v0

    :goto_9
    iput v4, p0, Lcom/tencent/android/tpush/service/a/a;->j:I

    .line 360
    const-string v4, "httpRtCnt"

    invoke-virtual {p0, v4, v6}, Lcom/tencent/android/tpush/service/a/a;->a(Ljava/lang/String;Lorg/json/JSONObject;)I

    move-result v4

    iput v4, p0, Lcom/tencent/android/tpush/service/a/a;->k:I

    .line 361
    iget v4, p0, Lcom/tencent/android/tpush/service/a/a;->k:I

    if-nez v4, :cond_d

    move v4, v3

    :goto_a
    iput v4, p0, Lcom/tencent/android/tpush/service/a/a;->k:I

    .line 363
    const-string v4, "ackMaxCnt"

    invoke-virtual {p0, v4, v6}, Lcom/tencent/android/tpush/service/a/a;->a(Ljava/lang/String;Lorg/json/JSONObject;)I

    move-result v4

    iput v4, p0, Lcom/tencent/android/tpush/service/a/a;->l:I

    .line 364
    iget v4, p0, Lcom/tencent/android/tpush/service/a/a;->l:I

    if-nez v4, :cond_e

    :goto_b
    iput v3, p0, Lcom/tencent/android/tpush/service/a/a;->l:I

    .line 366
    const-string v3, "ackDuration"

    invoke-virtual {p0, v3, v6}, Lcom/tencent/android/tpush/service/a/a;->a(Ljava/lang/String;Lorg/json/JSONObject;)I

    move-result v3

    mul-int/lit16 v3, v3, 0x3e8

    iput v3, p0, Lcom/tencent/android/tpush/service/a/a;->m:I

    .line 367
    iget v3, p0, Lcom/tencent/android/tpush/service/a/a;->m:I

    if-nez v3, :cond_f

    const v3, 0x2bf20

    :goto_c
    iput v3, p0, Lcom/tencent/android/tpush/service/a/a;->m:I

    .line 369
    const-string v3, "loadIpIntvl"

    invoke-virtual {p0, v3, v6}, Lcom/tencent/android/tpush/service/a/a;->a(Ljava/lang/String;Lorg/json/JSONObject;)I

    move-result v3

    mul-int/lit8 v3, v3, 0x3c

    mul-int/lit8 v3, v3, 0x3c

    mul-int/lit16 v3, v3, 0x3e8

    iput v3, p0, Lcom/tencent/android/tpush/service/a/a;->n:I

    .line 370
    iget v3, p0, Lcom/tencent/android/tpush/service/a/a;->n:I

    if-nez v3, :cond_10

    const v3, 0x44aa200

    :goto_d
    iput v3, p0, Lcom/tencent/android/tpush/service/a/a;->n:I

    .line 372
    const-string v3, "redirectConnectTime"

    invoke-virtual {p0, v3, v6}, Lcom/tencent/android/tpush/service/a/a;->a(Ljava/lang/String;Lorg/json/JSONObject;)I

    move-result v3

    iput v3, p0, Lcom/tencent/android/tpush/service/a/a;->o:I

    .line 373
    iget v3, p0, Lcom/tencent/android/tpush/service/a/a;->o:I

    if-nez v3, :cond_11

    :goto_e
    iput v2, p0, Lcom/tencent/android/tpush/service/a/a;->o:I

    .line 375
    const-string v2, "redirectSoTime"

    invoke-virtual {p0, v2, v6}, Lcom/tencent/android/tpush/service/a/a;->a(Ljava/lang/String;Lorg/json/JSONObject;)I

    move-result v2

    iput v2, p0, Lcom/tencent/android/tpush/service/a/a;->p:I

    .line 376
    iget v2, p0, Lcom/tencent/android/tpush/service/a/a;->p:I

    if-nez v2, :cond_12

    const/16 v2, 0x4e20

    :goto_f
    iput v2, p0, Lcom/tencent/android/tpush/service/a/a;->p:I

    .line 378
    const-string v2, "strategyExpiredTime"

    invoke-virtual {p0, v2, v6}, Lcom/tencent/android/tpush/service/a/a;->a(Ljava/lang/String;Lorg/json/JSONObject;)I

    move-result v2

    iput v2, p0, Lcom/tencent/android/tpush/service/a/a;->q:I

    .line 379
    iget v2, p0, Lcom/tencent/android/tpush/service/a/a;->q:I

    if-nez v2, :cond_13

    const/16 v2, 0x5a0

    :goto_10
    iput v2, p0, Lcom/tencent/android/tpush/service/a/a;->q:I

    .line 381
    const-string v2, "rptLive"

    invoke-virtual {p0, v2, v6}, Lcom/tencent/android/tpush/service/a/a;->a(Ljava/lang/String;Lorg/json/JSONObject;)I

    move-result v2

    iput v2, p0, Lcom/tencent/android/tpush/service/a/a;->v:I

    .line 382
    iget v2, p0, Lcom/tencent/android/tpush/service/a/a;->v:I

    if-nez v2, :cond_14

    const/4 v2, 0x0

    :goto_11
    iput v2, p0, Lcom/tencent/android/tpush/service/a/a;->v:I

    .line 384
    const-string v2, "rptLiveIntvl"

    invoke-virtual {p0, v2, v6}, Lcom/tencent/android/tpush/service/a/a;->a(Ljava/lang/String;Lorg/json/JSONObject;)I

    move-result v2

    iput v2, p0, Lcom/tencent/android/tpush/service/a/a;->w:I

    .line 385
    iget v2, p0, Lcom/tencent/android/tpush/service/a/a;->w:I

    if-ne v2, v1, :cond_15

    :goto_12
    iput v1, p0, Lcom/tencent/android/tpush/service/a/a;->w:I

    .line 387
    const-string v1, "logLevel"

    invoke-virtual {p0, v1, v6}, Lcom/tencent/android/tpush/service/a/a;->a(Ljava/lang/String;Lorg/json/JSONObject;)I

    move-result v1

    iput v1, p0, Lcom/tencent/android/tpush/service/a/a;->r:I

    .line 390
    const-string v1, "logFileSizeLimit"

    invoke-virtual {p0, v1, v6}, Lcom/tencent/android/tpush/service/a/a;->a(Ljava/lang/String;Lorg/json/JSONObject;)I

    move-result v1

    mul-int/lit16 v1, v1, 0x400

    iput v1, p0, Lcom/tencent/android/tpush/service/a/a;->s:I

    .line 391
    iget v1, p0, Lcom/tencent/android/tpush/service/a/a;->s:I

    if-nez v1, :cond_16

    const/high16 v1, 0x40000

    :goto_13
    iput v1, p0, Lcom/tencent/android/tpush/service/a/a;->s:I

    .line 393
    const-string v1, "errCount"

    invoke-virtual {p0, v1, v6}, Lcom/tencent/android/tpush/service/a/a;->a(Ljava/lang/String;Lorg/json/JSONObject;)I

    move-result v1

    iput v1, p0, Lcom/tencent/android/tpush/service/a/a;->t:I

    .line 394
    iget v1, p0, Lcom/tencent/android/tpush/service/a/a;->t:I

    if-nez v1, :cond_17

    :goto_14
    iput v0, p0, Lcom/tencent/android/tpush/service/a/a;->t:I

    .line 396
    const-string v0, "logUploadDomain"

    invoke-virtual {p0, v0, v6}, Lcom/tencent/android/tpush/service/a/a;->b(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/android/tpush/service/a/a;->u:Ljava/lang/String;

    .line 397
    iget-object v0, p0, Lcom/tencent/android/tpush/service/a/a;->u:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_18

    const-string v0, "183.61.46.193"

    :goto_15
    iput-object v0, p0, Lcom/tencent/android/tpush/service/a/a;->u:Ljava/lang/String;

    .line 399
    const-string v0, "enableNewWd"

    const/4 v1, 0x1

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/tencent/android/tpush/service/a/a;->y:I

    .line 400
    const-string v0, "report"

    const/4 v1, 0x1

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/tencent/android/tpush/service/a/a;->B:I

    .line 401
    const-string v0, "stopXG"

    const/4 v1, 0x0

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/android/tpush/service/a/a;->x:Ljava/lang/String;

    .line 403
    const-string v0, "enable.monitor"

    const/4 v1, 0x1

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/tencent/android/tpush/service/a/a;->z:I

    .line 404
    const-string v0, "m.freq"

    const v1, 0xea60

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/tencent/android/tpush/service/a/a;->A:I

    .line 412
    const-string v0, "st.kv"

    const-string v1, ""

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 414
    const-string v1, "sp.kv"

    const-string v2, ""

    invoke-virtual {v6, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 417
    invoke-direct {p0}, Lcom/tencent/android/tpush/service/a/a;->c()Landroid/content/Context;

    move-result-object v2

    const-string v3, "confVer"

    invoke-virtual {p0, v3}, Lcom/tencent/android/tpush/service/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-wide v4, p0, Lcom/tencent/android/tpush/service/a/a;->a:J

    invoke-static {v2, v3, v4, v5}, Lcom/tencent/android/tpush/common/m;->b(Landroid/content/Context;Ljava/lang/String;J)V

    .line 420
    invoke-direct {p0}, Lcom/tencent/android/tpush/service/a/a;->c()Landroid/content/Context;

    move-result-object v2

    const-string v3, "recTo"

    invoke-virtual {p0, v3}, Lcom/tencent/android/tpush/service/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/tencent/android/tpush/service/a/a;->b:I

    invoke-static {v2, v3, v4}, Lcom/tencent/android/tpush/common/m;->b(Landroid/content/Context;Ljava/lang/String;I)V

    .line 421
    invoke-direct {p0}, Lcom/tencent/android/tpush/service/a/a;->c()Landroid/content/Context;

    move-result-object v2

    const-string v3, "hbIntvl"

    invoke-virtual {p0, v3}, Lcom/tencent/android/tpush/service/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/tencent/android/tpush/service/a/a;->c:I

    invoke-static {v2, v3, v4}, Lcom/tencent/android/tpush/common/m;->b(Landroid/content/Context;Ljava/lang/String;I)V

    .line 422
    invoke-direct {p0}, Lcom/tencent/android/tpush/service/a/a;->c()Landroid/content/Context;

    move-result-object v2

    const-string v3, "httpHbIntvl"

    invoke-virtual {p0, v3}, Lcom/tencent/android/tpush/service/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/tencent/android/tpush/service/a/a;->d:I

    invoke-static {v2, v3, v4}, Lcom/tencent/android/tpush/common/m;->b(Landroid/content/Context;Ljava/lang/String;I)V

    .line 423
    invoke-direct {p0}, Lcom/tencent/android/tpush/service/a/a;->c()Landroid/content/Context;

    move-result-object v2

    const-string v3, "stIntvl"

    invoke-virtual {p0, v3}, Lcom/tencent/android/tpush/service/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/tencent/android/tpush/service/a/a;->e:I

    invoke-static {v2, v3, v4}, Lcom/tencent/android/tpush/common/m;->b(Landroid/content/Context;Ljava/lang/String;I)V

    .line 424
    invoke-direct {p0}, Lcom/tencent/android/tpush/service/a/a;->c()Landroid/content/Context;

    move-result-object v2

    const-string v3, "cnMsgExp"

    invoke-virtual {p0, v3}, Lcom/tencent/android/tpush/service/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/tencent/android/tpush/service/a/a;->f:I

    invoke-static {v2, v3, v4}, Lcom/tencent/android/tpush/common/m;->b(Landroid/content/Context;Ljava/lang/String;I)V

    .line 427
    invoke-direct {p0}, Lcom/tencent/android/tpush/service/a/a;->c()Landroid/content/Context;

    move-result-object v2

    const-string v3, "fqcSuc"

    invoke-virtual {p0, v3}, Lcom/tencent/android/tpush/service/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/tencent/android/tpush/service/a/a;->g:I

    invoke-static {v2, v3, v4}, Lcom/tencent/android/tpush/common/m;->b(Landroid/content/Context;Ljava/lang/String;I)V

    .line 430
    invoke-direct {p0}, Lcom/tencent/android/tpush/service/a/a;->c()Landroid/content/Context;

    move-result-object v2

    const-string v3, "fqcFal"

    invoke-virtual {p0, v3}, Lcom/tencent/android/tpush/service/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/tencent/android/tpush/service/a/a;->h:I

    invoke-static {v2, v3, v4}, Lcom/tencent/android/tpush/common/m;->b(Landroid/content/Context;Ljava/lang/String;I)V

    .line 433
    invoke-direct {p0}, Lcom/tencent/android/tpush/service/a/a;->c()Landroid/content/Context;

    move-result-object v2

    const-string v3, "rptIntvl"

    invoke-virtual {p0, v3}, Lcom/tencent/android/tpush/service/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/tencent/android/tpush/service/a/a;->i:I

    invoke-static {v2, v3, v4}, Lcom/tencent/android/tpush/common/m;->b(Landroid/content/Context;Ljava/lang/String;I)V

    .line 436
    invoke-direct {p0}, Lcom/tencent/android/tpush/service/a/a;->c()Landroid/content/Context;

    move-result-object v2

    const-string v3, "rptMaxCnt"

    invoke-virtual {p0, v3}, Lcom/tencent/android/tpush/service/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/tencent/android/tpush/service/a/a;->j:I

    invoke-static {v2, v3, v4}, Lcom/tencent/android/tpush/common/m;->b(Landroid/content/Context;Ljava/lang/String;I)V

    .line 439
    invoke-direct {p0}, Lcom/tencent/android/tpush/service/a/a;->c()Landroid/content/Context;

    move-result-object v2

    const-string v3, "httpRtCnt"

    invoke-virtual {p0, v3}, Lcom/tencent/android/tpush/service/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/tencent/android/tpush/service/a/a;->k:I

    invoke-static {v2, v3, v4}, Lcom/tencent/android/tpush/common/m;->b(Landroid/content/Context;Ljava/lang/String;I)V

    .line 442
    invoke-direct {p0}, Lcom/tencent/android/tpush/service/a/a;->c()Landroid/content/Context;

    move-result-object v2

    const-string v3, "ackMaxCnt"

    invoke-virtual {p0, v3}, Lcom/tencent/android/tpush/service/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/tencent/android/tpush/service/a/a;->l:I

    invoke-static {v2, v3, v4}, Lcom/tencent/android/tpush/common/m;->b(Landroid/content/Context;Ljava/lang/String;I)V

    .line 445
    invoke-direct {p0}, Lcom/tencent/android/tpush/service/a/a;->c()Landroid/content/Context;

    move-result-object v2

    const-string v3, "ackDuration"

    invoke-virtual {p0, v3}, Lcom/tencent/android/tpush/service/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/tencent/android/tpush/service/a/a;->m:I

    invoke-static {v2, v3, v4}, Lcom/tencent/android/tpush/common/m;->b(Landroid/content/Context;Ljava/lang/String;I)V

    .line 448
    invoke-direct {p0}, Lcom/tencent/android/tpush/service/a/a;->c()Landroid/content/Context;

    move-result-object v2

    const-string v3, "loadIpIntvl"

    invoke-virtual {p0, v3}, Lcom/tencent/android/tpush/service/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/tencent/android/tpush/service/a/a;->n:I

    invoke-static {v2, v3, v4}, Lcom/tencent/android/tpush/common/m;->b(Landroid/content/Context;Ljava/lang/String;I)V

    .line 451
    invoke-direct {p0}, Lcom/tencent/android/tpush/service/a/a;->c()Landroid/content/Context;

    move-result-object v2

    const-string v3, "redirectConnectTime"

    invoke-virtual {p0, v3}, Lcom/tencent/android/tpush/service/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/tencent/android/tpush/service/a/a;->o:I

    invoke-static {v2, v3, v4}, Lcom/tencent/android/tpush/common/m;->b(Landroid/content/Context;Ljava/lang/String;I)V

    .line 453
    invoke-direct {p0}, Lcom/tencent/android/tpush/service/a/a;->c()Landroid/content/Context;

    move-result-object v2

    const-string v3, "redirectSoTime"

    invoke-virtual {p0, v3}, Lcom/tencent/android/tpush/service/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/tencent/android/tpush/service/a/a;->p:I

    invoke-static {v2, v3, v4}, Lcom/tencent/android/tpush/common/m;->b(Landroid/content/Context;Ljava/lang/String;I)V

    .line 455
    invoke-direct {p0}, Lcom/tencent/android/tpush/service/a/a;->c()Landroid/content/Context;

    move-result-object v2

    const-string v3, "strategyExpiredTime"

    invoke-virtual {p0, v3}, Lcom/tencent/android/tpush/service/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/tencent/android/tpush/service/a/a;->q:I

    invoke-static {v2, v3, v4}, Lcom/tencent/android/tpush/common/m;->b(Landroid/content/Context;Ljava/lang/String;I)V

    .line 457
    invoke-direct {p0}, Lcom/tencent/android/tpush/service/a/a;->c()Landroid/content/Context;

    move-result-object v2

    const-string v3, "rptLive"

    invoke-virtual {p0, v3}, Lcom/tencent/android/tpush/service/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/tencent/android/tpush/service/a/a;->v:I

    invoke-static {v2, v3, v4}, Lcom/tencent/android/tpush/common/m;->b(Landroid/content/Context;Ljava/lang/String;I)V

    .line 459
    invoke-direct {p0}, Lcom/tencent/android/tpush/service/a/a;->c()Landroid/content/Context;

    move-result-object v2

    const-string v3, "rptLiveIntvl"

    invoke-virtual {p0, v3}, Lcom/tencent/android/tpush/service/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/tencent/android/tpush/service/a/a;->w:I

    invoke-static {v2, v3, v4}, Lcom/tencent/android/tpush/common/m;->b(Landroid/content/Context;Ljava/lang/String;I)V

    .line 461
    invoke-direct {p0}, Lcom/tencent/android/tpush/service/a/a;->c()Landroid/content/Context;

    move-result-object v2

    const-string v3, "logLevel"

    invoke-virtual {p0, v3}, Lcom/tencent/android/tpush/service/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/tencent/android/tpush/service/a/a;->r:I

    invoke-static {v2, v3, v4}, Lcom/tencent/android/tpush/common/m;->b(Landroid/content/Context;Ljava/lang/String;I)V

    .line 463
    invoke-direct {p0}, Lcom/tencent/android/tpush/service/a/a;->c()Landroid/content/Context;

    move-result-object v2

    const-string v3, "logFileSizeLimit"

    invoke-virtual {p0, v3}, Lcom/tencent/android/tpush/service/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/tencent/android/tpush/service/a/a;->s:I

    invoke-static {v2, v3, v4}, Lcom/tencent/android/tpush/common/m;->b(Landroid/content/Context;Ljava/lang/String;I)V

    .line 465
    invoke-direct {p0}, Lcom/tencent/android/tpush/service/a/a;->c()Landroid/content/Context;

    move-result-object v2

    const-string v3, "errCount"

    invoke-virtual {p0, v3}, Lcom/tencent/android/tpush/service/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/tencent/android/tpush/service/a/a;->t:I

    invoke-static {v2, v3, v4}, Lcom/tencent/android/tpush/common/m;->b(Landroid/content/Context;Ljava/lang/String;I)V

    .line 466
    iget-object v2, p0, Lcom/tencent/android/tpush/service/a/a;->x:Ljava/lang/String;

    invoke-static {v2}, Lcom/tencent/android/tpush/service/d/f;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 468
    invoke-direct {p0}, Lcom/tencent/android/tpush/service/a/a;->c()Landroid/content/Context;

    move-result-object v2

    const-string v3, "stopXG"

    invoke-virtual {p0, v3}, Lcom/tencent/android/tpush/service/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/android/tpush/service/a/a;->x:Ljava/lang/String;

    invoke-static {v4}, Lcom/tencent/android/tpush/encrypt/Rijndael;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/tencent/android/tpush/common/m;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    :cond_0
    invoke-direct {p0}, Lcom/tencent/android/tpush/service/a/a;->c()Landroid/content/Context;

    move-result-object v2

    const-string v3, "enableNewWd"

    invoke-virtual {p0, v3}, Lcom/tencent/android/tpush/service/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/tencent/android/tpush/service/a/a;->y:I

    invoke-static {v2, v3, v4}, Lcom/tencent/android/tpush/common/m;->b(Landroid/content/Context;Ljava/lang/String;I)V

    .line 473
    invoke-direct {p0}, Lcom/tencent/android/tpush/service/a/a;->c()Landroid/content/Context;

    move-result-object v2

    const-string v3, "report"

    invoke-virtual {p0, v3}, Lcom/tencent/android/tpush/service/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/tencent/android/tpush/service/a/a;->B:I

    invoke-static {v2, v3, v4}, Lcom/tencent/android/tpush/common/m;->b(Landroid/content/Context;Ljava/lang/String;I)V

    .line 475
    invoke-direct {p0}, Lcom/tencent/android/tpush/service/a/a;->c()Landroid/content/Context;

    move-result-object v2

    const-string v3, "enable.monitor"

    invoke-virtual {p0, v3}, Lcom/tencent/android/tpush/service/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/tencent/android/tpush/service/a/a;->z:I

    invoke-static {v2, v3, v4}, Lcom/tencent/android/tpush/common/m;->b(Landroid/content/Context;Ljava/lang/String;I)V

    .line 476
    invoke-direct {p0}, Lcom/tencent/android/tpush/service/a/a;->c()Landroid/content/Context;

    move-result-object v2

    const-string v3, "m.freq"

    invoke-virtual {p0, v3}, Lcom/tencent/android/tpush/service/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/tencent/android/tpush/service/a/a;->A:I

    invoke-static {v2, v3, v4}, Lcom/tencent/android/tpush/common/m;->b(Landroid/content/Context;Ljava/lang/String;I)V

    .line 478
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 479
    invoke-direct {p0}, Lcom/tencent/android/tpush/service/a/a;->c()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/tencent/android/tpush/service/a/b;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 482
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 483
    invoke-direct {p0}, Lcom/tencent/android/tpush/service/a/a;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/service/a/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 489
    :cond_2
    :goto_16
    return-void

    .line 331
    :cond_3
    iget-wide v4, p0, Lcom/tencent/android/tpush/service/a/a;->a:J

    goto/16 :goto_0

    .line 334
    :cond_4
    iget v4, p0, Lcom/tencent/android/tpush/service/a/a;->b:I

    goto/16 :goto_1

    .line 337
    :cond_5
    iget v4, p0, Lcom/tencent/android/tpush/service/a/a;->c:I

    goto/16 :goto_2

    .line 340
    :cond_6
    iget v4, p0, Lcom/tencent/android/tpush/service/a/a;->d:I

    goto/16 :goto_3

    .line 343
    :cond_7
    iget v4, p0, Lcom/tencent/android/tpush/service/a/a;->e:I

    goto/16 :goto_4

    .line 346
    :cond_8
    iget v4, p0, Lcom/tencent/android/tpush/service/a/a;->f:I

    goto/16 :goto_5

    .line 349
    :cond_9
    iget v4, p0, Lcom/tencent/android/tpush/service/a/a;->g:I

    goto/16 :goto_6

    .line 352
    :cond_a
    iget v4, p0, Lcom/tencent/android/tpush/service/a/a;->h:I

    goto/16 :goto_7

    .line 355
    :cond_b
    iget v4, p0, Lcom/tencent/android/tpush/service/a/a;->i:I

    goto/16 :goto_8

    .line 358
    :cond_c
    iget v4, p0, Lcom/tencent/android/tpush/service/a/a;->j:I

    goto/16 :goto_9

    .line 361
    :cond_d
    iget v4, p0, Lcom/tencent/android/tpush/service/a/a;->k:I

    goto/16 :goto_a

    .line 364
    :cond_e
    iget v3, p0, Lcom/tencent/android/tpush/service/a/a;->l:I

    goto/16 :goto_b

    .line 367
    :cond_f
    iget v3, p0, Lcom/tencent/android/tpush/service/a/a;->m:I

    goto/16 :goto_c

    .line 370
    :cond_10
    iget v3, p0, Lcom/tencent/android/tpush/service/a/a;->n:I

    goto/16 :goto_d

    .line 373
    :cond_11
    iget v2, p0, Lcom/tencent/android/tpush/service/a/a;->o:I

    goto/16 :goto_e

    .line 376
    :cond_12
    iget v2, p0, Lcom/tencent/android/tpush/service/a/a;->p:I

    goto/16 :goto_f

    .line 379
    :cond_13
    iget v2, p0, Lcom/tencent/android/tpush/service/a/a;->q:I

    goto/16 :goto_10

    .line 382
    :cond_14
    iget v2, p0, Lcom/tencent/android/tpush/service/a/a;->v:I

    goto/16 :goto_11

    .line 385
    :cond_15
    iget v1, p0, Lcom/tencent/android/tpush/service/a/a;->w:I

    goto/16 :goto_12

    .line 391
    :cond_16
    iget v1, p0, Lcom/tencent/android/tpush/service/a/a;->s:I

    goto/16 :goto_13

    .line 394
    :cond_17
    iget v0, p0, Lcom/tencent/android/tpush/service/a/a;->t:I

    goto/16 :goto_14

    .line 397
    :cond_18
    iget-object v0, p0, Lcom/tencent/android/tpush/service/a/a;->u:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_15

    .line 486
    :catch_0
    move-exception v0

    .line 487
    const-string v1, "XGService"

    const-string v2, "parseValue failed."

    invoke-static {v1, v2, v0}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_16
.end method

.method public b()J
    .locals 4

    .prologue
    const-wide/16 v0, 0x1

    .line 498
    iget-object v2, p0, Lcom/tencent/android/tpush/service/a/a;->E:Landroid/content/Context;

    if-eqz v2, :cond_0

    .line 500
    iget-object v2, p0, Lcom/tencent/android/tpush/service/a/a;->E:Landroid/content/Context;

    const-string v3, "confVer"

    invoke-virtual {p0, v3}, Lcom/tencent/android/tpush/service/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0, v1}, Lcom/tencent/android/tpush/common/m;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    .line 502
    :cond_0
    return-wide v0
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 602
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.tencent.tpus."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 584
    if-eqz p2, :cond_0

    invoke-static {p1}, Lcom/tencent/android/tpush/service/d/f;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 586
    :try_start_0
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 591
    :goto_0
    return-object v0

    .line 587
    :catch_0
    move-exception v0

    .line 588
    const-string v1, "XGService"

    const-string v2, "getJsonStr"

    invoke-static {v1, v2, v0}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 591
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConfigurationManager [context="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/android/tpush/service/a/a;->E:Landroid/content/Context;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", configurationVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/tencent/android/tpush/service/a/a;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", receiveTimeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/android/tpush/service/a/a;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", heartbeatInterval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/android/tpush/service/a/a;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", httpHeartbeatInterval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/android/tpush/service/a/a;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", speedTestInterval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/android/tpush/service/a/a;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", channelMessageExpires="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/android/tpush/service/a/a;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", freqencySuccess="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/android/tpush/service/a/a;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", freqencyFailed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/android/tpush/service/a/a;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", reportInterval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/android/tpush/service/a/a;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", reportMaxCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/android/tpush/service/a/a;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", httpRetryCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/android/tpush/service/a/a;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ackMaxCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/android/tpush/service/a/a;->l:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ackDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/android/tpush/service/a/a;->m:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", loadIpInerval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/android/tpush/service/a/a;->n:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", redirectConnectTimeOut="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/android/tpush/service/a/a;->o:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", redirectSoTimeOut="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/android/tpush/service/a/a;->p:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", strategyExpiredTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/android/tpush/service/a/a;->q:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", logLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/android/tpush/service/a/a;->r:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", logFileSizeLimit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/android/tpush/service/a/a;->s:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", errCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/android/tpush/service/a/a;->t:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", logUploadDomain="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/android/tpush/service/a/a;->u:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rptLive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/android/tpush/service/a/a;->v:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rptLiveIntvl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/android/tpush/service/a/a;->w:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", disableXG="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/android/tpush/service/a/a;->x:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", enableNewWd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/android/tpush/service/a/a;->y:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", enableMonitor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/android/tpush/service/a/a;->z:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", monitorFreg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/android/tpush/service/a/a;->A:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", enableReport="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/android/tpush/service/a/a;->B:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isXGServiceEnable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/tencent/android/tpush/service/a/a;->C:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
