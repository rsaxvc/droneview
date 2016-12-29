.class Lobject/p2pwificam/clientActivity/SettingUserActivity$1;
.super Landroid/os/Handler;
.source "SettingUserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pwificam/clientActivity/SettingUserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/SettingUserActivity;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/SettingUserActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/SettingUserActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingUserActivity;

    .line 84
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lobject/p2pwificam/clientActivity/SettingUserActivity$1;)Lobject/p2pwificam/clientActivity/SettingUserActivity;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingUserActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingUserActivity;

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 86
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 143
    :goto_0
    :pswitch_0
    return-void

    .line 88
    :pswitch_1
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/SettingUserActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingUserActivity;

    const v3, 0x7f0600d3

    invoke-virtual {v2, v3}, Lobject/p2pwificam/clientActivity/SettingUserActivity;->showToast(I)V

    goto :goto_0

    .line 91
    :pswitch_2
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/SettingUserActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingUserActivity;

    const v3, 0x7f0600d4

    invoke-virtual {v2, v3}, Lobject/p2pwificam/clientActivity/SettingUserActivity;->showToast(I)V

    .line 92
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/SettingUserActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingUserActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingUserActivity;->strDID:Ljava/lang/String;
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/SettingUserActivity;->access$0(Lobject/p2pwificam/clientActivity/SettingUserActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lobject/p2pipcam/nativecaller/NativeCaller;->PPPPRebootDevice(Ljava/lang/String;)I

    .line 94
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/SettingUserActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingUserActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingUserActivity;->helper:Lobject/p2pipcam/utils/DataBaseHelper;
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/SettingUserActivity;->access$1(Lobject/p2pwificam/clientActivity/SettingUserActivity;)Lobject/p2pipcam/utils/DataBaseHelper;

    move-result-object v2

    iget-object v3, p0, Lobject/p2pwificam/clientActivity/SettingUserActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingUserActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingUserActivity;->strDID:Ljava/lang/String;
    invoke-static {v3}, Lobject/p2pwificam/clientActivity/SettingUserActivity;->access$0(Lobject/p2pwificam/clientActivity/SettingUserActivity;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lobject/p2pwificam/clientActivity/SettingUserActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingUserActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingUserActivity;->adminName:Ljava/lang/String;
    invoke-static {v4}, Lobject/p2pwificam/clientActivity/SettingUserActivity;->access$2(Lobject/p2pwificam/clientActivity/SettingUserActivity;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lobject/p2pwificam/clientActivity/SettingUserActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingUserActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingUserActivity;->adminPwd:Ljava/lang/String;
    invoke-static {v5}, Lobject/p2pwificam/clientActivity/SettingUserActivity;->access$3(Lobject/p2pwificam/clientActivity/SettingUserActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lobject/p2pipcam/utils/DataBaseHelper;->updateCameraUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 96
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/SettingUserActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingUserActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingUserActivity;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/SettingUserActivity;->access$4(Lobject/p2pwificam/clientActivity/SettingUserActivity;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "user:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lobject/p2pwificam/clientActivity/SettingUserActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingUserActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingUserActivity;->adminName:Ljava/lang/String;
    invoke-static {v4}, Lobject/p2pwificam/clientActivity/SettingUserActivity;->access$2(Lobject/p2pwificam/clientActivity/SettingUserActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " pwd:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lobject/p2pwificam/clientActivity/SettingUserActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingUserActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingUserActivity;->adminPwd:Ljava/lang/String;
    invoke-static {v4}, Lobject/p2pwificam/clientActivity/SettingUserActivity;->access$3(Lobject/p2pwificam/clientActivity/SettingUserActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    new-instance v0, Landroid/content/Intent;

    .line 99
    const-string v2, "object.ipcam.client.camerainforeceiver"

    .line 98
    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 100
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "camera_name"

    iget-object v3, p0, Lobject/p2pwificam/clientActivity/SettingUserActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingUserActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingUserActivity;->cameraName:Ljava/lang/String;
    invoke-static {v3}, Lobject/p2pwificam/clientActivity/SettingUserActivity;->access$5(Lobject/p2pwificam/clientActivity/SettingUserActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    const-string v2, "cameraid"

    iget-object v3, p0, Lobject/p2pwificam/clientActivity/SettingUserActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingUserActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingUserActivity;->strDID:Ljava/lang/String;
    invoke-static {v3}, Lobject/p2pwificam/clientActivity/SettingUserActivity;->access$0(Lobject/p2pwificam/clientActivity/SettingUserActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    const-string v2, "camera_user"

    iget-object v3, p0, Lobject/p2pwificam/clientActivity/SettingUserActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingUserActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingUserActivity;->adminName:Ljava/lang/String;
    invoke-static {v3}, Lobject/p2pwificam/clientActivity/SettingUserActivity;->access$2(Lobject/p2pwificam/clientActivity/SettingUserActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 103
    const-string v2, "camera_pwd"

    iget-object v3, p0, Lobject/p2pwificam/clientActivity/SettingUserActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingUserActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingUserActivity;->adminPwd:Ljava/lang/String;
    invoke-static {v3}, Lobject/p2pwificam/clientActivity/SettingUserActivity;->access$3(Lobject/p2pwificam/clientActivity/SettingUserActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 104
    const-string v2, "camera_old_id"

    iget-object v3, p0, Lobject/p2pwificam/clientActivity/SettingUserActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingUserActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingUserActivity;->strDID:Ljava/lang/String;
    invoke-static {v3}, Lobject/p2pwificam/clientActivity/SettingUserActivity;->access$0(Lobject/p2pwificam/clientActivity/SettingUserActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 105
    const-string v2, "camera_option"

    .line 106
    const/4 v3, 0x3

    .line 105
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 107
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/SettingUserActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingUserActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingUserActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/SettingUserActivity;->access$6(Lobject/p2pwificam/clientActivity/SettingUserActivity;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lobject/p2pwificam/clientActivity/SettingUserActivity$1$1;

    invoke-direct {v3, p0, v0}, Lobject/p2pwificam/clientActivity/SettingUserActivity$1$1;-><init>(Lobject/p2pwificam/clientActivity/SettingUserActivity$1;Landroid/content/Intent;)V

    .line 114
    const-wide/16 v4, 0xbb8

    .line 107
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 115
    new-instance v1, Landroid/content/Intent;

    const-string v2, "myback"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 116
    .local v1, "intent2":Landroid/content/Intent;
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/SettingUserActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingUserActivity;

    invoke-virtual {v2, v1}, Lobject/p2pwificam/clientActivity/SettingUserActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 125
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/SettingUserActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingUserActivity;

    invoke-virtual {v2}, Lobject/p2pwificam/clientActivity/SettingUserActivity;->finish()V

    goto/16 :goto_0

    .line 128
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "intent2":Landroid/content/Intent;
    :pswitch_3
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/SettingUserActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingUserActivity;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lobject/p2pwificam/clientActivity/SettingUserActivity;->access$7(Lobject/p2pwificam/clientActivity/SettingUserActivity;Z)V

    .line 132
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/SettingUserActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingUserActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingUserActivity;->editName:Landroid/widget/EditText;
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/SettingUserActivity;->access$8(Lobject/p2pwificam/clientActivity/SettingUserActivity;)Landroid/widget/EditText;

    move-result-object v2

    iget-object v3, p0, Lobject/p2pwificam/clientActivity/SettingUserActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingUserActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingUserActivity;->adminName:Ljava/lang/String;
    invoke-static {v3}, Lobject/p2pwificam/clientActivity/SettingUserActivity;->access$2(Lobject/p2pwificam/clientActivity/SettingUserActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 86
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
