.class Lobject/p2pwificam/clientActivity/DPlayActivity$9;
.super Ljava/lang/Object;
.source "DPlayActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$9;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    .line 1882
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lobject/p2pwificam/clientActivity/DPlayActivity$9;)Lobject/p2pwificam/clientActivity/DPlayActivity;
    .locals 1

    .prologue
    .line 1882
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$9;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 14
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    const/4 v13, 0x0

    const/4 v12, 0x2

    const/16 v11, 0x8

    const/4 v4, 0x0

    .line 1888
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 1889
    .local v9, "now":J
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$9;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->lastSnapTime:J
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$89(Lobject/p2pwificam/clientActivity/DPlayActivity;)J

    move-result-wide v2

    cmp-long v0, v2, v9

    if-lez v0, :cond_0

    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$9;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    const-wide/16 v2, 0xfa0

    sub-long v2, v9, v2

    invoke-static {v0, v2, v3}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$90(Lobject/p2pwificam/clientActivity/DPlayActivity;J)V

    .line 1890
    :cond_0
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$9;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->lastRecordTime:J
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$91(Lobject/p2pwificam/clientActivity/DPlayActivity;)J

    move-result-wide v2

    cmp-long v0, v2, v9

    if-lez v0, :cond_1

    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$9;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    const-wide/16 v2, 0xfa0

    sub-long v2, v9, v2

    invoke-static {v0, v2, v3}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$92(Lobject/p2pwificam/clientActivity/DPlayActivity;J)V

    .line 1891
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 2060
    :cond_2
    :goto_0
    return-void

    .line 1894
    :sswitch_0
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$9;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->lastSnapTime:J
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$89(Lobject/p2pwificam/clientActivity/DPlayActivity;)J

    move-result-wide v2

    sub-long v2, v9, v2

    const-wide/16 v5, 0x7d0

    cmp-long v0, v2, v5

    if-ltz v0, :cond_2

    .line 1895
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$9;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->_camera:Lcom/easyview/camera/EVBaseCamera;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$16(Lobject/p2pwificam/clientActivity/DPlayActivity;)Lcom/easyview/camera/EVBaseCamera;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1897
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$9;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    invoke-static {v0, v9, v10}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$90(Lobject/p2pwificam/clientActivity/DPlayActivity;J)V

    .line 1898
    const/4 v7, 0x1

    .line 1899
    .local v7, "can_snap":Z
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$9;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->_camera:Lcom/easyview/camera/EVBaseCamera;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$16(Lobject/p2pwificam/clientActivity/DPlayActivity;)Lcom/easyview/camera/EVBaseCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easyview/camera/EVBaseCamera;->isLowPower()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1901
    const/4 v7, 0x0

    .line 1902
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$9;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->no_sd_text:Landroid/widget/TextView;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$93(Lobject/p2pwificam/clientActivity/DPlayActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v2, "Low Battery - Land Soon and Unplug"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1903
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$9;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->no_sd_text:Landroid/widget/TextView;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$93(Lobject/p2pwificam/clientActivity/DPlayActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1904
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$9;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    invoke-static {v0, v12}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$94(Lobject/p2pwificam/clientActivity/DPlayActivity;I)V

    .line 1913
    :cond_3
    :goto_1
    if-eqz v7, :cond_4

    .line 1915
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$9;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->_soundPool:Landroid/media/SoundPool;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$51(Lobject/p2pwificam/clientActivity/DPlayActivity;)Landroid/media/SoundPool;

    move-result-object v0

    const v2, 0x3dcccccd    # 0.1f

    const v3, 0x3dcccccd    # 0.1f

    const/high16 v6, 0x3f800000    # 1.0f

    move v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 1916
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$9;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->vedioview:Landroid/view/View;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$95(Lobject/p2pwificam/clientActivity/DPlayActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1918
    :cond_4
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$9;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->control_layout:Landroid/view/View;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$27(Lobject/p2pwificam/clientActivity/DPlayActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    .line 1919
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$9;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->left_control_layout:Landroid/view/View;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$28(Lobject/p2pwificam/clientActivity/DPlayActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    .line 1920
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$9;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->_camera:Lcom/easyview/camera/EVBaseCamera;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$16(Lobject/p2pwificam/clientActivity/DPlayActivity;)Lcom/easyview/camera/EVBaseCamera;

    move-result-object v0

    invoke-virtual {v0, v13}, Lcom/easyview/camera/EVBaseCamera;->snapShot(Lcom/easyview/basecamera/ICamera$IRespondListener;)V

    .line 1921
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$9;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->_camera:Lcom/easyview/camera/EVBaseCamera;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$16(Lobject/p2pwificam/clientActivity/DPlayActivity;)Lcom/easyview/camera/EVBaseCamera;

    move-result-object v0

    invoke-virtual {v0, v13}, Lcom/easyview/camera/EVBaseCamera;->querystorageState(Lcom/easyview/basecamera/ICamera$IRespondListener;)V

    .line 1922
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$9;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$31(Lobject/p2pwificam/clientActivity/DPlayActivity;I)V

    .line 1923
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$9;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$62(Lobject/p2pwificam/clientActivity/DPlayActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lobject/p2pwificam/clientActivity/DPlayActivity$9$1;

    invoke-direct {v1, p0}, Lobject/p2pwificam/clientActivity/DPlayActivity$9$1;-><init>(Lobject/p2pwificam/clientActivity/DPlayActivity$9;)V

    .line 1929
    const-wide/16 v2, 0x1f4

    .line 1923
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 1906
    :cond_5
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$9;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->_camera:Lcom/easyview/camera/EVBaseCamera;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$16(Lobject/p2pwificam/clientActivity/DPlayActivity;)Lcom/easyview/camera/EVBaseCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easyview/camera/EVBaseCamera;->haveStorage()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1908
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$9;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->no_sd_text:Landroid/widget/TextView;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$93(Lobject/p2pwificam/clientActivity/DPlayActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v2, "No Memory Card Installed"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1909
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$9;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->no_sd_text:Landroid/widget/TextView;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$93(Lobject/p2pwificam/clientActivity/DPlayActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1910
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$9;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    invoke-static {v0, v12}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$94(Lobject/p2pwificam/clientActivity/DPlayActivity;I)V

    .line 1911
    const/4 v7, 0x0

    goto :goto_1

    .line 1933
    .end local v7    # "can_snap":Z
    :sswitch_1
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$9;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->lastRecordTime:J
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$91(Lobject/p2pwificam/clientActivity/DPlayActivity;)J

    move-result-wide v2

    sub-long v2, v9, v2

    const-wide/16 v5, 0xbb8

    cmp-long v0, v2, v5

    if-ltz v0, :cond_2

    .line 1934
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$9;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->_camera:Lcom/easyview/camera/EVBaseCamera;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$16(Lobject/p2pwificam/clientActivity/DPlayActivity;)Lcom/easyview/camera/EVBaseCamera;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1936
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$9;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->_camera:Lcom/easyview/camera/EVBaseCamera;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$16(Lobject/p2pwificam/clientActivity/DPlayActivity;)Lcom/easyview/camera/EVBaseCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easyview/camera/EVBaseCamera;->isLowPower()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1938
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$9;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->no_sd_text:Landroid/widget/TextView;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$93(Lobject/p2pwificam/clientActivity/DPlayActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v2, "Low Battery - Land Soon and Unplug"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1939
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$9;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->no_sd_text:Landroid/widget/TextView;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$93(Lobject/p2pwificam/clientActivity/DPlayActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1940
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$9;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    invoke-static {v0, v12}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$94(Lobject/p2pwificam/clientActivity/DPlayActivity;I)V

    .line 1959
    :cond_6
    :goto_2
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$9;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    invoke-static {v0, v9, v10}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$92(Lobject/p2pwificam/clientActivity/DPlayActivity;J)V

    .line 1960
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$9;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    invoke-static {v0, v1}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$96(Lobject/p2pwificam/clientActivity/DPlayActivity;Z)V

    .line 1961
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$9;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    invoke-static {v0, v1}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$53(Lobject/p2pwificam/clientActivity/DPlayActivity;I)V

    .line 1962
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$9;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->_camera:Lcom/easyview/camera/EVBaseCamera;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$16(Lobject/p2pwificam/clientActivity/DPlayActivity;)Lcom/easyview/camera/EVBaseCamera;

    move-result-object v0

    invoke-virtual {v0, v13}, Lcom/easyview/camera/EVBaseCamera;->startRecord(Lcom/easyview/basecamera/ICamera$IRespondListener;)V

    .line 1963
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$9;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->_camera:Lcom/easyview/camera/EVBaseCamera;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$16(Lobject/p2pwificam/clientActivity/DPlayActivity;)Lcom/easyview/camera/EVBaseCamera;

    move-result-object v0

    invoke-virtual {v0, v13}, Lcom/easyview/camera/EVBaseCamera;->querystorageState(Lcom/easyview/basecamera/ICamera$IRespondListener;)V

    .line 1964
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$9;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->control_layout:Landroid/view/View;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$27(Lobject/p2pwificam/clientActivity/DPlayActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    .line 1965
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$9;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->left_control_layout:Landroid/view/View;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$28(Lobject/p2pwificam/clientActivity/DPlayActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    .line 1966
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$9;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->drone_record_text:Landroid/widget/TextView;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$97(Lobject/p2pwificam/clientActivity/DPlayActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1967
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$9;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    invoke-static {v0, v4}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$31(Lobject/p2pwificam/clientActivity/DPlayActivity;I)V

    goto/16 :goto_0

    .line 1942
    :cond_7
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$9;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->_camera:Lcom/easyview/camera/EVBaseCamera;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$16(Lobject/p2pwificam/clientActivity/DPlayActivity;)Lcom/easyview/camera/EVBaseCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easyview/camera/EVBaseCamera;->haveStorage()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1944
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$9;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->no_sd_text:Landroid/widget/TextView;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$93(Lobject/p2pwificam/clientActivity/DPlayActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v2, "No Memory Card Installed"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1945
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$9;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->no_sd_text:Landroid/widget/TextView;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$93(Lobject/p2pwificam/clientActivity/DPlayActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1946
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$9;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    invoke-static {v0, v12}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$94(Lobject/p2pwificam/clientActivity/DPlayActivity;I)V

    goto :goto_2

    .line 1947
    :cond_8
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$9;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->_camera:Lcom/easyview/camera/EVBaseCamera;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$16(Lobject/p2pwificam/clientActivity/DPlayActivity;)Lcom/easyview/camera/EVBaseCamera;

    move-result-object v0

    const/16 v2, 0x100

    invoke-virtual {v0, v2}, Lcom/easyview/camera/EVBaseCamera;->isLowMemory(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1949
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$9;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->no_sd_text:Landroid/widget/TextView;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$93(Lobject/p2pwificam/clientActivity/DPlayActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "The memory is full"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1950
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$9;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->no_sd_text:Landroid/widget/TextView;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$93(Lobject/p2pwificam/clientActivity/DPlayActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1951
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$9;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    invoke-static {v0, v12}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$94(Lobject/p2pwificam/clientActivity/DPlayActivity;I)V

    goto/16 :goto_0

    .line 1953
    :cond_9
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$9;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->_camera:Lcom/easyview/camera/EVBaseCamera;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$16(Lobject/p2pwificam/clientActivity/DPlayActivity;)Lcom/easyview/camera/EVBaseCamera;

    move-result-object v0

    const/16 v2, 0x200

    invoke-virtual {v0, v2}, Lcom/easyview/camera/EVBaseCamera;->isLowMemory(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1955
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$9;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->no_sd_text:Landroid/widget/TextView;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$93(Lobject/p2pwificam/clientActivity/DPlayActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v2, "The memory will be full"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1956
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$9;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->no_sd_text:Landroid/widget/TextView;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$93(Lobject/p2pwificam/clientActivity/DPlayActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1957
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$9;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    invoke-static {v0, v12}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$94(Lobject/p2pwificam/clientActivity/DPlayActivity;I)V

    goto/16 :goto_2

    .line 1971
    :sswitch_2
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$9;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->is_close_video:Z
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$98(Lobject/p2pwificam/clientActivity/DPlayActivity;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1979
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$9;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->_stop_record_count:I
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$99(Lobject/p2pwificam/clientActivity/DPlayActivity;)I

    move-result v0

    if-gtz v0, :cond_2

    .line 1980
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$9;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->is_recording:Z
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$100(Lobject/p2pwificam/clientActivity/DPlayActivity;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1981
    new-instance v8, Landroid/content/Intent;

    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$9;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    const-class v1, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;

    invoke-direct {v8, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1982
    .local v8, "in":Landroid/content/Intent;
    const-string v0, "ReverseLandscape"

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$9;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->isReverseLandscape:Z
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$101(Lobject/p2pwificam/clientActivity/DPlayActivity;)Z

    move-result v1

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1983
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$9;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    invoke-virtual {v0, v8}, Lobject/p2pwificam/clientActivity/DPlayActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 2005
    .end local v8    # "in":Landroid/content/Intent;
    :sswitch_3
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$9;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->is_close_video:Z
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$98(Lobject/p2pwificam/clientActivity/DPlayActivity;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2006
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$9;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # invokes: Lobject/p2pwificam/clientActivity/DPlayActivity;->adjustFontSize()V
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$102(Lobject/p2pwificam/clientActivity/DPlayActivity;)V

    .line 2007
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$9;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->progressView:Landroid/view/View;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$23(Lobject/p2pwificam/clientActivity/DPlayActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    .line 2009
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$9;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->_camera:Lcom/easyview/camera/EVBaseCamera;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$16(Lobject/p2pwificam/clientActivity/DPlayActivity;)Lcom/easyview/camera/EVBaseCamera;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 2011
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$9;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->_camera:Lcom/easyview/camera/EVBaseCamera;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$16(Lobject/p2pwificam/clientActivity/DPlayActivity;)Lcom/easyview/camera/EVBaseCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easyview/camera/EVBaseCamera;->isOnline()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2013
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$9;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->_camera:Lcom/easyview/camera/EVBaseCamera;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$16(Lobject/p2pwificam/clientActivity/DPlayActivity;)Lcom/easyview/camera/EVBaseCamera;

    move-result-object v0

    new-instance v1, Lobject/p2pwificam/clientActivity/DPlayActivity$9$2;

    invoke-direct {v1, p0}, Lobject/p2pwificam/clientActivity/DPlayActivity$9$2;-><init>(Lobject/p2pwificam/clientActivity/DPlayActivity$9;)V

    invoke-virtual {v0, v1}, Lcom/easyview/camera/EVBaseCamera;->RequestParams(Lcom/easyview/basecamera/ICamera$IRespondListener;)V

    .line 2021
    :cond_a
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$9;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # invokes: Lobject/p2pwificam/clientActivity/DPlayActivity;->show_setup_view()V
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$56(Lobject/p2pwificam/clientActivity/DPlayActivity;)V

    .line 2022
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$9;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->control_layout:Landroid/view/View;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$27(Lobject/p2pwificam/clientActivity/DPlayActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    .line 2023
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$9;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->left_control_layout:Landroid/view/View;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$28(Lobject/p2pwificam/clientActivity/DPlayActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    .line 2024
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$9;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->setup_show_layout:Landroid/view/View;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$103(Lobject/p2pwificam/clientActivity/DPlayActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2025
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$9;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    invoke-static {v0, v4}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$31(Lobject/p2pwificam/clientActivity/DPlayActivity;I)V

    goto/16 :goto_0

    .line 2031
    :sswitch_4
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$9;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->is_record:Z
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$49(Lobject/p2pwificam/clientActivity/DPlayActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2033
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$9;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->lastRecordTime:J
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$91(Lobject/p2pwificam/clientActivity/DPlayActivity;)J

    move-result-wide v0

    sub-long v0, v9, v0

    const-wide/16 v2, 0xbb8

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 2035
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$9;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    invoke-static {v0, v9, v10}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$92(Lobject/p2pwificam/clientActivity/DPlayActivity;J)V

    .line 2036
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$9;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$53(Lobject/p2pwificam/clientActivity/DPlayActivity;I)V

    .line 2037
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$9;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->_camera:Lcom/easyview/camera/EVBaseCamera;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$16(Lobject/p2pwificam/clientActivity/DPlayActivity;)Lcom/easyview/camera/EVBaseCamera;

    move-result-object v0

    invoke-virtual {v0, v13}, Lcom/easyview/camera/EVBaseCamera;->stopRecord(Lcom/easyview/basecamera/ICamera$IRespondListener;)V

    .line 2038
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$9;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    invoke-static {v0, v4}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$96(Lobject/p2pwificam/clientActivity/DPlayActivity;Z)V

    .line 2039
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$9;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->record_show_layout:Landroid/view/View;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$50(Lobject/p2pwificam/clientActivity/DPlayActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    .line 2041
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$9;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$31(Lobject/p2pwificam/clientActivity/DPlayActivity;I)V

    goto/16 :goto_0

    .line 1891
    :sswitch_data_0
    .sparse-switch
        0x7f0800b1 -> :sswitch_0
        0x7f0800b5 -> :sswitch_1
        0x7f0800b9 -> :sswitch_2
        0x7f0800bc -> :sswitch_3
        0x7f0800be -> :sswitch_4
    .end sparse-switch
.end method
