.class Lobject/p2pwificam/clientActivity/IpcamClientActivity$CameraInfoReceiver;
.super Landroid/content/BroadcastReceiver;
.source "IpcamClientActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pwificam/clientActivity/IpcamClientActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CameraInfoReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/IpcamClientActivity;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/IpcamClientActivity;)V
    .locals 0

    .prologue
    .line 795
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity$CameraInfoReceiver;->this$0:Lobject/p2pwificam/clientActivity/IpcamClientActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 20
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 798
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v13

    .line 799
    .local v13, "action":Ljava/lang/String;
    const-string v1, "other"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 800
    # getter for: Lobject/p2pwificam/clientActivity/IpcamClientActivity;->listAdapter:Lobject/p2pipcam/adapter/CameraListAdapter;
    invoke-static {}, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->access$0()Lobject/p2pipcam/adapter/CameraListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lobject/p2pipcam/adapter/CameraListAdapter;->sendCameraStatus()V

    .line 882
    :cond_0
    :goto_0
    return-void

    .line 801
    :cond_1
    const-string v1, "refresh_adapter_list"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 803
    # getter for: Lobject/p2pwificam/clientActivity/IpcamClientActivity;->listAdapter:Lobject/p2pipcam/adapter/CameraListAdapter;
    invoke-static {}, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->access$0()Lobject/p2pipcam/adapter/CameraListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lobject/p2pipcam/adapter/CameraListAdapter;->notifyDataSetChanged()V

    .line 804
    const-string v1, "IpcamClientActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "action  == "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 805
    :cond_2
    const-string v1, "object.ipcam.client.pushinforeceiver"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 807
    const-string v1, "IpcamClientActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "action  == "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    const-string v1, "cameraid"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 810
    .local v4, "did":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lobject/p2pwificam/clientActivity/IpcamClientActivity$CameraInfoReceiver;->this$0:Lobject/p2pwificam/clientActivity/IpcamClientActivity;

    # getter for: Lobject/p2pwificam/clientActivity/IpcamClientActivity;->listCamera:Lcom/easyview/camera/CameraList;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->access$3(Lobject/p2pwificam/clientActivity/IpcamClientActivity;)Lcom/easyview/camera/CameraList;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/easyview/camera/CameraList;->getCamera(Ljava/lang/String;)Lcom/easyview/basecamera/BaseCamera;

    move-result-object v14

    .line 811
    .local v14, "camera":Lcom/easyview/basecamera/BaseCamera;
    invoke-virtual {v14}, Lcom/easyview/basecamera/BaseCamera;->Start()V

    goto :goto_0

    .line 814
    .end local v4    # "did":Ljava/lang/String;
    .end local v14    # "camera":Lcom/easyview/basecamera/BaseCamera;
    :cond_3
    const-string v1, "camera_option"

    .line 815
    const v7, 0xffff

    .line 814
    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v19

    .line 816
    .local v19, "option":I
    const v1, 0xffff

    move/from16 v0, v19

    if-eq v0, v1, :cond_0

    .line 818
    const-string v2, ""

    .line 820
    .local v2, "strOldDID":Ljava/lang/String;
    const-string v1, "camera_name"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 822
    .local v3, "name":Ljava/lang/String;
    const-string v1, "cameraid"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 824
    .restart local v4    # "did":Ljava/lang/String;
    const-string v1, "camera_user"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 826
    .local v5, "user":Ljava/lang/String;
    const-string v1, "camera_pwd"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 827
    .local v6, "pwd":Ljava/lang/String;
    const-string v1, "devAPDID"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 828
    .local v16, "dev_wifi":Ljava/lang/String;
    const/4 v15, 0x0

    .line 829
    .local v15, "dev_name":Ljava/lang/String;
    const-string v1, "cameraName"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 830
    const/16 v18, 0x0

    .line 831
    .local v18, "isdle":Ljava/lang/String;
    const-string v1, "isdel"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 832
    const/4 v1, 0x2

    move/from16 v0, v19

    if-ne v0, v1, :cond_5

    .line 834
    const-string v1, "camera_old_id"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 835
    move-object/from16 v0, p0

    iget-object v1, v0, Lobject/p2pwificam/clientActivity/IpcamClientActivity$CameraInfoReceiver;->this$0:Lobject/p2pwificam/clientActivity/IpcamClientActivity;

    # invokes: Lobject/p2pwificam/clientActivity/IpcamClientActivity;->UpdataCamera2db(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static/range {v1 .. v6}, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->access$14(Lobject/p2pwificam/clientActivity/IpcamClientActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 836
    # getter for: Lobject/p2pwificam/clientActivity/IpcamClientActivity;->listAdapter:Lobject/p2pipcam/adapter/CameraListAdapter;
    invoke-static {}, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->access$0()Lobject/p2pipcam/adapter/CameraListAdapter;

    move-result-object v1

    invoke-virtual/range {v1 .. v6}, Lobject/p2pipcam/adapter/CameraListAdapter;->UpdateCamera(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 839
    # getter for: Lobject/p2pwificam/clientActivity/IpcamClientActivity;->listAdapter:Lobject/p2pipcam/adapter/CameraListAdapter;
    invoke-static {}, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->access$0()Lobject/p2pipcam/adapter/CameraListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lobject/p2pipcam/adapter/CameraListAdapter;->notifyDataSetChanged()V

    .line 840
    move-object/from16 v0, p0

    iget-object v1, v0, Lobject/p2pwificam/clientActivity/IpcamClientActivity$CameraInfoReceiver;->this$0:Lobject/p2pwificam/clientActivity/IpcamClientActivity;

    # getter for: Lobject/p2pwificam/clientActivity/IpcamClientActivity;->listCamera:Lcom/easyview/camera/CameraList;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->access$3(Lobject/p2pwificam/clientActivity/IpcamClientActivity;)Lcom/easyview/camera/CameraList;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/easyview/camera/CameraList;->getCamera(Ljava/lang/String;)Lcom/easyview/basecamera/BaseCamera;

    move-result-object v14

    .line 841
    .restart local v14    # "camera":Lcom/easyview/basecamera/BaseCamera;
    invoke-virtual {v14, v6}, Lcom/easyview/basecamera/BaseCamera;->setPwd(Ljava/lang/String;)V

    .line 842
    invoke-virtual {v14}, Lcom/easyview/basecamera/BaseCamera;->Stop()V

    .line 843
    invoke-virtual {v14}, Lcom/easyview/basecamera/BaseCamera;->Start()V

    .line 844
    move-object/from16 v0, p0

    iget-object v1, v0, Lobject/p2pwificam/clientActivity/IpcamClientActivity$CameraInfoReceiver;->this$0:Lobject/p2pwificam/clientActivity/IpcamClientActivity;

    iget-object v1, v1, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->ParamListener:Lcom/easyview/basecamera/ICameraParamListener;

    invoke-virtual {v14, v1}, Lcom/easyview/basecamera/BaseCamera;->AddParamListener(Lcom/easyview/basecamera/ICameraParamListener;)V

    .line 848
    .end local v14    # "camera":Lcom/easyview/basecamera/BaseCamera;
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lobject/p2pwificam/clientActivity/IpcamClientActivity$CameraInfoReceiver;->this$0:Lobject/p2pwificam/clientActivity/IpcamClientActivity;

    # getter for: Lobject/p2pwificam/clientActivity/IpcamClientActivity;->editAdapter:Lobject/p2pipcam/adapter/CameraEditAdapter;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->access$15(Lobject/p2pwificam/clientActivity/IpcamClientActivity;)Lobject/p2pipcam/adapter/CameraEditAdapter;

    move-result-object v7

    move-object v8, v2

    move-object v9, v4

    move-object v10, v3

    move-object v11, v5

    move-object v12, v6

    invoke-virtual/range {v7 .. v12}, Lobject/p2pipcam/adapter/CameraEditAdapter;->modifyCamera(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 849
    new-instance v17, Landroid/content/Intent;

    .line 850
    const-string v1, "del_add_modify_camera"

    .line 849
    move-object/from16 v0, v17

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 851
    .local v17, "intentChange":Landroid/content/Intent;
    const-string v1, "type"

    const/4 v7, 0x2

    move-object/from16 v0, v17

    invoke-virtual {v0, v1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 852
    const-string v1, "cameraid"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 853
    const-string v1, "olddid"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 854
    const-string v1, "name"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 855
    move-object/from16 v0, p0

    iget-object v1, v0, Lobject/p2pwificam/clientActivity/IpcamClientActivity$CameraInfoReceiver;->this$0:Lobject/p2pwificam/clientActivity/IpcamClientActivity;

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 856
    invoke-static {v4, v6}, Lcom/easyview/ndt/NDTServiceUtil;->setPassword(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 859
    .end local v17    # "intentChange":Landroid/content/Intent;
    :cond_5
    const/4 v1, 0x3

    move/from16 v0, v19

    if-ne v0, v1, :cond_7

    .line 861
    const-string v1, "camera_old_id"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 862
    # getter for: Lobject/p2pwificam/clientActivity/IpcamClientActivity;->listAdapter:Lobject/p2pipcam/adapter/CameraListAdapter;
    invoke-static {}, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->access$0()Lobject/p2pipcam/adapter/CameraListAdapter;

    move-result-object v1

    invoke-virtual/range {v1 .. v6}, Lobject/p2pipcam/adapter/CameraListAdapter;->UpdateCamera(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 863
    # getter for: Lobject/p2pwificam/clientActivity/IpcamClientActivity;->listAdapter:Lobject/p2pipcam/adapter/CameraListAdapter;
    invoke-static {}, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->access$0()Lobject/p2pipcam/adapter/CameraListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lobject/p2pipcam/adapter/CameraListAdapter;->notifyDataSetChanged()V

    .line 866
    move-object/from16 v0, p0

    iget-object v1, v0, Lobject/p2pwificam/clientActivity/IpcamClientActivity$CameraInfoReceiver;->this$0:Lobject/p2pwificam/clientActivity/IpcamClientActivity;

    # getter for: Lobject/p2pwificam/clientActivity/IpcamClientActivity;->listCamera:Lcom/easyview/camera/CameraList;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->access$3(Lobject/p2pwificam/clientActivity/IpcamClientActivity;)Lcom/easyview/camera/CameraList;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/easyview/camera/CameraList;->getCamera(Ljava/lang/String;)Lcom/easyview/basecamera/BaseCamera;

    move-result-object v14

    .line 867
    .restart local v14    # "camera":Lcom/easyview/basecamera/BaseCamera;
    invoke-virtual {v14, v6}, Lcom/easyview/basecamera/BaseCamera;->setPwd(Ljava/lang/String;)V

    .line 868
    invoke-virtual {v14}, Lcom/easyview/basecamera/BaseCamera;->Stop()V

    .line 869
    invoke-virtual {v14}, Lcom/easyview/basecamera/BaseCamera;->Start()V

    .line 870
    move-object/from16 v0, p0

    iget-object v1, v0, Lobject/p2pwificam/clientActivity/IpcamClientActivity$CameraInfoReceiver;->this$0:Lobject/p2pwificam/clientActivity/IpcamClientActivity;

    iget-object v1, v1, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->ParamListener:Lcom/easyview/basecamera/ICameraParamListener;

    invoke-virtual {v14, v1}, Lcom/easyview/basecamera/BaseCamera;->AddParamListener(Lcom/easyview/basecamera/ICameraParamListener;)V

    .line 871
    move-object/from16 v0, p0

    iget-object v1, v0, Lobject/p2pwificam/clientActivity/IpcamClientActivity$CameraInfoReceiver;->this$0:Lobject/p2pwificam/clientActivity/IpcamClientActivity;

    # getter for: Lobject/p2pwificam/clientActivity/IpcamClientActivity;->editAdapter:Lobject/p2pipcam/adapter/CameraEditAdapter;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->access$15(Lobject/p2pwificam/clientActivity/IpcamClientActivity;)Lobject/p2pipcam/adapter/CameraEditAdapter;

    move-result-object v7

    move-object v8, v2

    move-object v9, v4

    move-object v10, v3

    move-object v11, v5

    move-object v12, v6

    invoke-virtual/range {v7 .. v12}, Lobject/p2pipcam/adapter/CameraEditAdapter;->modifyCamera(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 872
    if-eqz v1, :cond_6

    .line 873
    move-object/from16 v0, p0

    iget-object v1, v0, Lobject/p2pwificam/clientActivity/IpcamClientActivity$CameraInfoReceiver;->this$0:Lobject/p2pwificam/clientActivity/IpcamClientActivity;

    # getter for: Lobject/p2pwificam/clientActivity/IpcamClientActivity;->editAdapter:Lobject/p2pipcam/adapter/CameraEditAdapter;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->access$15(Lobject/p2pwificam/clientActivity/IpcamClientActivity;)Lobject/p2pipcam/adapter/CameraEditAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lobject/p2pipcam/adapter/CameraEditAdapter;->notifyDataSetChanged()V

    .line 876
    .end local v14    # "camera":Lcom/easyview/basecamera/BaseCamera;
    :cond_6
    invoke-static {v4, v6}, Lcom/easyview/ndt/NDTServiceUtil;->setPassword(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 878
    :cond_7
    const/4 v1, 0x1

    move/from16 v0, v19

    if-ne v0, v1, :cond_0

    .line 879
    move-object/from16 v0, p0

    iget-object v1, v0, Lobject/p2pwificam/clientActivity/IpcamClientActivity$CameraInfoReceiver;->this$0:Lobject/p2pwificam/clientActivity/IpcamClientActivity;

    invoke-virtual {v1, v4, v3, v5, v6}, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->addDevice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
