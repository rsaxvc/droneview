.class public Lobject/p2pipcam/utils/HttpUtil;
.super Ljava/lang/Object;
.source "HttpUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lobject/p2pipcam/utils/HttpUtil$HttpResult;
    }
.end annotation


# static fields
.field private static final STR_TAG:Ljava/lang/String; = "HttpUtil"


# instance fields
.field private httpRt:Lobject/p2pipcam/utils/HttpUtil$HttpResult;

.field private url_con:Ljava/net/HttpURLConnection;


# direct methods
.method constructor <init>(Lobject/p2pipcam/utils/HttpUtil$HttpResult;)V
    .locals 1
    .param p1, "httpResult"    # Lobject/p2pipcam/utils/HttpUtil$HttpResult;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lobject/p2pipcam/utils/HttpUtil;->httpRt:Lobject/p2pipcam/utils/HttpUtil$HttpResult;

    .line 21
    iput-object p1, p0, Lobject/p2pipcam/utils/HttpUtil;->httpRt:Lobject/p2pipcam/utils/HttpUtil$HttpResult;

    .line 22
    return-void
.end method


# virtual methods
.method public send_get_request(Ljava/lang/String;IZ)V
    .locals 8
    .param p1, "urlStr"    # Ljava/lang/String;
    .param p2, "operation"    # I
    .param p3, "result"    # Z

    .prologue
    .line 26
    :try_start_0
    const-string v4, ""

    .line 27
    .local v4, "temp":Ljava/lang/String;
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 28
    .local v5, "url":Ljava/net/URL;
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    check-cast v6, Ljava/net/HttpURLConnection;

    iput-object v6, p0, Lobject/p2pipcam/utils/HttpUtil;->url_con:Ljava/net/HttpURLConnection;

    .line 29
    iget-object v6, p0, Lobject/p2pipcam/utils/HttpUtil;->url_con:Ljava/net/HttpURLConnection;

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 30
    .local v1, "in":Ljava/io/InputStream;
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 32
    .local v3, "rd":Ljava/io/BufferedReader;
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .local v2, "inputLine":Ljava/lang/String;
    if-nez v2, :cond_2

    .line 36
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v6, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 37
    if-eqz p3, :cond_0

    iget-object v6, p0, Lobject/p2pipcam/utils/HttpUtil;->httpRt:Lobject/p2pipcam/utils/HttpUtil$HttpResult;

    if-eqz v6, :cond_0

    .line 38
    iget-object v6, p0, Lobject/p2pipcam/utils/HttpUtil;->httpRt:Lobject/p2pipcam/utils/HttpUtil$HttpResult;

    invoke-interface {v6, v4, p2}, Lobject/p2pipcam/utils/HttpUtil$HttpResult;->httpResult(Ljava/lang/String;I)V

    .line 40
    :cond_0
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    iget-object v6, p0, Lobject/p2pipcam/utils/HttpUtil;->url_con:Ljava/net/HttpURLConnection;

    if-eqz v6, :cond_1

    .line 45
    iget-object v6, p0, Lobject/p2pipcam/utils/HttpUtil;->url_con:Ljava/net/HttpURLConnection;

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 48
    .end local v1    # "in":Ljava/io/InputStream;
    .end local v2    # "inputLine":Ljava/lang/String;
    .end local v3    # "rd":Ljava/io/BufferedReader;
    .end local v4    # "temp":Ljava/lang/String;
    .end local v5    # "url":Ljava/net/URL;
    :cond_1
    :goto_1
    return-void

    .line 34
    .restart local v1    # "in":Ljava/io/InputStream;
    .restart local v2    # "inputLine":Ljava/lang/String;
    .restart local v3    # "rd":Ljava/io/BufferedReader;
    .restart local v4    # "temp":Ljava/lang/String;
    .restart local v5    # "url":Ljava/net/URL;
    :cond_2
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    goto :goto_0

    .line 41
    .end local v1    # "in":Ljava/io/InputStream;
    .end local v2    # "inputLine":Ljava/lang/String;
    .end local v3    # "rd":Ljava/io/BufferedReader;
    .end local v4    # "temp":Ljava/lang/String;
    .end local v5    # "url":Ljava/net/URL;
    :catch_0
    move-exception v0

    .line 42
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 44
    iget-object v6, p0, Lobject/p2pipcam/utils/HttpUtil;->url_con:Ljava/net/HttpURLConnection;

    if-eqz v6, :cond_1

    .line 45
    iget-object v6, p0, Lobject/p2pipcam/utils/HttpUtil;->url_con:Ljava/net/HttpURLConnection;

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_1

    .line 43
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    .line 44
    iget-object v7, p0, Lobject/p2pipcam/utils/HttpUtil;->url_con:Ljava/net/HttpURLConnection;

    if-eqz v7, :cond_3

    .line 45
    iget-object v7, p0, Lobject/p2pipcam/utils/HttpUtil;->url_con:Ljava/net/HttpURLConnection;

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 47
    :cond_3
    throw v6
.end method
