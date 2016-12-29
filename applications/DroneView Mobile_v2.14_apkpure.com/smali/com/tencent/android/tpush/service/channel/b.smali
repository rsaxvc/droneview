.class public final Lcom/tencent/android/tpush/service/channel/b;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/tencent/android/tpush/horse/l;
.implements Lcom/tencent/android/tpush/service/channel/a/b;


# annotations
.annotation build Lcom/jg/JgClassChecked;
    author = 0x1
    fComment = "\u786e\u8ba4\u5df2\u8fdb\u884c\u5b89\u5168\u6821\u9a8c"
    lastDate = "20150316"
    reviewer = 0x3
    vComment = {
        .enum Lcom/jg/EType;->RECEIVERCHECK:Lcom/jg/EType;,
        .enum Lcom/jg/EType;->INTENTCHECK:Lcom/jg/EType;,
        .enum Lcom/jg/EType;->INTENTSCHEMECHECK:Lcom/jg/EType;
    }
.end annotation


# static fields
.field public static a:I

.field public static b:I

.field public static c:I

.field public static d:I

.field public static e:I

.field public static f:I

.field protected static g:I

.field protected static h:Ljava/lang/Boolean;

.field private static volatile r:J

.field private static volatile s:J

.field private static t:Ljava/lang/String;


# instance fields
.field private i:Landroid/os/Handler;

.field private j:Ljava/util/ArrayList;

.field private k:Ljava/util/Map;

.field private l:Ljava/util/Map;

.field private m:Lcom/tencent/android/tpush/service/channel/a/a;

.field private volatile n:Z

.field private o:Landroid/app/PendingIntent;

.field private p:Lcom/tencent/android/tpush/service/channel/o;

.field private volatile q:Z

.field private u:Lcom/tencent/android/tpush/horse/k;

.field private v:Landroid/os/Handler;

.field private w:Lcom/tencent/android/tpush/service/channel/p;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 90
    sput v1, Lcom/tencent/android/tpush/service/channel/b;->a:I

    .line 91
    sput v1, Lcom/tencent/android/tpush/service/channel/b;->b:I

    .line 92
    const v0, 0x46cd0

    sput v0, Lcom/tencent/android/tpush/service/channel/b;->c:I

    .line 93
    const v0, 0x2bf20

    sput v0, Lcom/tencent/android/tpush/service/channel/b;->d:I

    .line 94
    const v0, 0x493e0

    sput v0, Lcom/tencent/android/tpush/service/channel/b;->e:I

    .line 95
    sget v0, Lcom/tencent/android/tpush/service/channel/b;->c:I

    sput v0, Lcom/tencent/android/tpush/service/channel/b;->f:I

    .line 96
    sput-wide v2, Lcom/tencent/android/tpush/service/channel/b;->r:J

    .line 97
    sput-wide v2, Lcom/tencent/android/tpush/service/channel/b;->s:J

    .line 98
    const-string v0, ""

    sput-object v0, Lcom/tencent/android/tpush/service/channel/b;->t:Ljava/lang/String;

    .line 262
    sput v1, Lcom/tencent/android/tpush/service/channel/b;->g:I

    .line 267
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/android/tpush/service/channel/b;->h:Ljava/lang/Boolean;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object v1, p0, Lcom/tencent/android/tpush/service/channel/b;->i:Landroid/os/Handler;

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/android/tpush/service/channel/b;->j:Ljava/util/ArrayList;

    .line 80
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/android/tpush/service/channel/b;->k:Ljava/util/Map;

    .line 81
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/android/tpush/service/channel/b;->l:Ljava/util/Map;

    .line 83
    iput-object v1, p0, Lcom/tencent/android/tpush/service/channel/b;->m:Lcom/tencent/android/tpush/service/channel/a/a;

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/android/tpush/service/channel/b;->n:Z

    .line 86
    iput-object v1, p0, Lcom/tencent/android/tpush/service/channel/b;->o:Landroid/app/PendingIntent;

    .line 87
    iput-object v1, p0, Lcom/tencent/android/tpush/service/channel/b;->p:Lcom/tencent/android/tpush/service/channel/o;

    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/android/tpush/service/channel/b;->q:Z

    .line 141
    new-instance v0, Lcom/tencent/android/tpush/service/channel/c;

    invoke-direct {v0, p0}, Lcom/tencent/android/tpush/service/channel/c;-><init>(Lcom/tencent/android/tpush/service/channel/b;)V

    iput-object v0, p0, Lcom/tencent/android/tpush/service/channel/b;->u:Lcom/tencent/android/tpush/horse/k;

    .line 296
    new-instance v0, Lcom/tencent/android/tpush/service/channel/d;

    invoke-direct {v0, p0}, Lcom/tencent/android/tpush/service/channel/d;-><init>(Lcom/tencent/android/tpush/service/channel/b;)V

    iput-object v0, p0, Lcom/tencent/android/tpush/service/channel/b;->v:Landroid/os/Handler;

    .line 399
    new-instance v0, Lcom/tencent/android/tpush/service/channel/e;

    invoke-direct {v0, p0}, Lcom/tencent/android/tpush/service/channel/e;-><init>(Lcom/tencent/android/tpush/service/channel/b;)V

    iput-object v0, p0, Lcom/tencent/android/tpush/service/channel/b;->w:Lcom/tencent/android/tpush/service/channel/p;

    .line 109
    invoke-static {}, Lcom/tencent/android/tpush/horse/g;->a()Lcom/tencent/android/tpush/horse/g;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/android/tpush/horse/g;->a(Lcom/tencent/android/tpush/horse/l;)V

    .line 110
    invoke-static {}, Lcom/tencent/android/tpush/common/g;->a()Lcom/tencent/android/tpush/common/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/android/tpush/common/g;->b()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/android/tpush/service/channel/b;->i:Landroid/os/Handler;

    .line 119
    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/android/tpush/service/channel/c;)V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/tencent/android/tpush/service/channel/b;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/tencent/android/tpush/service/channel/b;Lcom/tencent/android/tpush/service/channel/a/a;)Lcom/tencent/android/tpush/service/channel/a/a;
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/tencent/android/tpush/service/channel/b;->m:Lcom/tencent/android/tpush/service/channel/a/a;

    return-object p1
