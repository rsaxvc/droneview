.class public Lobject/p2pipcam/utils/TrackData;
.super Ljava/lang/Object;
.source "TrackData.java"


# instance fields
.field private _list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lobject/p2pipcam/utils/TrackData;->_list:Ljava/util/List;

    .line 6
    return-void
.end method


# virtual methods
.method public add([B)Z
    .locals 2
    .param p1, "data"    # [B

    .prologue
    .line 10
    monitor-enter p0

    .line 11
    :try_start_0
    iget-object v0, p0, Lobject/p2pipcam/utils/TrackData;->_list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lobject/p2pipcam/utils/TrackData;->_list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 12
    :cond_0
    iget-object v0, p0, Lobject/p2pipcam/utils/TrackData;->_list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    monitor-exit p0

    const/4 v0, 0x1

    return v0

    .line 10
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 38
    monitor-enter p0

    .line 39
    :try_start_0
    iget-object v0, p0, Lobject/p2pipcam/utils/TrackData;->_list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 38
    monitor-exit p0

    .line 41
    return-void

    .line 38
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public get()[B
    .locals 2

    .prologue
    .line 18
    monitor-enter p0

    .line 19
    :try_start_0
    iget-object v0, p0, Lobject/p2pipcam/utils/TrackData;->_list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    monitor-exit p0

    const/4 v0, 0x0

    .line 20
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lobject/p2pipcam/utils/TrackData;->_list:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    monitor-exit p0

    goto :goto_0

    .line 18
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public get(I)[B
    .locals 2
    .param p1, "cache_count"    # I

    .prologue
    .line 25
    monitor-enter p0

    .line 26
    :try_start_0
    iget-object v0, p0, Lobject/p2pipcam/utils/TrackData;->_list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, p1, :cond_0

    monitor-exit p0

    const/4 v0, 0x0

    .line 27
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lobject/p2pipcam/utils/TrackData;->_list:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    monitor-exit p0

    goto :goto_0

    .line 25
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 32
    monitor-enter p0

    .line 33
    :try_start_0
    iget-object v0, p0, Lobject/p2pipcam/utils/TrackData;->_list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    monitor-exit p0

    return v0

    .line 32
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
