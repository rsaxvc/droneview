.class public Lobject/p2pipcam/utils/HttpImageAsyncUtil;
.super Landroid/os/AsyncTask;
.source "HttpImageAsyncUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lobject/p2pipcam/utils/HttpImageAsyncUtil$AsyncResult;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field private asyncResult:Lobject/p2pipcam/utils/HttpImageAsyncUtil$AsyncResult;

.field private nPort:I

.field private strIpAddr:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILobject/p2pipcam/utils/HttpImageAsyncUtil$AsyncResult;)V
    .locals 1
    .param p1, "addr"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "async"    # Lobject/p2pipcam/utils/HttpImageAsyncUtil$AsyncResult;

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lobject/p2pipcam/utils/HttpImageAsyncUtil;->asyncResult:Lobject/p2pipcam/utils/HttpImageAsyncUtil$AsyncResult;

    .line 20
    iput-object p1, p0, Lobject/p2pipcam/utils/HttpImageAsyncUtil;->strIpAddr:Ljava/lang/String;

    .line 21
    iput p2, p0, Lobject/p2pipcam/utils/HttpImageAsyncUtil;->nPort:I

    .line 22
    iput-object p3, p0, Lobject/p2pipcam/utils/HttpImageAsyncUtil;->asyncResult:Lobject/p2pipcam/utils/HttpImageAsyncUtil$AsyncResult;

    .line 24
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 8
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 30
    const/4 v5, 0x0

    .line 31
    .local v5, "urlConn":Ljava/net/HttpURLConnection;
    const/4 v3, 0x0

    .line 34
    .local v3, "is":Ljava/io/InputStream;
    :try_start_0
    new-instance v4, Ljava/net/URL;

    const/4 v6, 0x0

    aget-object v6, p1, v6

    invoke-direct {v4, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 35
    .local v4, "url":Ljava/net/URL;
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v5, v0

    .line 36
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 37
    const-string v6, ""

    invoke-static {v3, v6}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 38
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 39
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    if-eqz v5, :cond_0

    .line 45
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 47
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v4    # "url":Ljava/net/URL;
    :cond_0
    :goto_0
    return-object v1

    .line 41
    :catch_0
    move-exception v2

    .line 42
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v7, "HttpImageAsyncUtil Exception"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    if-eqz v5, :cond_1

    .line 45
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 47
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 43
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    .line 44
    if-eqz v5, :cond_2

    .line 45
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 46
    :cond_2
    throw v6
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lobject/p2pipcam/utils/HttpImageAsyncUtil;->doInBackground([Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "result"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 53
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 54
    iget-object v0, p0, Lobject/p2pipcam/utils/HttpImageAsyncUtil;->asyncResult:Lobject/p2pipcam/utils/HttpImageAsyncUtil$AsyncResult;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 55
    iget-object v0, p0, Lobject/p2pipcam/utils/HttpImageAsyncUtil;->asyncResult:Lobject/p2pipcam/utils/HttpImageAsyncUtil$AsyncResult;

    iget-object v1, p0, Lobject/p2pipcam/utils/HttpImageAsyncUtil;->strIpAddr:Ljava/lang/String;

    iget v2, p0, Lobject/p2pipcam/utils/HttpImageAsyncUtil;->nPort:I

    invoke-interface {v0, v1, v2, p1}, Lobject/p2pipcam/utils/HttpImageAsyncUtil$AsyncResult;->ImageResult(Ljava/lang/String;ILandroid/graphics/drawable/Drawable;)V

    .line 57
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lobject/p2pipcam/utils/HttpImageAsyncUtil;->onPostExecute(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 62
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 63
    return-void
.end method

.method protected bridge varargs synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lobject/p2pipcam/utils/HttpImageAsyncUtil;->onProgressUpdate([Ljava/lang/String;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/String;)V
    .locals 0
    .param p1, "values"    # [Ljava/lang/String;

    .prologue
    .line 68
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 69
    return-void
.end method
