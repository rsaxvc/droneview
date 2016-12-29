.class public Lobject/p2pipcam/utils/RecordDownTask;
.super Ljava/lang/Object;
.source "RecordDownTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lobject/p2pipcam/utils/RecordDownTask$IRecordDownListener;,
        Lobject/p2pipcam/utils/RecordDownTask$TaskItem;,
        Lobject/p2pipcam/utils/RecordDownTask$TaskItemList;,
        Lobject/p2pipcam/utils/RecordDownTask$TaskThread;
    }
.end annotation


# static fields
.field private static _instance:Lobject/p2pipcam/utils/RecordDownTask;


# instance fields
.field private _finishListener:Lobject/p2pipcam/utils/RecordDownTask$IRecordDownListener;

.field private _thread:Lobject/p2pipcam/utils/RecordDownTask$TaskThread;

.field private _thread_run:Z

.field private taskList:Lobject/p2pipcam/utils/RecordDownTask$TaskItemList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    sput-object v0, Lobject/p2pipcam/utils/RecordDownTask;->_instance:Lobject/p2pipcam/utils/RecordDownTask;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 227
    new-instance v0, Lobject/p2pipcam/utils/RecordDownTask$TaskItemList;

    invoke-direct {v0, p0}, Lobject/p2pipcam/utils/RecordDownTask$TaskItemList;-><init>(Lobject/p2pipcam/utils/RecordDownTask;)V

    iput-object v0, p0, Lobject/p2pipcam/utils/RecordDownTask;->taskList:Lobject/p2pipcam/utils/RecordDownTask$TaskItemList;

    .line 228
    iput-object v1, p0, Lobject/p2pipcam/utils/RecordDownTask;->_thread:Lobject/p2pipcam/utils/RecordDownTask$TaskThread;

    .line 229
    const/4 v0, 0x0

    iput-boolean v0, p0, Lobject/p2pipcam/utils/RecordDownTask;->_thread_run:Z

    .line 230
    iput-object v1, p0, Lobject/p2pipcam/utils/RecordDownTask;->_finishListener:Lobject/p2pipcam/utils/RecordDownTask$IRecordDownListener;

    .line 21
    return-void
.end method

.method static synthetic access$0(Lobject/p2pipcam/utils/RecordDownTask;)Z
    .locals 1

    .prologue
    .line 229
    iget-boolean v0, p0, Lobject/p2pipcam/utils/RecordDownTask;->_thread_run:Z

    return v0
.end method

.method static synthetic access$1(Lobject/p2pipcam/utils/RecordDownTask;)Lobject/p2pipcam/utils/RecordDownTask$TaskItemList;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lobject/p2pipcam/utils/RecordDownTask;->taskList:Lobject/p2pipcam/utils/RecordDownTask$TaskItemList;

    return-object v0
.end method

.method static synthetic access$2(Lobject/p2pipcam/utils/RecordDownTask;Z)V
    .locals 0

    .prologue
    .line 229
    iput-boolean p1, p0, Lobject/p2pipcam/utils/RecordDownTask;->_thread_run:Z

    return-void
.end method

.method static synthetic access$3(Lobject/p2pipcam/utils/RecordDownTask;)Lobject/p2pipcam/utils/RecordDownTask$IRecordDownListener;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lobject/p2pipcam/utils/RecordDownTask;->_finishListener:Lobject/p2pipcam/utils/RecordDownTask$IRecordDownListener;

    return-object v0
.end method

.method static synthetic access$4(Lobject/p2pipcam/utils/RecordDownTask;Lobject/p2pipcam/utils/RecordDownTask$TaskThread;)V
    .locals 0

    .prologue
    .line 228
    iput-object p1, p0, Lobject/p2pipcam/utils/RecordDownTask;->_thread:Lobject/p2pipcam/utils/RecordDownTask$TaskThread;

    return-void
.end method

.method public static getInstance()Lobject/p2pipcam/utils/RecordDownTask;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lobject/p2pipcam/utils/RecordDownTask;->_instance:Lobject/p2pipcam/utils/RecordDownTask;

    if-nez v0, :cond_0

    new-instance v0, Lobject/p2pipcam/utils/RecordDownTask;

    invoke-direct {v0}, Lobject/p2pipcam/utils/RecordDownTask;-><init>()V

    sput-object v0, Lobject/p2pipcam/utils/RecordDownTask;->_instance:Lobject/p2pipcam/utils/RecordDownTask;

    .line 26
    :cond_0
    sget-object v0, Lobject/p2pipcam/utils/RecordDownTask;->_instance:Lobject/p2pipcam/utils/RecordDownTask;

    return-object v0
.end method


# virtual methods
.method public Add(Ljava/lang/String;I)V
    .locals 2
    .param p1, "strID"    # Ljava/lang/String;
    .param p2, "recordIndex"    # I

    .prologue
    const/4 v1, 0x0

    .line 233
    new-instance v0, Lobject/p2pipcam/utils/RecordDownTask$TaskItem;

    invoke-direct {v0, p0}, Lobject/p2pipcam/utils/RecordDownTask$TaskItem;-><init>(Lobject/p2pipcam/utils/RecordDownTask;)V

    .line 234
    .local v0, "item":Lobject/p2pipcam/utils/RecordDownTask$TaskItem;
    iput-object p1, v0, Lobject/p2pipcam/utils/RecordDownTask$TaskItem;->strID:Ljava/lang/String;

    .line 235
    iput p2, v0, Lobject/p2pipcam/utils/RecordDownTask$TaskItem;->recordIndex:I

    .line 236
    iput v1, v0, Lobject/p2pipcam/utils/RecordDownTask$TaskItem;->total_size:I

    .line 237
    iput v1, v0, Lobject/p2pipcam/utils/RecordDownTask$TaskItem;->down_size:I

    .line 238
    iput v1, v0, Lobject/p2pipcam/utils/RecordDownTask$TaskItem;->pause:I

    .line 239
    iget-object v1, p0, Lobject/p2pipcam/utils/RecordDownTask;->taskList:Lobject/p2pipcam/utils/RecordDownTask$TaskItemList;

    invoke-virtual {v1, v0}, Lobject/p2pipcam/utils/RecordDownTask$TaskItemList;->add(Lobject/p2pipcam/utils/RecordDownTask$TaskItem;)Z

    .line 240
    return-void
