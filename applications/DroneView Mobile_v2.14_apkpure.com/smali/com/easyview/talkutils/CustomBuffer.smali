.class public Lcom/easyview/talkutils/CustomBuffer;
.super Ljava/lang/Object;
.source "CustomBuffer.java"


# instance fields
.field private DataBuffer:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/easyview/talkutils/CustomBufferData;",
            ">;"
        }
    .end annotation
.end field

.field public m_bufullcnt:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/easyview/talkutils/CustomBuffer;->DataBuffer:Ljava/util/List;

    .line 6
    return-void
.end method


# virtual methods
.method public ClearAll()V
    .locals 1

    .prologue
    .line 58
    monitor-enter p0

    .line 59
    :try_start_0
    iget-object v0, p0, Lcom/easyview/talkutils/CustomBuffer;->DataBuffer:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 58
    monitor-exit p0

    .line 61
    return-void

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public GetData(I)Lcom/easyview/talkutils/CustomBufferData;
    .locals 2
    .param p1, "cache_count"    # I

    .prologue
    const/4 v0, 0x0

    .line 44
    monitor-enter p0

    .line 45
    :try_start_0
    iget-object v1, p0, Lcom/easyview/talkutils/CustomBuffer;->DataBuffer:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 46
    monitor-exit p0

    .line 54
    :goto_0
    return-object v0

    .line 49
    :cond_0
    iget-object v1, p0, Lcom/easyview/talkutils/CustomBuffer;->DataBuffer:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v1, p1, :cond_1

    .line 51
    monitor-exit p0

    goto :goto_0

    .line 44
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 54
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/easyview/talkutils/CustomBuffer;->DataBuffer:Ljava/util/List;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/easyview/talkutils/CustomBufferData;

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public RemoveData()Lcom/easyview/talkutils/CustomBufferData;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 31
    monitor-enter p0

    .line 32
    :try_start_0
    iget-object v1, p0, Lcom/easyview/talkutils/CustomBuffer;->DataBuffer:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x5

    if-ge v1, v2, :cond_0

    .line 34
    monitor-exit p0

    .line 39
    :goto_0
    return-object v0

    .line 36
    :cond_0
    iget-object v1, p0, Lcom/easyview/talkutils/CustomBuffer;->DataBuffer:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 37
    monitor-exit p0

    goto :goto_0

    .line 31
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 39
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/easyview/talkutils/CustomBuffer;->DataBuffer:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/easyview/talkutils/CustomBufferData;

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public addData(Lcom/easyview/talkutils/CustomBufferData;)Z
    .locals 3
    .param p1, "data"    # Lcom/easyview/talkutils/CustomBufferData;

    .prologue
    .line 13
    monitor-enter p0

    .line 15
    :try_start_0
    iget-object v1, p0, Lcom/easyview/talkutils/CustomBuffer;->DataBuffer:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x3c

    if-le v1, v2, :cond_1

    iget v1, p0, Lcom/easyview/talkutils/CustomBuffer;->m_bufullcnt:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/easyview/talkutils/CustomBuffer;->m_bufullcnt:I

    .line 17
    :goto_0
    iget v1, p0, Lcom/easyview/talkutils/CustomBuffer;->m_bufullcnt:I

    const/16 v2, 0x64

    if-le v1, v2, :cond_0

    .line 19
    const/4 v0, 0x0

    .line 20
    .local v0, "i":I
    const/16 v0, 0x19

    :goto_1
    iget-object v1, p0, Lcom/easyview/talkutils/CustomBuffer;->DataBuffer:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_2

    .line 25
    .end local v0    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/easyview/talkutils/CustomBuffer;->DataBuffer:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    monitor-exit p0

    const/4 v1, 0x1

    return v1

    .line 16
    :cond_1
    const/4 v1, 0x0

    iput v1, p0, Lcom/easyview/talkutils/CustomBuffer;->m_bufullcnt:I

    goto :goto_0

    .line 13
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 22
    .restart local v0    # "i":I
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/easyview/talkutils/CustomBuffer;->DataBuffer:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
