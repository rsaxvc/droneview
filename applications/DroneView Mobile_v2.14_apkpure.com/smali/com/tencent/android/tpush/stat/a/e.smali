.class public Lcom/tencent/android/tpush/stat/a/e;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;

.field private static d:Ljava/util/Random;

.field private static e:Ljava/util/Map;

.field private static f:Landroid/util/DisplayMetrics;

.field private static g:Ljava/lang/String;

.field private static h:Ljava/lang/String;

.field private static i:Lcom/tencent/android/tpush/stat/a/f;

.field private static j:Ljava/lang/String;

.field private static k:Ljava/lang/String;

.field private static l:Ljava/lang/String;

.field private static m:J

.field private static n:J

.field private static o:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const-wide/16 v3, -0x1

    const/4 v2, 0x0

    .line 50
    sput-object v2, Lcom/tencent/android/tpush/stat/a/e;->a:Ljava/lang/String;

    .line 51
    sput-object v2, Lcom/tencent/android/tpush/stat/a/e;->b:Ljava/lang/String;

    .line 52
    sput-object v2, Lcom/tencent/android/tpush/stat/a/e;->c:Ljava/lang/String;

    .line 54
    sput-object v2, Lcom/tencent/android/tpush/stat/a/e;->d:Ljava/util/Random;

    .line 66
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/tencent/android/tpush/stat/a/e;->e:Ljava/util/Map;

    .line 244
    sput-object v2, Lcom/tencent/android/tpush/stat/a/e;->f:Landroid/util/DisplayMetrics;

    .line 297
    sput-object v2, Lcom/tencent/android/tpush/stat/a/e;->g:Ljava/lang/String;

    .line 409
    const-string v0, ""

    sput-object v0, Lcom/tencent/android/tpush/stat/a/e;->h:Ljava/lang/String;

    .line 448
    sput-object v2, Lcom/tencent/android/tpush/stat/a/e;->i:Lcom/tencent/android/tpush/stat/a/f;

    .line 552
    sput-object v2, Lcom/tencent/android/tpush/stat/a/e;->j:Ljava/lang/String;

    .line 592
    sput-object v2, Lcom/tencent/android/tpush/stat/a/e;->k:Ljava/lang/String;

    .line 651
    sput-object v2, Lcom/tencent/android/tpush/stat/a/e;->l:Ljava/lang/String;

    .line 737
    sput-wide v3, Lcom/tencent/android/tpush/stat/a/e;->m:J

    .line 767
    sput-wide v3, Lcom/tencent/android/tpush/stat/a/e;->n:J

    .line 784
    const/4 v0, 0x0

    sput v0, Lcom/tencent/android/tpush/stat/a/e;->o:I

    return-void
.end method

.method public static a()I
    .locals 2

    .prologue
    .line 117
    invoke-static {}, Lcom/tencent/android/tpush/stat/a/e;->f()Ljava/util/Random;

    move-result-object v0

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    return v0
.end method

.method public static a(Landroid/content/Context;Z)I
    .locals 1

    .prologue
    .line 787
    if-eqz p1, :cond_0

    .line 788
    invoke-static {p0}, Lcom/tencent/android/tpush/stat/a/e;->l(Landroid/content/Context;)I

    move-result v0

    sput v0, Lcom/tencent/android/tpush/stat/a/e;->o:I

    .line 790
    :cond_0
    sget v0, Lcom/tencent/android/tpush/stat/a/e;->o:I

    return v0
.end method

