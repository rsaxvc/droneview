.class public final Lcom/baidu/android/pushservice/i/s;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/lang/String;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lcom/baidu/android/pushservice/i/t;

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, ""

    sput-object v0, Lcom/baidu/android/pushservice/i/s;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/baidu/android/pushservice/i/s;->b:Landroid/content/Context;

    iput-object v0, p0, Lcom/baidu/android/pushservice/i/s;->c:Lcom/baidu/android/pushservice/i/t;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/android/pushservice/i/s;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/baidu/android/pushservice/i/t;->a(Landroid/content/Context;)Lcom/baidu/android/pushservice/i/t;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/android/pushservice/i/s;->c:Lcom/baidu/android/pushservice/i/t;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/android/pushservice/i/s;->d:Z

    return-void
.end method

.method static synthetic a(Lcom/baidu/android/pushservice/i/s;)Z
    .locals 1

    invoke-direct {p0}, Lcom/baidu/android/pushservice/i/s;->d()Z

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12

    iget-object v0, p0, Lcom/baidu/android/pushservice/i/s;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/android/pushservice/util/m;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "stats"

    invoke-direct {v0, v1, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "pbVer"

    invoke-direct {v0, v1, p3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "os"

    const-string v2, "android"

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    const-wide/16 v1, 0x3e8

    const/4 v0, 0x0

    move v9, v0

    move-object v0, v3

    move-wide v10, v1

    move-wide v2, v10

    move v1, v9

    :goto_1
    const/4 v5, 0x3

    if-ge v1, v5, :cond_3

    :try_start_0
    const-string v5, "StatisticPoster"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Statistics request time="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", url="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/baidu/android/pushservice/h/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v5}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    new-instance v6, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v6, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    new-instance v7, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v8, "UTF-8"

    invoke-direct {v7, v4, v8}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    invoke-interface {v5, v6}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v6

    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/android/pushservice/i/a/b;->a(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    const/16 v7, 0xc8

    if-ne v6, v7, :cond_1

    const/4 v1, 0x1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/io/Closeable;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v2}, Lcom/baidu/android/pushservice/f/c;->a([Ljava/io/Closeable;)V

    move v0, v1

    goto/16 :goto_0

    :cond_1
    const/16 v7, 0xc9

    if-ne v6, v7, :cond_4

    :try_start_1
    invoke-virtual {p0, v5}, Lcom/baidu/android/pushservice/i/s;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :goto_2
    const/16 v5, 0xc8

    if-eq v6, v5, :cond_3

    const/16 v5, 0xc9

    if-eq v6, v5, :cond_3

    const/16 v5, 0x193

    if-ne v6, v5, :cond_5

    :cond_3
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/io/Closeable;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {v1}, Lcom/baidu/android/pushservice/f/c;->a([Ljava/io/Closeable;)V

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_4
    const/16 v7, 0x193

    if-ne v6, v7, :cond_2

    :try_start_2
    invoke-virtual {p0, v5}, Lcom/baidu/android/pushservice/i/s;->b(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v1

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    :try_start_3
    const-string v2, "StatisticPoster"

    invoke-static {v2, v0}, Lcom/baidu/android/pushservice/h/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/4 v0, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/io/Closeable;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-static {v2}, Lcom/baidu/android/pushservice/f/c;->a([Ljava/io/Closeable;)V

    goto/16 :goto_0

    :cond_5
    mul-int/lit16 v5, v1, 0x12c

    int-to-long v5, v5

    add-long/2addr v2, v5

    :try_start_4
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    :catchall_0
    move-exception v1

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    :goto_3
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/io/Closeable;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-static {v2}, Lcom/baidu/android/pushservice/f/c;->a([Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3
.end method

.method static synthetic b(Lcom/baidu/android/pushservice/i/s;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/baidu/android/pushservice/i/s;->b:Landroid/content/Context;

    return-object v0
.end method

.method private d()Z
    .locals 9

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/baidu/android/pushservice/i/s;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/android/pushservice/i/a/b;->e(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/baidu/android/pushservice/i/s;->d:Z

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/baidu/android/pushservice/i/s;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/android/pushservice/PushSettings;->g(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/baidu/android/pushservice/i/s;->b:Landroid/content/Context;

    invoke-static {v3}, Lcom/baidu/android/pushservice/PushSettings;->e(Landroid/content/Context;)J

    move-result-wide v3

    const-string v5, "StatisticPoster"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkSendStatisticData currentTime:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " lastSendTime "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/baidu/android/pushservice/i/s;->b:Landroid/content/Context;

    invoke-static {v5}, Lcom/baidu/android/pushservice/i/a/b;->c(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_2

    sub-long v5, v1, v3

    iget-object v7, p0, Lcom/baidu/android/pushservice/i/s;->b:Landroid/content/Context;

    invoke-static {v7}, Lcom/baidu/android/pushservice/PushSettings;->f(Landroid/content/Context;)J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-ltz v5, :cond_0

    :cond_2
    iget-object v0, p0, Lcom/baidu/android/pushservice/i/s;->b:Landroid/content/Context;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/baidu/android/pushservice/util/q;->b(Landroid/content/Context;JJ)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 4

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "user_device"

    iget-object v3, p0, Lcom/baidu/android/pushservice/i/s;->b:Landroid/content/Context;

    invoke-static {v3}, Lcom/baidu/android/pushservice/i/a/b;->f(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "user_network"

    iget-object v3, p0, Lcom/baidu/android/pushservice/i/s;->b:Landroid/content/Context;

    invoke-static {v3}, Lcom/baidu/android/pushservice/i/a/b;->g(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "channel_id"

    iget-object v3, p0, Lcom/baidu/android/pushservice/i/s;->b:Landroid/content/Context;

    invoke-static {v3}, Lcom/baidu/android/pushservice/PushSettings;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "push_running_version"

    invoke-static {}, Lcom/baidu/android/pushservice/a;->a()S

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "push_channel"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    const-string v2, "StatisticPoster"

    invoke-static {v2, v0}, Lcom/baidu/android/pushservice/h/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a(JJII)Ljava/lang/String;
    .locals 9

    const/4 v7, 0x0

    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "version"

    const-string v1, "1.0"

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/baidu/android/pushservice/i/s;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "common"

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    iget-object v0, p0, Lcom/baidu/android/pushservice/i/s;->c:Lcom/baidu/android/pushservice/i/t;

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/baidu/android/pushservice/i/t;->a(JJII)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "application_info"

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    :cond_1
    :goto_0
    :try_start_1
    invoke-virtual {v8}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/android/pushservice/i/a/a;->a(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x75

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0x7b

    aput-byte v2, v0, v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    if-nez v0, :cond_2

    :goto_2
    return-object v7

    :catch_0
    move-exception v0

    move-object v0, v7

    goto :goto_1

    :cond_2
    :try_start_2
    const-string v1, "utf-8"

    invoke-static {v0, v1}, Lcom/baidu/android/pushservice/j/b;->a([BLjava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    :goto_3
    move-object v7, v0

    goto :goto_2

    :catch_1
    move-exception v0

    const-string v1, "StatisticPoster"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v7

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 6

    const/4 v3, 0x1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "config_type"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "interval"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-nez v1, :cond_1

    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/baidu/android/pushservice/i/s;->b:Landroid/content/Context;

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v2, v0

    invoke-static {v1, v2, v3}, Lcom/baidu/android/pushservice/PushSettings;->b(Landroid/content/Context;J)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-ne v1, v3, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/android/pushservice/i/s;->d:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "StatisticPoster"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parse 201 exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    if-lez v0, :cond_0

    :try_start_1
    iget-object v1, p0, Lcom/baidu/android/pushservice/i/s;->b:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/baidu/android/pushservice/PushSettings;->b(Landroid/content/Context;I)V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.baidu.android.pushservice.action.METHOD"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "method"

    const-string v3, "com.baidu.android.pushservice.action.ENBALE_APPSTAT"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/baidu/android/pushservice/i/s;->b:Landroid/content/Context;

    const-class v3, Lcom/baidu/android/pushservice/PushService;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/baidu/android/pushservice/i/s;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const/high16 v4, 0x10000000

    invoke-static {v2, v3, v1, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    int-to-long v4, v0

    add-long/2addr v2, v4

    iget-object v0, p0, Lcom/baidu/android/pushservice/i/s;->b:Landroid/content/Context;

    const-string v4, "alarm"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    const/4 v4, 0x1

    invoke-virtual {v0, v4, v2, v3, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_0

    :cond_3
    const/16 v0, 0xa

    if-ne v1, v0, :cond_4

    iget-object v0, p0, Lcom/baidu/android/pushservice/i/s;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/android/pushservice/PushSettings;->k(Landroid/content/Context;)V

    goto :goto_0

    :cond_4
    const/16 v0, 0xb

    if-ne v1, v0, :cond_0

    iget-object v0, p0, Lcom/baidu/android/pushservice/i/s;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/android/pushservice/PushSettings;->l(Landroid/content/Context;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public b()V
    .locals 1

    new-instance v0, Lcom/baidu/android/pushservice/i/s$1;

    invoke-direct {v0, p0}, Lcom/baidu/android/pushservice/i/s$1;-><init>(Lcom/baidu/android/pushservice/i/s;)V

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/i/s$1;->start()V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "error_code"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "error_msg"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    const v0, 0xc359

    if-ne v1, v0, :cond_0

    iget-object v0, p0, Lcom/baidu/android/pushservice/i/s;->b:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/baidu/android/pushservice/PushSettings;->b(Landroid/content/Context;I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public b(JJII)Z
    .locals 3

    invoke-virtual/range {p0 .. p6}, Lcom/baidu/android/pushservice/i/s;->a(JJII)Ljava/lang/String;

    move-result-object v0

    const-string v1, "https://statsonline.pushct.baidu.com/pushlog_special"

    :try_start_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "1.0"

    invoke-direct {p0, v1, v0, v2}, Lcom/baidu/android/pushservice/i/s;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string v0, "StatisticPoster"

    const-string v1, "OutOfMemoryError when posting"

    invoke-static {v0, v1}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized c()V
    .locals 9

    const/16 v8, 0x3e8

    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v0, p0, Lcom/baidu/android/pushservice/i/s;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/android/pushservice/PushSettings;->e(Landroid/content/Context;)J

    move-result-wide v3

    iget-object v0, p0, Lcom/baidu/android/pushservice/i/s;->b:Landroid/content/Context;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/baidu/android/pushservice/util/q;->a(Landroid/content/Context;JJ)I

    move-result v0

    const/4 v5, 0x0

    move v7, v0

    :goto_0
    if-lt v7, v8, :cond_0

    const/16 v6, 0x3e8

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/baidu/android/pushservice/i/s;->b(JJII)Z

    move-result v0

    if-eqz v0, :cond_2

    add-int/lit16 v0, v7, -0x3e8

    add-int/lit16 v5, v5, 0x3e8

    move v7, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-gt v7, v8, :cond_1

    if-lez v7, :cond_1

    move-object v0, p0

    move v6, v7

    invoke-virtual/range {v0 .. v6}, Lcom/baidu/android/pushservice/i/s;->b(JJII)Z

    move-result v0

    :cond_1
    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/baidu/android/pushservice/i/s;->b:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/baidu/android/pushservice/PushSettings;->a(Landroid/content/Context;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/baidu/android/pushservice/i/s;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/android/pushservice/util/q;->d(Landroid/content/Context;)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "StatisticPoster"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clearBehaviorInfo exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
