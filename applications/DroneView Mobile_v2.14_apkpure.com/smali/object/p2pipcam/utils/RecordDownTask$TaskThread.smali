.class Lobject/p2pipcam/utils/RecordDownTask$TaskThread;
.super Ljava/lang/Thread;
.source "RecordDownTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pipcam/utils/RecordDownTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TaskThread"
.end annotation


# instance fields
.field private downListener:Lcom/easyview/basecamera/ICamera$IDownloadListener;

.field private down_size:I

.field private isPause:Z

.field private isStop:Z

.field item:Lobject/p2pipcam/utils/RecordDownTask$TaskItem;

.field final synthetic this$0:Lobject/p2pipcam/utils/RecordDownTask;


# direct methods
.method constructor <init>(Lobject/p2pipcam/utils/RecordDownTask;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 112
    iput-object p1, p0, Lobject/p2pipcam/utils/RecordDownTask$TaskThread;->this$0:Lobject/p2pipcam/utils/RecordDownTask;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 113
    const/4 v0, 0x0

    iput-object v0, p0, Lobject/p2pipcam/utils/RecordDownTask$TaskThread;->item:Lobject/p2pipcam/utils/RecordDownTask$TaskItem;

    .line 114
    iput-boolean v1, p0, Lobject/p2pipcam/utils/RecordDownTask$TaskThread;->isPause:Z

    .line 115
    iput-boolean v1, p0, Lobject/p2pipcam/utils/RecordDownTask$TaskThread;->isStop:Z

    .line 116
    iput v1, p0, Lobject/p2pipcam/utils/RecordDownTask$TaskThread;->down_size:I

    .line 213
    new-instance v0, Lobject/p2pipcam/utils/RecordDownTask$TaskThread$1;

    invoke-direct {v0, p0}, Lobject/p2pipcam/utils/RecordDownTask$TaskThread$1;-><init>(Lobject/p2pipcam/utils/RecordDownTask$TaskThread;)V

    iput-object v0, p0, Lobject/p2pipcam/utils/RecordDownTask$TaskThread;->downListener:Lcom/easyview/basecamera/ICamera$IDownloadListener;

    return-void
.end method

.method private onThreadWait()V
    .locals 2

    .prologue
    .line 144
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    .line 144
    monitor-exit p0

    .line 150
    :goto_0
    return-void

    .line 144
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 147
    :catch_0
    move-exception v0

    .line 148
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized Pause()V
    .locals 1

    .prologue
    .line 128
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lobject/p2pipcam/utils/RecordDownTask$TaskThread;->isPause:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    monitor-exit p0

    return-void

    .line 128
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized Resume()V
    .locals 1

    .prologue
    .line 134
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lobject/p2pipcam/utils/RecordDownTask$TaskThread;->isPause:Z

    if-eqz v0, :cond_0

    .line 135
    const/4 v0, 0x0

    iput-boolean v0, p0, Lobject/p2pipcam/utils/RecordDownTask$TaskThread;->isPause:Z

    .line 136
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    :cond_0
    monitor-exit p0

    return-void

    .line 134
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized Stop()V
    .locals 1

    .prologue
    .line 121
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lobject/p2pipcam/utils/RecordDownTask$TaskThread;->isStop:Z

    .line 122
    invoke-virtual {p0}, Lobject/p2pipcam/utils/RecordDownTask$TaskThread;->interrupt()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    monitor-exit p0

    return-void

    .line 121
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 8

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 153
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 154
    :cond_0
    :goto_0
    iget-object v2, p0, Lobject/p2pipcam/utils/RecordDownTask$TaskThread;->this$0:Lobject/p2pipcam/utils/RecordDownTask;

    # getter for: Lobject/p2pipcam/utils/RecordDownTask;->_thread_run:Z
    invoke-static {v2}, Lobject/p2pipcam/utils/RecordDownTask;->access$0(Lobject/p2pipcam/utils/RecordDownTask;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 210
    :cond_1
    :goto_1
    iget-object v2, p0, Lobject/p2pipcam/utils/RecordDownTask$TaskThread;->this$0:Lobject/p2pipcam/utils/RecordDownTask;

    # getter for: Lobject/p2pipcam/utils/RecordDownTask;->taskList:Lobject/p2pipcam/utils/RecordDownTask$TaskItemList;
    invoke-static {v2}, Lobject/p2pipcam/utils/RecordDownTask;->access$1(Lobject/p2pipcam/utils/RecordDownTask;)Lobject/p2pipcam/utils/RecordDownTask$TaskItemList;

    move-result-object v2

    invoke-static {v2, v5}, Lobject/p2pipcam/utils/RecordDownTask$TaskItemList;->access$0(Lobject/p2pipcam/utils/RecordDownTask$TaskItemList;Lobject/p2pipcam/utils/RecordDownTask$TaskItem;)V

    .line 211
    iget-object v2, p0, Lobject/p2pipcam/utils/RecordDownTask$TaskThread;->this$0:Lobject/p2pipcam/utils/RecordDownTask;

    invoke-static {v2, v5}, Lobject/p2pipcam/utils/RecordDownTask;->access$4(Lobject/p2pipcam/utils/RecordDownTask;Lobject/p2pipcam/utils/RecordDownTask$TaskThread;)V

    .line 212
    return-void

    .line 156
    :cond_2
    iget-boolean v2, p0, Lobject/p2pipcam/utils/RecordDownTask$TaskThread;->isPause:Z

    if-eqz v2, :cond_3

    invoke-direct {p0}, Lobject/p2pipcam/utils/RecordDownTask$TaskThread;->onThreadWait()V

    .line 157
    :cond_3
    iget-boolean v2, p0, Lobject/p2pipcam/utils/RecordDownTask$TaskThread;->isStop:Z

    if-nez v2, :cond_1

    .line 158
    iget-object v2, p0, Lobject/p2pipcam/utils/RecordDownTask$TaskThread;->this$0:Lobject/p2pipcam/utils/RecordDownTask;

    # getter for: Lobject/p2pipcam/utils/RecordDownTask;->taskList:Lobject/p2pipcam/utils/RecordDownTask$TaskItemList;
    invoke-static {v2}, Lobject/p2pipcam/utils/RecordDownTask;->access$1(Lobject/p2pipcam/utils/RecordDownTask;)Lobject/p2pipcam/utils/RecordDownTask$TaskItemList;

    move-result-object v2

    invoke-virtual {v2}, Lobject/p2pipcam/utils/RecordDownTask$TaskItemList;->top()Lobject/p2pipcam/utils/RecordDownTask$TaskItem;

    move-result-object v2

    iput-object v2, p0, Lobject/p2pipcam/utils/RecordDownTask$TaskThread;->item:Lobject/p2pipcam/utils/RecordDownTask$TaskItem;

    .line 159
    iget-object v2, p0, Lobject/p2pipcam/utils/RecordDownTask$TaskThread;->item:Lobject/p2pipcam/utils/RecordDownTask$TaskItem;

    if-eqz v2, :cond_9

    .line 161
    invoke-static {}, Lcom/easyview/camera/CameraList;->GetInstance()Lcom/easyview/camera/CameraList;

    move-result-object v2

    iget-object v3, p0, Lobject/p2pipcam/utils/RecordDownTask$TaskThread;->item:Lobject/p2pipcam/utils/RecordDownTask$TaskItem;

    iget-object v3, v3, Lobject/p2pipcam/utils/RecordDownTask$TaskItem;->strID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/easyview/camera/CameraList;->getCamera(Ljava/lang/String;)Lcom/easyview/basecamera/BaseCamera;

    move-result-object v0

    .line 162
    .local v0, "camera":Lcom/easyview/basecamera/BaseCamera;
    iget-object v2, p0, Lobject/p2pipcam/utils/RecordDownTask$TaskThread;->item:Lobject/p2pipcam/utils/RecordDownTask$TaskItem;

    const/16 v3, 0x64

    iput v3, v2, Lobject/p2pipcam/utils/RecordDownTask$TaskItem;->total_size:I

    .line 163
    iget-object v2, p0, Lobject/p2pipcam/utils/RecordDownTask$TaskThread;->item:Lobject/p2pipcam/utils/RecordDownTask$TaskItem;

    iput v6, v2, Lobject/p2pipcam/utils/RecordDownTask$TaskItem;->count:I

    .line 164
    iget-object v2, p0, Lobject/p2pipcam/utils/RecordDownTask$TaskThread;->item:Lobject/p2pipcam/utils/RecordDownTask$TaskItem;

    iget v2, v2, Lobject/p2pipcam/utils/RecordDownTask$TaskItem;->recordIndex:I

    iget-object v3, p0, Lobject/p2pipcam/utils/RecordDownTask$TaskThread;->downListener:Lcom/easyview/basecamera/ICamera$IDownloadListener;

    invoke-virtual {v0, v2, v7, v3}, Lcom/easyview/basecamera/BaseCamera;->downRecord(IILcom/easyview/basecamera/ICamera$IDownloadListener;)V

    .line 165
    :cond_4
    :goto_2
    iget-object v2, p0, Lobject/p2pipcam/utils/RecordDownTask$TaskThread;->this$0:Lobject/p2pipcam/utils/RecordDownTask;

    # getter for: Lobject/p2pipcam/utils/RecordDownTask;->_thread_run:Z
    invoke-static {v2}, Lobject/p2pipcam/utils/RecordDownTask;->access$0(Lobject/p2pipcam/utils/RecordDownTask;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 197
    :cond_5
    :goto_3
    const-wide/16 v2, 0x3e8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 202
    :goto_4
    iget-object v2, p0, Lobject/p2pipcam/utils/RecordDownTask$TaskThread;->item:Lobject/p2pipcam/utils/RecordDownTask$TaskItem;

    iget-object v2, v2, Lobject/p2pipcam/utils/RecordDownTask$TaskItem;->listener:Lobject/p2pipcam/utils/RecordDownTask$IRecordDownListener;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lobject/p2pipcam/utils/RecordDownTask$TaskThread;->item:Lobject/p2pipcam/utils/RecordDownTask$TaskItem;

    iget-object v2, v2, Lobject/p2pipcam/utils/RecordDownTask$TaskItem;->listener:Lobject/p2pipcam/utils/RecordDownTask$IRecordDownListener;

    iget-object v3, p0, Lobject/p2pipcam/utils/RecordDownTask$TaskThread;->item:Lobject/p2pipcam/utils/RecordDownTask$TaskItem;

    invoke-interface {v2, v3}, Lobject/p2pipcam/utils/RecordDownTask$IRecordDownListener;->OnProgress(Lobject/p2pipcam/utils/RecordDownTask$TaskItem;)V

    goto :goto_0

    .line 167
    :cond_6
    iget-boolean v2, p0, Lobject/p2pipcam/utils/RecordDownTask$TaskThread;->isPause:Z

    if-eqz v2, :cond_7

    .line 169
    iget-object v2, p0, Lobject/p2pipcam/utils/RecordDownTask$TaskThread;->item:Lobject/p2pipcam/utils/RecordDownTask$TaskItem;

    iget v2, v2, Lobject/p2pipcam/utils/RecordDownTask$TaskItem;->down_size:I

    iput v2, p0, Lobject/p2pipcam/utils/RecordDownTask$TaskThread;->down_size:I

    .line 170
    invoke-virtual {v0, v5}, Lcom/easyview/basecamera/BaseCamera;->stopDownRecord(Lcom/easyview/basecamera/ICamera$IDownloadListener;)V

    .line 171
    invoke-direct {p0}, Lobject/p2pipcam/utils/RecordDownTask$TaskThread;->onThreadWait()V

    .line 172
    iget-object v2, p0, Lobject/p2pipcam/utils/RecordDownTask$TaskThread;->item:Lobject/p2pipcam/utils/RecordDownTask$TaskItem;

    iget v2, v2, Lobject/p2pipcam/utils/RecordDownTask$TaskItem;->recordIndex:I

    iget v3, p0, Lobject/p2pipcam/utils/RecordDownTask$TaskThread;->down_size:I

    iget-object v4, p0, Lobject/p2pipcam/utils/RecordDownTask$TaskThread;->downListener:Lcom/easyview/basecamera/ICamera$IDownloadListener;

    invoke-virtual {v0, v2, v3, v4}, Lcom/easyview/basecamera/BaseCamera;->downRecord(IILcom/easyview/basecamera/ICamera$IDownloadListener;)V

    .line 174
    :cond_7
    iget-boolean v2, p0, Lobject/p2pipcam/utils/RecordDownTask$TaskThread;->isStop:Z

    if-eqz v2, :cond_8

    .line 176
    invoke-virtual {v0, v5}, Lcom/easyview/basecamera/BaseCamera;->stopDownRecord(Lcom/easyview/basecamera/ICamera$IDownloadListener;)V

    goto :goto_3

    .line 180
    :cond_8
    iget-object v2, p0, Lobject/p2pipcam/utils/RecordDownTask$TaskThread;->item:Lobject/p2pipcam/utils/RecordDownTask$TaskItem;

    iget v2, v2, Lobject/p2pipcam/utils/RecordDownTask$TaskItem;->down_size:I

    iget-object v3, p0, Lobject/p2pipcam/utils/RecordDownTask$TaskThread;->item:Lobject/p2pipcam/utils/RecordDownTask$TaskItem;

    iget v3, v3, Lobject/p2pipcam/utils/RecordDownTask$TaskItem;->total_size:I

    if-ge v2, v3, :cond_5

    .line 182
    iget-object v2, p0, Lobject/p2pipcam/utils/RecordDownTask$TaskThread;->item:Lobject/p2pipcam/utils/RecordDownTask$TaskItem;

    iget v3, v2, Lobject/p2pipcam/utils/RecordDownTask$TaskItem;->count:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lobject/p2pipcam/utils/RecordDownTask$TaskItem;->count:I

    .line 184
    const-wide/16 v2, 0x3e8

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 189
    :goto_5
    iget-object v2, p0, Lobject/p2pipcam/utils/RecordDownTask$TaskThread;->item:Lobject/p2pipcam/utils/RecordDownTask$TaskItem;

    iget v2, v2, Lobject/p2pipcam/utils/RecordDownTask$TaskItem;->count:I

    const/4 v3, 0x5

    if-le v2, v3, :cond_4

    .line 191
    iget-object v2, p0, Lobject/p2pipcam/utils/RecordDownTask$TaskThread;->item:Lobject/p2pipcam/utils/RecordDownTask$TaskItem;

    iput v6, v2, Lobject/p2pipcam/utils/RecordDownTask$TaskItem;->count:I

    .line 192
    iget-object v2, p0, Lobject/p2pipcam/utils/RecordDownTask$TaskThread;->item:Lobject/p2pipcam/utils/RecordDownTask$TaskItem;

    iget v2, v2, Lobject/p2pipcam/utils/RecordDownTask$TaskItem;->recordIndex:I

    iget-object v3, p0, Lobject/p2pipcam/utils/RecordDownTask$TaskThread;->downListener:Lcom/easyview/basecamera/ICamera$IDownloadListener;

    invoke-virtual {v0, v2, v7, v3}, Lcom/easyview/basecamera/BaseCamera;->downRecord(IILcom/easyview/basecamera/ICamera$IDownloadListener;)V

    goto :goto_2

    .line 185
    :catch_0
    move-exception v1

    .line 187
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_5

    .line 198
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v1

    .line 200
    .restart local v1    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_4

    .line 205
    .end local v0    # "camera":Lcom/easyview/basecamera/BaseCamera;
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_9
    iget-object v2, p0, Lobject/p2pipcam/utils/RecordDownTask$TaskThread;->this$0:Lobject/p2pipcam/utils/RecordDownTask;

    invoke-static {v2, v6}, Lobject/p2pipcam/utils/RecordDownTask;->access$2(Lobject/p2pipcam/utils/RecordDownTask;Z)V

    .line 206
    iget-object v2, p0, Lobject/p2pipcam/utils/RecordDownTask$TaskThread;->this$0:Lobject/p2pipcam/utils/RecordDownTask;

    # getter for: Lobject/p2pipcam/utils/RecordDownTask;->_finishListener:Lobject/p2pipcam/utils/RecordDownTask$IRecordDownListener;
    invoke-static {v2}, Lobject/p2pipcam/utils/RecordDownTask;->access$3(Lobject/p2pipcam/utils/RecordDownTask;)Lobject/p2pipcam/utils/RecordDownTask$IRecordDownListener;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lobject/p2pipcam/utils/RecordDownTask$TaskThread;->this$0:Lobject/p2pipcam/utils/RecordDownTask;

    # getter for: Lobject/p2pipcam/utils/RecordDownTask;->_finishListener:Lobject/p2pipcam/utils/RecordDownTask$IRecordDownListener;
    invoke-static {v2}, Lobject/p2pipcam/utils/RecordDownTask;->access$3(Lobject/p2pipcam/utils/RecordDownTask;)Lobject/p2pipcam/utils/RecordDownTask$IRecordDownListener;

    move-result-object v2

    invoke-interface {v2, v5}, Lobject/p2pipcam/utils/RecordDownTask$IRecordDownListener;->OnProgress(Lobject/p2pipcam/utils/RecordDownTask$TaskItem;)V

    goto/16 :goto_1
.end method
