.class public Lcom/starxnet/ipn/XGPushReceiver;
.super Lcom/tencent/android/tpush/XGPushBaseReceiver;
.source "XGPushReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "IPN"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/tencent/android/tpush/XGPushBaseReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeleteTagResult(Landroid/content/Context;ILjava/lang/String;)V
    .locals 2
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # Ljava/lang/String;

    .prologue
    .line 28
    const-string v0, "IPN"

    const-string v1, "onDeleteTagResult"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    return-void
.end method

.method public onNotifactionClickedResult(Landroid/content/Context;Lcom/tencent/android/tpush/XGPushClickedResult;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "result"    # Lcom/tencent/android/tpush/XGPushClickedResult;

    .prologue
    .line 33
    const-string v9, "IPN"

    const-string v10, "onNotifactionClickedResult"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    invoke-virtual {p2}, Lcom/tencent/android/tpush/XGPushClickedResult;->getCustomContent()Ljava/lang/String;

    move-result-object v1

    .line 35
    .local v1, "content":Ljava/lang/String;
    const-string v9, "PPCS"

    invoke-virtual {v1, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 36
    .local v6, "index":I
    if-lez v6, :cond_0

    .line 38
    add-int/lit8 v9, v6, 0xb

    invoke-virtual {v1, v6, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 40
    .local v4, "id":Ljava/lang/String;
    invoke-static {}, Lcom/easyview/camera/CameraList;->GetInstance()Lcom/easyview/camera/CameraList;

    move-result-object v9

    invoke-virtual {v9}, Lcom/easyview/camera/CameraList;->count()I

    move-result v2

    .line 41
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-lt v3, v2, :cond_1

    .line 61
    .end local v2    # "count":I
    .end local v3    # "i":I
    .end local v4    # "id":Ljava/lang/String;
    :cond_0
    return-void

    .line 43
    .restart local v2    # "count":I
    .restart local v3    # "i":I
    .restart local v4    # "id":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/easyview/camera/CameraList;->GetInstance()Lcom/easyview/camera/CameraList;

    move-result-object v9

    invoke-virtual {v9, v3}, Lcom/easyview/camera/CameraList;->getCamera(I)Lcom/easyview/camera/EVBaseCamera;

    move-result-object v0

    .line 44
    .local v0, "camera":Lcom/easyview/camera/EVBaseCamera;
    invoke-virtual {v0}, Lcom/easyview/camera/EVBaseCamera;->getID()Ljava/lang/String;

    move-result-object v7

    .line 45
    .local v7, "p2p_id":Ljava/lang/String;
    const/4 v9, 0x0

    const/16 v10, 0xb

    invoke-virtual {v7, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 47
    .local v8, "sub_id":Ljava/lang/String;
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 49
    const-string v9, "IPN"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "onNotifactionClickedResult, find sub_id:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 51
    .local v5, "in":Landroid/content/Intent;
    const-string v9, "object.ipcam.client.pushinforeceiver"

    invoke-virtual {v5, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 52
    const-string v9, "cameraid"

    invoke-virtual {v5, v9, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 41
    .end local v5    # "in":Landroid/content/Intent;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public onNotifactionShowedResult(Landroid/content/Context;Lcom/tencent/android/tpush/XGPushShowedResult;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "result"    # Lcom/tencent/android/tpush/XGPushShowedResult;

    .prologue
    .line 81
    invoke-virtual {p2}, Lcom/tencent/android/tpush/XGPushShowedResult;->getCustomContent()Ljava/lang/String;

    move-result-object v1

    .line 82
    .local v1, "content":Ljava/lang/String;
    const-string v9, "PPCS"

    invoke-virtual {v1, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 83
    .local v6, "index":I
    if-lez v6, :cond_0

    .line 85
    add-int/lit8 v9, v6, 0xb

    invoke-virtual {v1, v6, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 87
    .local v4, "id":Ljava/lang/String;
    invoke-static {}, Lcom/easyview/camera/CameraList;->GetInstance()Lcom/easyview/camera/CameraList;

    move-result-object v9

    invoke-virtual {v9}, Lcom/easyview/camera/CameraList;->count()I

    move-result v2

    .line 88
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-lt v3, v2, :cond_1

    .line 108
    .end local v2    # "count":I
    .end local v3    # "i":I
    .end local v4    # "id":Ljava/lang/String;
    :cond_0
    const-string v9, "IPN"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "onNotifactionShowedResult:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/tencent/android/tpush/XGPushShowedResult;->getCustomContent()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    return-void

    .line 90
    .restart local v2    # "count":I
    .restart local v3    # "i":I
    .restart local v4    # "id":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/easyview/camera/CameraList;->GetInstance()Lcom/easyview/camera/CameraList;

    move-result-object v9

    invoke-virtual {v9, v3}, Lcom/easyview/camera/CameraList;->getCamera(I)Lcom/easyview/camera/EVBaseCamera;

    move-result-object v0

    .line 91
    .local v0, "camera":Lcom/easyview/camera/EVBaseCamera;
    invoke-virtual {v0}, Lcom/easyview/camera/EVBaseCamera;->getID()Ljava/lang/String;

    move-result-object v7

    .line 92
    .local v7, "p2p_id":Ljava/lang/String;
    const/4 v9, 0x0

    const/16 v10, 0xb

    invoke-virtual {v7, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 94
    .local v8, "sub_id":Ljava/lang/String;
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 97
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 98
    .local v5, "in":Landroid/content/Intent;
    const-string v9, "object.ipcam.client.pushinforeceiver"

    invoke-virtual {v5, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    const-string v9, "cameraid"

    invoke-virtual {v5, v9, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    .end local v5    # "in":Landroid/content/Intent;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public onRegisterResult(Landroid/content/Context;ILcom/tencent/android/tpush/XGPushRegisterResult;)V
    .locals 0
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # Lcom/tencent/android/tpush/XGPushRegisterResult;

    .prologue
    .line 116
    return-void
.end method

.method public onSetTagResult(Landroid/content/Context;ILjava/lang/String;)V
    .locals 0
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # Ljava/lang/String;

    .prologue
    .line 122
    return-void
.end method

.method public onTextMessage(Landroid/content/Context;Lcom/tencent/android/tpush/XGPushTextMessage;)V
    .locals 2
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "arg1"    # Lcom/tencent/android/tpush/XGPushTextMessage;

    .prologue
    .line 126
    const-string v0, "IPN"

    const-string v1, "onTextMessage"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    return-void
.end method

.method public onUnregisterResult(Landroid/content/Context;I)V
    .locals 0
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "arg1"    # I

    .prologue
    .line 133
    return-void
.end method
