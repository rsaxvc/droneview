.class public Lobject/p2pipcam/utils/RecordDownTask$TaskItemList;
.super Ljava/lang/Object;
.source "RecordDownTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pipcam/utils/RecordDownTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TaskItemList"
.end annotation


# instance fields
.field private _item:Lobject/p2pipcam/utils/RecordDownTask$TaskItem;

.field private _list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lobject/p2pipcam/utils/RecordDownTask$TaskItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lobject/p2pipcam/utils/RecordDownTask;


# direct methods
.method public constructor <init>(Lobject/p2pipcam/utils/RecordDownTask;)V
    .locals 1

    .prologue
    .line 70
    iput-object p1, p0, Lobject/p2pipcam/utils/RecordDownTask$TaskItemList;->this$0:Lobject/p2pipcam/utils/RecordDownTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lobject/p2pipcam/utils/RecordDownTask$TaskItemList;->_list:Ljava/util/List;

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lobject/p2pipcam/utils/RecordDownTask$TaskItemList;->_item:Lobject/p2pipcam/utils/RecordDownTask$TaskItem;

    return-void
.end method

.method static synthetic access$0(Lobject/p2pipcam/utils/RecordDownTask$TaskItemList;Lobject/p2pipcam/utils/RecordDownTask$TaskItem;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lobject/p2pipcam/utils/RecordDownTask$TaskItemList;->_item:Lobject/p2pipcam/utils/RecordDownTask$TaskItem;

    return-void
.end method


# virtual methods
.method public Clear()V
    .locals 1

    .prologue
    .line 107
    monitor-enter p0

    .line 108
    :try_start_0
    iget-object v0, p0, Lobject/p2pipcam/utils/RecordDownTask$TaskItemList;->_list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 107
    monitor-exit p0

    .line 110
    return-void

    .line 107
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public add(Lobject/p2pipcam/utils/RecordDownTask$TaskItem;)Z
    .locals 1
    .param p1, "data"    # Lobject/p2pipcam/utils/RecordDownTask$TaskItem;

    .prologue
    .line 75
    monitor-enter p0

    .line 76
    :try_start_0
    iget-object v0, p0, Lobject/p2pipcam/utils/RecordDownTask$TaskItemList;->_list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    monitor-exit p0

    const/4 v0, 0x1

    return v0

    .line 75
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public get(Ljava/lang/String;I)Lobject/p2pipcam/utils/RecordDownTask$TaskItem;
    .locals 3
    .param p1, "strID"    # Ljava/lang/String;
    .param p2, "index"    # I

    .prologue
    .line 91
    monitor-enter p0

    .line 92
    :try_start_0
    iget-object v1, p0, Lobject/p2pipcam/utils/RecordDownTask$TaskItemList;->_item:Lobject/p2pipcam/utils/RecordDownTask$TaskItem;

    if-eqz v1, :cond_0

    .line 94
    iget-object v1, p0, Lobject/p2pipcam/utils/RecordDownTask$TaskItemList;->_item:Lobject/p2pipcam/utils/RecordDownTask$TaskItem;

    iget-object v1, v1, Lobject/p2pipcam/utils/RecordDownTask$TaskItem;->strID:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lobject/p2pipcam/utils/RecordDownTask$TaskItemList;->_item:Lobject/p2pipcam/utils/RecordDownTask$TaskItem;

    iget v1, v1, Lobject/p2pipcam/utils/RecordDownTask$TaskItem;->recordIndex:I

    if-ne v1, p2, :cond_0

    .line 95
    iget-object v0, p0, Lobject/p2pipcam/utils/RecordDownTask$TaskItemList;->_item:Lobject/p2pipcam/utils/RecordDownTask$TaskItem;

    monitor-exit p0

    .line 102
    :goto_0
    return-object v0

    .line 97
    :cond_0
    iget-object v1, p0, Lobject/p2pipcam/utils/RecordDownTask$TaskItemList;->_list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 102
    monitor-exit p0

    const/4 v0, 0x0

    goto :goto_0

    .line 97
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lobject/p2pipcam/utils/RecordDownTask$TaskItem;

    .line 99
    .local v0, "item":Lobject/p2pipcam/utils/RecordDownTask$TaskItem;
    iget-object v2, v0, Lobject/p2pipcam/utils/RecordDownTask$TaskItem;->strID:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, v0, Lobject/p2pipcam/utils/RecordDownTask$TaskItem;->recordIndex:I

    if-ne v2, p2, :cond_1

    .line 100
    monitor-exit p0

    goto :goto_0

    .line 91
    .end local v0    # "item":Lobject/p2pipcam/utils/RecordDownTask$TaskItem;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public top()Lobject/p2pipcam/utils/RecordDownTask$TaskItem;
    .locals 2

    .prologue
    .line 81
    monitor-enter p0

    .line 82
    :try_start_0
    iget-object v0, p0, Lobject/p2pipcam/utils/RecordDownTask$TaskItemList;->_list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    monitor-exit p0

    const/4 v0, 0x0

    .line 86
    :goto_0
    return-object v0

    .line 85
    :cond_0
    iget-object v0, p0, Lobject/p2pipcam/utils/RecordDownTask$TaskItemList;->_list:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lobject/p2pipcam/utils/RecordDownTask$TaskItem;

    iput-object v0, p0, Lobject/p2pipcam/utils/RecordDownTask$TaskItemList;->_item:Lobject/p2pipcam/utils/RecordDownTask$TaskItem;

    .line 86
    iget-object v0, p0, Lobject/p2pipcam/utils/RecordDownTask$TaskItemList;->_item:Lobject/p2pipcam/utils/RecordDownTask$TaskItem;

    monitor-exit p0

    goto :goto_0

    .line 81
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
