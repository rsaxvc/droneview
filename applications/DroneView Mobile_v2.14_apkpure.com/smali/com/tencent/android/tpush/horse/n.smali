.class public Lcom/tencent/android/tpush/horse/n;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field private a:Ljava/nio/channels/SocketChannel;

.field private b:Ljava/util/concurrent/ArrayBlockingQueue;

.field private c:Lcom/tencent/android/tpush/horse/data/StrategyItem;

.field private d:J

.field private e:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/android/tpush/horse/n;->b:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 49
    return-void
.end method

.method private b(Lcom/tencent/android/tpush/horse/data/StrategyItem;)Ljava/net/InetSocketAddress;
    .locals 3

    .prologue
    .line 101
    invoke-virtual {p1}, Lcom/tencent/android/tpush/horse/data/StrategyItem;->d()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 102
    invoke-virtual {p1}, Lcom/tencent/android/tpush/horse/data/StrategyItem;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-virtual {p1}, Lcom/tencent/android/tpush/horse/data/StrategyItem;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tencent/android/tpush/horse/data/StrategyItem;->e()I

    move-result v2

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 107
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-virtual {p1}, Lcom/tencent/android/tpush/horse/data/StrategyItem;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tencent/android/tpush/horse/data/StrategyItem;->b()I

    move-result v2

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private d()V
    .locals 3

    .prologue
    .line 171
    :try_start_0
    iget-object v0, p0, Lcom/tencent/android/tpush/horse/n;->b:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ArrayBlockingQueue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/android/tpush/horse/o;

    .line 172
    if-eqz v0, :cond_0

    .line 173
    iget-object v1, p0, Lcom/tencent/android/tpush/horse/n;->c:Lcom/tencent/android/tpush/horse/data/StrategyItem;

    invoke-interface {v0, v1}, Lcom/tencent/android/tpush/horse/o;->b(Lcom/tencent/android/tpush/horse/data/StrategyItem;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/android/tpush/horse/n;->e:J

    .line 183
    return-void

    .line 175
    :catch_0
    move-exception v0

    .line 176
    const-string v1, "SocketClient"

    const-string v2, "notifyFail"

    invoke-static {v1, v2, v0}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/nio/channels/SocketChannel;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/tencent/android/tpush/horse/n;->a:Ljava/nio/channels/SocketChannel;

    return-object v0
.end method

.method public a(Lcom/qq/taf/jce/JceStruct;)V
    .locals 6

    .prologue
    const/16 v2, 0xa

    .line 116
    new-instance v0, Lcom/qq/taf/jce/JceOutputStream;

    invoke-direct {v0}, Lcom/qq/taf/jce/JceOutputStream;-><init>()V

    .line 117
    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->setServerEncoding(Ljava/lang/String;)I

    .line 118
    invoke-virtual {p1, v0}, Lcom/qq/taf/jce/JceStruct;->writeTo(Lcom/qq/taf/jce/JceOutputStream;)V

    .line 119
    new-instance v3, Lcom/tencent/android/tpush/service/channel/b/h;

    const/4 v1, 0x1

    invoke-direct {v3, v1}, Lcom/tencent/android/tpush/service/channel/b/h;-><init>(I)V

    .line 120
    invoke-virtual {v3, v2}, Lcom/tencent/android/tpush/service/channel/b/h;->b(S)V

    .line 121
    invoke-virtual {v3, v2}, Lcom/tencent/android/tpush/service/channel/b/h;->a(S)V

    .line 122
    invoke-virtual {v0}, Lcom/qq/taf/jce/JceOutputStream;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/tencent/android/tpush/service/channel/b/h;->a([B)V

    .line 123
    const/4 v2, 0x0

    .line 125
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Lcom/tencent/android/tpush/service/channel/exception/InnerException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Lcom/tencent/android/tpush/service/channel/exception/UnexpectedDataException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 126
    :try_start_1
    iget-object v0, p0, Lcom/tencent/android/tpush/horse/n;->c:Lcom/tencent/android/tpush/horse/data/StrategyItem;

    invoke-virtual {v0}, Lcom/tencent/android/tpush/horse/data/StrategyItem;->d()I

    move-result v0

    if-nez v0, :cond_0

    .line 127
    :goto_0
    invoke-virtual {v3}, Lcom/tencent/android/tpush/service/channel/b/h;->b()Z

    move-result v0

    if-nez v0, :cond_2

    .line 128
    invoke-virtual {v3, v1}, Lcom/tencent/android/tpush/service/channel/b/h;->a(Ljava/io/OutputStream;)I
    :try_end_1
    .catch Lcom/tencent/android/tpush/service/channel/exception/InnerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/tencent/android/tpush/service/channel/exception/UnexpectedDataException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 148
    :catch_0
    move-exception v0

    .line 149
    :goto_1
    :try_start_2
    const-string v2, "SocketClient"

    const-string v3, "SocketClient -> send "

    invoke-static {v2, v3, v0}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 150
    invoke-direct {p0}, Lcom/tencent/android/tpush/horse/n;->d()V

    .line 151
    new-instance v2, Lcom/tencent/android/tpush/service/channel/exception/HorseIgnoreException;

    invoke-direct {v2, v0}, Lcom/tencent/android/tpush/service/channel/exception/HorseIgnoreException;-><init>(Ljava/lang/Exception;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 164
    :catchall_0
    move-exception v0

    :goto_2
    invoke-static {v1}, Lcom/tencent/android/tpush/common/e;->a(Ljava/io/Closeable;)Z

    throw v0

    .line 131
    :cond_0
    :try_start_3
    new-instance v0, Lcom/tencent/android/tpush/service/channel/b/b;

    iget-object v2, p0, Lcom/tencent/android/tpush/horse/n;->c:Lcom/tencent/android/tpush/horse/data/StrategyItem;

    invoke-virtual {v2}, Lcom/tencent/android/tpush/horse/data/StrategyItem;->a()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "http://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/tencent/android/tpush/horse/n;->c:Lcom/tencent/android/tpush/horse/data/StrategyItem;

    invoke-virtual {v5}, Lcom/tencent/android/tpush/horse/data/StrategyItem;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/tencent/android/tpush/horse/n;->c:Lcom/tencent/android/tpush/horse/data/StrategyItem;

    invoke-virtual {v5}, Lcom/tencent/android/tpush/horse/data/StrategyItem;->b()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v2, v4}, Lcom/tencent/android/tpush/service/channel/b/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    iget-object v2, p0, Lcom/tencent/android/tpush/horse/n;->c:Lcom/tencent/android/tpush/horse/data/StrategyItem;

    invoke-virtual {v2}, Lcom/tencent/android/tpush/horse/data/StrategyItem;->h()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 136
    const-string v2, "X-Online-Host"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/tencent/android/tpush/horse/n;->c:Lcom/tencent/android/tpush/horse/data/StrategyItem;

    invoke-virtual {v5}, Lcom/tencent/android/tpush/horse/data/StrategyItem;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/tencent/android/tpush/horse/n;->c:Lcom/tencent/android/tpush/horse/data/StrategyItem;

    invoke-virtual {v5}, Lcom/tencent/android/tpush/horse/data/StrategyItem;->b()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lcom/tencent/android/tpush/service/channel/b/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    :cond_1
    invoke-virtual {v0, v3}, Lcom/tencent/android/tpush/service/channel/b/b;->a(Lcom/tencent/android/tpush/service/channel/b/e;)V

    .line 142
    :goto_3
    invoke-virtual {v0}, Lcom/tencent/android/tpush/service/channel/b/b;->b()Z

    move-result v2

    if-nez v2, :cond_2

    .line 143
    invoke-virtual {v0, v1}, Lcom/tencent/android/tpush/service/channel/b/b;->a(Ljava/io/OutputStream;)I
    :try_end_3
    .catch Lcom/tencent/android/tpush/service/channel/exception/InnerException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/tencent/android/tpush/service/channel/exception/UnexpectedDataException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    .line 152
    :catch_1
    move-exception v0

    .line 153
    :goto_4
    :try_start_4
    const-string v2, "SocketClient"

    const-string v3, "SocketClient -> send "

    invoke-static {v2, v3, v0}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 154
    invoke-direct {p0}, Lcom/tencent/android/tpush/horse/n;->d()V

    .line 155
    new-instance v2, Lcom/tencent/android/tpush/service/channel/exception/HorseIgnoreException;

    invoke-direct {v2, v0}, Lcom/tencent/android/tpush/service/channel/exception/HorseIgnoreException;-><init>(Ljava/lang/Exception;)V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 146
    :cond_2
    :try_start_5
    iget-object v0, p0, Lcom/tencent/android/tpush/horse/n;->a:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    .line 147
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V
    :try_end_5
    .catch Lcom/tencent/android/tpush/service/channel/exception/InnerException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lcom/tencent/android/tpush/service/channel/exception/UnexpectedDataException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 164
    invoke-static {v1}, Lcom/tencent/android/tpush/common/e;->a(Ljava/io/Closeable;)Z

    .line 166
    :goto_5
    return-void

    .line 156
    :catch_2
    move-exception v0

    move-object v1, v2

    .line 157
    :goto_6
    :try_start_6
    const-string v2, "SocketClient"

    const-string v3, "SocketClient -> send "

    invoke-static {v2, v3, v0}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 158
    invoke-direct {p0}, Lcom/tencent/android/tpush/horse/n;->d()V

    .line 159
    new-instance v2, Lcom/tencent/android/tpush/service/channel/exception/HorseIgnoreException;

    invoke-direct {v2, v0}, Lcom/tencent/android/tpush/service/channel/exception/HorseIgnoreException;-><init>(Ljava/lang/Exception;)V

    throw v2

    .line 160
    :catch_3
    move-exception v0

    move-object v1, v2

    .line 161
    :goto_7
    const-string v2, "SocketClient"

    const-string v3, "SocketClient -> send "

    invoke-static {v2, v3, v0}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 162
    invoke-direct {p0}, Lcom/tencent/android/tpush/horse/n;->d()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 164
    invoke-static {v1}, Lcom/tencent/android/tpush/common/e;->a(Ljava/io/Closeable;)Z

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto/16 :goto_2

    .line 160
    :catch_4
    move-exception v0

    goto :goto_7

    .line 156
    :catch_5
    move-exception v0

    goto :goto_6

    .line 152
    :catch_6
    move-exception v0

    move-object v1, v2

    goto :goto_4

    .line 148
    :catch_7
    move-exception v0

    move-object v1, v2

    goto/16 :goto_1
.end method

.method public a(Lcom/tencent/android/tpush/horse/data/StrategyItem;)V
    .locals 7

    .prologue
    .line 52
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/android/tpush/horse/n;->d:J

    .line 53
    iput-object p1, p0, Lcom/tencent/android/tpush/horse/n;->c:Lcom/tencent/android/tpush/horse/data/StrategyItem;

    .line 56
    :try_start_0
    invoke-static {}, Lcom/tencent/android/tpush/service/m;->e()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/android/tpush/XGPush4Msdk;->getDebugServerInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 58
    invoke-static {v0}, Lcom/tencent/android/tpush/service/d/f;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 59
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 60
    array-length v0, v2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-le v0, v1, :cond_0

    .line 61
    new-instance v0, Lcom/tencent/android/tpush/horse/data/StrategyItem;

    const/4 v1, 0x0

    aget-object v1, v2, v1

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1}, Lcom/tencent/android/tpush/horse/data/StrategyItem;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/tencent/android/tpush/horse/data/StrategyItem;->e()I

    move-result v4

    invoke-virtual {p1}, Lcom/tencent/android/tpush/horse/data/StrategyItem;->d()I

    move-result v5

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/tencent/android/tpush/horse/data/StrategyItem;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    .line 68
    iput-object v0, p0, Lcom/tencent/android/tpush/horse/n;->c:Lcom/tencent/android/tpush/horse/data/StrategyItem;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :cond_0
    :goto_0
    :try_start_1
    const-string v0, "SocketClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connect to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/android/tpush/horse/n;->c:Lcom/tencent/android/tpush/horse/data/StrategyItem;

    invoke-virtual {v2}, Lcom/tencent/android/tpush/horse/data/StrategyItem;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/android/tpush/horse/n;->c:Lcom/tencent/android/tpush/horse/data/StrategyItem;

    invoke-virtual {v2}, Lcom/tencent/android/tpush/horse/data/StrategyItem;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-static {}, Ljava/nio/channels/SocketChannel;->open()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/android/tpush/horse/n;->a:Ljava/nio/channels/SocketChannel;

    .line 79
    iget-object v0, p0, Lcom/tencent/android/tpush/horse/n;->a:Ljava/nio/channels/SocketChannel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/nio/channels/SocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 80
    iget-object v0, p0, Lcom/tencent/android/tpush/horse/n;->c:Lcom/tencent/android/tpush/horse/data/StrategyItem;

    invoke-direct {p0, v0}, Lcom/tencent/android/tpush/horse/n;->b(Lcom/tencent/android/tpush/horse/data/StrategyItem;)Ljava/net/InetSocketAddress;

    move-result-object v0

    .line 81
    iget-object v1, p0, Lcom/tencent/android/tpush/horse/n;->a:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v1}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v1

    invoke-static {}, Lcom/tencent/android/tpush/horse/e;->b()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 83
    iget-object v0, p0, Lcom/tencent/android/tpush/horse/n;->a:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v0

    invoke-static {}, Lcom/tencent/android/tpush/horse/e;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V
    :try_end_1
    .catch Ljava/lang/AssertionError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 95
    return-void

    .line 71
    :catch_0
    move-exception v0

    .line 73
    const-string v1, "SocketClient"

    const-string v2, " XGPush4Msdk.getDebugServerInfo"

    invoke-static {v1, v2, v0}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 84
    :catch_1
    move-exception v0

    move-object v1, v0

    .line 85
    const-string v0, "SocketClient"

    const-string v2, ""

    invoke-static {v0, v2, v1}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 86
    invoke-direct {p0}, Lcom/tencent/android/tpush/horse/n;->d()V

    .line 87
    new-instance v2, Lcom/tencent/android/tpush/service/channel/exception/HorseIgnoreException;

    if-nez p1, :cond_1

    const-string v0, "null"

    :goto_1
    invoke-direct {v2, v0, v1}, Lcom/tencent/android/tpush/service/channel/exception/HorseIgnoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_1
    invoke-virtual {p1}, Lcom/tencent/android/tpush/horse/data/StrategyItem;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 89
    :catch_2
    move-exception v0

    move-object v1, v0

    .line 90
    const-string v0, "SocketClient"

    const-string v2, "socket connect error"

    invoke-static {v0, v2, v1}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 91
    invoke-direct {p0}, Lcom/tencent/android/tpush/horse/n;->d()V

    .line 92
    new-instance v2, Lcom/tencent/android/tpush/service/channel/exception/HorseIgnoreException;

    if-nez p1, :cond_2

    const-string v0, "null"

    :goto_2
    invoke-direct {v2, v0, v1}, Lcom/tencent/android/tpush/service/channel/exception/HorseIgnoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_2
    invoke-virtual {p1}, Lcom/tencent/android/tpush/horse/data/StrategyItem;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method public a(Lcom/tencent/android/tpush/horse/o;)V
    .locals 3

    .prologue
    .line 331
    :try_start_0
    iget-object v0, p0, Lcom/tencent/android/tpush/horse/n;->b:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ArrayBlockingQueue;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 335
    :goto_0
    return-void

    .line 332
    :catch_0
    move-exception v0

    .line 333
    const-string v1, "SocketClient"

    const-string v2, "register"

    invoke-static {v1, v2, v0}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public b()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 188
    .line 189
    iget-object v2, p0, Lcom/tencent/android/tpush/horse/n;->c:Lcom/tencent/android/tpush/horse/data/StrategyItem;

    if-nez v2, :cond_0

    .line 190
    invoke-direct {p0}, Lcom/tencent/android/tpush/horse/n;->d()V

    .line 191
    new-instance v0, Lcom/tencent/android/tpush/service/channel/exception/HorseIgnoreException;

    const-string v1, "Recv() fail,because mStrategyItem is null"

    invoke-direct {v0, v1}, Lcom/tencent/android/tpush/service/channel/exception/HorseIgnoreException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 194
    :cond_0
    iget-object v2, p0, Lcom/tencent/android/tpush/horse/n;->c:Lcom/tencent/android/tpush/horse/data/StrategyItem;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/tencent/android/tpush/horse/n;->c:Lcom/tencent/android/tpush/horse/data/StrategyItem;

    invoke-virtual {v2}, Lcom/tencent/android/tpush/horse/data/StrategyItem;->d()I

    move-result v2

    if-nez v2, :cond_2

    .line 196
    new-instance v2, Lcom/tencent/android/tpush/service/channel/b/g;

    invoke-direct {v2}, Lcom/tencent/android/tpush/service/channel/b/g;-><init>()V

    .line 198
    :try_start_0
    iget-object v3, p0, Lcom/tencent/android/tpush/horse/n;->a:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v3}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 200
    const/16 v4, 0x400

    new-array v4, v4, [B

    .line 202
    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 203
    :goto_0
    invoke-virtual {v2}, Lcom/tencent/android/tpush/service/channel/b/g;->b()Z

    move-result v6

    if-nez v6, :cond_1

    .line 204
    array-length v6, v4

    sub-int/2addr v6, v0

    invoke-virtual {v3, v4, v0, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 206
    invoke-virtual {v2, v5}, Lcom/tencent/android/tpush/service/channel/b/g;->a(Ljava/io/InputStream;)I
    :try_end_0
    .catch Lcom/tencent/android/tpush/service/channel/exception/UnexpectedDataException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/tencent/android/tpush/service/channel/exception/InnerException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    goto :goto_0

    .line 209
    :catch_0
    move-exception v0

    .line 210
    const-string v1, "SocketClient"

    const-string v2, "SocketClient -> recv "

    invoke-static {v1, v2, v0}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 211
    invoke-direct {p0}, Lcom/tencent/android/tpush/horse/n;->d()V

    .line 212
    new-instance v1, Lcom/tencent/android/tpush/service/channel/exception/HorseIgnoreException;

    invoke-direct {v1, v0}, Lcom/tencent/android/tpush/service/channel/exception/HorseIgnoreException;-><init>(Ljava/lang/Exception;)V

    throw v1

    .line 208
    :cond_1
    :try_start_1
    invoke-virtual {v2}, Lcom/tencent/android/tpush/service/channel/b/g;->k()[B
    :try_end_1
    .catch Lcom/tencent/android/tpush/service/channel/exception/UnexpectedDataException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/tencent/android/tpush/service/channel/exception/InnerException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v0

    .line 272
    :goto_1
    if-nez v0, :cond_5

    .line 273
    const-string v0, "XGService"

    const-string v1, ">> dataBuffer is null"

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/a/a;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    invoke-direct {p0}, Lcom/tencent/android/tpush/horse/n;->d()V

    .line 316
    :goto_2
    return-void

    .line 213
    :catch_1
    move-exception v0

    .line 214
    const-string v1, "SocketClient"

    const-string v2, "SocketClient -> recv "

    invoke-static {v1, v2, v0}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 215
    invoke-direct {p0}, Lcom/tencent/android/tpush/horse/n;->d()V

    .line 216
    new-instance v1, Lcom/tencent/android/tpush/service/channel/exception/HorseIgnoreException;

    invoke-direct {v1, v0}, Lcom/tencent/android/tpush/service/channel/exception/HorseIgnoreException;-><init>(Ljava/lang/Exception;)V

    throw v1

    .line 217
    :catch_2
    move-exception v0

    .line 218
    const-string v1, "SocketClient"

    const-string v2, "SocketClient -> recv "

    invoke-static {v1, v2, v0}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 219
    invoke-direct {p0}, Lcom/tencent/android/tpush/horse/n;->d()V

    .line 220
    new-instance v1, Lcom/tencent/android/tpush/service/channel/exception/HorseIgnoreException;

    invoke-direct {v1, v0}, Lcom/tencent/android/tpush/service/channel/exception/HorseIgnoreException;-><init>(Ljava/lang/Exception;)V

    throw v1

    .line 221
    :catch_3
    move-exception v0

    .line 222
    const-string v1, "SocketClient"

    const-string v2, "SocketClient -> recv "

    invoke-static {v1, v2, v0}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 223
    invoke-direct {p0}, Lcom/tencent/android/tpush/horse/n;->d()V

    .line 224
    new-instance v1, Lcom/tencent/android/tpush/service/channel/exception/HorseIgnoreException;

    invoke-direct {v1, v0}, Lcom/tencent/android/tpush/service/channel/exception/HorseIgnoreException;-><init>(Ljava/lang/Exception;)V

    throw v1

    .line 225
    :catch_4
    move-exception v0

    .line 226
    const-string v2, "SocketClient"

    const-string v3, "SocketClient -> recv "

    invoke-static {v2, v3, v0}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 227
    invoke-direct {p0}, Lcom/tencent/android/tpush/horse/n;->d()V

    :goto_3
    move-object v0, v1

    goto :goto_1

    .line 230
    :cond_2
    new-instance v2, Lcom/tencent/android/tpush/service/channel/b/a;

    invoke-direct {v2}, Lcom/tencent/android/tpush/service/channel/b/a;-><init>()V

    .line 232
    :try_start_2
    iget-object v3, p0, Lcom/tencent/android/tpush/horse/n;->a:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v3}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 234
    const/16 v4, 0x400

    new-array v4, v4, [B

    .line 236
    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 237
    :goto_4
    invoke-virtual {v2}, Lcom/tencent/android/tpush/service/channel/b/a;->b()Z

    move-result v6

    if-nez v6, :cond_3

    .line 238
    array-length v6, v4

    sub-int/2addr v6, v0

    invoke-virtual {v3, v4, v0, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    add-int/2addr v0, v6

    .line 240
    invoke-virtual {v2, v5}, Lcom/tencent/android/tpush/service/channel/b/a;->a(Ljava/io/InputStream;)I
    :try_end_2
    .catch Lcom/tencent/android/tpush/service/channel/exception/UnexpectedDataException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Lcom/tencent/android/tpush/service/channel/exception/InnerException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_9

    goto :goto_4

    .line 251
    :catch_5
    move-exception v0

    .line 252
    const-string v1, "XGService"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 253
    invoke-direct {p0}, Lcom/tencent/android/tpush/horse/n;->d()V

    .line 254
    new-instance v1, Lcom/tencent/android/tpush/service/channel/exception/HorseIgnoreException;

    invoke-direct {v1, v0}, Lcom/tencent/android/tpush/service/channel/exception/HorseIgnoreException;-><init>(Ljava/lang/Exception;)V

    throw v1

    .line 242
    :cond_3
    if-eqz v2, :cond_4

    :try_start_3
    iget-object v0, v2, Lcom/tencent/android/tpush/service/channel/b/a;->i:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    iget-object v0, v2, Lcom/tencent/android/tpush/service/channel/b/a;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 244
    iget-object v0, v2, Lcom/tencent/android/tpush/service/channel/b/a;->i:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/android/tpush/service/channel/b/g;

    invoke-virtual {v0}, Lcom/tencent/android/tpush/service/channel/b/g;->k()[B

    move-result-object v0

    goto/16 :goto_1

    .line 246
    :cond_4
    const-string v0, "XGService"

    const-string v2, ">> packet is null or packet.recvPackets is null"

    invoke-static {v0, v2}, Lcom/tencent/android/tpush/a/a;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    invoke-direct {p0}, Lcom/tencent/android/tpush/horse/n;->d()V
    :try_end_3
    .catch Lcom/tencent/android/tpush/service/channel/exception/UnexpectedDataException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Lcom/tencent/android/tpush/service/channel/exception/InnerException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_9

    goto/16 :goto_2

    .line 255
    :catch_6
    move-exception v0

    .line 256
    const-string v1, "XGService"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 257
    invoke-direct {p0}, Lcom/tencent/android/tpush/horse/n;->d()V

    .line 258
    new-instance v1, Lcom/tencent/android/tpush/service/channel/exception/HorseIgnoreException;

    invoke-direct {v1, v0}, Lcom/tencent/android/tpush/service/channel/exception/HorseIgnoreException;-><init>(Ljava/lang/Exception;)V

    throw v1

    .line 259
    :catch_7
    move-exception v0

    .line 260
    const-string v1, "XGService"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 261
    invoke-direct {p0}, Lcom/tencent/android/tpush/horse/n;->d()V

    .line 262
    new-instance v1, Lcom/tencent/android/tpush/service/channel/exception/HorseIgnoreException;

    invoke-direct {v1, v0}, Lcom/tencent/android/tpush/service/channel/exception/HorseIgnoreException;-><init>(Ljava/lang/Exception;)V

    throw v1

    .line 263
    :catch_8
    move-exception v0

    .line 264
    const-string v1, "XGService"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 265
    invoke-direct {p0}, Lcom/tencent/android/tpush/horse/n;->d()V

    .line 266
    new-instance v1, Lcom/tencent/android/tpush/service/channel/exception/HorseIgnoreException;

    invoke-direct {v1, v0}, Lcom/tencent/android/tpush/service/channel/exception/HorseIgnoreException;-><init>(Ljava/lang/Exception;)V

    throw v1

    .line 267
    :catch_9
    move-exception v0

    .line 268
    const-string v2, "XGService"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 269
    invoke-direct {p0}, Lcom/tencent/android/tpush/horse/n;->d()V

    goto/16 :goto_3

    .line 277
    :cond_5
    new-instance v2, Lcom/qq/taf/jce/JceInputStream;

    invoke-direct {v2, v0}, Lcom/qq/taf/jce/JceInputStream;-><init>([B)V

    .line 278
    const-string v0, "UTF-8"

    invoke-virtual {v2, v0}, Lcom/qq/taf/jce/JceInputStream;->setServerEncoding(Ljava/lang/String;)I

    .line 279
    new-instance v3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsRedirectRsp;

    invoke-direct {v3}, Lcom/tencent/android/tpush/service/channel/protocol/TpnsRedirectRsp;-><init>()V

    .line 280
    invoke-virtual {v3, v2}, Lcom/tencent/android/tpush/service/channel/protocol/TpnsRedirectRsp;->readFrom(Lcom/qq/taf/jce/JceInputStream;)V

    .line 287
    :try_start_4
    iget-object v0, p0, Lcom/tencent/android/tpush/horse/n;->b:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ArrayBlockingQueue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/android/tpush/horse/o;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_a

    move-object v7, v0

    .line 291
    :goto_5
    if-eqz v7, :cond_7

    .line 292
    iget-wide v0, v3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsRedirectRsp;->ip:J

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/service/d/f;->a(J)Ljava/lang/String;

    move-result-object v1

    .line 293
    iget v2, v3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsRedirectRsp;->port:I

    .line 294
    new-instance v0, Lcom/tencent/android/tpush/horse/data/StrategyItem;

    iget-object v3, p0, Lcom/tencent/android/tpush/horse/n;->c:Lcom/tencent/android/tpush/horse/data/StrategyItem;

    invoke-virtual {v3}, Lcom/tencent/android/tpush/horse/data/StrategyItem;->c()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/android/tpush/horse/n;->c:Lcom/tencent/android/tpush/horse/data/StrategyItem;

    invoke-virtual {v4}, Lcom/tencent/android/tpush/horse/data/StrategyItem;->e()I

    move-result v4

    iget-object v5, p0, Lcom/tencent/android/tpush/horse/n;->c:Lcom/tencent/android/tpush/horse/data/StrategyItem;

    invoke-virtual {v5}, Lcom/tencent/android/tpush/horse/data/StrategyItem;->d()I

    move-result v5

    iget-object v6, p0, Lcom/tencent/android/tpush/horse/n;->c:Lcom/tencent/android/tpush/horse/data/StrategyItem;

    invoke-virtual {v6}, Lcom/tencent/android/tpush/horse/data/StrategyItem;->f()I

    move-result v6

    invoke-direct/range {v0 .. v6}, Lcom/tencent/android/tpush/horse/data/StrategyItem;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    .line 300
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    if-nez v2, :cond_8

    .line 301
    :cond_6
    if-eqz v7, :cond_7

    .line 302
    iget-object v0, p0, Lcom/tencent/android/tpush/horse/n;->c:Lcom/tencent/android/tpush/horse/data/StrategyItem;

    invoke-interface {v7, v0}, Lcom/tencent/android/tpush/horse/o;->a(Lcom/tencent/android/tpush/horse/data/StrategyItem;)V

    .line 311
    :cond_7
    :goto_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/android/tpush/horse/n;->e:J

    goto/16 :goto_2

    .line 288
    :catch_a
    move-exception v0

    .line 289
    const-string v2, "XGService"

    const-string v4, "callBacks.remove()"

    invoke-static {v2, v4, v0}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v7, v1

    goto :goto_5

    .line 305
    :cond_8
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/android/tpush/horse/data/StrategyItem;->a(I)V

    .line 306
    if-eqz v7, :cond_7

    .line 307
    iget-object v1, p0, Lcom/tencent/android/tpush/horse/n;->c:Lcom/tencent/android/tpush/horse/data/StrategyItem;

    invoke-interface {v7, v1, v0}, Lcom/tencent/android/tpush/horse/o;->a(Lcom/tencent/android/tpush/horse/data/StrategyItem;Lcom/tencent/android/tpush/horse/data/StrategyItem;)V

    goto :goto_6
.end method

.method public c()V
    .locals 3

    .prologue
    .line 321
    :try_start_0
    iget-object v0, p0, Lcom/tencent/android/tpush/horse/n;->a:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->close()V

    .line 322
    iget-object v0, p0, Lcom/tencent/android/tpush/horse/n;->b:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ArrayBlockingQueue;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 326
    :goto_0
    return-void

    .line 323
    :catch_0
    move-exception v0

    .line 324
    const-string v1, "SocketClient"

    const-string v2, "mSocketChannel.close()"

    invoke-static {v1, v2, v0}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
