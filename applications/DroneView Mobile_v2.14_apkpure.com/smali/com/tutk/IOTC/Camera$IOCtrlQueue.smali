.class Lcom/tutk/IOTC/Camera$IOCtrlQueue;
.super Ljava/lang/Object;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tutk/IOTC/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IOCtrlQueue"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tutk/IOTC/Camera$IOCtrlQueue$IOCtrlSet;
    }
.end annotation


# instance fields
.field listData:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/tutk/IOTC/Camera$IOCtrlQueue$IOCtrlSet;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/tutk/IOTC/Camera;


# direct methods
.method private constructor <init>(Lcom/tutk/IOTC/Camera;)V
    .locals 1

    .prologue
    .line 2878
    iput-object p1, p0, Lcom/tutk/IOTC/Camera$IOCtrlQueue;->this$0:Lcom/tutk/IOTC/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2896
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tutk/IOTC/Camera$IOCtrlQueue;->listData:Ljava/util/LinkedList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/tutk/IOTC/Camera;Lcom/tutk/IOTC/Camera$IOCtrlQueue;)V
    .locals 0

    .prologue
    .line 2878
    invoke-direct {p0, p1}, Lcom/tutk/IOTC/Camera$IOCtrlQueue;-><init>(Lcom/tutk/IOTC/Camera;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized Dequeue()Lcom/tutk/IOTC/Camera$IOCtrlQueue$IOCtrlSet;
    .locals 1

    .prologue
    .line 2912
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tutk/IOTC/Camera$IOCtrlQueue;->listData:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/tutk/IOTC/Camera$IOCtrlQueue;->listData:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tutk/IOTC/Camera$IOCtrlQueue$IOCtrlSet;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized Enqueue(II[B)V
    .locals 2
    .param p1, "avIndex"    # I
    .param p2, "type"    # I
    .param p3, "data"    # [B

    .prologue
    .line 2907
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tutk/IOTC/Camera$IOCtrlQueue;->listData:Ljava/util/LinkedList;

    new-instance v1, Lcom/tutk/IOTC/Camera$IOCtrlQueue$IOCtrlSet;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/tutk/IOTC/Camera$IOCtrlQueue$IOCtrlSet;-><init>(Lcom/tutk/IOTC/Camera$IOCtrlQueue;II[B)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2908
    monitor-exit p0

    return-void

    .line 2907
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized Enqueue(I[B)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "data"    # [B

    .prologue
    .line 2903
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tutk/IOTC/Camera$IOCtrlQueue;->listData:Ljava/util/LinkedList;

    new-instance v1, Lcom/tutk/IOTC/Camera$IOCtrlQueue$IOCtrlSet;

    invoke-direct {v1, p0, p1, p2}, Lcom/tutk/IOTC/Camera$IOCtrlQueue$IOCtrlSet;-><init>(Lcom/tutk/IOTC/Camera$IOCtrlQueue;I[B)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2904
    monitor-exit p0

    return-void

    .line 2903
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isEmpty()Z
    .locals 1

    .prologue
    .line 2899
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tutk/IOTC/Camera$IOCtrlQueue;->listData:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

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
    .line 2916
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tutk/IOTC/Camera$IOCtrlQueue;->listData:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2917
    iget-object v0, p0, Lcom/tutk/IOTC/Camera$IOCtrlQueue;->listData:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2918
    :cond_0
    monitor-exit p0

    return-void

    .line 2916
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