.method public static a(Ljava/lang/String;)J
    .locals 5

    .prologue
    .line 542
    const-string v0, "."

    const/16 v1, 0x64

    const/4 v2, 0x3

    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {p0, v0, v1, v2, v3}, Lcom/tencent/android/tpush/stat/a/e;->a(Ljava/lang/String;Ljava/lang/String;IILjava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;IILjava/lang/Long;)Ljava/lang/Long;
    .locals 11

    .prologue
    .line 514
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 532
    :cond_0
    :goto_0
    return-object p4

    .line 517
    :cond_1
    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "|"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 518
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\\"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 520
    :cond_3
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 521
    array-length v0, v3

    if-ne v0, p3, :cond_0

    .line 523
    const-wide/16 v0, 0x0

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 524
    const/4 v0, 0x0

    move v10, v0

    move-object v0, v1

    move v1, v10

    :goto_1
    array-length v2, v3

    if-ge v1, v2, :cond_4

    .line 525
    int-to-long v4, p2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    aget-object v0, v3, v1

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    add-long/2addr v6, v8

    mul-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 524
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v0, v2

    goto :goto_1

    :cond_4
    move-object p4, v0

    .line 527
    goto :goto_0

    .line 528
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;J)Ljava/lang/String;
    .locals 5

    .prologue
    .line 71
    :try_start_0
    sget-object v0, Lcom/tencent/android/tpush/stat/a/e;->e:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    sget-object v0, Lcom/tencent/android/tpush/stat/a/e;->e:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 102
    :goto_0
    return-object v0

    .line 74
    :cond_0
    if-eqz p0, :cond_2

    .line 75
    invoke-static {p0}, Lcom/tencent/android/tpush/service/d/f;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 78
    if-eqz v0, :cond_2

    .line 79
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 80
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 81
    if-eqz v0, :cond_1

    .line 82
    invoke-static {v0}, Lcom/tencent/android/tpush/service/cache/CacheManager;->getRegisterInfoByPkgName(Ljava/lang/String;)Lcom/tencent/android/tpush/data/a;

    move-result-object v2

    .line 84
    if-eqz v2, :cond_1

    .line 85
    invoke-static {p0, v0}, Lcom/tencent/android/tpush/service/a/c;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/android/tpush/service/a/d;

    move-result-object v0

    .line 88
    iget-wide v3, v2, Lcom/tencent/android/tpush/data/a;->a:J

    cmp-long v3, v3, p1

    if-nez v3, :cond_1

    .line 89
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, v0, Lcom/tencent/android/tpush/service/a/d;->a:F

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 90
    sget-object v1, Lcom/tencent/android/tpush/stat/a/e;->e:Ljava/util/Map;

    iget-wide v2, v2, Lcom/tencent/android/tpush/data/a;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 99
    :catch_0
    move-exception v0

    .line 102
    :cond_2
    const-string v0, "0"

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 630
    invoke-static {}, Lcom/tencent/android/tpush/stat/c;->e()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 631
    sget-object v0, Lcom/tencent/android/tpush/stat/a/e;->k:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 632
    invoke-static {p0}, Lcom/tencent/android/tpush/stat/a/e;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/android/tpush/stat/a/e;->k:Ljava/lang/String;

    .line 634
    :cond_0
    sget-object v0, Lcom/tencent/android/tpush/stat/a/e;->k:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 635
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/tencent/android/tpush/stat/a/e;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 638
    :cond_1
    return-object p1
.end method

