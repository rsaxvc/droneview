.class Lobject/p2pwificam/clientActivity/DroneGalleryActivity$3;
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
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity$3;->this$0:Lobject/p2pwificam/clientActivity/DroneGalleryActivity;

    .line 191
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
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 195
    const-string v0, "Event"

    const-string v1, "onEventInfo cmd: %d result:%d "

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity$3;->this$0:Lobject/p2pwificam/clientActivity/DroneGalleryActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->access$4(Lobject/p2pwificam/clientActivity/DroneGalleryActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity$3;->this$0:Lobject/p2pwificam/clientActivity/DroneGalleryActivity;

    iget-object v1, v1, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->runnable_queryEventInfo:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 197
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity$3;->this$0:Lobject/p2pwificam/clientActivity/DroneGalleryActivity;

    invoke-static {v0, v4}, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->access$5(Lobject/p2pwificam/clientActivity/DroneGalleryActivity;Z)V

    .line 198
    if-gtz p3, :cond_0

    .line 200
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity$3;->this$0:Lobject/p2pwificam/clientActivity/DroneGalleryActivity;

    invoke-static {v0, v4}, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->access$6(Lobject/p2pwificam/clientActivity/DroneGalleryActivity;Z)V

    .line 201
    const-string v0, "Event"

    const-string v1, "onEventInfo no tf"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity$3;->this$0:Lobject/p2pwificam/clientActivity/DroneGalleryActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->access$4(Lobject/p2pwificam/clientActivity/DroneGalleryActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 210
    :goto_0
    return-void

    .line 207
    :cond_0
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity$3;->this$0:Lobject/p2pwificam/clientActivity/DroneGalleryActivity;

    # invokes: Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->queryEventList()V
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->access$3(Lobject/p2pwificam/clientActivity/DroneGalleryActivity;)V

    goto :goto_0
.end method