.end method

.method public static a()Lcom/tencent/android/tpush/service/channel/b;
    .locals 1

    .prologue
    .line 105
    sget-object v0, Lcom/tencent/android/tpush/service/channel/n;->a:Lcom/tencent/android/tpush/service/channel/b;

    return-object v0
.end method

.method static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 70
    sput-object p0, Lcom/tencent/android/tpush/service/channel/b;->t:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic a(Lcom/tencent/android/tpush/service/channel/b;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/b;->j:Ljava/util/ArrayList;

    return-object v0
.end method

.method private a(ILcom/tencent/android/tpush/service/channel/o;)V
    .locals 4

    .prologue
    .line 316
    invoke-virtual {p2}, Lcom/tencent/android/tpush/service/channel/o;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 317
    invoke-static {}, Lcom/tencent/android/tpush/service/m;->e()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/android/tpush/common/p;->k(Landroid/content/Context;)V

    .line 320
    :cond_0
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 321
    :try_start_1
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/b;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x80

    if-ge v0, v1, :cond_4

    .line 322
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p2, Lcom/tencent/android/tpush/service/channel/o;->a:J

    .line 323
    const/4 v0, -0x1

    if-ne p1, v0, :cond_3

    .line 324
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/b;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 334
    :goto_0
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/b;->m:Lcom/tencent/android/tpush/service/channel/a/a;

    if-eqz v0, :cond_1

    .line 335
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/b;->m:Lcom/tencent/android/tpush/service/channel/a/a;

    invoke-virtual {v0}, Lcom/tencent/android/tpush/service/channel/a/a;->h()V

    .line 337
    :cond_1
    invoke-virtual {p0}, Lcom/tencent/android/tpush/service/channel/b;->e()V

    .line 338
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 340
    :try_start_2
    new-instance v0, Lcom/tencent/android/tpush/service/channel/m;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/tencent/android/tpush/service/channel/m;-><init>(Lcom/tencent/android/tpush/service/channel/b;Lcom/tencent/android/tpush/service/channel/c;)V

    .line 341
    iget-object v1, p0, Lcom/tencent/android/tpush/service/channel/b;->l:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    iget-object v1, p0, Lcom/tencent/android/tpush/service/channel/b;->i:Landroid/os/Handler;

    invoke-static {}, Lcom/tencent/android/tpush/service/m;->e()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/android/tpush/service/a/a;->a(Landroid/content/Context;)Lcom/tencent/android/tpush/service/a/a;

    move-result-object v2

    iget v2, v2, Lcom/tencent/android/tpush/service/a/a;->f:I

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 348
    invoke-virtual {p2}, Lcom/tencent/android/tpush/service/channel/o;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 349
    invoke-static {}, Lcom/tencent/android/tpush/common/p;->a()V

    .line 352
    :cond_2
    :goto_1
    return-void

    .line 326
    :cond_3
    :try_start_3
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/b;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 338
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 345
    :catch_0
    move-exception v0

    .line 346
    :try_start_5
    const-string v1, "XGService"

    const-string v2, "messageInQueue"

    invoke-static {v1, v2, v0}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 348
    invoke-virtual {p2}, Lcom/tencent/android/tpush/service/channel/o;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 349
    invoke-static {}, Lcom/tencent/android/tpush/common/p;->a()V

    goto :goto_1

    .line 329
    :cond_4
    :try_start_6
    const-string v0, "XGService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>FG messageInQueue is full,size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/android/tpush/service/channel/b;->j:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/a/a;->h(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .line 348
    :catchall_1
    move-exception v0

    invoke-virtual {p2}, Lcom/tencent/android/tpush/service/channel/o;->a()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 349
    invoke-static {}, Lcom/tencent/android/tpush/common/p;->a()V

    :cond_5
    throw v0
.end method

.method static synthetic a(Lcom/tencent/android/tpush/service/channel/b;Z)Z
    .locals 0

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/tencent/android/tpush/service/channel/b;->n:Z

    return p1
.end method

.method static synthetic b(Lcom/tencent/android/tpush/service/channel/b;)Lcom/tencent/android/tpush/service/channel/a/a;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/b;->m:Lcom/tencent/android/tpush/service/channel/a/a;

    return-object v0
.end method

.method static synthetic b(Lcom/tencent/android/tpush/service/channel/b;Z)Z
    .locals 0

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/tencent/android/tpush/service/channel/b;->q:Z

    return p1
.end method

.method static synthetic c(Lcom/tencent/android/tpush/service/channel/b;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/b;->k:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic d(Lcom/tencent/android/tpush/service/channel/b;)V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/tencent/android/tpush/service/channel/b;->h()V

    return-void
.end method

.method static synthetic e(Lcom/tencent/android/tpush/service/channel/b;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/b;->l:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic f(Lcom/tencent/android/tpush/service/channel/b;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/b;->i:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic g(Lcom/tencent/android/tpush/service/channel/b;)Lcom/tencent/android/tpush/service/channel/o;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/b;->p:Lcom/tencent/android/tpush/service/channel/o;

    return-object v0
.end method

.method static synthetic g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/tencent/android/tpush/service/channel/b;->t:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h(Lcom/tencent/android/tpush/service/channel/b;)Lcom/tencent/android/tpush/service/channel/p;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/b;->w:Lcom/tencent/android/tpush/service/channel/p;

    return-object v0
.end method

.method private declared-synchronized h()V
    .locals 4

    .prologue
    .line 457
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/b;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 458
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/b;->p:Lcom/tencent/android/tpush/service/channel/o;

    if-nez v0, :cond_0

    .line 459
    new-instance v0, Lcom/tencent/android/tpush/service/channel/o;

    const/4 v1, 0x7

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/tencent/android/tpush/service/channel/b;->w:Lcom/tencent/android/tpush/service/channel/p;

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/android/tpush/service/channel/o;-><init>(SLcom/qq/taf/jce/JceStruct;Lcom/tencent/android/tpush/service/channel/p;)V

    iput-object v0, p0, Lcom/tencent/android/tpush/service/channel/b;->p:Lcom/tencent/android/tpush/service/channel/o;

    .line 463
    :cond_0
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/b;->p:Lcom/tencent/android/tpush/service/channel/o;

    iget-object v0, v0, Lcom/tencent/android/tpush/service/channel/o;->d:Lcom/tencent/android/tpush/service/channel/p;

    if-nez v0, :cond_1

    .line 464
    new-instance v0, Lcom/tencent/android/tpush/service/channel/o;

    const/4 v1, 0x7

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/tencent/android/tpush/service/channel/b;->w:Lcom/tencent/android/tpush/service/channel/p;

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/android/tpush/service/channel/o;-><init>(SLcom/qq/taf/jce/JceStruct;Lcom/tencent/android/tpush/service/channel/p;)V

    iput-object v0, p0, Lcom/tencent/android/tpush/service/channel/b;->p:Lcom/tencent/android/tpush/service/channel/o;

    .line 468
    :cond_1
    sget-boolean v0, Lcom/tencent/android/tpush/XGPushConfig;->enableDebug:Z

    if-eqz v0, :cond_2

    .line 469
    const-string v0, "TpnsChannel"

    const-string v1, "Action -> send heartbeat "

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    :cond_2
    const/4 v0, -0x1

    iget-object v1, p0, Lcom/tencent/android/tpush/service/channel/b;->p:Lcom/tencent/android/tpush/service/channel/o;

    invoke-direct {p0, v0, v1}, Lcom/tencent/android/tpush/service/channel/b;->a(ILcom/tencent/android/tpush/service/channel/o;)V

    .line 474
    sget v0, Lcom/tencent/android/tpush/service/channel/b;->a:I

    if-lez v0, :cond_3

    sget v0, Lcom/tencent/android/tpush/service/channel/b;->a:I

    rem-int/lit8 v0, v0, 0x3

    if-eqz v0, :cond_4

    :cond_3
    sget v0, Lcom/tencent/android/tpush/service/channel/b;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 476
    :cond_4
    invoke-static {}, Lcom/tencent/android/tpush/service/m;->e()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/android/tpush/service/d/f;->b(Landroid/content/Context;)V

    .line 479
    :cond_5
    sget v0, Lcom/tencent/android/tpush/service/channel/b;->a:I

    rem-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    .line 480
    sget v0, Lcom/tencent/android/tpush/service/channel/b;->b:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_7

    .line 481
    const-string v0, "XGService"

    const-string v1, "heartbeat to watchdog failed too many time , start watchdog again"

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/a/a;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    const/4 v0, 0x0

    sput v0, Lcom/tencent/android/tpush/service/channel/b;->b:I

    .line 483
    invoke-static {}, Lcom/tencent/android/tpush/service/m;->e()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/android/tpush/service/XGWatchdog;->getInstance(Landroid/content/Context;)Lcom/tencent/android/tpush/service/XGWatchdog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/android/tpush/service/XGWatchdog;->startWatchdog()V

    .line 507
    :cond_6
    :goto_0
    invoke-direct {p0}, Lcom/tencent/android/tpush/service/channel/b;->i()V

    .line 509
    invoke-static {}, Lcom/tencent/android/tpush/service/m;->e()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/android/tpush/service/w;->a(Landroid/content/Context;)Lcom/tencent/android/tpush/service/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/android/tpush/service/w;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 511
    monitor-exit p0

    return-void

    .line 485
    :cond_7
    :try_start_1
    invoke-static {}, Lcom/tencent/android/tpush/service/m;->e()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/android/tpush/service/XGWatchdog;->getInstance(Landroid/content/Context;)Lcom/tencent/android/tpush/service/XGWatchdog;

    move-result-object v0

    const-string v1, "heartbeat:"

    new-instance v2, Lcom/tencent/android/tpush/service/channel/f;

    invoke-direct {v2, p0}, Lcom/tencent/android/tpush/service/channel/f;-><init>(Lcom/tencent/android/tpush/service/channel/b;)V

    invoke-virtual {v0, v1, v2}, Lcom/tencent/android/tpush/service/XGWatchdog;->sendHeartbeat2Watchdog(Ljava/lang/String;Lcom/tencent/android/tpush/service/ab;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 457
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 502
    :cond_8
    :try_start_2
    invoke-static {}, Lcom/tencent/android/tpush/service/m;->e()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/android/tpush/service/XGWatchdog;->getInstance(Landroid/content/Context;)Lcom/tencent/android/tpush/service/XGWatchdog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/android/tpush/service/XGWatchdog;->sendAllLocalXGAppList()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private i()V
    .locals 5

    .prologue
    .line 640
    :try_start_0
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/b;->o:Landroid/app/PendingIntent;

    if-nez v0, :cond_0

    .line 641
    invoke-static {}, Lcom/tencent/android/tpush/service/m;->e()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/tencent/android/tpush/service/channel/g;

    invoke-direct {v1, p0}, Lcom/tencent/android/tpush/service/channel/g;-><init>(Lcom/tencent/android/tpush/service/channel/b;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.tencent.android.tpush.service.channel.heartbeatIntent"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 650
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.tencent.android.tpush.service.channel.heartbeatIntent"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 652
    invoke-static {}, Lcom/tencent/android/tpush/service/m;->e()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const/high16 v3, 0x8000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/android/tpush/service/channel/b;->o:Landroid/app/PendingIntent;

    .line 656
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 657
    sget v2, Lcom/tencent/android/tpush/service/channel/b;->f:I

    sget v3, Lcom/tencent/android/tpush/service/channel/b;->e:I

    if-le v2, v3, :cond_1

    .line 658
    sget v2, Lcom/tencent/android/tpush/service/channel/b;->e:I

    sput v2, Lcom/tencent/android/tpush/service/channel/b;->f:I

    .line 662
    :cond_1
    invoke-static {}, Lcom/tencent/android/tpush/service/m;->e()Landroid/content/Context;

    move-result-object v2

    const-string v3, "com.tencent.android.xg.wx.HeartbeatIntervalMs"

    sget v4, Lcom/tencent/android/tpush/service/channel/b;->f:I

    invoke-static {v2, v3, v4}, Lcom/tencent/android/tpush/common/m;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/tencent/android/tpush/service/channel/b;->f:I

    .line 668
    sget v2, Lcom/tencent/android/tpush/service/channel/b;->f:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 669
    invoke-static {}, Lcom/tencent/android/tpush/service/u;->a()Lcom/tencent/android/tpush/service/u;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/tencent/android/tpush/service/channel/b;->o:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3, v0, v1, v4}, Lcom/tencent/android/tpush/service/u;->a(IJLandroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 676
    :goto_0
    return-void

    .line 671
    :catch_0
    move-exception v0

    .line 674
    const-string v1, "TpnsChannel"

    const-string v2, "scheduleHeartbeat error"

    invoke-static {v1, v2, v0}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized a(Lcom/tencent/android/tpush/service/channel/a/a;I)Ljava/util/ArrayList;
    .locals 10

    .prologue
    const/4 v0, 0x1

    .line 709
    monitor-enter p0

    if-ge p2, v0, :cond_0

    move p2, v0

    .line 710
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 711
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/b;->k:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 713
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, p2}, Ljava/util/ArrayList;-><init>(I)V

    .line 714
    iget-object v1, p0, Lcom/tencent/android/tpush/service/channel/b;->j:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    .line 715
    iget-object v1, p0, Lcom/tencent/android/tpush/service/channel/b;->j:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 717
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/android/tpush/service/channel/o;

    .line 718
    new-instance v2, Lcom/tencent/android/tpush/service/channel/b/h;

    invoke-virtual {v1}, Lcom/tencent/android/tpush/service/channel/o;->b()I

    move-result v3

    invoke-direct {v2, v3}, Lcom/tencent/android/tpush/service/channel/b/h;-><init>(I)V

    .line 719
    invoke-virtual {v1, v2}, Lcom/tencent/android/tpush/service/channel/o;->a(Lcom/tencent/android/tpush/service/channel/b/h;)V

    .line 720
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 721
    iput-wide v4, v1, Lcom/tencent/android/tpush/service/channel/o;->b:J

    .line 723
    invoke-virtual {v1}, Lcom/tencent/android/tpush/service/channel/o;->a()Z

    move-result v2

    if-nez v2, :cond_1

    .line 725
    invoke-virtual {v1}, Lcom/tencent/android/tpush/service/channel/o;->c()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 726
    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    .line 727
    add-int/lit8 v2, p2, -0x1

    .line 729
    iget-object v1, v1, Lcom/tencent/android/tpush/service/channel/o;->c:Lcom/qq/taf/jce/JceStruct;

    instance-of v8, v1, Lcom/tencent/android/tpush/service/channel/protocol/TpnsReconnectReq;

    .line 730
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 731
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/android/tpush/service/channel/o;

    .line 732
    if-eqz v8, :cond_4

    iget-object v3, v1, Lcom/tencent/android/tpush/service/channel/o;->c:Lcom/qq/taf/jce/JceStruct;

    instance-of v3, v3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsReconnectReq;

    if-nez v3, :cond_2

    iget-object v3, v1, Lcom/tencent/android/tpush/service/channel/o;->c:Lcom/qq/taf/jce/JceStruct;

    instance-of v3, v3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushVerifyReq;

    if-eqz v3, :cond_4

    .line 734
    :cond_2
    iget-object v3, v1, Lcom/tencent/android/tpush/service/channel/o;->d:Lcom/tencent/android/tpush/service/channel/p;

    if-eqz v3, :cond_3

    .line 735
    iget-object v3, p0, Lcom/tencent/android/tpush/service/channel/b;->i:Landroid/os/Handler;

    new-instance v9, Lcom/tencent/android/tpush/service/channel/h;

    invoke-direct {v9, p0, v1}, Lcom/tencent/android/tpush/service/channel/h;-><init>(Lcom/tencent/android/tpush/service/channel/b;Lcom/tencent/android/tpush/service/channel/o;)V

    invoke-virtual {v3, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 743
    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 709
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 746
    :cond_4
    add-int/lit8 v3, v2, -0x1

    if-lez v2, :cond_6

    .line 747
    :try_start_1
    new-instance v2, Lcom/tencent/android/tpush/service/channel/b/h;

    invoke-virtual {v1}, Lcom/tencent/android/tpush/service/channel/o;->b()I

    move-result v9

    invoke-direct {v2, v9}, Lcom/tencent/android/tpush/service/channel/b/h;-><init>(I)V

    .line 749
    invoke-virtual {v1, v2}, Lcom/tencent/android/tpush/service/channel/o;->a(Lcom/tencent/android/tpush/service/channel/b/h;)V

    .line 750
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 751
    iput-wide v4, v1, Lcom/tencent/android/tpush/service/channel/o;->b:J

    .line 752
    invoke-virtual {v1}, Lcom/tencent/android/tpush/service/channel/o;->a()Z

    move-result v2

    if-nez v2, :cond_5

    .line 754
    invoke-virtual {v1}, Lcom/tencent/android/tpush/service/channel/o;->c()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 756
    :cond_5
    invoke-interface {v7}, Ljava/util/Iterator;->remove()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_6
    move v2, v3

    .line 758
    goto :goto_0

    .line 760
    :cond_7
    monitor-exit p0

    return-object v6
.end method

.method public a(Lcom/qq/taf/jce/JceStruct;Lcom/tencent/android/tpush/service/channel/p;)V
    .locals 3

    .prologue
    .line 357
    if-eqz p1, :cond_0

    .line 361
    :try_start_0
    new-instance v0, Lcom/tencent/android/tpush/service/channel/o;

    invoke-direct {v0, p1, p2}, Lcom/tencent/android/tpush/service/channel/o;-><init>(Lcom/qq/taf/jce/JceStruct;Lcom/tencent/android/tpush/service/channel/p;)V

    .line 363
    const/4 v1, -0x1

    invoke-direct {p0, v1, v0}, Lcom/tencent/android/tpush/service/channel/b;->a(ILcom/tencent/android/tpush/service/channel/o;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 370
    :goto_0
    return-void

    .line 364
    :catch_0
    move-exception v0

    .line 365
    const-string v1, "XGService"

    const-string v2, "sendMessage error "

    invoke-static {v1, v2, v0}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 368
    :cond_0
    const-string v0, "XGService"

    const-string v1, "sendMessage null jceMessage"

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/a/a;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lcom/tencent/android/tpush/service/channel/a/a;)V
    .locals 4

    .prologue
    .line 794
    sget-boolean v0, Lcom/tencent/android/tpush/XGPushConfig;->enableDebug:Z

    if-eqz v0, :cond_0

    .line 795
    const-string v0, "TpnsChannel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Action -> clientDidCancelled "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/a/a;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 797
    :cond_0
    new-instance v0, Lcom/tencent/android/tpush/service/channel/exception/ChannelException;

    const/16 v1, 0x2776

    const-string v2, "TpnsClient is cancelled!"

    invoke-direct {v0, v1, v2}, Lcom/tencent/android/tpush/service/channel/exception/ChannelException;-><init>(ILjava/lang/String;)V

    .line 800
    iget-object v1, p0, Lcom/tencent/android/tpush/service/channel/b;->i:Landroid/os/Handler;

    new-instance v2, Lcom/tencent/android/tpush/service/channel/k;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, v0, v3}, Lcom/tencent/android/tpush/service/channel/k;-><init>(Lcom/tencent/android/tpush/service/channel/b;Lcom/tencent/android/tpush/service/channel/a/a;Lcom/tencent/android/tpush/service/channel/exception/ChannelException;Z)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 801
    return-void
.end method

.method public a(Lcom/tencent/android/tpush/service/channel/a/a;Lcom/tencent/android/tpush/service/channel/b/i;)V
    .locals 3

    .prologue
    .line 818
    sget-boolean v0, Lcom/tencent/android/tpush/XGPushConfig;->enableDebug:Z

    if-eqz v0, :cond_0

    .line 819
    const-string v0, "TpnsChannel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Action -> clientDidSendPacket packet : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/tencent/android/tpush/service/channel/b/i;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 822
    :cond_0
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/b;->k:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 824
    invoke-virtual {p2}, Lcom/tencent/android/tpush/service/channel/b/i;->i()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/android/tpush/service/channel/o;

    .line 825
    if-eqz v0, :cond_1

    .line 826
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/tencent/android/tpush/service/channel/o;->b:J

    .line 832
    :goto_0
    return-void

    .line 828
    :cond_1
    const-string v0, "TpnsChannel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">> message("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/tencent/android/tpush/service/channel/b/i;->i()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") not in the sentQueue!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/a/a;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lcom/tencent/android/tpush/service/channel/a/a;Lcom/tencent/android/tpush/service/channel/exception/ChannelException;)V
    .locals 3

    .prologue
    .line 766
    const-string v0, "TpnsChannel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clientExceptionOccurs(isHttpClient : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    instance-of v2, p1, Lcom/tencent/android/tpush/service/channel/a/c;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/a/a;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 789
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/b;->i:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/android/tpush/service/channel/k;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/tencent/android/tpush/service/channel/k;-><init>(Lcom/tencent/android/tpush/service/channel/b;Lcom/tencent/android/tpush/service/channel/a/a;Lcom/tencent/android/tpush/service/channel/exception/ChannelException;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 790
    return-void
.end method

.method public a(Z)V
    .locals 6

    .prologue
    .line 373
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 375
    sget-wide v2, Lcom/tencent/android/tpush/service/channel/b;->s:J

    sub-long v2, v0, v2

    const-wide/32 v4, 0x1d4c0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    if-eqz p1, :cond_2

    .line 376
    :cond_0
    sput-wide v0, Lcom/tencent/android/tpush/service/channel/b;->s:J

    .line 377
    invoke-static {}, Lcom/tencent/android/tpush/service/p;->a()Lcom/tencent/android/tpush/service/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/android/tpush/service/p;->b()Lcom/tencent/android/tpush/service/channel/o;

    move-result-object v0

    .line 379
    if-eqz v0, :cond_2

    .line 381
    sget-boolean v1, Lcom/tencent/android/tpush/XGPushConfig;->enableDebug:Z

    if-eqz v1, :cond_1

    .line 382
    const-string v1, "TpnsChannel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Action -> sendReconnMessage with token - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/tencent/android/tpush/service/m;->e()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/android/tpush/service/cache/CacheManager;->getToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    :cond_1
    invoke-static {}, Lcom/tencent/android/tpush/service/m;->e()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v1, "0"

    invoke-static {}, Lcom/tencent/android/tpush/service/m;->e()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/android/tpush/service/cache/CacheManager;->getToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 388
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/tencent/android/tpush/service/channel/b;->a(ILcom/tencent/android/tpush/service/channel/o;)V

    .line 392
    invoke-static {}, Lcom/tencent/android/tpush/service/m;->e()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/android/tpush/service/XGWatchdog;->getInstance(Landroid/content/Context;)Lcom/tencent/android/tpush/service/XGWatchdog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/android/tpush/service/XGWatchdog;->sendAllLocalXGAppList()V

    .line 397
    :cond_2
    return-void
.end method

.method public b(Z)I
    .locals 16

    .prologue
    .line 515
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 517
    sget-wide v0, Lcom/tencent/android/tpush/service/channel/b;->r:J

    sub-long v0, v3, v0

    const-wide/32 v5, 0x1d4c0

    cmp-long v0, v0, v5

    if-gtz v0, :cond_0

    if-eqz p1, :cond_c

    .line 519
    :cond_0
    sput-wide v3, Lcom/tencent/android/tpush/service/channel/b;->r:J

    .line 520
    invoke-static {}, Lcom/tencent/android/tpush/service/m;->e()Landroid/content/Context;

    move-result-object v5

    .line 521
    if-eqz v5, :cond_c

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/android/tpush/service/d/f;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 523
    invoke-static {}, Lcom/tencent/android/tpush/service/b/a;->a()Lcom/tencent/android/tpush/service/b/a;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/tencent/android/tpush/service/b/a;->d(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v6

    .line 525
    if-eqz v6, :cond_c

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_c

    .line 527
    sget-boolean v0, Lcom/tencent/android/tpush/XGPushConfig;->enableDebug:Z

    if-eqz v0, :cond_1

    .line 528
    const-string v0, "XGService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Action -> trySendCachedMsgIntent with CachedMsgList size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    :cond_1
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 531
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_a

    .line 532
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/android/tpush/data/CachedMessageIntent;

    .line 534
    :try_start_0
    iget-object v2, v0, Lcom/tencent/android/tpush/data/CachedMessageIntent;->intent:Ljava/lang/String;

    invoke-static {v2}, Lcom/tencent/android/tpush/encrypt/Rijndael;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 535
    invoke-static {v2}, Lcom/tencent/android/tpush/service/d/f;->a(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 536
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 531
    :cond_2
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 539
    :cond_3
    const/4 v8, 0x1

    invoke-static {v2, v8}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v8

    .line 541
    invoke-virtual {v8}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v9

    .line 543
    const-string v2, "multiPkg"

    const-wide/16 v10, 0x0

    invoke-virtual {v8, v2, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    .line 547
    const-string v2, "accId"

    const-wide/16 v10, 0x0

    invoke-virtual {v8, v2, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v10

    .line 549
    invoke-static {}, Lcom/tencent/android/tpush/service/m;->e()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v9, v10, v11}, Lcom/tencent/android/tpush/service/d/f;->d(Landroid/content/Context;Ljava/lang/String;J)Z

    move-result v2

    if-nez v2, :cond_4

    .line 552
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 554
    const-string v0, "TpnsChannel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, " is uninstalled , discard the msg and report to the server"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/android/tpush/a/a;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    invoke-static {}, Lcom/tencent/android/tpush/service/p;->a()Lcom/tencent/android/tpush/service/p;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/tencent/android/tpush/service/p;->a(Ljava/lang/String;)V

    .line 558
    invoke-static {}, Lcom/tencent/android/tpush/service/b/j;->a()Lcom/tencent/android/tpush/service/b/j;

    move-result-object v0

    invoke-static {}, Lcom/tencent/android/tpush/service/m;->e()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2, v9}, Lcom/tencent/android/tpush/service/b/j;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 561
    invoke-static {}, Lcom/tencent/android/tpush/service/b/a;->a()Lcom/tencent/android/tpush/service/b/a;

    move-result-object v0

    invoke-static {}, Lcom/tencent/android/tpush/service/m;->e()Landroid/content/Context;

    move-result-object v2

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v2, v9, v8}, Lcom/tencent/android/tpush/service/b/a;->d(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 619
    :catch_0
    move-exception v0

    .line 620
    const-string v2, "TpnsChannel"

    const-string v8, ""

    invoke-static {v2, v8, v0}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 569
    :cond_4
    :try_start_1
    invoke-static {v9}, Lcom/tencent/android/tpush/service/cache/CacheManager;->getRegisterInfoByPkgName(Ljava/lang/String;)Lcom/tencent/android/tpush/data/a;

    move-result-object v2

    .line 571
    if-eqz v2, :cond_5

    iget v2, v2, Lcom/tencent/android/tpush/data/a;->e:I

    if-gtz v2, :cond_2

    .line 577
    :cond_5
    const-string v2, "msgId"

    const-wide/16 v10, 0x0

    invoke-virtual {v8, v2, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v10

    .line 579
    const-string v2, "server_time"

    const-wide/16 v12, 0x0

    invoke-virtual {v8, v2, v12, v13}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    .line 588
    const-string v2, "expire_time"

    const-wide/16 v12, 0x0

    invoke-virtual {v8, v2, v12, v13}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v12

    .line 590
    const-string v2, "XGService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Action -> trySendCachedMsgIntent msgId = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ",appPkgName="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    const-wide/16 v10, 0x0

    cmp-long v2, v12, v10

    if-lez v2, :cond_6

    .line 594
    cmp-long v2, v3, v12

    if-lez v2, :cond_9

    .line 595
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 596
    const-string v2, "XGService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "currentTime:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " > expire_time:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", remove msg:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/android/tpush/a/a;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 604
    :cond_6
    const-string v0, "ttl"

    const/4 v2, 0x0

    invoke-virtual {v8, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 606
    const v2, 0xf731400

    .line 607
    if-ltz v0, :cond_7

    if-le v0, v2, :cond_8

    :cond_7
    move v0, v2

    .line 610
    :cond_8
    int-to-long v10, v0

    add-long/2addr v10, v3

    .line 611
    const-string v0, "expire_time"

    invoke-virtual {v8, v0, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 615
    :cond_9
    const-string v0, "date"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 617
    invoke-static {}, Lcom/tencent/android/tpush/service/b/a;->a()Lcom/tencent/android/tpush/service/b/a;

    move-result-object v2

    invoke-virtual {v2, v0, v8, v9}, Lcom/tencent/android/tpush/service/b/a;->a(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 623
    :cond_a
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_b

    .line 624
    invoke-static {}, Lcom/tencent/android/tpush/service/b/a;->a()Lcom/tencent/android/tpush/service/b/a;

    move-result-object v0

    invoke-virtual {v0, v5, v7, v6}, Lcom/tencent/android/tpush/service/b/a;->a(Landroid/content/Context;Ljava/util/List;Ljava/util/ArrayList;)V

    .line 627
    :cond_b
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 631
    :goto_2
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public b()V
    .locals 0

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/tencent/android/tpush/service/channel/b;->e()V

    .line 126
    return-void
.end method

.method public b(Lcom/tencent/android/tpush/service/channel/a/a;)V
    .locals 4

    .prologue
    .line 805
    sget-boolean v0, Lcom/tencent/android/tpush/XGPushConfig;->enableDebug:Z

    if-eqz v0, :cond_0

    .line 806
    const-string v0, "TpnsChannel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Action -> clientDidRetired "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/a/a;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 809
    :cond_0
    new-instance v0, Lcom/tencent/android/tpush/service/channel/exception/ChannelException;

    const/16 v1, 0x2779

    const-string v2, "TpnsMessage timeout!"

    invoke-direct {v0, v1, v2}, Lcom/tencent/android/tpush/service/channel/exception/ChannelException;-><init>(ILjava/lang/String;)V

    .line 812
    iget-object v1, p0, Lcom/tencent/android/tpush/service/channel/b;->i:Landroid/os/Handler;

    new-instance v2, Lcom/tencent/android/tpush/service/channel/k;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, v0, v3}, Lcom/tencent/android/tpush/service/channel/k;-><init>(Lcom/tencent/android/tpush/service/channel/b;Lcom/tencent/android/tpush/service/channel/a/a;Lcom/tencent/android/tpush/service/channel/exception/ChannelException;Z)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 813
    return-void
.end method

.method public declared-synchronized b(Lcom/tencent/android/tpush/service/channel/a/a;Lcom/tencent/android/tpush/service/channel/b/i;)V
    .locals 3

    .prologue
    .line 837
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/tencent/android/tpush/service/channel/b;->a()Lcom/tencent/android/tpush/service/channel/b;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/android/tpush/service/channel/b;->b(Z)I

    .line 839
    sget-boolean v0, Lcom/tencent/android/tpush/XGPushConfig;->enableDebug:Z

    if-eqz v0, :cond_0

    .line 840
    const-string v0, "TpnsChannel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Action -> clientDidReceivePacket packet : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/tencent/android/tpush/service/channel/b/i;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 844
    :cond_0
    invoke-virtual {p2}, Lcom/tencent/android/tpush/service/channel/b/i;->j()S

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 880
    const-string v0, "TpnsChannel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Action -> clientDidReceivePacket unkonwn protocol : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/tencent/android/tpush/service/channel/b/i;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/a/a;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 882
    invoke-direct {p0}, Lcom/tencent/android/tpush/service/channel/b;->i()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 884
    :goto_0
    monitor-exit p0

    return-void

    .line 863
    :sswitch_0
    :try_start_1
    invoke-virtual {p2}, Lcom/tencent/android/tpush/service/channel/b/i;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 864
    const-string v0, "TpnsChannel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Action -> clientDidReceivePacket RequestSuccRunnable NEV1 : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/tencent/android/tpush/service/channel/b/i;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 866
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/b;->i:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/android/tpush/service/channel/l;

    invoke-direct {v1, p0, p1, p2}, Lcom/tencent/android/tpush/service/channel/l;-><init>(Lcom/tencent/android/tpush/service/channel/b;Lcom/tencent/android/tpush/service/channel/a/a;Lcom/tencent/android/tpush/service/channel/b/i;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 873
    :goto_1
    invoke-direct {p0}, Lcom/tencent/android/tpush/service/channel/b;->i()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 837
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 869
    :cond_1
    :try_start_2
    const-string v0, "TpnsChannel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Action -> clientDidReceivePacket PushMessageRunnable NEV1 : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/tencent/android/tpush/service/channel/b/i;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 871
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/b;->i:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/android/tpush/service/channel/j;

    invoke-direct {v1, p0, p1, p2}, Lcom/tencent/android/tpush/service/channel/j;-><init>(Lcom/tencent/android/tpush/service/channel/b;Lcom/tencent/android/tpush/service/channel/a/a;Lcom/tencent/android/tpush/service/channel/b/i;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 877
    :sswitch_1
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/b;->i:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/android/tpush/service/channel/i;

    invoke-direct {v1, p0, p1, p2}, Lcom/tencent/android/tpush/service/channel/i;-><init>(Lcom/tencent/android/tpush/service/channel/b;Lcom/tencent/android/tpush/service/channel/a/a;Lcom/tencent/android/tpush/service/channel/b/i;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 844
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0xa -> :sswitch_0
        0x14 -> :sswitch_1
    .end sparse-switch
.end method

.method public c()V
    .locals 1

    .prologue
    .line 129
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/android/tpush/service/channel/b;->n:Z

    .line 130
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/b;->m:Lcom/tencent/android/tpush/service/channel/a/a;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/b;->m:Lcom/tencent/android/tpush/service/channel/a/a;

    invoke-virtual {v0}, Lcom/tencent/android/tpush/service/channel/a/a;->c()V

    .line 132
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/android/tpush/service/channel/b;->m:Lcom/tencent/android/tpush/service/channel/a/a;

    .line 134
    :cond_0
    return-void
.end method

.method public d()V
    .locals 0

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/tencent/android/tpush/service/channel/b;->c()V

    .line 138
    invoke-virtual {p0}, Lcom/tencent/android/tpush/service/channel/b;->e()V

    .line 139
    return-void
.end method

.method public e()V
    .locals 3

    .prologue
    .line 231
    sget-boolean v0, Lcom/tencent/android/tpush/XGPushConfig;->enableDebug:Z

    if-eqz v0, :cond_0

    .line 232
    const-string v0, "TpnsChannel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Action -> checkAndSetupClient( tpnsClient = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/android/tpush/service/channel/b;->m:Lcom/tencent/android/tpush/service/channel/a/a;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isClientCreating = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/tencent/android/tpush/service/channel/b;->n:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    :cond_0
    monitor-enter p0

    .line 235
    :try_start_0
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/b;->m:Lcom/tencent/android/tpush/service/channel/a/a;

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/tencent/android/tpush/service/channel/b;->n:Z

    if-nez v0, :cond_2

    .line 236
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/android/tpush/service/channel/b;->n:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 238
    :try_start_1
    invoke-static {}, Lcom/tencent/android/tpush/horse/g;->a()Lcom/tencent/android/tpush/horse/g;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/android/tpush/service/channel/b;->u:Lcom/tencent/android/tpush/horse/k;

    invoke-virtual {v0, v1}, Lcom/tencent/android/tpush/horse/g;->a(Lcom/tencent/android/tpush/horse/k;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 259
    :cond_1
    :goto_0
    :try_start_2
    monitor-exit p0

    .line 260
    return-void

    .line 240
    :catch_0
    move-exception v0

    .line 241
    const-string v1, "TpnsChannel"

    const-string v2, "createOptimalSocketChannel error"

    invoke-static {v1, v2, v0}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 259
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 246
    :cond_2
    :try_start_3
    iget-boolean v0, p0, Lcom/tencent/android/tpush/service/channel/b;->n:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/b;->m:Lcom/tencent/android/tpush/service/channel/a/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/b;->m:Lcom/tencent/android/tpush/service/channel/a/a;

    invoke-virtual {v0}, Lcom/tencent/android/tpush/service/channel/a/a;->d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 247
    const-string v0, "TpnsChannel"

    const-string v1, "The socket Channel is unconnected"

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/a/a;->h(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 250
    :try_start_4
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/b;->m:Lcom/tencent/android/tpush/service/channel/a/a;

    invoke-virtual {v0}, Lcom/tencent/android/tpush/service/channel/a/a;->c()V

    .line 251
    invoke-static {}, Lcom/tencent/android/tpush/horse/g;->a()Lcom/tencent/android/tpush/horse/g;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/android/tpush/service/channel/b;->u:Lcom/tencent/android/tpush/horse/k;

    invoke-virtual {v0, v1}, Lcom/tencent/android/tpush/horse/g;->a(Lcom/tencent/android/tpush/horse/k;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 253
    :catch_1
    move-exception v0

    .line 254
    :try_start_5
    const-string v1, "XGService"

    const-string v2, "createOptimalSocketChannel error"

    invoke-static {v1, v2, v0}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0
.end method

.method protected declared-synchronized f()Z
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 271
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/tencent/android/tpush/service/m;->e()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/android/tpush/service/d/a;->d(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 272
    invoke-static {}, Lcom/tencent/android/tpush/service/m;->e()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/android/tpush/common/p;->j(Landroid/content/Context;)I

    move-result v3

    .line 273
    invoke-static {}, Lcom/tencent/android/tpush/service/m;->e()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/android/tpush/common/p;->i(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    if-lez v3, :cond_1

    .line 274
    :cond_0
    sget v2, Lcom/tencent/android/tpush/service/channel/b;->g:I

    add-int/lit8 v2, v2, 0x1

    mul-int/lit8 v2, v2, 0x2

    mul-int/lit16 v2, v2, 0x3e8

    .line 275
    sget v4, Lcom/tencent/android/tpush/service/channel/b;->g:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Lcom/tencent/android/tpush/service/channel/b;->g:I

    .line 276
    sget v4, Lcom/tencent/android/tpush/service/channel/b;->g:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-le v4, v5, :cond_2

    .line 292
    :cond_1
    :goto_0
    monitor-exit p0

    return v0

    .line 277
    :cond_2
    :try_start_1
    sget v4, Lcom/tencent/android/tpush/service/channel/b;->d:I

    if-le v2, v4, :cond_3

    sget v2, Lcom/tencent/android/tpush/service/channel/b;->d:I

    .line 278
    :cond_3
    sget v4, Lcom/tencent/android/tpush/service/channel/b;->g:I

    if-le v4, v5, :cond_4

    if-ne v3, v1, :cond_1

    .line 279
    :cond_4
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/b;->v:Landroid/os/Handler;

    const/16 v3, 0x3e8

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_6

    .line 280
    sget-boolean v0, Lcom/tencent/android/tpush/XGPushConfig;->enableDebug:Z

    if-eqz v0, :cond_5

    .line 281
    const-string v0, "TpnsChannel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onDisconnected and retry HANDLER_CHECKANDSETUP "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " retry times = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/tencent/android/tpush/service/channel/b;->g:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    :cond_5
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/b;->v:Landroid/os/Handler;

    const/16 v3, 0x3e8

    int-to-long v4, v2

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_6
    move v0, v1

    .line 288
    goto :goto_0

    .line 271
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
