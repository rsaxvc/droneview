.class Lobject/p2pwificam/clientActivity/FloatCallVideoActivity$9;
.super Landroid/os/Handler;
.source "FloatCallVideoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity$9;->this$0:Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;

    .line 856
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/high16 v6, 0x10000000

    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 859
    const-string v1, "zdclock"

    const-string v2, "handleMessage :  #### 2222222222222222222222222"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    sget v1, Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->MSG_CALL_ON:I

    iget v2, p1, Landroid/os/Message;->what:I

    if-ne v1, v2, :cond_1

    .line 865
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity$9;->this$0:Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;

    invoke-virtual {v1}, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lobject/p2pwificam/clientActivity/PlayActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 866
    .local v0, "in":Landroid/content/Intent;
    const-string v1, "camera_type"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 868
    const-string v1, "stream_type"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 870
    const-string v1, "camera_name"

    const-string v2, "IPCAM"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 871
    const-string v1, "cameraid"

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity$9;->this$0:Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;

    # getter for: Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->strDID:Ljava/lang/String;
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->access$8(Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 872
    const-string v1, "camera_user"

    const-string v2, "admin"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 873
    const-string v1, "camera_pwd"

    const-string v2, "admin"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 874
    const-string v1, "camera_type"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 875
    const-string v1, "play_mode"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 876
    const-string v1, "play_type"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 877
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 878
    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 879
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity$9;->this$0:Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;

    # getter for: Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->_camera:Lcom/easyview/camera/EVBaseCamera;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->access$26(Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;)Lcom/easyview/camera/EVBaseCamera;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lcom/easyview/camera/EVBaseCamera;->setVideoQuality(I)V

    .line 880
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity$9;->this$0:Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;

    # getter for: Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->strDID:Ljava/lang/String;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->access$8(Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x65

    invoke-static {v1, v2, v4}, Lobject/p2pipcam/nativecaller/NativeCaller;->PPPPCameraControl(Ljava/lang/String;II)I

    .line 881
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity$9;->this$0:Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;

    const-string v2, ""

    invoke-static {v1, v2}, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->access$27(Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;Ljava/lang/String;)V

    .line 882
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity$9;->this$0:Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;

    # invokes: Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->stopService()V
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->access$19(Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;)V

    .line 883
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity$9;->this$0:Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;

    # getter for: Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->access$28(Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity$9;->this$0:Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;

    # getter for: Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->runnableHangup:Ljava/lang/Runnable;
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->access$29(Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 884
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity$9;->this$0:Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;

    # getter for: Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->mWindowManager:Landroid/view/WindowManager;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->access$4(Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;)Landroid/view/WindowManager;

    move-result-object v1

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity$9;->this$0:Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;

    # getter for: Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->mFloatLayout:Landroid/widget/FrameLayout;
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->access$5(Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 885
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity$9;->this$0:Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;

    invoke-virtual {v1}, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->finish()V

    .line 886
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity$9;->this$0:Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;

    invoke-virtual {v1}, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Application;->startActivity(Landroid/content/Intent;)V

    .line 914
    .end local v0    # "in":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 888
    :cond_1
    sget v1, Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->MSG_CALL_AUDIO:I

    iget v2, p1, Landroid/os/Message;->what:I

    if-ne v1, v2, :cond_2

    .line 892
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity$9;->this$0:Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;

    invoke-virtual {v1}, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lobject/p2pwificam/clientActivity/AudioTalkActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 893
    .restart local v0    # "in":Landroid/content/Intent;
    const-string v1, "camera_type"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 895
    const-string v1, "stream_type"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 897
    const-string v1, "camera_name"

    const-string v2, "IPCAM"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 898
    const-string v1, "cameraid"

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity$9;->this$0:Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;

    # getter for: Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->strDID:Ljava/lang/String;
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->access$8(Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 899
    const-string v1, "camera_user"

    const-string v2, "admin"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 900
    const-string v1, "camera_pwd"

    const-string v2, "admin"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 901
    const-string v1, "camera_type"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 902
    const-string v1, "play_type"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 903
    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 904
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity$9;->this$0:Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;

    invoke-virtual {v1}, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Application;->startActivity(Landroid/content/Intent;)V

    .line 905
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity$9;->this$0:Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;

    # invokes: Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->stopService()V
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->access$19(Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;)V

    .line 906
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity$9;->this$0:Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;

    # getter for: Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->access$28(Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity$9;->this$0:Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;

    # getter for: Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->runnableHangup:Ljava/lang/Runnable;
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->access$29(Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 908
    .end local v0    # "in":Landroid/content/Intent;
    :cond_2
    sget v1, Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->MSG_CALL_OFF:I

    iget v2, p1, Landroid/os/Message;->what:I

    if-ne v1, v2, :cond_0

    .line 910
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity$9;->this$0:Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;

    # invokes: Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->Hangup()V
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->access$30(Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;)V

    .line 911
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity$9;->this$0:Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;

    # getter for: Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->access$28(Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity$9;->this$0:Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;

    # getter for: Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->runnableHangup:Ljava/lang/Runnable;
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->access$29(Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto/16 :goto_0
.end method
