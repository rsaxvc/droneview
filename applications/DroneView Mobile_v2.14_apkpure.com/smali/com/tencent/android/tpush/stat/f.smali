.class public Lcom/tencent/android/tpush/stat/f;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field private static c:Lcom/tencent/android/tpush/stat/a/f;

.field private static volatile d:Lcom/tencent/android/tpush/stat/f;

.field private static e:Landroid/content/Context;


# instance fields
.field a:Lorg/apache/http/impl/client/DefaultHttpClient;

.field b:Ljava/lang/StringBuilder;

.field private f:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 48
    invoke-static {}, Lcom/tencent/android/tpush/stat/a/e;->b()Lcom/tencent/android/tpush/stat/a/f;

    move-result-object v0

    sput-object v0, Lcom/tencent/android/tpush/stat/f;->c:Lcom/tencent/android/tpush/stat/a/f;

    .line 95
    sput-object v1, Lcom/tencent/android/tpush/stat/f;->d:Lcom/tencent/android/tpush/stat/f;

    .line 97
    sput-object v1, Lcom/tencent/android/tpush/stat/f;->e:Landroid/content/Context;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/android/tpush/stat/f;->a:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x1000

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/android/tpush/stat/f;->b:Ljava/lang/StringBuilder;

    .line 103
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/android/tpush/stat/f;->f:J

    .line 61
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/tencent/android/tpush/stat/f;->e:Landroid/content/Context;

    .line 62
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/tencent/android/tpush/stat/f;->f:J

    .line 63
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 64
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setStaleCheckingEnabled(Lorg/apache/http/params/HttpParams;Z)V

    .line 68
    const/16 v1, 0x2710

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 71
    const/16 v1, 0x2710

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 72
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    iput-object v1, p0, Lcom/tencent/android/tpush/stat/f;->a:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 75
    iget-object v0, p0, Lcom/tencent/android/tpush/stat/f;->a:Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance v1, Lcom/tencent/android/tpush/stat/g;

    invoke-direct {v1, p0}, Lcom/tencent/android/tpush/stat/g;-><init>(Lcom/tencent/android/tpush/stat/f;)V

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->setKeepAliveStrategy(Lorg/apache/http/conn/ConnectionKeepAliveStrategy;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :goto_0
    return-void

    .line 88
    :catch_0
    move-exception v0

    .line 89
    sget-object v1, Lcom/tencent/android/tpush/stat/f;->c:Lcom/tencent/android/tpush/stat/a/f;

    invoke-virtual {v1, v0}, Lcom/tencent/android/tpush/stat/a/f;->b(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static a()Landroid/content/Context;
    .locals 1

    .prologue
    .line 106
    sget-object v0, Lcom/tencent/android/tpush/stat/f;->e:Landroid/content/Context;

    return-object v0
.end method

.method static a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 100
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/tencent/android/tpush/stat/f;->e:Landroid/content/Context;

    .line 101
    return-void
.end method

.method private a(Lorg/json/JSONObject;)V
    .locals 7

    .prologue
    .line 132
    :try_start_0
    const-string v0, "cfg"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 133
    const-string v0, "cfg"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 134
    sget-object v1, Lcom/tencent/android/tpush/stat/f;->e:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/tencent/android/tpush/stat/c;->a(Landroid/content/Context;Lorg/json/JSONObject;)V

    .line 136
    :cond_0
    const-string v0, "ncts"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 137
    const-string v0, "ncts"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 138
    int-to-long v1, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    sub-long/2addr v1, v3

    long-to-int v1, v1

    .line 139
    invoke-static {}, Lcom/tencent/android/tpush/stat/c;->b()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 140
    sget-object v2, Lcom/tencent/android/tpush/stat/f;->c:Lcom/tencent/android/tpush/stat/a/f;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "server time:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", diff time:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/tencent/android/tpush/stat/a/f;->b(Ljava/lang/Object;)V

    .line 142
    :cond_1
    sget-object v0, Lcom/tencent/android/tpush/stat/f;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/android/tpush/stat/a/e;->k(Landroid/content/Context;)V

    .line 143
    sget-object v0, Lcom/tencent/android/tpush/stat/f;->e:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/stat/a/e;->a(Landroid/content/Context;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    :cond_2
    :goto_0
    return-void

    .line 147
    :catch_0
    move-exception v0

    .line 148
    sget-object v1, Lcom/tencent/android/tpush/stat/f;->c:Lcom/tencent/android/tpush/stat/a/f;

    invoke-virtual {v1, v0}, Lcom/tencent/android/tpush/stat/a/f;->d(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)Lcom/tencent/android/tpush/stat/f;
    .locals 2

    .prologue
    .line 110
    sget-object v0, Lcom/tencent/android/tpush/stat/f;->d:Lcom/tencent/android/tpush/stat/f;

    if-nez v0, :cond_1

    .line 111
    const-class v1, Lcom/tencent/android/tpush/stat/f;

    monitor-enter v1

    .line 112
    :try_start_0
    sget-object v0, Lcom/tencent/android/tpush/stat/f;->d:Lcom/tencent/android/tpush/stat/f;

    if-nez v0, :cond_0

    .line 113
    new-instance v0, Lcom/tencent/android/tpush/stat/f;

    invoke-direct {v0, p0}, Lcom/tencent/android/tpush/stat/f;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tencent/android/tpush/stat/f;->d:Lcom/tencent/android/tpush/stat/f;

    .line 115
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    :cond_1
    sget-object v0, Lcom/tencent/android/tpush/stat/f;->d:Lcom/tencent/android/tpush/stat/f;

    return-object v0

    .line 115
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(Lcom/tencent/android/tpush/stat/event/d;Lcom/tencent/android/tpush/stat/e;)V
    .locals 3

    .prologue
    .line 378
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/tencent/android/tpush/stat/event/d;->c()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/tencent/android/tpush/stat/f;->b(Ljava/util/List;Lcom/tencent/android/tpush/stat/e;)V

    .line 379
    return-void
.end method

.method a(Ljava/util/List;Lcom/tencent/android/tpush/stat/e;)V
    .locals 13

    .prologue
    const-wide/16 v11, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 161
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 355
    :cond_0
    :goto_0
    return-void

    .line 164
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .line 168
    :try_start_0
    iget-object v0, p0, Lcom/tencent/android/tpush/stat/f;->b:Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/tencent/android/tpush/stat/f;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 170
    iget-object v0, p0, Lcom/tencent/android/tpush/stat/f;->b:Ljava/lang/StringBuilder;

    const-string v4, "["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    const-string v4, "rc4"

    move v0, v2

    .line 172
    :goto_1
    if-ge v0, v3, :cond_3

    .line 173
    iget-object v5, p0, Lcom/tencent/android/tpush/stat/f;->b:Ljava/lang/StringBuilder;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    add-int/lit8 v5, v3, -0x1

    if-eq v0, v5, :cond_2

    .line 175
    iget-object v5, p0, Lcom/tencent/android/tpush/stat/f;->b:Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 178
    :cond_3
    iget-object v0, p0, Lcom/tencent/android/tpush/stat/f;->b:Ljava/lang/StringBuilder;

    const-string v5, "]"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    iget-object v0, p0, Lcom/tencent/android/tpush/stat/f;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 180
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    .line 181
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/android/tpush/stat/c;->d()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/?index="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, p0, Lcom/tencent/android/tpush/stat/f;->f:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 183
    iget-wide v7, p0, Lcom/tencent/android/tpush/stat/f;->f:J

    const-wide/16 v9, 0x1

    add-long/2addr v7, v9

    iput-wide v7, p0, Lcom/tencent/android/tpush/stat/f;->f:J

    .line 184
    invoke-static {}, Lcom/tencent/android/tpush/stat/c;->b()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 185
    sget-object v7, Lcom/tencent/android/tpush/stat/f;->c:Lcom/tencent/android/tpush/stat/a/f;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]Send request(eventsize:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, ","

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, "bytes), content:"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Lcom/tencent/android/tpush/stat/a/f;->b(Ljava/lang/Object;)V

    .line 192
    :cond_4
    new-instance v3, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v3, v6}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 196
    const-string v6, "Accept-Encoding"

    const-string v7, "gzip"

    invoke-virtual {v3, v6, v7}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    const-string v6, "Connection"

    const-string v7, "Keep-Alive"

    invoke-virtual {v3, v6, v7}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    const-string v6, "Cache-Control"

    invoke-virtual {v3, v6}, Lorg/apache/http/client/methods/HttpPost;->removeHeaders(Ljava/lang/String;)V

    .line 199
    sget-object v6, Lcom/tencent/android/tpush/stat/f;->e:Landroid/content/Context;

    invoke-static {v6}, Lcom/tencent/android/tpush/stat/a/e;->a(Landroid/content/Context;)Lorg/apache/http/HttpHost;

    move-result-object v6

    .line 201
    const-string v7, "Content-Encoding"

    invoke-virtual {v3, v7, v4}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    if-nez v6, :cond_b

    .line 203
    iget-object v7, p0, Lcom/tencent/android/tpush/stat/f;->a:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v7}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v7

    const-string v8, "http.route.default-proxy"

    invoke-interface {v7, v8}, Lorg/apache/http/params/HttpParams;->removeParameter(Ljava/lang/String;)Z

    .line 217
    :goto_2
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7, v5}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 218
    const-string v8, "UTF-8"

    invoke-virtual {v0, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 219
    array-length v8, v0

    .line 222
    const/16 v9, 0x200

    if-le v5, v9, :cond_5

    const/4 v2, 0x1

    .line 223
    :cond_5
    if-eqz v2, :cond_7

    .line 226
    const-string v2, "Content-Encoding"

    invoke-virtual {v3, v2}, Lorg/apache/http/client/methods/HttpPost;->removeHeaders(Ljava/lang/String;)V

    .line 227
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ",gzip"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 228
    const-string v4, "Content-Encoding"

    invoke-virtual {v3, v4, v2}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    if-eqz v6, :cond_6

    .line 230
    const-string v4, "X-Content-Encoding"

    invoke-virtual {v3, v4}, Lorg/apache/http/client/methods/HttpPost;->removeHeaders(Ljava/lang/String;)V

    .line 231
    const-string v4, "X-Content-Encoding"

    invoke-virtual {v3, v4, v2}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    :cond_6
    const/4 v2, 0x4

    new-array v2, v2, [B

    invoke-virtual {v7, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 234
    new-instance v2, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v2, v7}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 235
    invoke-virtual {v2, v0}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 236
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 237
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 238
    const/4 v2, 0x0

    const/4 v4, 0x4

    invoke-static {v0, v2, v4}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 239
    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 240
    invoke-static {}, Lcom/tencent/android/tpush/stat/c;->b()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 241
    sget-object v2, Lcom/tencent/android/tpush/stat/f;->c:Lcom/tencent/android/tpush/stat/a/f;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "before Gzip:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " bytes, after Gzip:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " bytes"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/tencent/android/tpush/stat/a/f;->h(Ljava/lang/Object;)V

    .line 246
    :cond_7
    invoke-static {v0}, Lcom/tencent/android/tpush/stat/a/d;->a([B)[B

    move-result-object v0

    .line 247
    new-instance v2, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v2, v0}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 248
    invoke-virtual {v3, v2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 251
    iget-object v0, p0, Lcom/tencent/android/tpush/stat/f;->a:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0, v3}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 253
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 254
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    .line 255
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v4

    .line 256
    invoke-static {}, Lcom/tencent/android/tpush/stat/c;->b()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 257
    sget-object v6, Lcom/tencent/android/tpush/stat/f;->c:Lcom/tencent/android/tpush/stat/a/f;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "http recv response status code:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", content length:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/tencent/android/tpush/stat/a/f;->b(Ljava/lang/Object;)V

    .line 262
    :cond_8
    cmp-long v6, v4, v11

    if-gtz v6, :cond_d

    .line 268
    sget-object v2, Lcom/tencent/android/tpush/stat/f;->c:Lcom/tencent/android/tpush/stat/a/f;

    const-string v3, "Server response no data."

    invoke-virtual {v2, v3}, Lcom/tencent/android/tpush/stat/a/f;->f(Ljava/lang/Object;)V

    .line 269
    if-eqz p2, :cond_9

    .line 270
    invoke-interface {p2}, Lcom/tencent/android/tpush/stat/e;->b()V

    .line 273
    :cond_9
    invoke-static {v0}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 331
    :catch_0
    move-exception v0

    .line 336
    :goto_3
    if-eqz v0, :cond_0

    .line 337
    sget-object v2, Lcom/tencent/android/tpush/stat/f;->c:Lcom/tencent/android/tpush/stat/a/f;

    invoke-virtual {v2, v0}, Lcom/tencent/android/tpush/stat/a/f;->a(Ljava/lang/Throwable;)V

    .line 338
    if-eqz p2, :cond_a

    .line 340
    :try_start_1
    invoke-interface {p2}, Lcom/tencent/android/tpush/stat/e;->b()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 345
    :cond_a
    :goto_4
    instance-of v2, v0, Ljava/lang/OutOfMemoryError;

    if-eqz v2, :cond_17

    .line 346
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 347
    iput-object v1, p0, Lcom/tencent/android/tpush/stat/f;->b:Ljava/lang/StringBuilder;

    .line 348
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x800

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/android/tpush/stat/f;->b:Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 206
    :cond_b
    :try_start_2
    invoke-static {}, Lcom/tencent/android/tpush/stat/c;->b()Z

    move-result v7

    if-eqz v7, :cond_c

    .line 207
    sget-object v7, Lcom/tencent/android/tpush/stat/f;->c:Lcom/tencent/android/tpush/stat/a/f;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "proxy:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Lorg/apache/http/HttpHost;->toHostString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/tencent/android/tpush/stat/a/f;->h(Ljava/lang/Object;)V

    .line 209
    :cond_c
    const-string v7, "X-Content-Encoding"

    invoke-virtual {v3, v7, v4}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    iget-object v7, p0, Lcom/tencent/android/tpush/stat/f;->a:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v7}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v7

    const-string v8, "http.route.default-proxy"

    invoke-interface {v7, v8, v6}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 212
    const-string v7, "X-Online-Host"

    sget-object v8, Lcom/tencent/android/tpush/stat/c;->d:Ljava/lang/String;

    invoke-virtual {v3, v7, v8}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    const-string v7, "Accept"

    const-string v8, "*/*"

    invoke-virtual {v3, v7, v8}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    const-string v7, "Content-Type"

    const-string v8, "json"

    invoke-virtual {v3, v7, v8}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_2

    .line 333
    :catchall_0
    move-exception v0

    throw v0

    .line 275
    :cond_d
    cmp-long v4, v4, v11

    if-lez v4, :cond_16

    .line 276
    :try_start_3
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v4

    .line 277
    new-instance v5, Ljava/io/DataInputStream;

    invoke-direct {v5, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 278
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v8

    long-to-int v0, v8

    new-array v0, v0, [B

    .line 279
    invoke-virtual {v5, v0}, Ljava/io/DataInputStream;->readFully([B)V

    .line 280
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 281
    invoke-virtual {v5}, Ljava/io/DataInputStream;->close()V

    .line 282
    const-string v5, "Content-Encoding"

    invoke-interface {v2, v5}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v2

    .line 285
    if-eqz v2, :cond_e

    .line 286
    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v5

    const-string v6, "gzip,rc4"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 287
    invoke-static {v0}, Lcom/tencent/android/tpush/stat/a/e;->a([B)[B

    move-result-object v0

    .line 288
    invoke-static {v0}, Lcom/tencent/android/tpush/stat/a/d;->b([B)[B

    move-result-object v0

    .line 302
    :cond_e
    :goto_5
    new-instance v2, Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-direct {v2, v0, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 303
    invoke-static {}, Lcom/tencent/android/tpush/stat/c;->b()Z

    move-result v5

    if-eqz v5, :cond_f

    .line 304
    sget-object v5, Lcom/tencent/android/tpush/stat/f;->c:Lcom/tencent/android/tpush/stat/a/f;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "http get response data:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/tencent/android/tpush/stat/a/f;->b(Ljava/lang/Object;)V

    .line 306
    :cond_f
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 307
    const/16 v2, 0xc8

    if-ne v3, v2, :cond_15

    .line 309
    invoke-direct {p0, v5}, Lcom/tencent/android/tpush/stat/f;->a(Lorg/json/JSONObject;)V

    .line 310
    if-eqz p2, :cond_10

    .line 311
    const-string v0, "ret"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_14

    .line 312
    invoke-interface {p2}, Lcom/tencent/android/tpush/stat/e;->a()V

    .line 326
    :cond_10
    :goto_6
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 330
    :goto_7
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->close()V

    move-object v0, v1

    .line 334
    goto/16 :goto_3

    .line 289
    :cond_11
    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v5

    const-string v6, "rc4,gzip"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 291
    invoke-static {v0}, Lcom/tencent/android/tpush/stat/a/d;->b([B)[B

    move-result-object v0

    .line 292
    invoke-static {v0}, Lcom/tencent/android/tpush/stat/a/e;->a([B)[B

    move-result-object v0

    goto :goto_5

    .line 293
    :cond_12
    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v5

    const-string v6, "gzip"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 295
    invoke-static {v0}, Lcom/tencent/android/tpush/stat/a/e;->a([B)[B

    move-result-object v0

    goto :goto_5

    .line 296
    :cond_13
    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    const-string v5, "rc4"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 298
    invoke-static {v0}, Lcom/tencent/android/tpush/stat/a/d;->b([B)[B

    move-result-object v0

    goto :goto_5

    .line 314
    :cond_14
    sget-object v0, Lcom/tencent/android/tpush/stat/f;->c:Lcom/tencent/android/tpush/stat/a/f;

    const-string v2, "response error data."

    invoke-virtual {v0, v2}, Lcom/tencent/android/tpush/stat/a/f;->e(Ljava/lang/Object;)V

    .line 315
    invoke-interface {p2}, Lcom/tencent/android/tpush/stat/e;->b()V

    goto :goto_6

    .line 319
    :cond_15
    sget-object v2, Lcom/tencent/android/tpush/stat/f;->c:Lcom/tencent/android/tpush/stat/a/f;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Server response error code:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", error:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v5, Ljava/lang/String;

    const-string v6, "UTF-8"

    invoke-direct {v5, v0, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/tencent/android/tpush/stat/a/f;->e(Ljava/lang/Object;)V

    .line 322
    if-eqz p2, :cond_10

    .line 323
    invoke-interface {p2}, Lcom/tencent/android/tpush/stat/e;->b()V

    goto :goto_6

    .line 328
    :cond_16
    invoke-static {v0}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_7

    .line 341
    :catch_1
    move-exception v2

    .line 342
    sget-object v3, Lcom/tencent/android/tpush/stat/f;->c:Lcom/tencent/android/tpush/stat/a/f;

    invoke-virtual {v3, v2}, Lcom/tencent/android/tpush/stat/a/f;->b(Ljava/lang/Throwable;)V

    goto/16 :goto_4

    .line 349
    :cond_17
    instance-of v1, v0, Ljava/net/UnknownHostException;

    if-nez v1, :cond_0

    .line 351
    instance-of v0, v0, Ljava/net/SocketTimeoutException;

    if-eqz v0, :cond_0

    goto/16 :goto_0
.end method

.method b(Ljava/util/List;Lcom/tencent/android/tpush/stat/e;)V
    .locals 0

    .prologue
    .line 366
    invoke-virtual {p0, p1, p2}, Lcom/tencent/android/tpush/stat/f;->a(Ljava/util/List;Lcom/tencent/android/tpush/stat/e;)V

    .line 367
    return-void
.end method
