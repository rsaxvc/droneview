.class public Lcom/easyview/common/NetImageView;
.super Landroid/widget/ImageView;
.source "NetImageView.java"


# instance fields
.field private _finish:Z

.field handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 34
    new-instance v0, Lcom/easyview/common/NetImageView$1;

    invoke-direct {v0, p0}, Lcom/easyview/common/NetImageView$1;-><init>(Lcom/easyview/common/NetImageView;)V

    iput-object v0, p0, Lcom/easyview/common/NetImageView;->handler:Landroid/os/Handler;

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    new-instance v0, Lcom/easyview/common/NetImageView$1;

    invoke-direct {v0, p0}, Lcom/easyview/common/NetImageView$1;-><init>(Lcom/easyview/common/NetImageView;)V

    iput-object v0, p0, Lcom/easyview/common/NetImageView;->handler:Landroid/os/Handler;

    .line 32
    return-void
.end method

.method static synthetic access$0(Lcom/easyview/common/NetImageView;Z)V
    .locals 0

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/easyview/common/NetImageView;->_finish:Z

    return-void
.end method

.method static synthetic access$1(Lcom/easyview/common/NetImageView;Ljava/lang/String;)[B
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/easyview/common/NetImageView;->httpServer(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method private httpServer(Ljava/lang/String;)[B
    .locals 9
    .param p1, "imagepath"    # Ljava/lang/String;

    .prologue
    .line 60
    const/4 v2, 0x0

    .line 61
    .local v2, "conn":Ljava/net/HttpURLConnection;
    const/4 v4, 0x0

    .line 62
    .local v4, "is":Ljava/io/InputStream;
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 64
    .local v6, "os":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v7, Ljava/net/URL;

    invoke-direct {v7, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v2, v0

    .line 65
    const/16 v7, 0x1388

    invoke-virtual {v2, v7}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 66
    const-string v7, "GET"

    invoke-virtual {v2, v7}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 67
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v7

    const/16 v8, 0xc8

    if-ne v7, v8, :cond_1

    .line 68
    invoke-virtual {v2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 69
    const/16 v7, 0x400

    new-array v1, v7, [B

    .line 70
    .local v1, "buffer":[B
    const/4 v5, 0x0

    .line 71
    .local v5, "len":I
    :goto_0
    invoke-virtual {v4, v1}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v7, -0x1

    if-ne v5, v7, :cond_0

    .line 74
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 84
    :try_start_1
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 90
    .end local v1    # "buffer":[B
    .end local v5    # "len":I
    :goto_1
    return-object v7

    .line 72
    .restart local v1    # "buffer":[B
    .restart local v5    # "len":I
    :cond_0
    const/4 v7, 0x0

    :try_start_2
    invoke-virtual {v6, v1, v7, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 76
    .end local v1    # "buffer":[B
    .end local v5    # "len":I
    :catch_0
    move-exception v3

    .line 78
    .local v3, "e":Ljava/net/MalformedURLException;
    :try_start_3
    invoke-virtual {v3}, Ljava/net/MalformedURLException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 84
    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 90
    .end local v3    # "e":Ljava/net/MalformedURLException;
    :goto_2
    const/4 v7, 0x0

    goto :goto_1

    .line 85
    .restart local v1    # "buffer":[B
    .restart local v5    # "len":I
    :catch_1
    move-exception v3

    .line 87
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 85
    .end local v1    # "buffer":[B
    .end local v5    # "len":I
    .local v3, "e":Ljava/net/MalformedURLException;
    :catch_2
    move-exception v3

    .line 87
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 79
    .end local v3    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v3

    .line 81
    .restart local v3    # "e":Ljava/io/IOException;
    :try_start_5
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 84
    :try_start_6
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_2

    .line 85
    :catch_4
    move-exception v3

    .line 87
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 82
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 84
    :try_start_7
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 89
    :goto_3
    throw v7

    .line 85
    :catch_5
    move-exception v3

    .line 87
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 84
    .end local v3    # "e":Ljava/io/IOException;
    :cond_1
    :try_start_8
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_2

    .line 85
    :catch_6
    move-exception v3

    .line 87
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method


# virtual methods
.method public isFinish()Z
    .locals 1

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/easyview/common/NetImageView;->_finish:Z

    return v0
.end method

.method public setNetImage(Ljava/lang/String;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/easyview/common/NetImageView;->_finish:Z

    .line 52
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/easyview/common/NetImageView$2;

    invoke-direct {v1, p0, p1}, Lcom/easyview/common/NetImageView$2;-><init>(Lcom/easyview/common/NetImageView;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 56
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 57
    return-void
.end method
