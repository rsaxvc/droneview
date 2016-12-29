.class Lobject/p2pwificam/clientActivity/DronePlayActivity$4;
.super Landroid/os/Handler;
.source "DronePlayActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pwificam/clientActivity/DronePlayActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/DronePlayActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$4;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    .line 745
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lobject/p2pwificam/clientActivity/DronePlayActivity$4;)Lobject/p2pwificam/clientActivity/DronePlayActivity;
    .locals 1

    .prologue
    .line 745
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$4;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 748
    iget v5, p1, Landroid/os/Message;->what:I

    if-ne v5, v11, :cond_0

    .line 750
    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->_camera:Lcom/easyview/ppcs/PPCSCamera;
    invoke-static {}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$14()Lcom/easyview/ppcs/PPCSCamera;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 754
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$4;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    invoke-static {v5, v10}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$15(Lobject/p2pwificam/clientActivity/DronePlayActivity;[B)V

    .line 755
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$4;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    invoke-static {v5, v9}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$16(Lobject/p2pwificam/clientActivity/DronePlayActivity;I)V

    .line 756
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$4;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    invoke-static {v5, v9}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$17(Lobject/p2pwificam/clientActivity/DronePlayActivity;I)V

    .line 758
    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->_camera:Lcom/easyview/ppcs/PPCSCamera;
    invoke-static {}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$14()Lcom/easyview/ppcs/PPCSCamera;

    move-result-object v5

    invoke-virtual {v5}, Lcom/easyview/ppcs/PPCSCamera;->Stop()V

    .line 759
    const-string v5, "Drone"

    const-string v6, "Camer Start...%s"

    new-array v7, v11, [Ljava/lang/Object;

    iget-object v8, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$4;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->_dev_ssid:Ljava/lang/String;
    invoke-static {v8}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$18(Lobject/p2pwificam/clientActivity/DronePlayActivity;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->_camera:Lcom/easyview/ppcs/PPCSCamera;
    invoke-static {}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$14()Lcom/easyview/ppcs/PPCSCamera;

    move-result-object v5

    invoke-virtual {v5}, Lcom/easyview/ppcs/PPCSCamera;->Start()V

    .line 761
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$4;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->control_layout:Landroid/view/View;
    invoke-static {v5}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$19(Lobject/p2pwificam/clientActivity/DronePlayActivity;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    .line 768
    :cond_0
    iget v5, p1, Landroid/os/Message;->what:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    .line 770
    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->_camera:Lcom/easyview/ppcs/PPCSCamera;
    invoke-static {}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$14()Lcom/easyview/ppcs/PPCSCamera;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 772
    const-string v5, "Drone"

    const-string v6, "Camer StartVideo..."

    new-array v7, v9, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->_camera:Lcom/easyview/ppcs/PPCSCamera;
    invoke-static {}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$14()Lcom/easyview/ppcs/PPCSCamera;

    move-result-object v5

    invoke-virtual {v5, v10}, Lcom/easyview/ppcs/PPCSCamera;->StartVideo(Lcom/easyview/basecamera/ICamera$IDataListener;)V

    .line 774
    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->_camera:Lcom/easyview/ppcs/PPCSCamera;
    invoke-static {}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$14()Lcom/easyview/ppcs/PPCSCamera;

    move-result-object v5

    const/16 v6, 0x1e

    invoke-virtual {v5, v6}, Lcom/easyview/ppcs/PPCSCamera;->setVideoQuality(I)V

    .line 775
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$4;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    # invokes: Lobject/p2pwificam/clientActivity/DronePlayActivity;->getCameraParams()V
    invoke-static {v5}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$20(Lobject/p2pwificam/clientActivity/DronePlayActivity;)V

    .line 776
    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->_camera:Lcom/easyview/ppcs/PPCSCamera;
    invoke-static {}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$14()Lcom/easyview/ppcs/PPCSCamera;

    move-result-object v5

    invoke-virtual {v5, v10}, Lcom/easyview/ppcs/PPCSCamera;->querystorageState(Lcom/easyview/basecamera/ICamera$IRespondListener;)V

    .line 780
    new-instance v1, Lcom/easyview/bean/DateBean;

    invoke-direct {v1}, Lcom/easyview/bean/DateBean;-><init>()V

    .line 781
    .local v1, "dateBean":Lcom/easyview/bean/DateBean;
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v3

    .line 782
    .local v3, "timeZone":Ljava/util/TimeZone;
    invoke-virtual {v3}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v5

    div-int/lit16 v4, v5, 0x3e8

    .line 783
    .local v4, "tz":I
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 784
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    long-to-int v2, v5

    .line 785
    .local v2, "now":I
    const-string v5, "tag"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "tz:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    const-string v5, "tag"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "tz:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    invoke-virtual {v1, v2}, Lcom/easyview/bean/DateBean;->setNow(I)V

    .line 788
    invoke-virtual {v1, v4}, Lcom/easyview/bean/DateBean;->setTz(I)V

    .line 789
    invoke-virtual {v1, v9}, Lcom/easyview/bean/DateBean;->setNtp_enable(I)V

    .line 790
    const-string v5, ""

    invoke-virtual {v1, v5}, Lcom/easyview/bean/DateBean;->setNtp_ser(Ljava/lang/String;)V

    .line 792
    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->_camera:Lcom/easyview/ppcs/PPCSCamera;
    invoke-static {}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$14()Lcom/easyview/ppcs/PPCSCamera;

    move-result-object v5

    new-instance v6, Lobject/p2pwificam/clientActivity/DronePlayActivity$4$1;

    invoke-direct {v6, p0}, Lobject/p2pwificam/clientActivity/DronePlayActivity$4$1;-><init>(Lobject/p2pwificam/clientActivity/DronePlayActivity$4;)V

    invoke-virtual {v5, v1, v6}, Lcom/easyview/ppcs/PPCSCamera;->setTimeParam(Lcom/easyview/bean/DateBean;Lcom/easyview/basecamera/ICamera$IRespondListener;)V

    .line 801
    .end local v0    # "calendar":Ljava/util/Calendar;
    .end local v1    # "dateBean":Lcom/easyview/bean/DateBean;
    .end local v2    # "now":I
    .end local v3    # "timeZone":Ljava/util/TimeZone;
    .end local v4    # "tz":I
    :cond_1
    iget v5, p1, Landroid/os/Message;->what:I

    const/16 v6, 0x9

    if-ne v5, v6, :cond_2

    .line 803
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$4;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->bProgress:Z
    invoke-static {v5}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$21(Lobject/p2pwificam/clientActivity/DronePlayActivity;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 805
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$4;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    invoke-static {v5, v11}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$22(Lobject/p2pwificam/clientActivity/DronePlayActivity;Z)V

    .line 806
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$4;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->progressView:Landroid/view/View;
    invoke-static {v5}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$23(Lobject/p2pwificam/clientActivity/DronePlayActivity;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    .line 807
    const-string v5, "Drone"

    const-string v6, "device disconnect!!!"

    invoke-static {v5, v6}, Lcom/easyview/ndt/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 808
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$4;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    invoke-static {v5}, Lobject/p2pipcam/utils/Pub;->isAppOnForeground(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 810
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$4;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    invoke-static {v5, v10}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$24(Lobject/p2pwificam/clientActivity/DronePlayActivity;Ljava/lang/String;)V

    .line 820
    :cond_2
    iget v5, p1, Landroid/os/Message;->what:I

    const/16 v6, 0xa

    if-ne v5, v6, :cond_4

    .line 822
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$4;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->control_show:Z
    invoke-static {v5}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$25(Lobject/p2pwificam/clientActivity/DronePlayActivity;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 824
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$4;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->dismissAnim:Landroid/view/animation/Animation;
    invoke-static {v5}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$26(Lobject/p2pwificam/clientActivity/DronePlayActivity;)Landroid/view/animation/Animation;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 826
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$4;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->control_layout:Landroid/view/View;
    invoke-static {v5}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$19(Lobject/p2pwificam/clientActivity/DronePlayActivity;)Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$4;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->dismissAnim:Landroid/view/animation/Animation;
    invoke-static {v6}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$26(Lobject/p2pwificam/clientActivity/DronePlayActivity;)Landroid/view/animation/Animation;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 827
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$4;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->control_layout:Landroid/view/View;
    invoke-static {v5}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$19(Lobject/p2pwificam/clientActivity/DronePlayActivity;)Landroid/view/View;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 829
    :cond_3
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$4;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    invoke-static {v5, v9}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$27(Lobject/p2pwificam/clientActivity/DronePlayActivity;Z)V

    .line 830
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$4;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    invoke-static {v5, v9}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$28(Lobject/p2pwificam/clientActivity/DronePlayActivity;I)V

    .line 833
    :cond_4
    iget v5, p1, Landroid/os/Message;->what:I

    const/16 v6, 0xb

    if-ne v5, v6, :cond_5

    .line 835
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$4;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    # invokes: Lobject/p2pwificam/clientActivity/DronePlayActivity;->getCameraParams()V
    invoke-static {v5}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$20(Lobject/p2pwificam/clientActivity/DronePlayActivity;)V

    .line 837
    :cond_5
    iget v5, p1, Landroid/os/Message;->what:I

    const/16 v6, 0xc

    if-ne v5, v6, :cond_6

    .line 840
    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->_camera:Lcom/easyview/ppcs/PPCSCamera;
    invoke-static {}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$14()Lcom/easyview/ppcs/PPCSCamera;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 842
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$4;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->handler:Landroid/os/Handler;
    invoke-static {v5}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$29(Lobject/p2pwificam/clientActivity/DronePlayActivity;)Landroid/os/Handler;

    move-result-object v5

    new-instance v6, Lobject/p2pwificam/clientActivity/DronePlayActivity$4$2;

    invoke-direct {v6, p0}, Lobject/p2pwificam/clientActivity/DronePlayActivity$4$2;-><init>(Lobject/p2pwificam/clientActivity/DronePlayActivity$4;)V

    .line 847
    const-wide/16 v7, 0xfa0

    .line 842
    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 854
    :cond_6
    iget v5, p1, Landroid/os/Message;->what:I

    const/16 v6, 0xd

    if-ne v5, v6, :cond_7

    .line 856
    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->_camera:Lcom/easyview/ppcs/PPCSCamera;
    invoke-static {}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$14()Lcom/easyview/ppcs/PPCSCamera;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 858
    const-string v5, "Drone"

    const-string v6, "Camera Stop"

    invoke-static {v5, v6}, Lcom/easyview/ndt/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 859
    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->_camera:Lcom/easyview/ppcs/PPCSCamera;
    invoke-static {}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$14()Lcom/easyview/ppcs/PPCSCamera;

    move-result-object v5

    invoke-virtual {v5}, Lcom/easyview/ppcs/PPCSCamera;->Stop()V

    .line 860
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$4;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    invoke-static {v5, v9}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$30(Lobject/p2pwificam/clientActivity/DronePlayActivity;Z)V

    .line 861
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$4;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    invoke-static {v5}, Lobject/p2pipcam/utils/Pub;->isAppOnForeground(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 863
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$4;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    invoke-static {v5, v10}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$24(Lobject/p2pwificam/clientActivity/DronePlayActivity;Ljava/lang/String;)V

    .line 869
    :cond_7
    iget v5, p1, Landroid/os/Message;->what:I

    const/16 v6, 0x64

    if-ne v5, v6, :cond_8

    .line 871
    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->_camera:Lcom/easyview/ppcs/PPCSCamera;
    invoke-static {}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$14()Lcom/easyview/ppcs/PPCSCamera;

    move-result-object v5

    invoke-virtual {v5, v10}, Lcom/easyview/ppcs/PPCSCamera;->querystorageState(Lcom/easyview/basecamera/ICamera$IRespondListener;)V

    .line 873
    :cond_8
    iget v5, p1, Landroid/os/Message;->what:I

    const/16 v6, 0x65

    if-ne v5, v6, :cond_9

    .line 895
    :cond_9
    return-void
.end method
