.class Lobject/p2pwificam/clientActivity/IpcamClientActivity$2;
.super Landroid/os/Handler;
.source "IpcamClientActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pwificam/clientActivity/IpcamClientActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/IpcamClientActivity;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/IpcamClientActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity$2;->this$0:Lobject/p2pwificam/clientActivity/IpcamClientActivity;

    .line 616
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 618
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 619
    .local v0, "bd":Landroid/os/Bundle;
    const-string v5, "msgparam"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 620
    .local v3, "msgParam":I
    iget v4, p1, Landroid/os/Message;->what:I

    .line 621
    .local v4, "msgType":I
    const-string v5, "did"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 622
    .local v2, "did":Ljava/lang/String;
    # getter for: Lobject/p2pwificam/clientActivity/IpcamClientActivity;->listAdapter:Lobject/p2pipcam/adapter/CameraListAdapter;
    invoke-static {}, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->access$0()Lobject/p2pipcam/adapter/CameraListAdapter;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Lobject/p2pipcam/adapter/CameraListAdapter;->UpdataCameraStatus(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 623
    # getter for: Lobject/p2pwificam/clientActivity/IpcamClientActivity;->listAdapter:Lobject/p2pipcam/adapter/CameraListAdapter;
    invoke-static {}, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->access$0()Lobject/p2pipcam/adapter/CameraListAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lobject/p2pipcam/adapter/CameraListAdapter;->notifyDataSetChanged()V

    .line 624
    const/4 v5, 0x3

    if-ne v3, v5, :cond_0

    .line 626
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity$2;->this$0:Lobject/p2pwificam/clientActivity/IpcamClientActivity;

    # getter for: Lobject/p2pwificam/clientActivity/IpcamClientActivity;->listCamera:Lcom/easyview/camera/CameraList;
    invoke-static {v5}, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->access$3(Lobject/p2pwificam/clientActivity/IpcamClientActivity;)Lcom/easyview/camera/CameraList;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/easyview/camera/CameraList;->getCamera(Ljava/lang/String;)Lcom/easyview/basecamera/BaseCamera;

    move-result-object v1

    .line 627
    .local v1, "camera":Lcom/easyview/basecamera/BaseCamera;
    invoke-virtual {v1}, Lcom/easyview/basecamera/BaseCamera;->Reconnect()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 629
    const-string v5, "IpcamClientActivity"

    const-string v6, "reconnect camera"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    invoke-virtual {v1}, Lcom/easyview/basecamera/BaseCamera;->Stop()V

    .line 631
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity$2;->this$0:Lobject/p2pwificam/clientActivity/IpcamClientActivity;

    iget-object v5, v5, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->ParamListener:Lcom/easyview/basecamera/ICameraParamListener;

    invoke-virtual {v1, v5}, Lcom/easyview/basecamera/BaseCamera;->AddParamListener(Lcom/easyview/basecamera/ICameraParamListener;)V

    .line 632
    invoke-virtual {v1}, Lcom/easyview/basecamera/BaseCamera;->Start()V

    .line 647
    .end local v1    # "camera":Lcom/easyview/basecamera/BaseCamera;
    :cond_0
    return-void
.end method
