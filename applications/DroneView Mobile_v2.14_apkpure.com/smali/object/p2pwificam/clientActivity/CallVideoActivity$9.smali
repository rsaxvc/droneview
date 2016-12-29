.class Lobject/p2pwificam/clientActivity/CallVideoActivity$9;
.super Landroid/os/Handler;
.source "CallVideoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pwificam/clientActivity/CallVideoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/CallVideoActivity;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/CallVideoActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity$9;->this$0:Lobject/p2pwificam/clientActivity/CallVideoActivity;

    .line 863
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/high16 v8, 0x10000000

    const/4 v7, 0x3

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 866
    const-string v2, "zdclock"

    const-string v3, "handleMessage :  #### 2222222222222222222222222"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    sget v2, Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->MSG_CALL_ON:I

    iget v3, p1, Landroid/os/Message;->what:I

    if-ne v2, v3, :cond_2

    .line 872
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity$9;->this$0:Lobject/p2pwificam/clientActivity/CallVideoActivity;

    invoke-virtual {v2}, Lobject/p2pwificam/clientActivity/CallVideoActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lobject/p2pwificam/clientActivity/PlayActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 873
    .local v0, "in":Landroid/content/Intent;
    const-string v2, "camera_type"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 875
    const-string v2, "stream_type"

    invoke-virtual {v0, v2, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 877
    const-string v2, "camera_name"

    const-string v3, "IPCAM"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 878
    const-string v2, "cameraid"

    iget-object v3, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity$9;->this$0:Lobject/p2pwificam/clientActivity/CallVideoActivity;

    # getter for: Lobject/p2pwificam/clientActivity/CallVideoActivity;->strDID:Ljava/lang/String;
    invoke-static {v3}, Lobject/p2pwificam/clientActivity/CallVideoActivity;->access$6(Lobject/p2pwificam/clientActivity/CallVideoActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 879
    const-string v2, "camera_user"

    const-string v3, "admin"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 880
    const-string v2, "camera_pwd"

    const-string v3, "admin"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 881
    const-string v2, "camera_type"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 882
    const-string v2, "play_mode"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 883
    const-string v2, "play_type"

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 884
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity$9;->this$0:Lobject/p2pwificam/clientActivity/CallVideoActivity;

    # getter for: Lobject/p2pwificam/clientActivity/CallVideoActivity;->_ppcs_init:Z
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/CallVideoActivity;->access$23(Lobject/p2pwificam/clientActivity/CallVideoActivity;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "free_ppcs"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 885
    :cond_0
    const/high16 v2, 0x4000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 886
    invoke-virtual {v0, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 887
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity$9;->this$0:Lobject/p2pwificam/clientActivity/CallVideoActivity;

    # getter for: Lobject/p2pwificam/clientActivity/CallVideoActivity;->_camera:Lcom/easyview/camera/EVBaseCamera;
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/CallVideoActivity;->access$24(Lobject/p2pwificam/clientActivity/CallVideoActivity;)Lcom/easyview/camera/EVBaseCamera;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Lcom/easyview/camera/EVBaseCamera;->setVideoQuality(I)V

    .line 888
    invoke-static {v5}, Lobject/p2pwificam/clientActivity/BridgeService;->setPlayInterface(Lobject/p2pwificam/clientActivity/BridgeService$PlayInterface;)V

    .line 889
    invoke-static {v5}, Lobject/p2pwificam/clientActivity/BridgeService;->setOpenLockInterface(Lobject/p2pwificam/clientActivity/BridgeService$OpenLockInterface;)V

    .line 890
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity$9;->this$0:Lobject/p2pwificam/clientActivity/CallVideoActivity;

    # getter for: Lobject/p2pwificam/clientActivity/CallVideoActivity;->strDID:Ljava/lang/String;
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/CallVideoActivity;->access$6(Lobject/p2pwificam/clientActivity/CallVideoActivity;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x65

    invoke-static {v2, v3, v6}, Lobject/p2pipcam/nativecaller/NativeCaller;->PPPPCameraControl(Ljava/lang/String;II)I

    .line 891
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity$9;->this$0:Lobject/p2pwificam/clientActivity/CallVideoActivity;

    const-string v3, ""

    invoke-static {v2, v3}, Lobject/p2pwificam/clientActivity/CallVideoActivity;->access$25(Lobject/p2pwificam/clientActivity/CallVideoActivity;Ljava/lang/String;)V

    .line 892
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity$9;->this$0:Lobject/p2pwificam/clientActivity/CallVideoActivity;

    # invokes: Lobject/p2pwificam/clientActivity/CallVideoActivity;->stopService()V
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/CallVideoActivity;->access$17(Lobject/p2pwificam/clientActivity/CallVideoActivity;)V

    .line 893
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity$9;->this$0:Lobject/p2pwificam/clientActivity/CallVideoActivity;

    # getter for: Lobject/p2pwificam/clientActivity/CallVideoActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/CallVideoActivity;->access$26(Lobject/p2pwificam/clientActivity/CallVideoActivity;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity$9;->this$0:Lobject/p2pwificam/clientActivity/CallVideoActivity;

    # getter for: Lobject/p2pwificam/clientActivity/CallVideoActivity;->runnableHangup:Ljava/lang/Runnable;
    invoke-static {v3}, Lobject/p2pwificam/clientActivity/CallVideoActivity;->access$27(Lobject/p2pwificam/clientActivity/CallVideoActivity;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 895
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity$9;->this$0:Lobject/p2pwificam/clientActivity/CallVideoActivity;

    const-string v3, "notification"

    invoke-virtual {v2, v3}, Lobject/p2pwificam/clientActivity/CallVideoActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 896
    .local v1, "nm":Landroid/app/NotificationManager;
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity$9;->this$0:Lobject/p2pwificam/clientActivity/CallVideoActivity;

    # getter for: Lobject/p2pwificam/clientActivity/CallVideoActivity;->_noti_id:I
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/CallVideoActivity;->access$28(Lobject/p2pwificam/clientActivity/CallVideoActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 898
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity$9;->this$0:Lobject/p2pwificam/clientActivity/CallVideoActivity;

    invoke-virtual {v2}, Lobject/p2pwificam/clientActivity/CallVideoActivity;->finish()V

    .line 899
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity$9;->this$0:Lobject/p2pwificam/clientActivity/CallVideoActivity;

    invoke-virtual {v2}, Lobject/p2pwificam/clientActivity/CallVideoActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Application;->startActivity(Landroid/content/Intent;)V

    .line 929
    .end local v0    # "in":Landroid/content/Intent;
    .end local v1    # "nm":Landroid/app/NotificationManager;
    :cond_1
    :goto_0
    return-void

    .line 901
    :cond_2
    sget v2, Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->MSG_CALL_AUDIO:I

    iget v3, p1, Landroid/os/Message;->what:I

    if-ne v2, v3, :cond_3

    .line 905
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity$9;->this$0:Lobject/p2pwificam/clientActivity/CallVideoActivity;

    invoke-virtual {v2}, Lobject/p2pwificam/clientActivity/CallVideoActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lobject/p2pwificam/clientActivity/AudioTalkActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 906
    .restart local v0    # "in":Landroid/content/Intent;
    const-string v2, "camera_type"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 908
    const-string v2, "stream_type"

    invoke-virtual {v0, v2, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 910
    const-string v2, "camera_name"

    const-string v3, "IPCAM"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 911
    const-string v2, "cameraid"

    iget-object v3, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity$9;->this$0:Lobject/p2pwificam/clientActivity/CallVideoActivity;

    # getter for: Lobject/p2pwificam/clientActivity/CallVideoActivity;->strDID:Ljava/lang/String;
    invoke-static {v3}, Lobject/p2pwificam/clientActivity/CallVideoActivity;->access$6(Lobject/p2pwificam/clientActivity/CallVideoActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 912
    const-string v2, "camera_user"

    const-string v3, "admin"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 913
    const-string v2, "camera_pwd"

    const-string v3, "admin"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 914
    const-string v2, "camera_type"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 915
    const-string v2, "play_type"

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 916
    invoke-virtual {v0, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 917
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity$9;->this$0:Lobject/p2pwificam/clientActivity/CallVideoActivity;

    invoke-virtual {v2}, Lobject/p2pwificam/clientActivity/CallVideoActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Application;->startActivity(Landroid/content/Intent;)V

    .line 918
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity$9;->this$0:Lobject/p2pwificam/clientActivity/CallVideoActivity;

    # invokes: Lobject/p2pwificam/clientActivity/CallVideoActivity;->stopService()V
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/CallVideoActivity;->access$17(Lobject/p2pwificam/clientActivity/CallVideoActivity;)V

    .line 919
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity$9;->this$0:Lobject/p2pwificam/clientActivity/CallVideoActivity;

    # getter for: Lobject/p2pwificam/clientActivity/CallVideoActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/CallVideoActivity;->access$26(Lobject/p2pwificam/clientActivity/CallVideoActivity;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity$9;->this$0:Lobject/p2pwificam/clientActivity/CallVideoActivity;

    # getter for: Lobject/p2pwificam/clientActivity/CallVideoActivity;->runnableHangup:Ljava/lang/Runnable;
    invoke-static {v3}, Lobject/p2pwificam/clientActivity/CallVideoActivity;->access$27(Lobject/p2pwificam/clientActivity/CallVideoActivity;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 920
    invoke-static {v5}, Lobject/p2pwificam/clientActivity/BridgeService;->setPlayInterface(Lobject/p2pwificam/clientActivity/BridgeService$PlayInterface;)V

    .line 921
    invoke-static {v5}, Lobject/p2pwificam/clientActivity/BridgeService;->setOpenLockInterface(Lobject/p2pwificam/clientActivity/BridgeService$OpenLockInterface;)V

    goto :goto_0

    .line 923
    .end local v0    # "in":Landroid/content/Intent;
    :cond_3
    sget v2, Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->MSG_CALL_OFF:I

    iget v3, p1, Landroid/os/Message;->what:I

    if-ne v2, v3, :cond_1

    .line 925
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity$9;->this$0:Lobject/p2pwificam/clientActivity/CallVideoActivity;

    const/4 v3, 0x2

    # invokes: Lobject/p2pwificam/clientActivity/CallVideoActivity;->Hangup(I)V
    invoke-static {v2, v3}, Lobject/p2pwificam/clientActivity/CallVideoActivity;->access$19(Lobject/p2pwificam/clientActivity/CallVideoActivity;I)V

    .line 926
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity$9;->this$0:Lobject/p2pwificam/clientActivity/CallVideoActivity;

    # getter for: Lobject/p2pwificam/clientActivity/CallVideoActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/CallVideoActivity;->access$26(Lobject/p2pwificam/clientActivity/CallVideoActivity;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity$9;->this$0:Lobject/p2pwificam/clientActivity/CallVideoActivity;

    # getter for: Lobject/p2pwificam/clientActivity/CallVideoActivity;->runnableHangup:Ljava/lang/Runnable;
    invoke-static {v3}, Lobject/p2pwificam/clientActivity/CallVideoActivity;->access$27(Lobject/p2pwificam/clientActivity/CallVideoActivity;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto/16 :goto_0
.end method
