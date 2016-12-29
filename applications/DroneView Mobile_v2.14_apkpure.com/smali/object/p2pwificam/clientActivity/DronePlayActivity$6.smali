.class Lobject/p2pwificam/clientActivity/DronePlayActivity$6;
.super Ljava/lang/Object;
.source "DronePlayActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$6;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    .line 1483
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lobject/p2pwificam/clientActivity/DronePlayActivity$6;)Lobject/p2pwificam/clientActivity/DronePlayActivity;
    .locals 1

    .prologue
    .line 1483
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$6;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 14
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    const/4 v13, 0x0

    const/16 v12, 0x8

    const/4 v11, 0x2

    const/4 v4, 0x0

    .line 1489
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 1490
    .local v9, "now":J
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$6;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->lastSnapTime:J
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$42(Lobject/p2pwificam/clientActivity/DronePlayActivity;)J

    move-result-wide v2

    cmp-long v0, v2, v9

    if-lez v0, :cond_0

    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$6;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    const-wide/16 v2, 0xfa0

    sub-long v2, v9, v2

    invoke-static {v0, v2, v3}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$43(Lobject/p2pwificam/clientActivity/DronePlayActivity;J)V

    .line 1491
    :cond_0
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$6;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->lastRecordTime:J
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$44(Lobject/p2pwificam/clientActivity/DronePlayActivity;)J

    move-result-wide v2

    cmp-long v0, v2, v9

    if-lez v0, :cond_1

    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$6;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    const-wide/16 v2, 0xfa0

    sub-long v2, v9, v2

    invoke-static {v0, v2, v3}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$45(Lobject/p2pwificam/clientActivity/DronePlayActivity;J)V

    .line 1492
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 1639
    :cond_2
    :goto_0
    return-void

    .line 1495
    :sswitch_0
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$6;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->lastSnapTime:J
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$42(Lobject/p2pwificam/clientActivity/DronePlayActivity;)J

    move-result-wide v2

    sub-long v2, v9, v2

    const-wide/16 v5, 0x7d0

    cmp-long v0, v2, v5

    if-ltz v0, :cond_2

    .line 1496
    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->_camera:Lcom/easyview/ppcs/PPCSCamera;
    invoke-static {}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$14()Lcom/easyview/ppcs/PPCSCamera;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1498
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$6;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    invoke-static {v0, v9, v10}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$43(Lobject/p2pwificam/clientActivity/DronePlayActivity;J)V

    .line 1499
    const/4 v7, 0x1

    .line 1500
    .local v7, "can_snap":Z
    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->_camera:Lcom/easyview/ppcs/PPCSCamera;
    invoke-static {}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$14()Lcom/easyview/ppcs/PPCSCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easyview/ppcs/PPCSCamera;->isLowPower()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1502
    const/4 v7, 0x0

    .line 1503
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$6;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->no_sd_text:Landroid/widget/TextView;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$46(Lobject/p2pwificam/clientActivity/DronePlayActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v2, "Low Battery - Land Soon and Unplug"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1504
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$6;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->no_sd_text:Landroid/widget/TextView;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$46(Lobject/p2pwificam/clientActivity/DronePlayActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1505
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$6;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    invoke-static {v0, v11}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$47(Lobject/p2pwificam/clientActivity/DronePlayActivity;I)V

    .line 1514
    :cond_3
    :goto_1
    if-eqz v7, :cond_4

    .line 1516
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$6;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->_soundPool:Landroid/media/SoundPool;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$48(Lobject/p2pwificam/clientActivity/DronePlayActivity;)Landroid/media/SoundPool;

    move-result-object v0

    const v2, 0x3dcccccd    # 0.1f

    const v3, 0x3dcccccd    # 0.1f

    const/high16 v6, 0x3f800000    # 1.0f

    move v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 1517
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$6;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->vedioview:Landroid/view/View;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$49(Lobject/p2pwificam/clientActivity/DronePlayActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1519
    :cond_4
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$6;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->control_layout:Landroid/view/View;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$19(Lobject/p2pwificam/clientActivity/DronePlayActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/view/View;->setVisibility(I)V

    .line 1520
    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->_camera:Lcom/easyview/ppcs/PPCSCamera;
    invoke-static {}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$14()Lcom/easyview/ppcs/PPCSCamera;

    move-result-object v0

    invoke-virtual {v0, v13}, Lcom/easyview/ppcs/PPCSCamera;->snapShot(Lcom/easyview/basecamera/ICamera$IRespondListener;)V

    .line 1521
    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->_camera:Lcom/easyview/ppcs/PPCSCamera;
    invoke-static {}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$14()Lcom/easyview/ppcs/PPCSCamera;

    move-result-object v0

    invoke-virtual {v0, v13}, Lcom/easyview/ppcs/PPCSCamera;->querystorageState(Lcom/easyview/basecamera/ICamera$IRespondListener;)V

    .line 1522
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$6;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$28(Lobject/p2pwificam/clientActivity/DronePlayActivity;I)V

    .line 1523
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$6;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$50(Lobject/p2pwificam/clientActivity/DronePlayActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lobject/p2pwificam/clientActivity/DronePlayActivity$6$1;

    invoke-direct {v1, p0}, Lobject/p2pwificam/clientActivity/DronePlayActivity$6$1;-><init>(Lobject/p2pwificam/clientActivity/DronePlayActivity$6;)V

    .line 1528
    const-wide/16 v2, 0x1f4

    .line 1523
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 1507
    :cond_5
    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->_camera:Lcom/easyview/ppcs/PPCSCamera;
    invoke-static {}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$14()Lcom/easyview/ppcs/PPCSCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easyview/ppcs/PPCSCamera;->haveStorage()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1509
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$6;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->no_sd_text:Landroid/widget/TextView;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$46(Lobject/p2pwificam/clientActivity/DronePlayActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v2, "No Memory Card Installed"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1510
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$6;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->no_sd_text:Landroid/widget/TextView;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$46(Lobject/p2pwificam/clientActivity/DronePlayActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1511
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$6;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    invoke-static {v0, v11}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$47(Lobject/p2pwificam/clientActivity/DronePlayActivity;I)V

    .line 1512
    const/4 v7, 0x0

    goto :goto_1

    .line 1532
    .end local v7    # "can_snap":Z
    :sswitch_1
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$6;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->lastRecordTime:J
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$44(Lobject/p2pwificam/clientActivity/DronePlayActivity;)J

    move-result-wide v2

    sub-long v2, v9, v2

    const-wide/16 v5, 0xbb8

    cmp-long v0, v2, v5

    if-ltz v0, :cond_2

    .line 1533
    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->_camera:Lcom/easyview/ppcs/PPCSCamera;
    invoke-static {}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$14()Lcom/easyview/ppcs/PPCSCamera;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1535
    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->_camera:Lcom/easyview/ppcs/PPCSCamera;
    invoke-static {}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$14()Lcom/easyview/ppcs/PPCSCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easyview/ppcs/PPCSCamera;->isLowPower()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1537
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$6;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->no_sd_text:Landroid/widget/TextView;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$46(Lobject/p2pwificam/clientActivity/DronePlayActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v2, "Low Battery - Land Soon and Unplug"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1538
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$6;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->no_sd_text:Landroid/widget/TextView;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$46(Lobject/p2pwificam/clientActivity/DronePlayActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1539
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$6;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    invoke-static {v0, v11}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$47(Lobject/p2pwificam/clientActivity/DronePlayActivity;I)V

    .line 1558
    :cond_6
    :goto_2
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$6;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    invoke-static {v0, v9, v10}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$45(Lobject/p2pwificam/clientActivity/DronePlayActivity;J)V

    .line 1559
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$6;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    invoke-static {v0, v1}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$51(Lobject/p2pwificam/clientActivity/DronePlayActivity;Z)V

    .line 1560
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$6;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    invoke-static {v0, v1}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$52(Lobject/p2pwificam/clientActivity/DronePlayActivity;I)V

    .line 1561
    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->_camera:Lcom/easyview/ppcs/PPCSCamera;
    invoke-static {}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$14()Lcom/easyview/ppcs/PPCSCamera;

    move-result-object v0

    invoke-virtual {v0, v13}, Lcom/easyview/ppcs/PPCSCamera;->startRecord(Lcom/easyview/basecamera/ICamera$IRespondListener;)V

    .line 1562
    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->_camera:Lcom/easyview/ppcs/PPCSCamera;
    invoke-static {}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$14()Lcom/easyview/ppcs/PPCSCamera;

    move-result-object v0

    invoke-virtual {v0, v13}, Lcom/easyview/ppcs/PPCSCamera;->querystorageState(Lcom/easyview/basecamera/ICamera$IRespondListener;)V

    .line 1563
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$6;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->control_layout:Landroid/view/View;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$19(Lobject/p2pwificam/clientActivity/DronePlayActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/view/View;->setVisibility(I)V

    .line 1564
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$6;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    invoke-static {v0, v4}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$28(Lobject/p2pwificam/clientActivity/DronePlayActivity;I)V

    goto/16 :goto_0

    .line 1541
    :cond_7
    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->_camera:Lcom/easyview/ppcs/PPCSCamera;
    invoke-static {}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$14()Lcom/easyview/ppcs/PPCSCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easyview/ppcs/PPCSCamera;->haveStorage()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1543
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$6;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->no_sd_text:Landroid/widget/TextView;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$46(Lobject/p2pwificam/clientActivity/DronePlayActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v2, "No Memory Card Installed"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1544
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$6;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->no_sd_text:Landroid/widget/TextView;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$46(Lobject/p2pwificam/clientActivity/DronePlayActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1545
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$6;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    invoke-static {v0, v11}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$47(Lobject/p2pwificam/clientActivity/DronePlayActivity;I)V

    goto :goto_2

    .line 1546
    :cond_8
    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->_camera:Lcom/easyview/ppcs/PPCSCamera;
    invoke-static {}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$14()Lcom/easyview/ppcs/PPCSCamera;

    move-result-object v0

    const/16 v2, 0x100

    invoke-virtual {v0, v2}, Lcom/easyview/ppcs/PPCSCamera;->isLowMemory(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1548
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$6;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->no_sd_text:Landroid/widget/TextView;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$46(Lobject/p2pwificam/clientActivity/DronePlayActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "The memory is full"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1549
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$6;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->no_sd_text:Landroid/widget/TextView;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$46(Lobject/p2pwificam/clientActivity/DronePlayActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1550
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$6;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    invoke-static {v0, v11}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$47(Lobject/p2pwificam/clientActivity/DronePlayActivity;I)V

    goto/16 :goto_0

    .line 1552
    :cond_9
    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->_camera:Lcom/easyview/ppcs/PPCSCamera;
    invoke-static {}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$14()Lcom/easyview/ppcs/PPCSCamera;

    move-result-object v0

    const/16 v2, 0x200

    invoke-virtual {v0, v2}, Lcom/easyview/ppcs/PPCSCamera;->isLowMemory(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1554
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$6;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->no_sd_text:Landroid/widget/TextView;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$46(Lobject/p2pwificam/clientActivity/DronePlayActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v2, "The memory will be full"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1555
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$6;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->no_sd_text:Landroid/widget/TextView;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$46(Lobject/p2pwificam/clientActivity/DronePlayActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1556
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$6;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    invoke-static {v0, v11}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$47(Lobject/p2pwificam/clientActivity/DronePlayActivity;I)V

    goto/16 :goto_2

    .line 1570
    :sswitch_2
    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->_camera:Lcom/easyview/ppcs/PPCSCamera;
    invoke-static {}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$14()Lcom/easyview/ppcs/PPCSCamera;

    move-result-object v0

    if-eqz v0, :cond_a

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->_camera:Lcom/easyview/ppcs/PPCSCamera;
    invoke-static {}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$14()Lcom/easyview/ppcs/PPCSCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easyview/ppcs/PPCSCamera;->StopVideo()V

    .line 1575
    :cond_a
    new-instance v8, Landroid/content/Intent;

    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$6;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    const-class v1, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;

    invoke-direct {v8, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1576
    .local v8, "in":Landroid/content/Intent;
    const-string v0, "ReverseLandscape"

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$6;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->isReverseLandscape:Z
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$53(Lobject/p2pwificam/clientActivity/DronePlayActivity;)Z

    move-result v1

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1577
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$6;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    invoke-virtual {v0, v8}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1599
    .end local v8    # "in":Landroid/content/Intent;
    :sswitch_3
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$6;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    # invokes: Lobject/p2pwificam/clientActivity/DronePlayActivity;->adjustFontSize()V
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$54(Lobject/p2pwificam/clientActivity/DronePlayActivity;)V

    .line 1600
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$6;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->progressView:Landroid/view/View;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$23(Lobject/p2pwificam/clientActivity/DronePlayActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/view/View;->setVisibility(I)V

    .line 1601
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$6;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    # invokes: Lobject/p2pwificam/clientActivity/DronePlayActivity;->show_setup_view()V
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$55(Lobject/p2pwificam/clientActivity/DronePlayActivity;)V

    .line 1602
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$6;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->control_layout:Landroid/view/View;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$19(Lobject/p2pwificam/clientActivity/DronePlayActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/view/View;->setVisibility(I)V

    .line 1603
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$6;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->setup_show_layout:Landroid/view/View;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$56(Lobject/p2pwificam/clientActivity/DronePlayActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1604
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$6;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    invoke-static {v0, v4}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$28(Lobject/p2pwificam/clientActivity/DronePlayActivity;I)V

    goto/16 :goto_0

    .line 1610
    :sswitch_4
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$6;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->is_record:Z
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$57(Lobject/p2pwificam/clientActivity/DronePlayActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1612
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$6;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->lastRecordTime:J
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$44(Lobject/p2pwificam/clientActivity/DronePlayActivity;)J

    move-result-wide v0

    sub-long v0, v9, v0

    const-wide/16 v2, 0xbb8

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 1614
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$6;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    invoke-static {v0, v9, v10}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$45(Lobject/p2pwificam/clientActivity/DronePlayActivity;J)V

    .line 1615
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$6;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$52(Lobject/p2pwificam/clientActivity/DronePlayActivity;I)V

    .line 1616
    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->_camera:Lcom/easyview/ppcs/PPCSCamera;
    invoke-static {}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$14()Lcom/easyview/ppcs/PPCSCamera;

    move-result-object v0

    invoke-virtual {v0, v13}, Lcom/easyview/ppcs/PPCSCamera;->stopRecord(Lcom/easyview/basecamera/ICamera$IRespondListener;)V

    .line 1617
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$6;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    invoke-static {v0, v4}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$51(Lobject/p2pwificam/clientActivity/DronePlayActivity;Z)V

    .line 1618
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$6;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->record_show_layout:Landroid/view/View;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$58(Lobject/p2pwificam/clientActivity/DronePlayActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/view/View;->setVisibility(I)V

    .line 1619
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$6;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->control_layout:Landroid/view/View;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$19(Lobject/p2pwificam/clientActivity/DronePlayActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1620
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$6;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$28(Lobject/p2pwificam/clientActivity/DronePlayActivity;I)V

    goto/16 :goto_0

    .line 1492
    :sswitch_data_0
    .sparse-switch
        0x7f0800b1 -> :sswitch_0
        0x7f0800b5 -> :sswitch_1
        0x7f0800b9 -> :sswitch_2
        0x7f0800bc -> :sswitch_3
        0x7f0800be -> :sswitch_4
    .end sparse-switch
.end method