.end method

.method public Clear()V
    .locals 2

    .prologue
    .line 270
    iget-object v0, p0, Lobject/p2pipcam/utils/RecordDownTask;->_thread:Lobject/p2pipcam/utils/RecordDownTask$TaskThread;

    if-eqz v0, :cond_0

    .line 272
    invoke-static {}, Lcom/easyview/evnet/EVNet;->StopDownRecord()I

    .line 273
    iget-object v0, p0, Lobject/p2pipcam/utils/RecordDownTask;->_thread:Lobject/p2pipcam/utils/RecordDownTask$TaskThread;

    invoke-virtual {v0}, Lobject/p2pipcam/utils/RecordDownTask$TaskThread;->Stop()V

    .line 275
    :cond_0
    iget-object v0, p0, Lobject/p2pipcam/utils/RecordDownTask;->taskList:Lobject/p2pipcam/utils/RecordDownTask$TaskItemList;

    invoke-virtual {v0}, Lobject/p2pipcam/utils/RecordDownTask$TaskItemList;->Clear()V

    .line 276
    iget-object v0, p0, Lobject/p2pipcam/utils/RecordDownTask;->taskList:Lobject/p2pipcam/utils/RecordDownTask$TaskItemList;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lobject/p2pipcam/utils/RecordDownTask$TaskItemList;->access$0(Lobject/p2pipcam/utils/RecordDownTask$TaskItemList;Lobject/p2pipcam/utils/RecordDownTask$TaskItem;)V

    .line 277
    return-void
.end method

.method public Pause()V
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lobject/p2pipcam/utils/RecordDownTask;->_thread:Lobject/p2pipcam/utils/RecordDownTask$TaskThread;

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lobject/p2pipcam/utils/RecordDownTask;->_thread:Lobject/p2pipcam/utils/RecordDownTask$TaskThread;

    invoke-virtual {v0}, Lobject/p2pipcam/utils/RecordDownTask$TaskThread;->Pause()V

    .line 260
    :cond_0
    return-void
.end method

.method public Resume()V
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lobject/p2pipcam/utils/RecordDownTask;->_thread:Lobject/p2pipcam/utils/RecordDownTask$TaskThread;

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lobject/p2pipcam/utils/RecordDownTask;->_thread:Lobject/p2pipcam/utils/RecordDownTask$TaskThread;

    invoke-virtual {v0}, Lobject/p2pipcam/utils/RecordDownTask$TaskThread;->Resume()V

    .line 267
    :cond_0
    return-void
.end method

.method public SetFinishListener(Lobject/p2pipcam/utils/RecordDownTask$IRecordDownListener;)V
    .locals 0
    .param p1, "listener"    # Lobject/p2pipcam/utils/RecordDownTask$IRecordDownListener;

    .prologue
    .line 280
    iput-object p1, p0, Lobject/p2pipcam/utils/RecordDownTask;->_finishListener:Lobject/p2pipcam/utils/RecordDownTask$IRecordDownListener;

    .line 281
    return-void
.end method

.method public Start()V
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lobject/p2pipcam/utils/RecordDownTask;->_thread:Lobject/p2pipcam/utils/RecordDownTask$TaskThread;

    if-nez v0, :cond_0

    .line 245
    new-instance v0, Lobject/p2pipcam/utils/RecordDownTask$TaskThread;

    invoke-direct {v0, p0}, Lobject/p2pipcam/utils/RecordDownTask$TaskThread;-><init>(Lobject/p2pipcam/utils/RecordDownTask;)V

    iput-object v0, p0, Lobject/p2pipcam/utils/RecordDownTask;->_thread:Lobject/p2pipcam/utils/RecordDownTask$TaskThread;

    .line 246
    const/4 v0, 0x1

    iput-boolean v0, p0, Lobject/p2pipcam/utils/RecordDownTask;->_thread_run:Z

    .line 247
    iget-object v0, p0, Lobject/p2pipcam/utils/RecordDownTask;->_thread:Lobject/p2pipcam/utils/RecordDownTask$TaskThread;

    invoke-virtual {v0}, Lobject/p2pipcam/utils/RecordDownTask$TaskThread;->start()V

    .line 249
    :cond_0
    return-void
.end method

.method public getItem(Ljava/lang/String;I)Lobject/p2pipcam/utils/RecordDownTask$TaskItem;
    .locals 1
    .param p1, "strID"    # Ljava/lang/String;
    .param p2, "index"    # I

    .prologue
    .line 252
    iget-object v0, p0, Lobject/p2pipcam/utils/RecordDownTask;->taskList:Lobject/p2pipcam/utils/RecordDownTask$TaskItemList;

    invoke-virtual {v0, p1, p2}, Lobject/p2pipcam/utils/RecordDownTask$TaskItemList;->get(Ljava/lang/String;I)Lobject/p2pipcam/utils/RecordDownTask$TaskItem;

    move-result-object v0

    return-object v0
.end method

.method public isDownloading()Z
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lobject/p2pipcam/utils/RecordDownTask;->_thread:Lobject/p2pipcam/utils/RecordDownTask$TaskThread;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 285
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