.method public static a(Landroid/content/Context;)Lorg/apache/http/HttpHost;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 177
    if-nez p0, :cond_0

    move-object v0, v1

    .line 211
    :goto_0
    return-object v0

    .line 181
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 182
    const-string v2, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v1

    .line 184
    goto :goto_0

    .line 185
    :cond_1
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 187
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 188
    if-nez v0, :cond_2

    move-object v0, v1

    .line 189
    goto :goto_0

    .line 190
    :cond_2
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WIFI"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v0, v1

    .line 192
    goto :goto_0

    .line 193
    :cond_3
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    .line 194
    if-nez v0, :cond_4

    move-object v0, v1

    .line 195
    goto :goto_0

    .line 196
    :cond_4
    const-string v2, "cmwap"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "3gwap"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "uniwap"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 198
    :cond_5
    new-instance v0, Lorg/apache/http/HttpHost;

    const-string v2, "10.0.0.172"

    const/16 v3, 0x50

    invoke-direct {v0, v2, v3}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 208
    :catch_0
    move-exception v0

    .line 209
    sget-object v2, Lcom/tencent/android/tpush/stat/a/e;->i:Lcom/tencent/android/tpush/stat/a/f;

    invoke-virtual {v2, v0}, Lcom/tencent/android/tpush/stat/a/f;->b(Ljava/lang/Throwable;)V

    :cond_6
    move-object v0, v1

    .line 211
    goto :goto_0

    .line 199
    :cond_7
    :try_start_1
    const-string v2, "ctwap"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 200
    new-instance v0, Lorg/apache/http/HttpHost;

    const-string v2, "10.0.0.200"

    const/16 v3, 0x50

    invoke-direct {v0, v2, v3}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    goto :goto_0

    .line 202
    :cond_8
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v2

    .line 203
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_6

    .line 204
    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v3

    .line 205
    new-instance v0, Lorg/apache/http/HttpHost;

    invoke-direct {v0, v2, v3}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public static a(Landroid/content/Context;I)V
    .locals 1

    .prologue
    .line 798
    sput p1, Lcom/tencent/android/tpush/stat/a/e;->o:I

    .line 799
    const-string v0, "mta.qq.com.difftime"

    invoke-static {p0, v0, p1}, Lcom/tencent/android/tpush/stat/a/g;->b(Landroid/content/Context;Ljava/lang/String;I)V

    .line 800
    return-void
.end method

