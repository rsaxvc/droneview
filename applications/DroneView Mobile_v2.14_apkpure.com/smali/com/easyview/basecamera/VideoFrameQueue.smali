.class public Lcom/easyview/basecamera/VideoFrameQueue;
.super Ljava/lang/Object;
.source "VideoFrameQueue.java"


# instance fields
.field private volatile listData:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/easyview/basecamera/VideoFrame;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/easyview/basecamera/VideoFrameQueue;->listData:Ljava/util/LinkedList;

    .line 7
    const/4 v0, 0x0

    iput v0, p0, Lcom/easyview/basecamera/VideoFrameQueue;->mSize:I

    .line 5
    return-void
.end method


# virtual methods
.method public declared-synchronized addLast(Lcom/easyview/basecamera/VideoFrame;)V
    .locals 2
    .param p1, "node"    # Lcom/easyview/basecamera/VideoFrame;

    .prologue
    .line 13
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/easyview/basecamera/VideoFrameQueue;->mSize:I

    const/16 v1, 0x96

    if-le v0, v1, :cond_0

    .line 14
    iget-object v0, p0, Lcom/easyview/basecamera/VideoFrameQueue;->listData:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/easyview/basecamera/VideoFrameQueue;->listData:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 18
    iget v0, p0, Lcom/easyview/basecamera/VideoFrameQueue;->mSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/easyview/basecamera/VideoFrameQueue;->mSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    monitor-exit p0

    return-void

    .line 13
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getCount()I
    .locals 1

    .prologue
    .line 9
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/easyview/basecamera/VideoFrameQueue;->mSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeAll()V
    .locals 1

    .prologue
    .line 34
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/easyview/basecamera/VideoFrameQueue;->listData:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/easyview/basecamera/VideoFrameQueue;->listData:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 37
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/easyview/basecamera/VideoFrameQueue;->mSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    monitor-exit p0

    return-void

    .line 34
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeHead()Lcom/easyview/basecamera/VideoFrame;
    .locals 2

    .prologue
    .line 23
    monitor-enter p0

    :try_start_0
    iget v1, p0, Lcom/easyview/basecamera/VideoFrameQueue;->mSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 28
    :goto_0
    monitor-exit p0

    return-object v0

    .line 26
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/easyview/basecamera/VideoFrameQueue;->listData:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/easyview/basecamera/VideoFrame;

    .line 27
    .local v0, "frame":Lcom/easyview/basecamera/VideoFrame;
    iget v1, p0, Lcom/easyview/basecamera/VideoFrameQueue;->mSize:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/easyview/basecamera/VideoFrameQueue;->mSize:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 23
    .end local v0    # "frame":Lcom/easyview/basecamera/VideoFrame;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
