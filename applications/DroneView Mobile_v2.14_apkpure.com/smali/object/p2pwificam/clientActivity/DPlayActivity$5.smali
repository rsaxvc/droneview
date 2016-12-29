.class Lobject/p2pwificam/clientActivity/DPlayActivity$5;
.super Landroid/os/Handler;
.source "DPlayActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pwificam/clientActivity/DPlayActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/DPlayActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$5;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    .line 923
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lobject/p2pwificam/clientActivity/DPlayActivity$5;)Lobject/p2pwificam/clientActivity/DPlayActivity;
    .locals 1

    .prologue
    .line 923
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$5;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 926
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x67

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$5;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # invokes: Lobject/p2pwificam/clientActivity/DPlayActivity;->dealVideoDataTimeOut()V
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$15(Lobject/p2pwificam/clientActivity/DPlayActivity;)V

    .line 927
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 930
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$5;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->_camera:Lcom/easyview/camera/EVBaseCamera;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$16(Lobject/p2pwificam/clientActivity/DPlayActivity;)Lcom/easyview/camera/EVBaseCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easyview/camera/EVBaseCamera;->Start()V

    .line 931
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$5;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->_camera:Lcom/easyview/camera/EVBaseCamera;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$16(Lobject/p2pwificam/clientActivity/DPlayActivity;)Lcom/easyview/camera/EVBaseCamera;

    move-result-object v0

    new-instance v1, Lobject/p2pwificam/clientActivity/DPlayActivity$5$1;

    invoke-direct {v1, p0}, Lobject/p2pwificam/clientActivity/DPlayActivity$5$1;-><init>(Lobject/p2pwificam/clientActivity/DPlayActivity$5;)V

    invoke-virtual {v0, v1}, Lcom/easyview/camera/EVBaseCamera;->setDeviceStateListener(Lcom/easyview/basecamera/ICamera$IRespondListener;)V

    .line 941
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$5;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # invokes: Lobject/p2pwificam/clientActivity/DPlayActivity;->firstRequest()V
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$14(Lobject/p2pwificam/clientActivity/DPlayActivity;)V

    .line 943
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 946
    const-string v0, "DPlay"

    const-string v1, "RequestParams"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$5;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->_camera:Lcom/easyview/camera/EVBaseCamera;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$16(Lobject/p2pwificam/clientActivity/DPlayActivity;)Lcom/easyview/camera/EVBaseCamera;

    move-result-object v0

    new-instance v1, Lobject/p2pwificam/clientActivity/DPlayActivity$5$2;

    invoke-direct {v1, p0}, Lobject/p2pwificam/clientActivity/DPlayActivity$5$2;-><init>(Lobject/p2pwificam/clientActivity/DPlayActivity$5;)V

    invoke-virtual {v0, v1}, Lcom/easyview/camera/EVBaseCamera;->RequestParams(Lcom/easyview/basecamera/ICamera$IRespondListener;)V

    .line 954
    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    .line 958
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_3

    .line 960
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$5;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->bProgress:Z
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$21(Lobject/p2pwificam/clientActivity/DPlayActivity;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 962
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$5;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$22(Lobject/p2pwificam/clientActivity/DPlayActivity;Z)V

    .line 963
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$5;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->progressView:Landroid/view/View;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$23(Lobject/p2pwificam/clientActivity/DPlayActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 964
    const-string v0, "DPlay"

    const-string v1, "device disconnect!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 965
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$5;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    invoke-static {v0}, Lobject/p2pipcam/utils/Pub;->isAppOnForeground(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 967
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$5;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$24(Lobject/p2pwificam/clientActivity/DPlayActivity;Ljava/lang/String;)V

    .line 977
    :cond_3
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_5

    .line 979
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$5;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->control_show:Z
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$25(Lobject/p2pwificam/clientActivity/DPlayActivity;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 981
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$5;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->dismissAnim:Landroid/view/animation/Animation;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$26(Lobject/p2pwificam/clientActivity/DPlayActivity;)Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 983
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$5;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->control_layout:Landroid/view/View;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$27(Lobject/p2pwificam/clientActivity/DPlayActivity;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$5;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->dismissAnim:Landroid/view/animation/Animation;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$26(Lobject/p2pwificam/clientActivity/DPlayActivity;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 984
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$5;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->control_layout:Landroid/view/View;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$27(Lobject/p2pwificam/clientActivity/DPlayActivity;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 985
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$5;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->left_control_layout:Landroid/view/View;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$28(Lobject/p2pwificam/clientActivity/DPlayActivity;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$5;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->dismissToLeft:Landroid/view/animation/Animation;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$29(Lobject/p2pwificam/clientActivity/DPlayActivity;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 986
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$5;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->left_control_layout:Landroid/view/View;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$28(Lobject/p2pwificam/clientActivity/DPlayActivity;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 988
    :cond_4
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$5;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$30(Lobject/p2pwificam/clientActivity/DPlayActivity;Z)V

    .line 989
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$5;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$31(Lobject/p2pwificam/clientActivity/DPlayActivity;I)V

    .line 992
    :cond_5
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_6

    .line 994
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$5;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->_camera:Lcom/easyview/camera/EVBaseCamera;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$16(Lobject/p2pwificam/clientActivity/DPlayActivity;)Lcom/easyview/camera/EVBaseCamera;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$5;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->_camera:Lcom/easyview/camera/EVBaseCamera;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$16(Lobject/p2pwificam/clientActivity/DPlayActivity;)Lcom/easyview/camera/EVBaseCamera;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/easyview/camera/EVBaseCamera;->querystorageState(Lcom/easyview/basecamera/ICamera$IRespondListener;)V

    .line 996
    :cond_6
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x65

    if-ne v0, v1, :cond_a

    .line 998
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$5;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->_wifiUtils:Lcom/easyview/common/WifiUtils;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$32(Lobject/p2pwificam/clientActivity/DPlayActivity;)Lcom/easyview/common/WifiUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easyview/common/WifiUtils;->getRssi()I

    move-result v10

    .line 999
    .local v10, "rssi":I
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$5;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # invokes: Lobject/p2pwificam/clientActivity/DPlayActivity;->getRssiLevel(I)I
    invoke-static {v0, v10}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$33(Lobject/p2pwificam/clientActivity/DPlayActivity;I)I

    move-result v7

    .line 1000
    .local v7, "level":I
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$5;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->_camera:Lcom/easyview/camera/EVBaseCamera;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$16(Lobject/p2pwificam/clientActivity/DPlayActivity;)Lcom/easyview/camera/EVBaseCamera;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$5;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->_camera:Lcom/easyview/camera/EVBaseCamera;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$16(Lobject/p2pwificam/clientActivity/DPlayActivity;)Lcom/easyview/camera/EVBaseCamera;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/easyview/camera/EVBaseCamera;->setRssi(I)V

    .line 1017
    :cond_7
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$5;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->_camera:Lcom/easyview/camera/EVBaseCamera;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$16(Lobject/p2pwificam/clientActivity/DPlayActivity;)Lcom/easyview/camera/EVBaseCamera;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$5;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->_camera:Lcom/easyview/camera/EVBaseCamera;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$16(Lobject/p2pwificam/clientActivity/DPlayActivity;)Lcom/easyview/camera/EVBaseCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easyview/camera/EVBaseCamera;->isOnline()Z

    .line 1033
    :cond_8
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$5;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->showDebugInfo:Z
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$34(Lobject/p2pwificam/clientActivity/DPlayActivity;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1035
    const/4 v8, 0x0

    .line 1036
    .local v8, "quality":I
    const-string v11, ""

    .line 1037
    .local v11, "wifiName":Ljava/lang/String;
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$5;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->_camera:Lcom/easyview/camera/EVBaseCamera;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$16(Lobject/p2pwificam/clientActivity/DPlayActivity;)Lcom/easyview/camera/EVBaseCamera;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 1039
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$5;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->_camera:Lcom/easyview/camera/EVBaseCamera;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$16(Lobject/p2pwificam/clientActivity/DPlayActivity;)Lcom/easyview/camera/EVBaseCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easyview/camera/EVBaseCamera;->getQuality()I

    move-result v8

    .line 1040
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$5;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->_camera:Lcom/easyview/camera/EVBaseCamera;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$16(Lobject/p2pwificam/clientActivity/DPlayActivity;)Lcom/easyview/camera/EVBaseCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easyview/camera/EVBaseCamera;->getWiFiName()Ljava/lang/String;

    move-result-object v11

    .line 1042
    :cond_9
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$5;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->rssi_value_text:Landroid/widget/TextView;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$35(Lobject/p2pwificam/clientActivity/DPlayActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "%d %d %d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$5;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->_min_rssi:I
    invoke-static {v4}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$36(Lobject/p2pwificam/clientActivity/DPlayActivity;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$5;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->_max_rssi:I
    invoke-static {v4}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$37(Lobject/p2pwificam/clientActivity/DPlayActivity;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1043
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$5;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->step_text:Landroid/widget/TextView;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$38(Lobject/p2pwificam/clientActivity/DPlayActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "step:%d tran:%d qua:%d period:%3d %d(%d) %d(%d) %d(%d) %s"

    const/16 v2, 0xb

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 1044
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$5;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->_step:I
    invoke-static {v4}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$39(Lobject/p2pwificam/clientActivity/DPlayActivity;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$5;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->_tran_mode:I
    invoke-static {v4}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$40(Lobject/p2pwificam/clientActivity/DPlayActivity;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$5;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->_frame_period:I
    invoke-static {v4}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$41(Lobject/p2pwificam/clientActivity/DPlayActivity;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    iget-object v4, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$5;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->_frame_timeout_count:I
    invoke-static {v4}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$42(Lobject/p2pwificam/clientActivity/DPlayActivity;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    iget-object v4, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$5;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->_period_0:I
    invoke-static {v4}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$43(Lobject/p2pwificam/clientActivity/DPlayActivity;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    .line 1045
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$5;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->_frame_timeout_count_1:I
    invoke-static {v4}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$44(Lobject/p2pwificam/clientActivity/DPlayActivity;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x7

    iget-object v4, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$5;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->_period_1:I
    invoke-static {v4}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$45(Lobject/p2pwificam/clientActivity/DPlayActivity;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x8

    iget-object v4, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$5;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->_frame_timeout_count_2:I
    invoke-static {v4}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$46(Lobject/p2pwificam/clientActivity/DPlayActivity;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x9

    iget-object v4, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$5;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->_period_2:I
    invoke-static {v4}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$47(Lobject/p2pwificam/clientActivity/DPlayActivity;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0xa

    aput-object v11, v2, v3

    .line 1043
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1048
    .end local v7    # "level":I
    .end local v8    # "quality":I
    .end local v10    # "rssi":I
    .end local v11    # "wifiName":Ljava/lang/String;
    :cond_a
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x66

    if-ne v0, v1, :cond_b

    .line 1050
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$5;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$5;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->_wifiUtils:Lcom/easyview/common/WifiUtils;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$32(Lobject/p2pwificam/clientActivity/DPlayActivity;)Lcom/easyview/common/WifiUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/easyview/common/WifiUtils;->getCurrentSSID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$24(Lobject/p2pwificam/clientActivity/DPlayActivity;Ljava/lang/String;)V

    .line 1051
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$5;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$22(Lobject/p2pwificam/clientActivity/DPlayActivity;Z)V

    .line 1052
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$5;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$48(Lobject/p2pwificam/clientActivity/DPlayActivity;Z)V

    .line 1053
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$5;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->progressView:Landroid/view/View;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$23(Lobject/p2pwificam/clientActivity/DPlayActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1055
    :cond_b
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x68

    if-ne v0, v1, :cond_c

    .line 1057
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$5;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->device_state:I
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$17(Lobject/p2pwificam/clientActivity/DPlayActivity;)I

    move-result v0

    and-int/lit8 v9, v0, 0x1

    .line 1058
    .local v9, "record_flag":I
    if-nez v9, :cond_f

    .line 1060
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$5;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->is_record:Z
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$49(Lobject/p2pwificam/clientActivity/DPlayActivity;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1062
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$5;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->record_show_layout:Landroid/view/View;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$50(Lobject/p2pwificam/clientActivity/DPlayActivity;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1063
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$5;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->control_layout:Landroid/view/View;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$27(Lobject/p2pwificam/clientActivity/DPlayActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1064
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$5;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->left_control_layout:Landroid/view/View;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$28(Lobject/p2pwificam/clientActivity/DPlayActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1065
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$5;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$31(Lobject/p2pwificam/clientActivity/DPlayActivity;I)V

    .line 1066
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$5;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->_soundPool:Landroid/media/SoundPool;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$51(Lobject/p2pwificam/clientActivity/DPlayActivity;)Landroid/media/SoundPool;

    move-result-object v0

    const/4 v1, 0x2

    const v2, 0x3dcccccd    # 0.1f

    const v3, 0x3dcccccd    # 0.1f

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 1067
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$5;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$52(Lobject/p2pwificam/clientActivity/DPlayActivity;Z)V

    .line 1068
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$5;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$53(Lobject/p2pwificam/clientActivity/DPlayActivity;I)V

    .line 1091
    .end local v9    # "record_flag":I
    :cond_c
    :goto_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x69

    if-ne v0, v1, :cond_d

    .line 1093
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$5;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # invokes: Lobject/p2pwificam/clientActivity/DPlayActivity;->show_setup_view()V
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$56(Lobject/p2pwificam/clientActivity/DPlayActivity;)V

    .line 1095
    :cond_d
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x6a

    if-ne v0, v1, :cond_e

    .line 1097
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$5;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # invokes: Lobject/p2pwificam/clientActivity/DPlayActivity;->updateRecState()V
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$57(Lobject/p2pwificam/clientActivity/DPlayActivity;)V

    .line 1099
    :cond_e
    return-void

    .line 1072
    .restart local v9    # "record_flag":I
    :cond_f
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$5;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->record_state:I
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$54(Lobject/p2pwificam/clientActivity/DPlayActivity;)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_11

    .line 1074
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$5;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->control_layout:Landroid/view/View;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$27(Lobject/p2pwificam/clientActivity/DPlayActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_10

    .line 1076
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$5;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->control_layout:Landroid/view/View;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$27(Lobject/p2pwificam/clientActivity/DPlayActivity;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1077
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$5;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->left_control_layout:Landroid/view/View;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$28(Lobject/p2pwificam/clientActivity/DPlayActivity;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1079
    :cond_10
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$5;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->record_show_layout:Landroid/view/View;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$50(Lobject/p2pwificam/clientActivity/DPlayActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1080
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$5;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$55(Lobject/p2pwificam/clientActivity/DPlayActivity;I)V

    .line 1082
    :cond_11
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$5;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->is_record:Z
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$49(Lobject/p2pwificam/clientActivity/DPlayActivity;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 1084
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$5;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->_soundPool:Landroid/media/SoundPool;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$51(Lobject/p2pwificam/clientActivity/DPlayActivity;)Landroid/media/SoundPool;

    move-result-object v0

    const/4 v1, 0x2

    const v2, 0x3dcccccd    # 0.1f

    const v3, 0x3dcccccd    # 0.1f

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 1085
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$5;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$52(Lobject/p2pwificam/clientActivity/DPlayActivity;Z)V

    .line 1086
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$5;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$53(Lobject/p2pwificam/clientActivity/DPlayActivity;I)V

    goto :goto_0
.end method
