.class public Lobject/p2pipcam/utils/AudioDataUtil;
.super Ljava/lang/Object;
.source "AudioDataUtil.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AudioUtil"

.field private static _instance:Lobject/p2pipcam/utils/AudioDataUtil;


# instance fields
.field private _is_write:Z

.field private outStreams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/io/DataOutputStream;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    sput-object v0, Lobject/p2pipcam/utils/AudioDataUtil;->_instance:Lobject/p2pipcam/utils/AudioDataUtil;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lobject/p2pipcam/utils/AudioDataUtil;->_is_write:Z

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lobject/p2pipcam/utils/AudioDataUtil;->outStreams:Ljava/util/Map;

    .line 19
    return-void
.end method

.method public static getInstance()Lobject/p2pipcam/utils/AudioDataUtil;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lobject/p2pipcam/utils/AudioDataUtil;->_instance:Lobject/p2pipcam/utils/AudioDataUtil;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lobject/p2pipcam/utils/AudioDataUtil;

    invoke-direct {v0}, Lobject/p2pipcam/utils/AudioDataUtil;-><init>()V

    sput-object v0, Lobject/p2pipcam/utils/AudioDataUtil;->_instance:Lobject/p2pipcam/utils/AudioDataUtil;

    .line 29
    :cond_0
    sget-object v0, Lobject/p2pipcam/utils/AudioDataUtil;->_instance:Lobject/p2pipcam/utils/AudioDataUtil;

    return-object v0
.end method

.method private getStream(I)Ljava/io/DataOutputStream;
    .locals 8
    .param p1, "type"    # I

    .prologue
    .line 36
    iget-object v3, p0, Lobject/p2pipcam/utils/AudioDataUtil;->outStreams:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lobject/p2pipcam/utils/AudioDataUtil;->outStreams:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/DataOutputStream;

    .line 45
    :goto_0
    return-object v3

    .line 37
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/data/audio%d.raw"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 39
    .local v1, "fileName":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/io/DataOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 40
    .local v2, "s":Ljava/io/DataOutputStream;
    iget-object v3, p0, Lobject/p2pipcam/utils/AudioDataUtil;->outStreams:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .end local v2    # "s":Ljava/io/DataOutputStream;
    :goto_1
    iget-object v3, p0, Lobject/p2pipcam/utils/AudioDataUtil;->outStreams:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/DataOutputStream;

    goto :goto_0

    .line 41
    :catch_0
    move-exception v0

    .line 43
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public BeginWrite()V
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Lobject/p2pipcam/utils/AudioDataUtil;->_is_write:Z

    .line 80
    return-void
.end method

.method public WriteData(I[B)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "data"    # [B

    .prologue
    .line 61
    monitor-enter p0

    .line 62
    :try_start_0
    iget-boolean v2, p0, Lobject/p2pipcam/utils/AudioDataUtil;->_is_write:Z

    if-nez v2, :cond_0

    monitor-exit p0

    .line 76
    :goto_0
    return-void

    .line 63
    :cond_0
    invoke-direct {p0, p1}, Lobject/p2pipcam/utils/AudioDataUtil;->getStream(I)Ljava/io/DataOutputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 66
    .local v1, "s":Ljava/io/DataOutputStream;
    :try_start_1
    invoke-virtual {v1, p2}, Ljava/io/DataOutputStream;->write([B)V

    .line 69
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    :goto_1
    :try_start_2
    monitor-exit p0

    goto :goto_0

    .end local v1    # "s":Ljava/io/DataOutputStream;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 70
    .restart local v1    # "s":Ljava/io/DataOutputStream;
    :catch_0
    move-exception v0

    .line 72
    .local v0, "e":Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 49
    monitor-enter p0

    .line 50
    :try_start_0
    iget-object v1, p0, Lobject/p2pipcam/utils/AudioDataUtil;->outStreams:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 54
    iget-object v1, p0, Lobject/p2pipcam/utils/AudioDataUtil;->outStreams:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 55
    const/4 v1, 0x0

    iput-boolean v1, p0, Lobject/p2pipcam/utils/AudioDataUtil;->_is_write:Z

    .line 56
    const-string v1, "AudioUtil"

    const-string v2, "close data file"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    monitor-exit p0

    .line 58
    return-void

    .line 50
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/DataOutputStream;

    .line 52
    .local v0, "s":Ljava/io/DataOutputStream;
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    goto :goto_0

    .line 49
    .end local v0    # "s":Ljava/io/DataOutputStream;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
