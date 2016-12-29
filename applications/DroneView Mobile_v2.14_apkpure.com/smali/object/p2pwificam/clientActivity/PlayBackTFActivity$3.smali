.class Lobject/p2pwificam/clientActivity/PlayBackTFActivity$3;
.super Ljava/lang/Object;
.source "PlayBackTFActivity.java"

# interfaces
.implements Lcom/easyview/basecamera/ICamera$IRespondListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pwificam/clientActivity/PlayBackTFActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/PlayBackTFActivity;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/PlayBackTFActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/PlayBackTFActivity$3;->this$0:Lobject/p2pwificam/clientActivity/PlayBackTFActivity;

    .line 519
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnRespondResult(Lcom/easyview/basecamera/ICamera;II)V
    .locals 6
    .param p1, "camera"    # Lcom/easyview/basecamera/ICamera;
    .param p2, "cmd"    # I
    .param p3, "result"    # I

    .prologue
    .line 523
    move-object v0, p1

    check-cast v0, Lcom/easyview/tutk/TUTKCamera;

    .line 524
    .local v0, "cam":Lcom/easyview/tutk/TUTKCamera;
    iget-object v3, v0, Lcom/easyview/tutk/TUTKCamera;->_eventList:Lcom/easyview/tutk/EventListStruct;

    iget-object v3, v3, Lcom/easyview/tutk/EventListStruct;->eventList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 529
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/PlayBackTFActivity$3;->this$0:Lobject/p2pwificam/clientActivity/PlayBackTFActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->access$6(Lobject/p2pwificam/clientActivity/PlayBackTFActivity;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 530
    return-void

    .line 524
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/easyview/tutk/EventStruct;

    .line 526
    .local v1, "event":Lcom/easyview/tutk/EventStruct;
    const-string v2, "Records"

    .line 527
    .local v2, "group":Ljava/lang/String;
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/PlayBackTFActivity$3;->this$0:Lobject/p2pwificam/clientActivity/PlayBackTFActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->mExAdapter:Lobject/p2pipcam/adapter/PlaybackTFAdapter;
    invoke-static {v4}, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->access$2(Lobject/p2pwificam/clientActivity/PlayBackTFActivity;)Lobject/p2pipcam/adapter/PlaybackTFAdapter;

    move-result-object v4

    invoke-virtual {v1}, Lcom/easyview/tutk/EventStruct;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Lobject/p2pipcam/adapter/PlaybackTFAdapter;->addGroupAndChild(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
