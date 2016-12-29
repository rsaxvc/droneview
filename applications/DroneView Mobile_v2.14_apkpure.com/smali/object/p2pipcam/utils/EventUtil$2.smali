.class Lobject/p2pipcam/utils/EventUtil$2;
.super Ljava/lang/Object;
.source "EventUtil.java"

# interfaces
.implements Lcom/easyview/basecamera/ICamera$IRespondListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pipcam/utils/EventUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pipcam/utils/EventUtil;


# direct methods
.method constructor <init>(Lobject/p2pipcam/utils/EventUtil;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pipcam/utils/EventUtil$2;->this$0:Lobject/p2pipcam/utils/EventUtil;

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnRespondResult(Lcom/easyview/basecamera/ICamera;II)V
    .locals 10
    .param p1, "camera"    # Lcom/easyview/basecamera/ICamera;
    .param p2, "cmd"    # I
    .param p3, "result"    # I

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 153
    const-string v3, "Event"

    const-string v4, "onEventInfo cmd: %d result:%d "

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object v3, p0, Lobject/p2pipcam/utils/EventUtil$2;->this$0:Lobject/p2pipcam/utils/EventUtil;

    # getter for: Lobject/p2pipcam/utils/EventUtil;->handler:Landroid/os/Handler;
    invoke-static {v3}, Lobject/p2pipcam/utils/EventUtil;->access$1(Lobject/p2pipcam/utils/EventUtil;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lobject/p2pipcam/utils/EventUtil$2;->this$0:Lobject/p2pipcam/utils/EventUtil;

    iget-object v4, v4, Lobject/p2pipcam/utils/EventUtil;->runnable_queryEventInfo:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 155
    iget-object v3, p0, Lobject/p2pipcam/utils/EventUtil$2;->this$0:Lobject/p2pipcam/utils/EventUtil;

    # getter for: Lobject/p2pipcam/utils/EventUtil;->_firstRun:Z
    invoke-static {v3}, Lobject/p2pipcam/utils/EventUtil;->access$2(Lobject/p2pipcam/utils/EventUtil;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 157
    check-cast v0, Lcom/easyview/camera/EVBaseCamera;

    .line 158
    .local v0, "evCamera":Lcom/easyview/camera/EVBaseCamera;
    invoke-static {}, Lobject/p2pipcam/utils/Pub;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/easyview/table/EventIndexTable;->getInstance(Landroid/content/Context;)Lcom/easyview/table/EventIndexTable;

    move-result-object v3

    invoke-interface {p1}, Lcom/easyview/basecamera/ICamera;->getID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/easyview/camera/EVBaseCamera;->GetEventFileID()I

    move-result v5

    invoke-virtual {v0}, Lcom/easyview/camera/EVBaseCamera;->getEventIndex()I

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/easyview/table/EventIndexTable;->updateIndex(Ljava/lang/String;II)V

    .line 184
    .end local v0    # "evCamera":Lcom/easyview/camera/EVBaseCamera;
    :goto_0
    return-void

    .line 161
    :cond_0
    if-gtz p3, :cond_1

    .line 164
    const-string v3, "Event"

    const-string v4, "onEventInfo no tf"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 170
    check-cast v0, Lcom/easyview/camera/EVBaseCamera;

    .line 171
    .restart local v0    # "evCamera":Lcom/easyview/camera/EVBaseCamera;
    invoke-static {}, Lobject/p2pipcam/utils/Pub;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/easyview/table/EventIndexTable;->getInstance(Landroid/content/Context;)Lcom/easyview/table/EventIndexTable;

    move-result-object v3

    invoke-interface {p1}, Lcom/easyview/basecamera/ICamera;->getID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/easyview/camera/EVBaseCamera;->GetEventFileID()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/easyview/table/EventIndexTable;->getLastIndex(Ljava/lang/String;I)I

    move-result v2

    .line 173
    .local v2, "last":I
    add-int/lit8 v1, v2, 0x1

    .line 174
    .local v1, "index":I
    const-string v3, "Event"

    const-string v4, "ready queryEventList %d -> %d"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    if-ge v1, p3, :cond_3

    .line 177
    add-int/lit16 v3, p3, -0xc8

    if-ge v1, v3, :cond_2

    add-int/lit16 v1, p3, -0xc8

    .line 178
    :cond_2
    iget-object v3, p0, Lobject/p2pipcam/utils/EventUtil$2;->this$0:Lobject/p2pipcam/utils/EventUtil;

    # invokes: Lobject/p2pipcam/utils/EventUtil;->queryEventList(I)V
    invoke-static {v3, v1}, Lobject/p2pipcam/utils/EventUtil;->access$3(Lobject/p2pipcam/utils/EventUtil;I)V

    goto :goto_0

    .line 181
    :cond_3
    iget-object v3, p0, Lobject/p2pipcam/utils/EventUtil$2;->this$0:Lobject/p2pipcam/utils/EventUtil;

    # invokes: Lobject/p2pipcam/utils/EventUtil;->queryEvent()V
    invoke-static {v3}, Lobject/p2pipcam/utils/EventUtil;->access$4(Lobject/p2pipcam/utils/EventUtil;)V

    goto :goto_0
.end method
