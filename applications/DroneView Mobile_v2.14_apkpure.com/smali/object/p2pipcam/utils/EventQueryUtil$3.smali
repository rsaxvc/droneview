.class Lobject/p2pipcam/utils/EventQueryUtil$3;
.super Ljava/lang/Object;
.source "EventQueryUtil.java"

# interfaces
.implements Lcom/easyview/basecamera/ICamera$IRespondListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pipcam/utils/EventQueryUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pipcam/utils/EventQueryUtil;


# direct methods
.method constructor <init>(Lobject/p2pipcam/utils/EventQueryUtil;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pipcam/utils/EventQueryUtil$3;->this$0:Lobject/p2pipcam/utils/EventQueryUtil;

    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnRespondResult(Lcom/easyview/basecamera/ICamera;II)V
    .locals 9
    .param p1, "camera"    # Lcom/easyview/basecamera/ICamera;
    .param p2, "cmd"    # I
    .param p3, "result"    # I

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 232
    const-string v2, "Event"

    const-string v3, "onEventInfo cmd: %d result:%d "

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iget-object v2, p0, Lobject/p2pipcam/utils/EventQueryUtil$3;->this$0:Lobject/p2pipcam/utils/EventQueryUtil;

    # getter for: Lobject/p2pipcam/utils/EventQueryUtil;->_handler:Landroid/os/Handler;
    invoke-static {v2}, Lobject/p2pipcam/utils/EventQueryUtil;->access$3(Lobject/p2pipcam/utils/EventQueryUtil;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lobject/p2pipcam/utils/EventQueryUtil$3;->this$0:Lobject/p2pipcam/utils/EventQueryUtil;

    iget-object v3, v3, Lobject/p2pipcam/utils/EventQueryUtil;->runnable_queryEventInfo:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 234
    iget-object v2, p0, Lobject/p2pipcam/utils/EventQueryUtil$3;->this$0:Lobject/p2pipcam/utils/EventQueryUtil;

    # getter for: Lobject/p2pipcam/utils/EventQueryUtil;->_firstRun:Z
    invoke-static {v2}, Lobject/p2pipcam/utils/EventQueryUtil;->access$4(Lobject/p2pipcam/utils/EventQueryUtil;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 236
    check-cast v0, Lcom/easyview/camera/EVBaseCamera;

    .line 237
    .local v0, "evCamera":Lcom/easyview/camera/EVBaseCamera;
    invoke-static {}, Lobject/p2pipcam/utils/Pub;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/easyview/table/EventIndexTable;->getInstance(Landroid/content/Context;)Lcom/easyview/table/EventIndexTable;

    move-result-object v2

    invoke-interface {p1}, Lcom/easyview/basecamera/ICamera;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/easyview/camera/EVBaseCamera;->GetEventFileID()I

    move-result v4

    invoke-virtual {v0}, Lcom/easyview/camera/EVBaseCamera;->getEventIndex()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/easyview/table/EventIndexTable;->updateIndex(Ljava/lang/String;II)V

    .line 238
    iget-object v2, p0, Lobject/p2pipcam/utils/EventQueryUtil$3;->this$0:Lobject/p2pipcam/utils/EventQueryUtil;

    invoke-virtual {v2}, Lobject/p2pipcam/utils/EventQueryUtil;->stop()V

    .line 239
    const-string v2, "Event"

    const-string v3, "first run ,query event finish "

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    .end local v0    # "evCamera":Lcom/easyview/camera/EVBaseCamera;
    :goto_0
    return-void

    .line 242
    :cond_0
    if-gtz p3, :cond_1

    .line 244
    const-string v2, "Event"

    const-string v3, "no tf,query event finish"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    iget-object v2, p0, Lobject/p2pipcam/utils/EventQueryUtil$3;->this$0:Lobject/p2pipcam/utils/EventQueryUtil;

    invoke-virtual {v2}, Lobject/p2pipcam/utils/EventQueryUtil;->stop()V

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 248
    check-cast v0, Lcom/easyview/camera/EVBaseCamera;

    .line 249
    .restart local v0    # "evCamera":Lcom/easyview/camera/EVBaseCamera;
    invoke-static {}, Lobject/p2pipcam/utils/Pub;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/easyview/table/EventIndexTable;->getInstance(Landroid/content/Context;)Lcom/easyview/table/EventIndexTable;

    move-result-object v2

    invoke-interface {p1}, Lcom/easyview/basecamera/ICamera;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/easyview/camera/EVBaseCamera;->GetEventFileID()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/easyview/table/EventIndexTable;->getLastIndex(Ljava/lang/String;I)I

    move-result v1

    .line 251
    .local v1, "last":I
    iget-object v2, p0, Lobject/p2pipcam/utils/EventQueryUtil$3;->this$0:Lobject/p2pipcam/utils/EventQueryUtil;

    add-int/lit8 v3, v1, 0x1

    invoke-static {v2, v3}, Lobject/p2pipcam/utils/EventQueryUtil;->access$5(Lobject/p2pipcam/utils/EventQueryUtil;I)V

    .line 252
    const-string v2, "Event"

    const-string v3, "ready queryEventList %d -> %d"

    new-array v4, v8, [Ljava/lang/Object;

    iget-object v5, p0, Lobject/p2pipcam/utils/EventQueryUtil$3;->this$0:Lobject/p2pipcam/utils/EventQueryUtil;

    # getter for: Lobject/p2pipcam/utils/EventQueryUtil;->_eventListIndex:I
    invoke-static {v5}, Lobject/p2pipcam/utils/EventQueryUtil;->access$1(Lobject/p2pipcam/utils/EventQueryUtil;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    iget-object v2, p0, Lobject/p2pipcam/utils/EventQueryUtil$3;->this$0:Lobject/p2pipcam/utils/EventQueryUtil;

    # getter for: Lobject/p2pipcam/utils/EventQueryUtil;->_eventListIndex:I
    invoke-static {v2}, Lobject/p2pipcam/utils/EventQueryUtil;->access$1(Lobject/p2pipcam/utils/EventQueryUtil;)I

    move-result v2

    if-ge v2, p3, :cond_3

    .line 255
    iget-object v2, p0, Lobject/p2pipcam/utils/EventQueryUtil$3;->this$0:Lobject/p2pipcam/utils/EventQueryUtil;

    # getter for: Lobject/p2pipcam/utils/EventQueryUtil;->_eventListIndex:I
    invoke-static {v2}, Lobject/p2pipcam/utils/EventQueryUtil;->access$1(Lobject/p2pipcam/utils/EventQueryUtil;)I

    move-result v2

    add-int/lit16 v3, p3, -0xc8

    if-ge v2, v3, :cond_2

    iget-object v2, p0, Lobject/p2pipcam/utils/EventQueryUtil$3;->this$0:Lobject/p2pipcam/utils/EventQueryUtil;

    add-int/lit16 v3, p3, -0xc8

    invoke-static {v2, v3}, Lobject/p2pipcam/utils/EventQueryUtil;->access$5(Lobject/p2pipcam/utils/EventQueryUtil;I)V

    .line 256
    :cond_2
    iget-object v2, p0, Lobject/p2pipcam/utils/EventQueryUtil$3;->this$0:Lobject/p2pipcam/utils/EventQueryUtil;

    iget-object v3, p0, Lobject/p2pipcam/utils/EventQueryUtil$3;->this$0:Lobject/p2pipcam/utils/EventQueryUtil;

    # getter for: Lobject/p2pipcam/utils/EventQueryUtil;->_eventListIndex:I
    invoke-static {v3}, Lobject/p2pipcam/utils/EventQueryUtil;->access$1(Lobject/p2pipcam/utils/EventQueryUtil;)I

    move-result v3

    # invokes: Lobject/p2pipcam/utils/EventQueryUtil;->queryEventList(I)V
    invoke-static {v2, v3}, Lobject/p2pipcam/utils/EventQueryUtil;->access$2(Lobject/p2pipcam/utils/EventQueryUtil;I)V

    goto :goto_0

    .line 259
    :cond_3
    iget-object v2, p0, Lobject/p2pipcam/utils/EventQueryUtil$3;->this$0:Lobject/p2pipcam/utils/EventQueryUtil;

    invoke-virtual {v2}, Lobject/p2pipcam/utils/EventQueryUtil;->startQueryEvent()V

    goto :goto_0
.end method
