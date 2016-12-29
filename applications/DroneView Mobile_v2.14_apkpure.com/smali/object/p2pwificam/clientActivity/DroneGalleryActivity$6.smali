.class Lobject/p2pwificam/clientActivity/DroneGalleryActivity$6;
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
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity$6;->this$0:Lobject/p2pwificam/clientActivity/DroneGalleryActivity;

    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnRespondResult(Lcom/easyview/basecamera/ICamera;II)V
    .locals 11
    .param p1, "camera"    # Lcom/easyview/basecamera/ICamera;
    .param p2, "cmd"    # I
    .param p3, "result"    # I

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 293
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity$6;->this$0:Lobject/p2pwificam/clientActivity/DroneGalleryActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->handler:Landroid/os/Handler;
    invoke-static {v4}, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->access$4(Lobject/p2pwificam/clientActivity/DroneGalleryActivity;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity$6;->this$0:Lobject/p2pwificam/clientActivity/DroneGalleryActivity;

    iget-object v5, v5, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->runnable_getMissEventPicture:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 294
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity$6;->this$0:Lobject/p2pwificam/clientActivity/DroneGalleryActivity;

    invoke-static {v4, v8}, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->access$17(Lobject/p2pwificam/clientActivity/DroneGalleryActivity;Z)V

    .line 295
    if-nez p2, :cond_1

    .line 297
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity$6;->this$0:Lobject/p2pwificam/clientActivity/DroneGalleryActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->_missEventPictures:Ljava/util/List;
    invoke-static {v4}, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->access$9(Lobject/p2pwificam/clientActivity/DroneGalleryActivity;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    .line 298
    .local v1, "count":I
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity$6;->this$0:Lobject/p2pwificam/clientActivity/DroneGalleryActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->_missEventPictures:Ljava/util/List;
    invoke-static {v4}, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->access$9(Lobject/p2pwificam/clientActivity/DroneGalleryActivity;)Ljava/util/List;

    move-result-object v4

    add-int/lit8 v5, v1, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 299
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity$6;->this$0:Lobject/p2pwificam/clientActivity/DroneGalleryActivity;

    # invokes: Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->getMissEventPicture()V
    invoke-static {v4}, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->access$14(Lobject/p2pwificam/clientActivity/DroneGalleryActivity;)V

    .line 318
    .end local v1    # "count":I
    :cond_0
    :goto_0
    return-void

    .line 303
    :cond_1
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity$6;->this$0:Lobject/p2pwificam/clientActivity/DroneGalleryActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->_missEventPictures:Ljava/util/List;
    invoke-static {v4}, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->access$9(Lobject/p2pwificam/clientActivity/DroneGalleryActivity;)Ljava/util/List;

    move-result-object v4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 304
    .local v2, "index":I
    const-string v4, "Event"

    const-string v5, "_missEventPictures remove %d index:%d "

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    if-ltz v2, :cond_3

    .line 307
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity$6;->this$0:Lobject/p2pwificam/clientActivity/DroneGalleryActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->_mapBean:Ljava/util/Map;
    invoke-static {v4}, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->access$10(Lobject/p2pwificam/clientActivity/DroneGalleryActivity;)Ljava/util/Map;

    move-result-object v4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lobject/p2pipcam/bean/EventDetailBean;

    .line 308
    .local v0, "bean":Lobject/p2pipcam/bean/EventDetailBean;
    invoke-static {}, Lobject/p2pipcam/utils/Pub;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/easyview/table/EventTable;->getInstance(Landroid/content/Context;)Lcom/easyview/table/EventTable;

    move-result-object v4

    iget-object v5, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity$6;->this$0:Lobject/p2pwificam/clientActivity/DroneGalleryActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->_camera:Lcom/easyview/camera/EVBaseCamera;
    invoke-static {v5}, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->access$8(Lobject/p2pwificam/clientActivity/DroneGalleryActivity;)Lcom/easyview/camera/EVBaseCamera;

    move-result-object v5

    invoke-virtual {v5}, Lcom/easyview/camera/EVBaseCamera;->GetEventFileID()I

    move-result v5

    iget-object v6, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity$6;->this$0:Lobject/p2pwificam/clientActivity/DroneGalleryActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->_camera:Lcom/easyview/camera/EVBaseCamera;
    invoke-static {v6}, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->access$8(Lobject/p2pwificam/clientActivity/DroneGalleryActivity;)Lcom/easyview/camera/EVBaseCamera;

    move-result-object v6

    invoke-virtual {v6}, Lcom/easyview/camera/EVBaseCamera;->getID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6, p3}, Lcom/easyview/table/EventTable;->getPicturePath(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 309
    .local v3, "picPath":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 311
    invoke-virtual {v0, v9}, Lobject/p2pipcam/bean/EventDetailBean;->setHavePicture(I)V

    .line 312
    invoke-virtual {v0, v3}, Lobject/p2pipcam/bean/EventDetailBean;->setPicturePath(Ljava/lang/String;)V

    .line 314
    :cond_2
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity$6;->this$0:Lobject/p2pwificam/clientActivity/DroneGalleryActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->_missEventPictures:Ljava/util/List;
    invoke-static {v4}, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->access$9(Lobject/p2pwificam/clientActivity/DroneGalleryActivity;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 315
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity$6;->this$0:Lobject/p2pwificam/clientActivity/DroneGalleryActivity;

    # invokes: Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->getMissEventPicture()V
    invoke-static {v4}, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->access$14(Lobject/p2pwificam/clientActivity/DroneGalleryActivity;)V

    .line 317
    .end local v0    # "bean":Lobject/p2pipcam/bean/EventDetailBean;
    .end local v3    # "picPath":Ljava/lang/String;
    :cond_3
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity$6;->this$0:Lobject/p2pwificam/clientActivity/DroneGalleryActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->_isPause:Z
    invoke-static {v4}, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->access$18(Lobject/p2pwificam/clientActivity/DroneGalleryActivity;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity$6;->this$0:Lobject/p2pwificam/clientActivity/DroneGalleryActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->handler:Landroid/os/Handler;
    invoke-static {v4}, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->access$4(Lobject/p2pwificam/clientActivity/DroneGalleryActivity;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0
.end method
