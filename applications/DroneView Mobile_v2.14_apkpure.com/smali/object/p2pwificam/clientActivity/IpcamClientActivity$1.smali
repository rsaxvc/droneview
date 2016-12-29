.class Lobject/p2pwificam/clientActivity/IpcamClientActivity$1;
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
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity$1;->this$0:Lobject/p2pwificam/clientActivity/IpcamClientActivity;

    .line 480
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lobject/p2pwificam/clientActivity/IpcamClientActivity$1;)Lobject/p2pwificam/clientActivity/IpcamClientActivity;
    .locals 1

    .prologue
    .line 480
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity$1;->this$0:Lobject/p2pwificam/clientActivity/IpcamClientActivity;

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 482
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 483
    .local v0, "bd":Landroid/os/Bundle;
    const-string v10, "msgparam"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 484
    .local v8, "msgParam":I
    iget v9, p1, Landroid/os/Message;->what:I

    .line 485
    .local v9, "msgType":I
    const-string v10, "did"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 486
    .local v2, "did":Ljava/lang/String;
    sparse-switch v9, :sswitch_data_0

    .line 613
    :cond_0
    :goto_0
    return-void

    .line 488
    :sswitch_0
    new-instance v6, Landroid/content/Intent;

    const-string v10, "camera_status_change"

    invoke-direct {v6, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 489
    .local v6, "intent":Landroid/content/Intent;
    const-string v10, "cameraid"

    invoke-virtual {v6, v10, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 490
    const-string v10, "pppp_status"

    invoke-virtual {v6, v10, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 491
    iget-object v10, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity$1;->this$0:Lobject/p2pwificam/clientActivity/IpcamClientActivity;

    invoke-virtual {v10, v6}, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 492
    iget-object v10, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity$1;->this$0:Lobject/p2pwificam/clientActivity/IpcamClientActivity;

    invoke-static {v10, v2, v8}, Lobject/p2pipcam/utils/Pub;->setDeviceState(Landroid/content/Context;Ljava/lang/String;I)V

    .line 494
    # getter for: Lobject/p2pwificam/clientActivity/IpcamClientActivity;->listAdapter:Lobject/p2pipcam/adapter/CameraListAdapter;
    invoke-static {}, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->access$0()Lobject/p2pipcam/adapter/CameraListAdapter;

    move-result-object v10

    invoke-virtual {v10, v2, v8}, Lobject/p2pipcam/adapter/CameraListAdapter;->UpdataCameraStatus(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 495
    # getter for: Lobject/p2pwificam/clientActivity/IpcamClientActivity;->listAdapter:Lobject/p2pipcam/adapter/CameraListAdapter;
    invoke-static {}, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->access$0()Lobject/p2pipcam/adapter/CameraListAdapter;

    move-result-object v10

    invoke-virtual {v10}, Lobject/p2pipcam/adapter/CameraListAdapter;->notifyDataSetChanged()V

    .line 496
    const/4 v10, 0x2

    if-ne v8, v10, :cond_5

    .line 497
    invoke-static {}, Lcom/easyview/camera/CameraList;->GetInstance()Lcom/easyview/camera/CameraList;

    move-result-object v10

    invoke-virtual {v10, v2}, Lcom/easyview/camera/CameraList;->getCamera(Ljava/lang/String;)Lcom/easyview/basecamera/BaseCamera;

    move-result-object v1

    .line 498
    .local v1, "camera":Lcom/easyview/basecamera/BaseCamera;
    if-eqz v1, :cond_4

    .line 501
    const/4 v10, 0x4

    invoke-static {v2, v10}, Lobject/p2pipcam/nativecaller/NativeCaller;->PPPPGetSystemParams(Ljava/lang/String;I)I

    .line 502
    invoke-static {v2}, Lobject/p2pipcam/utils/Pub;->getWifi(Ljava/lang/String;)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_1

    .line 504
    new-instance v10, Lobject/p2pwificam/clientActivity/IpcamClientActivity$1$1;

    invoke-direct {v10, p0}, Lobject/p2pwificam/clientActivity/IpcamClientActivity$1$1;-><init>(Lobject/p2pwificam/clientActivity/IpcamClientActivity$1;)V

    invoke-virtual {v1, v10}, Lcom/easyview/basecamera/BaseCamera;->queryWifiResult(Lcom/easyview/basecamera/ICamera$IRespondListener;)V

    .line 516
    :cond_1
    const/4 v10, 0x0

    invoke-virtual {v1, v10}, Lcom/easyview/basecamera/BaseCamera;->getCaps(Lcom/easyview/basecamera/ICamera$IRespondListener;)V

    .line 517
    iget-object v10, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity$1;->this$0:Lobject/p2pwificam/clientActivity/IpcamClientActivity;

    invoke-virtual {v10}, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    iget-object v10, v10, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v10}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    .line 518
    .local v7, "lang":Ljava/lang/String;
    const-string v10, "zh"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 520
    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-virtual {v1, v10, v11}, Lcom/easyview/basecamera/BaseCamera;->setLanguage(ILcom/easyview/basecamera/ICamera$IRespondListener;)V

    :goto_1
    move-object v3, v1

    .line 523
    check-cast v3, Lcom/easyview/camera/EVBaseCamera;

    .line 524
    .local v3, "evCamera":Lcom/easyview/camera/EVBaseCamera;
    const/4 v4, 0x0

    .line 526
    .local v4, "firstRun":Z
    iget-object v10, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity$1;->this$0:Lobject/p2pwificam/clientActivity/IpcamClientActivity;

    # getter for: Lobject/p2pwificam/clientActivity/IpcamClientActivity;->add_id:Ljava/lang/String;
    invoke-static {v10}, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->access$1(Lobject/p2pwificam/clientActivity/IpcamClientActivity;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 528
    const/4 v4, 0x1

    .line 530
    :cond_2
    iget-object v10, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity$1;->this$0:Lobject/p2pwificam/clientActivity/IpcamClientActivity;

    const/4 v11, 0x0

    invoke-static {v10, v3, v4, v11}, Lobject/p2pipcam/utils/EventQueryUtil;->add(Landroid/content/Context;Lcom/easyview/camera/EVBaseCamera;ZLcom/easyview/basecamera/ICamera$IRespondListener;)V

    .line 534
    iget-object v10, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity$1;->this$0:Lobject/p2pwificam/clientActivity/IpcamClientActivity;

    invoke-static {v10}, Lobject/p2pipcam/utils/Pub;->isBell(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 536
    const-string v10, "IpcamClientActivity"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "online add_id:"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v12, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity$1;->this$0:Lobject/p2pwificam/clientActivity/IpcamClientActivity;

    # getter for: Lobject/p2pwificam/clientActivity/IpcamClientActivity;->add_id:Ljava/lang/String;
    invoke-static {v12}, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->access$1(Lobject/p2pwificam/clientActivity/IpcamClientActivity;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " id:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    iget-object v10, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity$1;->this$0:Lobject/p2pwificam/clientActivity/IpcamClientActivity;

    # getter for: Lobject/p2pwificam/clientActivity/IpcamClientActivity;->add_id:Ljava/lang/String;
    invoke-static {v10}, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->access$1(Lobject/p2pwificam/clientActivity/IpcamClientActivity;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 539
    iget-object v10, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity$1;->this$0:Lobject/p2pwificam/clientActivity/IpcamClientActivity;

    const/4 v11, 0x0

    invoke-static {v10, v11}, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->access$2(Lobject/p2pwificam/clientActivity/IpcamClientActivity;Ljava/lang/String;)V

    .line 540
    invoke-static {}, Lobject/p2pipcam/utils/Pub;->isDeviceWifiAp()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 542
    new-instance v5, Landroid/content/Intent;

    iget-object v10, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity$1;->this$0:Lobject/p2pwificam/clientActivity/IpcamClientActivity;

    const-class v11, Lobject/p2pwificam/clientActivity/SettingWifiActivity;

    invoke-direct {v5, v10, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 543
    .local v5, "i":Landroid/content/Intent;
    const-string v10, "cameraid"

    invoke-virtual {v5, v10, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 544
    const-string v10, "camera_name"

    const-string v11, "Camera"

    invoke-virtual {v5, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 545
    iget-object v10, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity$1;->this$0:Lobject/p2pwificam/clientActivity/IpcamClientActivity;

    invoke-virtual {v10, v5}, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->startActivity(Landroid/content/Intent;)V

    .line 549
    .end local v5    # "i":Landroid/content/Intent;
    :cond_3
    iget-object v10, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity$1;->this$0:Lobject/p2pwificam/clientActivity/IpcamClientActivity;

    const/4 v11, 0x0

    invoke-static {v10, v11}, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->access$2(Lobject/p2pwificam/clientActivity/IpcamClientActivity;Ljava/lang/String;)V

    .line 551
    .end local v3    # "evCamera":Lcom/easyview/camera/EVBaseCamera;
    .end local v4    # "firstRun":Z
    .end local v7    # "lang":Ljava/lang/String;
    :cond_4
    new-instance v10, Lobject/p2pwificam/clientActivity/IpcamClientActivity$1$2;

    invoke-direct {v10, p0}, Lobject/p2pwificam/clientActivity/IpcamClientActivity$1$2;-><init>(Lobject/p2pwificam/clientActivity/IpcamClientActivity$1;)V

    invoke-virtual {v1, v10}, Lcom/easyview/basecamera/BaseCamera;->getAlarmParam(Lcom/easyview/basecamera/ICamera$IAlarmParamListener;)V

    .line 563
    .end local v1    # "camera":Lcom/easyview/basecamera/BaseCamera;
    :cond_5
    const/4 v10, 0x3

    if-eq v8, v10, :cond_6

    .line 564
    const/4 v10, 0x6

    if-eq v8, v10, :cond_6

    .line 565
    const/4 v10, 0x7

    if-ne v8, v10, :cond_7

    .line 566
    :cond_6
    iget-object v10, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity$1;->this$0:Lobject/p2pwificam/clientActivity/IpcamClientActivity;

    invoke-static {v10}, Lobject/p2pipcam/utils/Pub;->isBell(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 569
    iget-object v10, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity$1;->this$0:Lobject/p2pwificam/clientActivity/IpcamClientActivity;

    # getter for: Lobject/p2pwificam/clientActivity/IpcamClientActivity;->listCamera:Lcom/easyview/camera/CameraList;
    invoke-static {v10}, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->access$3(Lobject/p2pwificam/clientActivity/IpcamClientActivity;)Lcom/easyview/camera/CameraList;

    move-result-object v10

    invoke-virtual {v10, v2}, Lcom/easyview/camera/CameraList;->getCamera(Ljava/lang/String;)Lcom/easyview/basecamera/BaseCamera;

    .line 578
    :cond_7
    :goto_2
    const/4 v10, 0x5

    if-eq v8, v10, :cond_8

    .line 579
    const/16 v10, 0x8

    if-eq v8, v10, :cond_8

    .line 580
    const/16 v10, 0x9

    if-ne v8, v10, :cond_9

    .line 583
    :cond_8
    iget-object v10, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity$1;->this$0:Lobject/p2pwificam/clientActivity/IpcamClientActivity;

    invoke-static {v10}, Lobject/p2pipcam/utils/Pub;->isBell(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 585
    iget-object v10, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity$1;->this$0:Lobject/p2pwificam/clientActivity/IpcamClientActivity;

    # getter for: Lobject/p2pwificam/clientActivity/IpcamClientActivity;->listCamera:Lcom/easyview/camera/CameraList;
    invoke-static {v10}, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->access$3(Lobject/p2pwificam/clientActivity/IpcamClientActivity;)Lcom/easyview/camera/CameraList;

    move-result-object v10

    invoke-virtual {v10, v2}, Lcom/easyview/camera/CameraList;->getCamera(Ljava/lang/String;)Lcom/easyview/basecamera/BaseCamera;

    move-result-object v1

    .line 586
    .restart local v1    # "camera":Lcom/easyview/basecamera/BaseCamera;
    invoke-virtual {v1}, Lcom/easyview/basecamera/BaseCamera;->Stop()V

    .line 587
    iget-object v10, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity$1;->this$0:Lobject/p2pwificam/clientActivity/IpcamClientActivity;

    # getter for: Lobject/p2pwificam/clientActivity/IpcamClientActivity;->_add_bell_reconnnect:I
    invoke-static {v10}, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->access$4(Lobject/p2pwificam/clientActivity/IpcamClientActivity;)I

    move-result v10

    if-lez v10, :cond_9

    .line 589
    invoke-virtual {v1}, Lcom/easyview/basecamera/BaseCamera;->Start()V

    .line 590
    iget-object v10, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity$1;->this$0:Lobject/p2pwificam/clientActivity/IpcamClientActivity;

    iget-object v10, v10, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->ParamListener:Lcom/easyview/basecamera/ICameraParamListener;

    invoke-virtual {v1, v10}, Lcom/easyview/basecamera/BaseCamera;->AddParamListener(Lcom/easyview/basecamera/ICameraParamListener;)V

    .line 591
    iget-object v10, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity$1;->this$0:Lobject/p2pwificam/clientActivity/IpcamClientActivity;

    # getter for: Lobject/p2pwificam/clientActivity/IpcamClientActivity;->_add_bell_reconnnect:I
    invoke-static {v10}, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->access$4(Lobject/p2pwificam/clientActivity/IpcamClientActivity;)I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-static {v10, v11}, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->access$5(Lobject/p2pwificam/clientActivity/IpcamClientActivity;I)V

    .line 598
    .end local v1    # "camera":Lcom/easyview/basecamera/BaseCamera;
    :cond_9
    :goto_3
    const/16 v10, 0x9

    if-ne v8, v10, :cond_0

    .line 600
    invoke-static {v2}, Lcom/ndt/ppcs_api/PPCS_NDT;->Remove(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 521
    .restart local v1    # "camera":Lcom/easyview/basecamera/BaseCamera;
    .restart local v7    # "lang":Ljava/lang/String;
    :cond_a
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v1, v10, v11}, Lcom/easyview/basecamera/BaseCamera;->setLanguage(ILcom/easyview/basecamera/ICamera$IRespondListener;)V

    goto/16 :goto_1

    .line 575
    .end local v1    # "camera":Lcom/easyview/basecamera/BaseCamera;
    .end local v7    # "lang":Ljava/lang/String;
    :cond_b
    invoke-static {v2}, Lobject/p2pipcam/nativecaller/NativeCaller;->StopPPPP(Ljava/lang/String;)I

    goto :goto_2

    .line 595
    :cond_c
    invoke-static {v2}, Lobject/p2pipcam/nativecaller/NativeCaller;->StopPPPP(Ljava/lang/String;)I

    goto :goto_3

    .line 605
    .end local v6    # "intent":Landroid/content/Intent;
    :sswitch_1
    # getter for: Lobject/p2pwificam/clientActivity/IpcamClientActivity;->listAdapter:Lobject/p2pipcam/adapter/CameraListAdapter;
    invoke-static {}, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->access$0()Lobject/p2pipcam/adapter/CameraListAdapter;

    move-result-object v10

    invoke-virtual {v10, v2, v8}, Lobject/p2pipcam/adapter/CameraListAdapter;->UpdataCameraType(Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 610
    :sswitch_2
    # getter for: Lobject/p2pwificam/clientActivity/IpcamClientActivity;->listAdapter:Lobject/p2pipcam/adapter/CameraListAdapter;
    invoke-static {}, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->access$0()Lobject/p2pipcam/adapter/CameraListAdapter;

    move-result-object v10

    invoke-virtual {v10}, Lobject/p2pipcam/adapter/CameraListAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 486
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0xc8 -> :sswitch_2
    .end sparse-switch
.end method
