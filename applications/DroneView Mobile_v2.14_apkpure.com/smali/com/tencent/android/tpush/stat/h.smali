.class public Lcom/tencent/android/tpush/stat/h;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field static volatile a:J

.field private static volatile b:Landroid/os/Handler;

.field private static volatile c:I

.field private static d:Lcom/tencent/android/tpush/stat/a/f;

.field private static e:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private static f:Landroid/content/Context;

.field private static g:Ljava/lang/String;

.field private static volatile h:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 51
    sput-object v2, Lcom/tencent/android/tpush/stat/h;->b:Landroid/os/Handler;

    .line 56
    const/4 v0, 0x0

    sput v0, Lcom/tencent/android/tpush/stat/h;->c:I

    .line 61
    invoke-static {}, Lcom/tencent/android/tpush/stat/a/e;->b()Lcom/tencent/android/tpush/stat/a/f;

    move-result-object v0

    sput-object v0, Lcom/tencent/android/tpush/stat/h;->d:Lcom/tencent/android/tpush/stat/a/f;

    .line 65
    sput-object v2, Lcom/tencent/android/tpush/stat/h;->e:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 67
    sput-object v2, Lcom/tencent/android/tpush/stat/h;->f:Landroid/content/Context;

    .line 293
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/tencent/android/tpush/stat/h;->a:J

    .line 581
    sput-object v2, Lcom/tencent/android/tpush/stat/h;->g:Ljava/lang/String;

    .line 668
    sput-object v2, Lcom/tencent/android/tpush/stat/h;->h:Landroid/content/SharedPreferences;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/content/Context;
    .locals 0

    .prologue
    .line 70
    if-eqz p0, :cond_0

    .line 73
    :goto_0
    return-object p0

    :cond_0
    sget-object p0, Lcom/tencent/android/tpush/stat/h;->f:Landroid/content/Context;

    goto :goto_0
.end method

.method static synthetic a(Landroid/content/SharedPreferences;)Landroid/content/SharedPreferences;
    .locals 0

    .prologue
    .line 47
    sput-object p0, Lcom/tencent/android/tpush/stat/h;->h:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method static synthetic a(Ljava/lang/Thread$UncaughtExceptionHandler;)Ljava/lang/Thread$UncaughtExceptionHandler;
    .locals 0

    .prologue
    .line 47
    sput-object p0, Lcom/tencent/android/tpush/stat/h;->e:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-object p0
.end method

