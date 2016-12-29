.class Lcom/tutk/IOTC/AVFrameQueue;
.super Ljava/lang/Object;
.source "AVFrameQueue.java"


# instance fields
.field private volatile listData:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/tutk/IOTC/AVFrame;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mSize:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tutk/IOTC/AVFrameQueue;->listData:Ljava/util/LinkedList;

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/tutk/IOTC/AVFrameQueue;->mSize:I

    .line 18
    return-void
.end method


# virtual methods
.method public declared-synchronized addLast(Lcom/tutk/IOTC/AVFrame;)V
    .locals 4
    .param p1, "node"    # Lcom/tutk/IOTC/AVFrame;

    .prologue
    .line 29
    monitor-enter p0

    :try_start_0
    iget v2, p0, Lcom/tutk/IOTC/AVFrameQueue;->mSize:I

    const/16 v3, 0x5dc

    if-le v2, v3, :cond_0

    .line 31
    const/4 v0, 0x1

    .line 34
    .local v0, "bFirst":Z
    :goto_0
    iget-object v2, p0, Lcom/tutk/IOTC/AVFrameQueue;->listData:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 63
    .end local v0    # "bFirst":Z
    :cond_0
    iget-object v2, p0, Lcom/tutk/IOTC/AVFrameQueue;->listData:Ljava/util/LinkedList;

    invoke-virtual {v2, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 64
    iget v2, p0, Lcom/tutk/IOTC/AVFrameQueue;->mSize:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/tutk/IOTC/AVFrameQueue;->mSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    monitor-exit p0

    return-void

    .line 36
    .restart local v0    # "bFirst":Z
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/tutk/IOTC/AVFrameQueue;->listData:Ljava/util/LinkedList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tutk/IOTC/AVFrame;

    .line 38
    .local v1, "frame":Lcom/tutk/IOTC/AVFrame;
    if-eqz v0, :cond_3

    .line 40
    invoke-virtual {v1}, Lcom/tutk/IOTC/AVFrame;->isIFrame()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 41
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "drop I frame"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 45
    :goto_1
    iget-object v2, p0, Lcom/tutk/IOTC/AVFrameQueue;->listData:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 46
    iget v2, p0, Lcom/tutk/IOTC/AVFrameQueue;->mSize:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/tutk/IOTC/AVFrameQueue;->mSize:I

    .line 59
    :goto_2
    const/4 v0, 0x0

    .line 33
    goto :goto_0

    .line 43
    :cond_2
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "drop p frame"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 29
    .end local v0    # "bFirst":Z
    .end local v1    # "frame":Lcom/tutk/IOTC/AVFrame;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 50
    .restart local v0    # "bFirst":Z
    .restart local v1    # "frame":Lcom/tutk/IOTC/AVFrame;
    :cond_3
    :try_start_2
    invoke-virtual {v1}, Lcom/tutk/IOTC/AVFrame;->isIFrame()Z

    move-result v2

    if-nez v2, :cond_0

    .line 53
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "drop p frame"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 54
    iget-object v2, p0, Lcom/tutk/IOTC/AVFrameQueue;->listData:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 55
    iget v2, p0, Lcom/tutk/IOTC/AVFrameQueue;->mSize:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/tutk/IOTC/AVFrameQueue;->mSize:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public declared-synchronized getCount()I
    .locals 1

    .prologue
    .line 24
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/tutk/IOTC/AVFrameQueue;->mSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isFirstIFrame()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 87
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tutk/IOTC/AVFrameQueue;->listData:Ljava/util/LinkedList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tutk/IOTC/AVFrameQueue;->listData:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tutk/IOTC/AVFrameQueue;->listData:Ljava/util/LinkedList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tutk/IOTC/AVFrame;

    invoke-virtual {v0}, Lcom/tutk/IOTC/AVFrame;->isIFrame()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeAll()V
    .locals 1

    .prologue
    .line 80
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tutk/IOTC/AVFrameQueue;->listData:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/tutk/IOTC/AVFrameQueue;->listData:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 83
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/tutk/IOTC/AVFrameQueue;->mSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    monitor-exit p0

    return-void

    .line 80
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeHead()Lcom/tutk/IOTC/AVFrame;
    .locals 2

    .prologue
    .line 69
    monitor-enter p0

    :try_start_0
    iget v1, p0, Lcom/tutk/IOTC/AVFrameQueue;->mSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 70
    const/4 v0, 0x0

    .line 74
    :goto_0
    monitor-exit p0

    return-object v0

    .line 72
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/tutk/IOTC/AVFrameQueue;->listData:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tutk/IOTC/AVFrame;

    .line 73
    .local v0, "frame":Lcom/tutk/IOTC/AVFrame;
    iget v1, p0, Lcom/tutk/IOTC/AVFrameQueue;->mSize:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/tutk/IOTC/AVFrameQueue;->mSize:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 69
    .end local v0    # "frame":Lcom/tutk/IOTC/AVFrame;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