.method public static a([B)[B
    .locals 6

    .prologue
    .line 129
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 130
    new-instance v1, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 131
    const/16 v2, 0x1000

    new-array v2, v2, [B

    .line 132
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    array-length v4, p0

    mul-int/lit8 v4, v4, 0x2

    invoke-direct {v3, v4}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 135
    :goto_0
    invoke-virtual {v1, v2}, Ljava/util/zip/GZIPInputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 136
    const/4 v5, 0x0

    invoke-virtual {v3, v2, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 138
    :cond_0
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 139
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V

    .line 140
    invoke-virtual {v1}, Ljava/util/zip/GZIPInputStream;->close()V

    .line 141
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 142
    return-object v2
.end method

.method public static b(Landroid/content/Context;)Landroid/util/DisplayMetrics;
    .locals 2

    .prologue
    .line 253
    sget-object v0, Lcom/tencent/android/tpush/stat/a/e;->f:Landroid/util/DisplayMetrics;

    if-nez v0, :cond_0

    .line 254
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    sput-object v0, Lcom/tencent/android/tpush/stat/a/e;->f:Landroid/util/DisplayMetrics;

    .line 255
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    sget-object v1, Lcom/tencent/android/tpush/stat/a/e;->f:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 258
    :cond_0
    sget-object v0, Lcom/tencent/android/tpush/stat/a/e;->f:Landroid/util/DisplayMetrics;

    return-object v0
.end method

.method public static declared-synchronized b()Lcom/tencent/android/tpush/stat/a/f;
    .locals 3

    .prologue
    .line 456
    const-class v1, Lcom/tencent/android/tpush/stat/a/e;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/android/tpush/stat/a/e;->i:Lcom/tencent/android/tpush/stat/a/f;

    if-nez v0, :cond_0

    .line 457
    new-instance v0, Lcom/tencent/android/tpush/stat/a/f;

    const-string v2, "XgStat"

    invoke-direct {v0, v2}, Lcom/tencent/android/tpush/stat/a/f;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/tencent/android/tpush/stat/a/e;->i:Lcom/tencent/android/tpush/stat/a/f;

    .line 458
    sget-object v0, Lcom/tencent/android/tpush/stat/a/e;->i:Lcom/tencent/android/tpush/stat/a/f;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/tencent/android/tpush/stat/a/f;->a(Z)V

    .line 460
    :cond_0
    sget-object v0, Lcom/tencent/android/tpush/stat/a/e;->i:Lcom/tencent/android/tpush/stat/a/f;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 456
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static b(Landroid/content/Context;J)Ljava/lang/String;
    .locals 1

    .prologue
    .line 338
    invoke-static {p0}, Lcom/tencent/android/tpush/service/d/d;->a(Landroid/content/Context;)Lcom/tencent/android/tpush/service/d/d;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/tencent/android/tpush/service/d/d;->a(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 546
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 547
    :cond_0
    const/4 v0, 0x0

    .line 549
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static c()J
    .locals 5

    .prologue
    const-wide/32 v3, 0x5265c00

    .line 469
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 470
    const/16 v1, 0xb

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 471
    const/16 v1, 0xc

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 472
    const/16 v1, 0xd

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 473
    const/16 v1, 0xe

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 474
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    add-long/2addr v0, v3

    .line 478
    :goto_0
    return-wide v0

    .line 475
    :catch_0
    move-exception v0

    .line 476
    sget-object v1, Lcom/tencent/android/tpush/stat/a/e;->i:Lcom/tencent/android/tpush/stat/a/f;

    invoke-virtual {v1, v0}, Lcom/tencent/android/tpush/stat/a/f;->b(Ljava/lang/Throwable;)V

    .line 478
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long/2addr v0, v3

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 300
    sget-object v0, Lcom/tencent/android/tpush/stat/a/e;->g:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 301
    sget-object v0, Lcom/tencent/android/tpush/stat/a/e;->g:Ljava/lang/String;

    .line 314
    :goto_0
    return-object v0

    .line 304
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/tencent/android/tpush/stat/a/e;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 305
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 307
    if-eqz v0, :cond_1

    .line 308
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/android/tpush/stat/a/e;->g:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 314
    :cond_1
    :goto_1
    sget-object v0, Lcom/tencent/android/tpush/stat/a/e;->g:Ljava/lang/String;

    goto :goto_0

    .line 311
    :catch_0
    move-exception v0

    .line 312
    sget-object v1, Lcom/tencent/android/tpush/stat/a/e;->i:Lcom/tencent/android/tpush/stat/a/f;

    invoke-virtual {v1, v0}, Lcom/tencent/android/tpush/stat/a/f;->b(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static d()Ljava/lang/String;
    .locals 8

    .prologue
    const-wide/32 v6, 0xf4240

    .line 654
    sget-object v0, Lcom/tencent/android/tpush/stat/a/e;->l:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/android/tpush/stat/a/e;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 655
    sget-object v0, Lcom/tencent/android/tpush/stat/a/e;->l:Ljava/lang/String;

    .line 667
    :goto_0
    return-object v0

    .line 658
    :cond_0
    invoke-static {}, Lcom/tencent/android/tpush/stat/a/e;->e()J

    move-result-wide v0

    div-long/2addr v0, v6

    .line 660
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    .line 661
    new-instance v3, Landroid/os/StatFs;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 662
    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSize()I

    move-result v2

    int-to-long v4, v2

    .line 663
    invoke-virtual {v3}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v2

    int-to-long v2, v2

    .line 664
    mul-long/2addr v2, v4

    div-long/2addr v2, v6

    .line 665
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/android/tpush/stat/a/e;->l:Ljava/lang/String;

    .line 667
    sget-object v0, Lcom/tencent/android/tpush/stat/a/e;->l:Ljava/lang/String;

    goto :goto_0
.end method

.method public static d(Landroid/content/Context;)Z
    .locals 3

    .prologue
    .line 343
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 344
    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 347
    const/4 v0, 0x0

    .line 349
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static e()J
    .locals 4

    .prologue
    .line 671
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 672
    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 673
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v2, v0

    .line 674
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockCount()I

    move-result v0

    int-to-long v0, v0

    .line 675
    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public static e(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 364
    const-string v2, ""

    .line 366
    :try_start_0
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 368
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 369
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 370
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v1

    .line 371
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    .line 372
    if-eqz v1, :cond_5

    .line 373
    const-string v3, "WIFI"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 374
    const-string v0, "WIFI"

    .line 394
    :cond_0
    :goto_0
    return-object v0

    .line 375
    :cond_1
    const-string v3, "MOBILE"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 376
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_0

    .line 380
    :cond_2
    const-string v0, "MOBILE"

    goto :goto_0

    .line 383
    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-gtz v2, :cond_0

    :cond_4
    move-object v0, v1

    .line 386
    goto :goto_0

    .line 391
    :catch_0
    move-exception v0

    .line 392
    sget-object v1, Lcom/tencent/android/tpush/stat/a/e;->i:Lcom/tencent/android/tpush/stat/a/f;

    invoke-virtual {v1, v0}, Lcom/tencent/android/tpush/stat/a/f;->b(Ljava/lang/Throwable;)V

    :cond_5
    move-object v0, v2

    goto :goto_0
.end method

.method public static f(Landroid/content/Context;)Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 399
    :try_start_0
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 401
    if-eqz v0, :cond_0

    .line 402
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 406
    :goto_0
    return-object v0

    .line 404
    :catch_0
    move-exception v0

    .line 406
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static declared-synchronized f()Ljava/util/Random;
    .locals 2

    .prologue
    .line 60
    const-class v1, Lcom/tencent/android/tpush/stat/a/e;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/android/tpush/stat/a/e;->d:Ljava/util/Random;

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/tencent/android/tpush/stat/a/e;->d:Ljava/util/Random;

    .line 63
    :cond_0
    sget-object v0, Lcom/tencent/android/tpush/stat/a/e;->d:Ljava/util/Random;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 60
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static g()J
    .locals 6

    .prologue
    .line 740
    sget-wide v0, Lcom/tencent/android/tpush/stat/a/e;->m:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 741
    sget-wide v0, Lcom/tencent/android/tpush/stat/a/e;->m:J

    .line 763
    :goto_0
    return-wide v0

    .line 743
    :cond_0
    const-string v1, "/proc/meminfo"

    .line 746
    const-wide/16 v3, 0x1

    .line 747
    const/4 v0, 0x0

    .line 749
    :try_start_0
    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 750
    new-instance v2, Ljava/io/BufferedReader;

    const/16 v1, 0x2000

    invoke-direct {v2, v5, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 752
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 753
    if-eqz v0, :cond_1

    .line 754
    const-string v1, "\\s+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 755
    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    mul-int/lit16 v0, v0, 0x400

    int-to-long v0, v0

    .line 757
    :goto_1
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 760
    invoke-static {v2}, Lcom/tencent/android/tpush/common/e;->a(Ljava/io/Closeable;)Z

    .line 762
    :goto_2
    sput-wide v0, Lcom/tencent/android/tpush/stat/a/e;->m:J

    .line 763
    sget-wide v0, Lcom/tencent/android/tpush/stat/a/e;->m:J

    goto :goto_0

    .line 758
    :catch_0
    move-exception v1

    move-object v2, v0

    move-wide v0, v3

    .line 760
    :goto_3
    invoke-static {v2}, Lcom/tencent/android/tpush/common/e;->a(Ljava/io/Closeable;)Z

    goto :goto_2

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_4
    invoke-static {v2}, Lcom/tencent/android/tpush/common/e;->a(Ljava/io/Closeable;)Z

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_4

    .line 758
    :catch_1
    move-exception v0

    move-wide v0, v3

    goto :goto_3

    :catch_2
    move-exception v3

    goto :goto_3

    :cond_1
    move-wide v0, v3

    goto :goto_1
.end method

.method public static g(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 555
    sget-object v0, Lcom/tencent/android/tpush/stat/a/e;->j:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/android/tpush/stat/a/e;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 556
    sget-object v0, Lcom/tencent/android/tpush/stat/a/e;->j:Ljava/lang/String;

    .line 578
    :goto_0
    return-object v0

    .line 559
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 560
    if-eqz v0, :cond_1

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 561
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 563
    if-eqz v0, :cond_1

    .line 565
    new-instance v1, Landroid/os/StatFs;

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 566
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockCount()I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v4, v0

    mul-long/2addr v2, v4

    const-wide/32 v4, 0xf4240

    div-long/2addr v2, v4

    .line 568
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v4, v0

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v0, v0

    mul-long/2addr v0, v4

    const-wide/32 v4, 0xf4240

    div-long/2addr v0, v4

    .line 570
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/android/tpush/stat/a/e;->j:Ljava/lang/String;

    .line 572
    sget-object v0, Lcom/tencent/android/tpush/stat/a/e;->j:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 575
    :catch_0
    move-exception v0

    .line 576
    sget-object v1, Lcom/tencent/android/tpush/stat/a/e;->i:Lcom/tencent/android/tpush/stat/a/f;

    invoke-virtual {v1, v0}, Lcom/tencent/android/tpush/stat/a/f;->b(Ljava/lang/Throwable;)V

    .line 578
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static h(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 602
    :try_start_0
    sget-object v0, Lcom/tencent/android/tpush/stat/a/e;->k:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 603
    sget-object v0, Lcom/tencent/android/tpush/stat/a/e;->k:Ljava/lang/String;

    .line 617
    :goto_0
    return-object v0

    .line 605
    :cond_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    .line 606
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 608
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 610
    iget v3, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v3, v1, :cond_1

    .line 611
    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    sput-object v0, Lcom/tencent/android/tpush/stat/a/e;->k:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 617
    :cond_2
    :goto_1
    sget-object v0, Lcom/tencent/android/tpush/stat/a/e;->k:Ljava/lang/String;

    goto :goto_0

    .line 615
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public static i(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 717
    :try_start_0
    invoke-static {p0}, Lcom/tencent/android/tpush/stat/a/e;->m(Landroid/content/Context;)J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    .line 718
    invoke-static {}, Lcom/tencent/android/tpush/stat/a/e;->g()J

    move-result-wide v2

    const-wide/32 v4, 0xf4240

    div-long/2addr v2, v4

    .line 719
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 724
    :goto_0
    return-object v0

    .line 721
    :catch_0
    move-exception v0

    .line 722
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 724
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static j(Landroid/content/Context;)Z
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 770
    sget-wide v0, Lcom/tencent/android/tpush/stat/a/e;->n:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 771
    const-string v0, "mta.qq.com.checktime"

    invoke-static {p0, v0, v2, v3}, Lcom/tencent/android/tpush/stat/a/g;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Lcom/tencent/android/tpush/stat/a/e;->n:J

    .line 773
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/tencent/android/tpush/stat/a/e;->n:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    .line 774
    const-wide/32 v2, 0x5265c00

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static k(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 778
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/tencent/android/tpush/stat/a/e;->n:J

    .line 779
    const-string v0, "mta.qq.com.checktime"

    sget-wide v1, Lcom/tencent/android/tpush/stat/a/e;->n:J

    invoke-static {p0, v0, v1, v2}, Lcom/tencent/android/tpush/stat/a/g;->b(Landroid/content/Context;Ljava/lang/String;J)V

    .line 780
    return-void
.end method

.method public static l(Landroid/content/Context;)I
    .locals 2

    .prologue
    .line 794
    const-string v0, "mta.qq.com.difftime"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/tencent/android/tpush/stat/a/g;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static m(Landroid/content/Context;)J
    .locals 2

    .prologue
    .line 729
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 731
    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 732
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 734
    iget-wide v0, v1, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    return-wide v0
.end method