.method static a()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 262
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 264
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 265
    sget-object v2, Lcom/tencent/android/tpush/stat/c;->b:Lcom/tencent/android/tpush/stat/d;

    iget v2, v2, Lcom/tencent/android/tpush/stat/d;->d:I

    if-eqz v2, :cond_0

    .line 266
    const-string v2, "v"

    sget-object v3, Lcom/tencent/android/tpush/stat/c;->b:Lcom/tencent/android/tpush/stat/d;

    iget v3, v3, Lcom/tencent/android/tpush/stat/d;->d:I

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 268
    :cond_0
    sget-object v2, Lcom/tencent/android/tpush/stat/c;->b:Lcom/tencent/android/tpush/stat/d;

    iget v2, v2, Lcom/tencent/android/tpush/stat/d;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 270
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 271
    sget-object v2, Lcom/tencent/android/tpush/stat/c;->a:Lcom/tencent/android/tpush/stat/d;

    iget v2, v2, Lcom/tencent/android/tpush/stat/d;->d:I

    if-eqz v2, :cond_1

    .line 272
    const-string v2, "v"

    sget-object v3, Lcom/tencent/android/tpush/stat/c;->a:Lcom/tencent/android/tpush/stat/d;

    iget v3, v3, Lcom/tencent/android/tpush/stat/d;->d:I

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 274
    :cond_1
    sget-object v2, Lcom/tencent/android/tpush/stat/c;->a:Lcom/tencent/android/tpush/stat/d;

    iget v2, v2, Lcom/tencent/android/tpush/stat/d;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    :goto_0
    return-object v1

    .line 276
    :catch_0
    move-exception v0

    .line 277
    sget-object v2, Lcom/tencent/android/tpush/stat/h;->d:Lcom/tencent/android/tpush/stat/a/f;

    invoke-virtual {v2, v0}, Lcom/tencent/android/tpush/stat/a/f;->b(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;I)V
    .locals 3

    .prologue
    .line 596
    invoke-static {}, Lcom/tencent/android/tpush/stat/c;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 627
    :cond_0
    :goto_0
    return-void

    .line 599
    :cond_1
    invoke-static {}, Lcom/tencent/android/tpush/stat/c;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 600
    sget-object v0, Lcom/tencent/android/tpush/stat/h;->d:Lcom/tencent/android/tpush/stat/a/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "commitEvents, maxNumber="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/android/tpush/stat/a/f;->b(Ljava/lang/Object;)V

    .line 602
    :cond_2
    invoke-static {p0}, Lcom/tencent/android/tpush/stat/h;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    .line 603
    if-nez v0, :cond_3

    .line 604
    sget-object v0, Lcom/tencent/android/tpush/stat/h;->d:Lcom/tencent/android/tpush/stat/a/f;

    const-string v1, "The Context of StatService.commitEvents() can not be null!"

    invoke-virtual {v0, v1}, Lcom/tencent/android/tpush/stat/a/f;->e(Ljava/lang/Object;)V

    goto :goto_0

    .line 607
    :cond_3
    const/4 v1, -0x1

    if-lt p1, v1, :cond_4

    if-nez p1, :cond_5

    .line 608
    :cond_4
    sget-object v0, Lcom/tencent/android/tpush/stat/h;->d:Lcom/tencent/android/tpush/stat/a/f;

    const-string v1, "The maxNumber of StatService.commitEvents() should be -1 or bigger than 0."

    invoke-virtual {v0, v1}, Lcom/tencent/android/tpush/stat/a/f;->e(Ljava/lang/Object;)V

    goto :goto_0

    .line 611
    :cond_5
    invoke-static {v0}, Lcom/tencent/android/tpush/stat/a;->a(Landroid/content/Context;)Lcom/tencent/android/tpush/stat/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/android/tpush/stat/a;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 614
    invoke-static {v0}, Lcom/tencent/android/tpush/stat/h;->e(Landroid/content/Context;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 615
    sget-object v0, Lcom/tencent/android/tpush/stat/h;->b:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/android/tpush/stat/p;

    invoke-direct {v1}, Lcom/tencent/android/tpush/stat/p;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method static a(Landroid/content/Context;J)V
    .locals 6

    .prologue
    .line 288
    new-instance v0, Lcom/tencent/android/tpush/stat/event/e;

    sget v2, Lcom/tencent/android/tpush/stat/h;->c:I

    invoke-static {}, Lcom/tencent/android/tpush/stat/h;->a()Lorg/json/JSONObject;

    move-result-object v3

    move-object v1, p0

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/tencent/android/tpush/stat/event/e;-><init>(Landroid/content/Context;ILorg/json/JSONObject;J)V

    .line 290
    invoke-static {v0}, Lcom/tencent/android/tpush/stat/h;->a(Lcom/tencent/android/tpush/stat/event/d;)V

    .line 291
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Properties;JJ)V
    .locals 8

    .prologue
    .line 356
    invoke-static {}, Lcom/tencent/android/tpush/stat/c;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 389
    :cond_0
    :goto_0
    return-void

    .line 359
    :cond_1
    invoke-static {p0}, Lcom/tencent/android/tpush/stat/h;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    .line 360
    if-nez v1, :cond_2

    .line 361
    sget-object v0, Lcom/tencent/android/tpush/stat/h;->d:Lcom/tencent/android/tpush/stat/a/f;

    const-string v1, "The Context of StatService.trackCustomEvent() can not be null!"

    invoke-virtual {v0, v1}, Lcom/tencent/android/tpush/stat/a/f;->e(Ljava/lang/Object;)V

    goto :goto_0

    .line 364
    :cond_2
    invoke-static {p1}, Lcom/tencent/android/tpush/stat/h;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 365
    sget-object v0, Lcom/tencent/android/tpush/stat/h;->d:Lcom/tencent/android/tpush/stat/a/f;

    const-string v1, "The event_id of StatService.trackCustomEvent() can not be null or empty."

    invoke-virtual {v0, v1}, Lcom/tencent/android/tpush/stat/a/f;->e(Ljava/lang/Object;)V

    goto :goto_0

    .line 368
    :cond_3
    new-instance v4, Lcom/tencent/android/tpush/stat/event/b;

    const/4 v0, 0x0

    invoke-direct {v4, p1, v0, p2}, Lcom/tencent/android/tpush/stat/event/b;-><init>(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Properties;)V

    .line 369
    invoke-static {v1}, Lcom/tencent/android/tpush/stat/h;->e(Landroid/content/Context;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 370
    sget-object v7, Lcom/tencent/android/tpush/stat/h;->b:Landroid/os/Handler;

    new-instance v0, Lcom/tencent/android/tpush/stat/l;

    move-wide v2, p3

    move-wide v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/tencent/android/tpush/stat/l;-><init>(Landroid/content/Context;JLcom/tencent/android/tpush/stat/event/b;J)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 3

    .prologue
    .line 393
    invoke-static {}, Lcom/tencent/android/tpush/stat/c;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 432
    :cond_0
    :goto_0
    return-void

    .line 396
    :cond_1
    invoke-static {p0}, Lcom/tencent/android/tpush/stat/h;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    .line 397
    if-nez v0, :cond_2

    .line 398
    sget-object v0, Lcom/tencent/android/tpush/stat/h;->d:Lcom/tencent/android/tpush/stat/a/f;

    const-string v1, "The Context of StatService.trackCustomEvent() can not be null!"

    invoke-virtual {v0, v1}, Lcom/tencent/android/tpush/stat/a/f;->e(Ljava/lang/Object;)V

    goto :goto_0

    .line 401
    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_4

    .line 402
    :cond_3
    sget-object v0, Lcom/tencent/android/tpush/stat/h;->d:Lcom/tencent/android/tpush/stat/a/f;

    const-string v1, "The reportList of StatService.trackCustomEvent() can not be null or empty."

    invoke-virtual {v0, v1}, Lcom/tencent/android/tpush/stat/a/f;->e(Ljava/lang/Object;)V

    goto :goto_0

    .line 405
    :cond_4
    invoke-static {v0}, Lcom/tencent/android/tpush/stat/h;->e(Landroid/content/Context;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 406
    sget-object v1, Lcom/tencent/android/tpush/stat/h;->b:Landroid/os/Handler;

    new-instance v2, Lcom/tencent/android/tpush/stat/m;

    invoke-direct {v2, p1, v0}, Lcom/tencent/android/tpush/stat/m;-><init>(Ljava/util/ArrayList;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method static a(Lcom/tencent/android/tpush/stat/event/d;)V
    .locals 3

    .prologue
    .line 650
    sget-object v0, Lcom/tencent/android/tpush/stat/h;->d:Lcom/tencent/android/tpush/stat/a/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "send Event:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/android/tpush/stat/a/f;->h(Ljava/lang/Object;)V

    .line 651
    sget-object v0, Lcom/tencent/android/tpush/stat/h;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/android/tpush/stat/a;->a(Landroid/content/Context;)Lcom/tencent/android/tpush/stat/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/android/tpush/stat/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 652
    sget-object v0, Lcom/tencent/android/tpush/stat/h;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/android/tpush/stat/f;->b(Landroid/content/Context;)Lcom/tencent/android/tpush/stat/f;

    move-result-object v0

    new-instance v1, Lcom/tencent/android/tpush/stat/j;

    invoke-direct {v1, p0}, Lcom/tencent/android/tpush/stat/j;-><init>(Lcom/tencent/android/tpush/stat/event/d;)V

    invoke-virtual {v0, p0, v1}, Lcom/tencent/android/tpush/stat/f;->a(Lcom/tencent/android/tpush/stat/event/d;Lcom/tencent/android/tpush/stat/e;)V

    .line 666
    :goto_0
    return-void

    .line 664
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/tencent/android/tpush/stat/event/d;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/android/tpush/stat/h;->b(Ljava/util/List;)V

    goto :goto_0
.end method

.method static a(Ljava/util/List;)V
    .locals 3

    .prologue
    .line 630
    sget-object v0, Lcom/tencent/android/tpush/stat/h;->d:Lcom/tencent/android/tpush/stat/a/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sentEventList size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/android/tpush/stat/a/f;->h(Ljava/lang/Object;)V

    .line 631
    sget-object v0, Lcom/tencent/android/tpush/stat/h;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/android/tpush/stat/a;->a(Landroid/content/Context;)Lcom/tencent/android/tpush/stat/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/android/tpush/stat/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 632
    sget-object v0, Lcom/tencent/android/tpush/stat/h;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/android/tpush/stat/f;->b(Landroid/content/Context;)Lcom/tencent/android/tpush/stat/f;

    move-result-object v0

    new-instance v1, Lcom/tencent/android/tpush/stat/q;

    invoke-direct {v1, p0}, Lcom/tencent/android/tpush/stat/q;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, p0, v1}, Lcom/tencent/android/tpush/stat/f;->b(Ljava/util/List;Lcom/tencent/android/tpush/stat/e;)V

    .line 647
    :goto_0
    return-void

    .line 645
    :cond_0
    invoke-static {p0}, Lcom/tencent/android/tpush/stat/h;->b(Ljava/util/List;)V

    goto :goto_0
.end method

.method static a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 146
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 147
    :cond_0
    const/4 v0, 0x1

    .line 149
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static b(Landroid/content/Context;J)I
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v0, 0x1

    .line 304
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 306
    sget-wide v4, Lcom/tencent/android/tpush/stat/h;->a:J

    cmp-long v1, v4, v6

    if-nez v1, :cond_0

    .line 307
    sget-object v1, Lcom/tencent/android/tpush/stat/h;->f:Landroid/content/Context;

    const-string v4, "_INTER_MTA_NEXT_DAY"

    invoke-static {v1, v4, v6, v7}, Lcom/tencent/android/tpush/stat/a/g;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v4

    sput-wide v4, Lcom/tencent/android/tpush/stat/h;->a:J

    .line 312
    :cond_0
    const/4 v1, 0x0

    .line 314
    sget v4, Lcom/tencent/android/tpush/stat/h;->c:I

    if-nez v4, :cond_3

    .line 320
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 321
    invoke-static {}, Lcom/tencent/android/tpush/stat/a/e;->a()I

    move-result v0

    sput v0, Lcom/tencent/android/tpush/stat/h;->c:I

    .line 322
    invoke-static {}, Lcom/tencent/android/tpush/stat/a/e;->c()J

    move-result-wide v0

    sput-wide v0, Lcom/tencent/android/tpush/stat/h;->a:J

    .line 324
    sget-object v0, Lcom/tencent/android/tpush/stat/h;->f:Landroid/content/Context;

    const-string v1, "_INTER_MTA_NEXT_DAY"

    sget-wide v2, Lcom/tencent/android/tpush/stat/h;->a:J

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/android/tpush/stat/a/g;->b(Landroid/content/Context;Ljava/lang/String;J)V

    .line 326
    invoke-static {p0, p1, p2}, Lcom/tencent/android/tpush/stat/h;->a(Landroid/content/Context;J)V

    .line 328
    :cond_2
    sget v0, Lcom/tencent/android/tpush/stat/h;->c:I

    return v0

    .line 316
    :cond_3
    sget-wide v4, Lcom/tencent/android/tpush/stat/h;->a:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    move v0, v1

    goto :goto_0
.end method

.method static b()V
    .locals 5

    .prologue
    const/16 v4, 0xa

    .line 721
    sget-object v0, Lcom/tencent/android/tpush/stat/h;->h:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_1

    .line 722
    sget-object v0, Lcom/tencent/android/tpush/stat/h;->h:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 724
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 725
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 726
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 727
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v4, :cond_0

    .line 728
    sget-object v0, Lcom/tencent/android/tpush/stat/h;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/android/tpush/stat/f;->b(Landroid/content/Context;)Lcom/tencent/android/tpush/stat/f;

    move-result-object v0

    new-instance v3, Lcom/tencent/android/tpush/stat/k;

    invoke-direct {v3, v1}, Lcom/tencent/android/tpush/stat/k;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v1, v3}, Lcom/tencent/android/tpush/stat/f;->b(Ljava/util/List;Lcom/tencent/android/tpush/stat/e;)V

    .line 742
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->clear()V

    goto :goto_0

    .line 746
    :cond_1
    return-void
.end method

.method public static b(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 77
    if-eqz p0, :cond_0

    .line 78
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/tencent/android/tpush/stat/h;->f:Landroid/content/Context;

    .line 80
    :cond_0
    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 3

    .prologue
    .line 436
    invoke-static {}, Lcom/tencent/android/tpush/stat/c;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 480
    :cond_0
    :goto_0
    return-void

    .line 439
    :cond_1
    invoke-static {p0}, Lcom/tencent/android/tpush/stat/h;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    .line 440
    if-nez v0, :cond_2

    .line 441
    sget-object v0, Lcom/tencent/android/tpush/stat/h;->d:Lcom/tencent/android/tpush/stat/a/f;

    const-string v1, "The Context of StatService.trackCustomEvent() can not be null!"

    invoke-virtual {v0, v1}, Lcom/tencent/android/tpush/stat/a/f;->e(Ljava/lang/Object;)V

    goto :goto_0

    .line 444
    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_4

    .line 445
    :cond_3
    sget-object v0, Lcom/tencent/android/tpush/stat/h;->d:Lcom/tencent/android/tpush/stat/a/f;

    const-string v1, "The reportList of StatService.trackCustomEvent() can not be null or empty."

    invoke-virtual {v0, v1}, Lcom/tencent/android/tpush/stat/a/f;->e(Ljava/lang/Object;)V

    goto :goto_0

    .line 448
    :cond_4
    invoke-static {v0}, Lcom/tencent/android/tpush/stat/h;->e(Landroid/content/Context;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 449
    sget-object v1, Lcom/tencent/android/tpush/stat/h;->b:Landroid/os/Handler;

    new-instance v2, Lcom/tencent/android/tpush/stat/n;

    invoke-direct {v2, p1, v0}, Lcom/tencent/android/tpush/stat/n;-><init>(Ljava/util/ArrayList;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method static declared-synchronized b(Ljava/util/List;)V
    .locals 6

    .prologue
    .line 672
    const-class v1, Lcom/tencent/android/tpush/stat/h;

    monitor-enter v1

    if-eqz p0, :cond_0

    :try_start_0
    sget-object v0, Lcom/tencent/android/tpush/stat/h;->h:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 673
    sget-object v0, Lcom/tencent/android/tpush/stat/h;->d:Lcom/tencent/android/tpush/stat/a/f;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "store event size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/android/tpush/stat/a/f;->h(Ljava/lang/Object;)V

    .line 674
    sget-object v0, Lcom/tencent/android/tpush/stat/h;->h:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 675
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 676
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {v0, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 680
    :catch_0
    move-exception v0

    .line 681
    :try_start_1
    sget-object v2, Lcom/tencent/android/tpush/stat/h;->d:Lcom/tencent/android/tpush/stat/a/f;

    invoke-virtual {v2, v0}, Lcom/tencent/android/tpush/stat/a/f;->b(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 683
    :cond_0
    :goto_1
    monitor-exit v1

    return-void

    .line 678
    :cond_1
    :try_start_2
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 672
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic c()Landroid/content/Context;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/tencent/android/tpush/stat/h;->f:Landroid/content/Context;

    return-object v0
.end method

.method public static c(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 3

    .prologue
    .line 484
    invoke-static {}, Lcom/tencent/android/tpush/stat/c;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 532
    :cond_0
    :goto_0
    return-void

    .line 487
    :cond_1
    invoke-static {p0}, Lcom/tencent/android/tpush/stat/h;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    .line 488
    if-nez v0, :cond_2

    .line 489
    sget-object v0, Lcom/tencent/android/tpush/stat/h;->d:Lcom/tencent/android/tpush/stat/a/f;

    const-string v1, "The Context of StatService.trackCustomEvent() can not be null!"

    invoke-virtual {v0, v1}, Lcom/tencent/android/tpush/stat/a/f;->e(Ljava/lang/Object;)V

    goto :goto_0

    .line 492
    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_4

    .line 493
    :cond_3
    sget-object v0, Lcom/tencent/android/tpush/stat/h;->d:Lcom/tencent/android/tpush/stat/a/f;

    const-string v1, "The reportList of StatService.trackCustomEvent() can not be null or empty."

    invoke-virtual {v0, v1}, Lcom/tencent/android/tpush/stat/a/f;->e(Ljava/lang/Object;)V

    goto :goto_0

    .line 496
    :cond_4
    invoke-static {v0}, Lcom/tencent/android/tpush/stat/h;->e(Landroid/content/Context;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 497
    sget-object v1, Lcom/tencent/android/tpush/stat/h;->b:Landroid/os/Handler;

    new-instance v2, Lcom/tencent/android/tpush/stat/o;

    invoke-direct {v2, p1, v0}, Lcom/tencent/android/tpush/stat/o;-><init>(Ljava/util/ArrayList;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method static declared-synchronized c(Ljava/util/List;)V
    .locals 4

    .prologue
    .line 687
    const-class v1, Lcom/tencent/android/tpush/stat/h;

    monitor-enter v1

    if-eqz p0, :cond_0

    :try_start_0
    sget-object v0, Lcom/tencent/android/tpush/stat/h;->h:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 688
    sget-object v0, Lcom/tencent/android/tpush/stat/h;->d:Lcom/tencent/android/tpush/stat/a/f;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "delete event size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/android/tpush/stat/a/f;->h(Ljava/lang/Object;)V

    .line 689
    sget-object v0, Lcom/tencent/android/tpush/stat/h;->h:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 690
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 691
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 695
    :catch_0
    move-exception v0

    .line 696
    :try_start_1
    sget-object v2, Lcom/tencent/android/tpush/stat/h;->d:Lcom/tencent/android/tpush/stat/a/f;

    invoke-virtual {v2, v0}, Lcom/tencent/android/tpush/stat/a/f;->b(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 698
    :cond_0
    :goto_1
    monitor-exit v1

    return-void

    .line 693
    :cond_1
    :try_start_2
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 687
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static c(Landroid/content/Context;)Z
    .locals 7

    .prologue
    .line 125
    sget-object v0, Lcom/tencent/android/tpush/stat/c;->c:Ljava/lang/String;

    const-wide/16 v1, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/tencent/android/tpush/stat/a/g;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v1

    .line 127
    const-string v0, "2.0.6"

    invoke-static {v0}, Lcom/tencent/android/tpush/stat/a/e;->a(Ljava/lang/String;)J

    move-result-wide v3

    .line 129
    const/4 v0, 0x1

    .line 130
    cmp-long v5, v3, v1

    if-gtz v5, :cond_0

    .line 131
    sget-object v0, Lcom/tencent/android/tpush/stat/h;->d:Lcom/tencent/android/tpush/stat/a/f;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MTA is disable for current version:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",wakeup version:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/android/tpush/stat/a/f;->e(Ljava/lang/Object;)V

    .line 133
    const/4 v0, 0x0

    .line 135
    :cond_0
    invoke-static {v0}, Lcom/tencent/android/tpush/stat/c;->a(Z)V

    .line 136
    return v0
.end method

.method static synthetic d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/tencent/android/tpush/stat/h;->g:Ljava/lang/String;

    return-object v0
.end method

.method static declared-synchronized d(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 158
    const-class v1, Lcom/tencent/android/tpush/stat/h;

    monitor-enter v1

    if-nez p0, :cond_1

    .line 233
    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    .line 162
    :cond_1
    :try_start_0
    sget-object v0, Lcom/tencent/android/tpush/stat/h;->b:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 164
    invoke-static {p0}, Lcom/tencent/android/tpush/stat/h;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 168
    sput-object v0, Lcom/tencent/android/tpush/stat/h;->f:Landroid/content/Context;

    .line 189
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "XgStat"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 190
    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 191
    new-instance v3, Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v3, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v3, Lcom/tencent/android/tpush/stat/h;->b:Landroid/os/Handler;

    .line 192
    sget-object v2, Lcom/tencent/android/tpush/stat/h;->b:Landroid/os/Handler;

    new-instance v3, Lcom/tencent/android/tpush/stat/i;

    invoke-direct {v3, v0}, Lcom/tencent/android/tpush/stat/i;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 158
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static declared-synchronized d(Ljava/util/List;)V
    .locals 6

    .prologue
    .line 702
    const-class v1, Lcom/tencent/android/tpush/stat/h;

    monitor-enter v1

    if-eqz p0, :cond_0

    :try_start_0
    sget-object v0, Lcom/tencent/android/tpush/stat/h;->h:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 703
    sget-object v0, Lcom/tencent/android/tpush/stat/h;->h:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 704
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 705
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 706
    sget-object v4, Lcom/tencent/android/tpush/stat/h;->h:Landroid/content/SharedPreferences;

    const/4 v5, 0x1

    invoke-interface {v4, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 707
    if-lez v4, :cond_1

    invoke-static {}, Lcom/tencent/android/tpush/stat/c;->f()S

    move-result v5

    if-gt v4, v5, :cond_1

    .line 708
    add-int/lit8 v4, v4, 0x1

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 715
    :catch_0
    move-exception v0

    .line 716
    :try_start_1
    sget-object v2, Lcom/tencent/android/tpush/stat/h;->d:Lcom/tencent/android/tpush/stat/a/f;

    invoke-virtual {v2, v0}, Lcom/tencent/android/tpush/stat/a/f;->b(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 718
    :cond_0
    :goto_1
    monitor-exit v1

    return-void

    .line 710
    :cond_1
    :try_start_2
    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 702
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 713
    :cond_2
    :try_start_3
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public static e(Landroid/content/Context;)Landroid/os/Handler;
    .locals 3

    .prologue
    .line 242
    sget-object v0, Lcom/tencent/android/tpush/stat/h;->b:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 243
    const-class v1, Lcom/tencent/android/tpush/stat/h;

    monitor-enter v1

    .line 244
    :try_start_0
    sget-object v0, Lcom/tencent/android/tpush/stat/h;->b:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 246
    :try_start_1
    invoke-static {p0}, Lcom/tencent/android/tpush/stat/h;->d(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 252
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 254
    :cond_1
    sget-object v0, Lcom/tencent/android/tpush/stat/h;->b:Landroid/os/Handler;

    return-object v0

    .line 247
    :catch_0
    move-exception v0

    .line 248
    :try_start_3
    sget-object v2, Lcom/tencent/android/tpush/stat/h;->d:Lcom/tencent/android/tpush/stat/a/f;

    invoke-virtual {v2, v0}, Lcom/tencent/android/tpush/stat/a/f;->a(Ljava/lang/Throwable;)V

    .line 249
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/tencent/android/tpush/stat/c;->a(Z)V

    goto :goto_0

    .line 252
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method static synthetic e()Lcom/tencent/android/tpush/stat/a/f;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/tencent/android/tpush/stat/h;->d:Lcom/tencent/android/tpush/stat/a/f;

    return-object v0
.end method

.method static synthetic f()Ljava/lang/Thread$UncaughtExceptionHandler;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/tencent/android/tpush/stat/h;->e:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-object v0
.end method
