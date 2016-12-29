.class Lobject/p2pwificam/clientActivity/DroneGalleryActivity$4;
.super Ljava/lang/Object;
.source "DroneGalleryActivity.java"

# interfaces
.implements Lcom/easyview/basecamera/ICamera$IRespondListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pwificam/clientActivity/DroneGalleryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/DroneGalleryActivity;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/DroneGalleryActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity$4;->this$0:Lobject/p2pwificam/clientActivity/DroneGalleryActivity;

    .line 212
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
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 216
    const-string v3, "Event"

    const-string v4, "onEventList cmd: %d result:%d "

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity$4;->this$0:Lobject/p2pwificam/clientActivity/DroneGalleryActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->handler:Landroid/os/Handler;
    invoke-static {v3}, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->access$4(Lobject/p2pwificam/clientActivity/DroneGalleryActivity;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity$4;->this$0:Lobject/p2pwificam/clientActivity/DroneGalleryActivity;

    iget-object v4, v4, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->runnable_queryEventList:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 218
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity$4;->this$0:Lobject/p2pwificam/clientActivity/DroneGalleryActivity;

    invoke-static {v3, v9}, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->access$7(Lobject/p2pwificam/clientActivity/DroneGalleryActivity;Z)V

    .line 219
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity$4;->this$0:Lobject/p2pwificam/clientActivity/DroneGalleryActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->_camera:Lcom/easyview/camera/EVBaseCamera;
    invoke-static {v3}, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->access$8(Lobject/p2pwificam/clientActivity/DroneGalleryActivity;)Lcom/easyview/camera/EVBaseCamera;

    move-result-object v3

    invoke-virtual {v3}, Lcom/easyview/camera/EVBaseCamera;->GetEvents()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 248
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity$4;->this$0:Lobject/p2pwificam/clientActivity/DroneGalleryActivity;

    # invokes: Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->getMissEventPicture()V
    invoke-static {v3}, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->access$14(Lobject/p2pwificam/clientActivity/DroneGalleryActivity;)V

    .line 249
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity$4;->this$0:Lobject/p2pwificam/clientActivity/DroneGalleryActivity;

    invoke-static {v3, p3}, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->access$15(Lobject/p2pwificam/clientActivity/DroneGalleryActivity;I)V

    .line 250
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity$4;->this$0:Lobject/p2pwificam/clientActivity/DroneGalleryActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->handler:Landroid/os/Handler;
    invoke-static {v3}, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->access$4(Lobject/p2pwificam/clientActivity/DroneGalleryActivity;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 251
    return-void

    .line 219
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/easyview/struct/EVCommandDefs$Event;

    .line 222
    .local v1, "event":Lcom/easyview/struct/EVCommandDefs$Event;
    iget-byte v4, v1, Lcom/easyview/struct/EVCommandDefs$Event;->is_valid:B

    if-ne v4, v8, :cond_0

    .line 224
    iget v4, v1, Lcom/easyview/struct/EVCommandDefs$Event;->record_index:I

    if-lez v4, :cond_2

    iget v4, v1, Lcom/easyview/struct/EVCommandDefs$Event;->event_time:I

    iget v5, v1, Lcom/easyview/struct/EVCommandDefs$Event;->value:I

    if-eq v4, v5, :cond_0

    .line 225
    :cond_2
    new-instance v0, Lobject/p2pipcam/bean/EventDetailBean;

    iget-object v4, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity$4;->this$0:Lobject/p2pwificam/clientActivity/DroneGalleryActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->_camera:Lcom/easyview/camera/EVBaseCamera;
    invoke-static {v4}, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->access$8(Lobject/p2pwificam/clientActivity/DroneGalleryActivity;)Lcom/easyview/camera/EVBaseCamera;

    move-result-object v4

    invoke-virtual {v4}, Lcom/easyview/camera/EVBaseCamera;->getID()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity$4;->this$0:Lobject/p2pwificam/clientActivity/DroneGalleryActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->_camera:Lcom/easyview/camera/EVBaseCamera;
    invoke-static {v5}, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->access$8(Lobject/p2pwificam/clientActivity/DroneGalleryActivity;)Lcom/easyview/camera/EVBaseCamera;

    move-result-object v5

    invoke-virtual {v5}, Lcom/easyview/camera/EVBaseCamera;->GetEventFileID()I

    move-result v5

    invoke-direct {v0, v4, v5}, Lobject/p2pipcam/bean/EventDetailBean;-><init>(Ljava/lang/String;I)V

    .line 226
    .local v0, "bean":Lobject/p2pipcam/bean/EventDetailBean;
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity$4;->this$0:Lobject/p2pwificam/clientActivity/DroneGalleryActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->_camera:Lcom/easyview/camera/EVBaseCamera;
    invoke-static {v4}, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->access$8(Lobject/p2pwificam/clientActivity/DroneGalleryActivity;)Lcom/easyview/camera/EVBaseCamera;

    move-result-object v4

    invoke-virtual {v4}, Lcom/easyview/camera/EVBaseCamera;->getID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lobject/p2pipcam/bean/EventDetailBean;->setDid(Ljava/lang/String;)V

    .line 228
    iget-short v4, v1, Lcom/easyview/struct/EVCommandDefs$Event;->event_type:S

    invoke-virtual {v0, v4}, Lobject/p2pipcam/bean/EventDetailBean;->setEventType(I)V

    .line 229
    iget v4, v1, Lcom/easyview/struct/EVCommandDefs$Event;->event_time:I

    invoke-virtual {v0, v4}, Lobject/p2pipcam/bean/EventDetailBean;->setEventTime(I)V

    .line 230
    iget v4, v1, Lcom/easyview/struct/EVCommandDefs$Event;->value:I

    invoke-virtual {v0, v4}, Lobject/p2pipcam/bean/EventDetailBean;->setEndTime(I)V

    .line 231
    iget v4, v1, Lcom/easyview/struct/EVCommandDefs$Event;->record_index:I

    invoke-virtual {v0, v4}, Lobject/p2pipcam/bean/EventDetailBean;->setRecordIndex(I)V

    .line 232
    iget v4, v1, Lcom/easyview/struct/EVCommandDefs$Event;->index:I

    invoke-virtual {v0, v4}, Lobject/p2pipcam/bean/EventDetailBean;->setEventIndex(I)V

    .line 233
    invoke-static {}, Lobject/p2pipcam/utils/Pub;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/easyview/table/EventTable;->getInstance(Landroid/content/Context;)Lcom/easyview/table/EventTable;

    move-result-object v4

    iget-object v5, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity$4;->this$0:Lobject/p2pwificam/clientActivity/DroneGalleryActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->_camera:Lcom/easyview/camera/EVBaseCamera;
    invoke-static {v5}, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->access$8(Lobject/p2pwificam/clientActivity/DroneGalleryActivity;)Lcom/easyview/camera/EVBaseCamera;

    move-result-object v5

    invoke-virtual {v5}, Lcom/easyview/camera/EVBaseCamera;->GetEventFileID()I

    move-result v5

    iget-object v6, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity$4;->this$0:Lobject/p2pwificam/clientActivity/DroneGalleryActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->_camera:Lcom/easyview/camera/EVBaseCamera;
    invoke-static {v6}, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->access$8(Lobject/p2pwificam/clientActivity/DroneGalleryActivity;)Lcom/easyview/camera/EVBaseCamera;

    move-result-object v6

    invoke-virtual {v6}, Lcom/easyview/camera/EVBaseCamera;->getID()Ljava/lang/String;

    move-result-object v6

    iget v7, v1, Lcom/easyview/struct/EVCommandDefs$Event;->index:I

    invoke-virtual {v4, v5, v6, v7}, Lcom/easyview/table/EventTable;->getPicturePath(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 234
    .local v2, "picPath":Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 236
    invoke-virtual {v0, v8}, Lobject/p2pipcam/bean/EventDetailBean;->setHavePicture(I)V

    .line 237
    invoke-virtual {v0, v2}, Lobject/p2pipcam/bean/EventDetailBean;->setPicturePath(Ljava/lang/String;)V

    .line 244
    :goto_1
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity$4;->this$0:Lobject/p2pwificam/clientActivity/DroneGalleryActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->_listEventDetail:Ljava/util/List;
    invoke-static {v4}, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->access$11(Lobject/p2pwificam/clientActivity/DroneGalleryActivity;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v9, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 245
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity$4;->this$0:Lobject/p2pwificam/clientActivity/DroneGalleryActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->event_count:I
    invoke-static {v4}, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->access$12(Lobject/p2pwificam/clientActivity/DroneGalleryActivity;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v4, v5}, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->access$13(Lobject/p2pwificam/clientActivity/DroneGalleryActivity;I)V

    goto/16 :goto_0

    .line 240
    :cond_3
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity$4;->this$0:Lobject/p2pwificam/clientActivity/DroneGalleryActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->_camera:Lcom/easyview/camera/EVBaseCamera;
    invoke-static {v4}, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->access$8(Lobject/p2pwificam/clientActivity/DroneGalleryActivity;)Lcom/easyview/camera/EVBaseCamera;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/easyview/camera/EVBaseCamera;->getPicturePath(Lcom/easyview/struct/EVCommandDefs$Event;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lobject/p2pipcam/bean/EventDetailBean;->setPicturePath(Ljava/lang/String;)V

    .line 241
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity$4;->this$0:Lobject/p2pwificam/clientActivity/DroneGalleryActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->_missEventPictures:Ljava/util/List;
    invoke-static {v4}, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->access$9(Lobject/p2pwificam/clientActivity/DroneGalleryActivity;)Ljava/util/List;

    move-result-object v4

    iget v5, v1, Lcom/easyview/struct/EVCommandDefs$Event;->index:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity$4;->this$0:Lobject/p2pwificam/clientActivity/DroneGalleryActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->_mapBean:Ljava/util/Map;
    invoke-static {v4}, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->access$10(Lobject/p2pwificam/clientActivity/DroneGalleryActivity;)Ljava/util/Map;

    move-result-object v4

    iget v5, v1, Lcom/easyview/struct/EVCommandDefs$Event;->index:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method
