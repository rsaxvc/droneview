.class Lobject/p2pwificam/clientActivity/AddCameraActivity$SettingWifiReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AddCameraActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pwificam/clientActivity/AddCameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingWifiReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/AddCameraActivity;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/AddCameraActivity;)V
    .locals 0

    .prologue
    .line 617
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/AddCameraActivity$SettingWifiReceiver;->this$0:Lobject/p2pwificam/clientActivity/AddCameraActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 620
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 621
    .local v0, "action":Ljava/lang/String;
    const-string v2, "setting_ap_wifi"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 623
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/AddCameraActivity$SettingWifiReceiver;->this$0:Lobject/p2pwificam/clientActivity/AddCameraActivity;

    const-string v3, "P2P_NAME"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lobject/p2pwificam/clientActivity/AddCameraActivity;->access$14(Lobject/p2pwificam/clientActivity/AddCameraActivity;Ljava/lang/String;)V

    .line 624
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/AddCameraActivity$SettingWifiReceiver;->this$0:Lobject/p2pwificam/clientActivity/AddCameraActivity;

    const-string v3, "P2P_ID"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lobject/p2pwificam/clientActivity/AddCameraActivity;->access$6(Lobject/p2pwificam/clientActivity/AddCameraActivity;Ljava/lang/String;)V

    .line 625
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/AddCameraActivity$SettingWifiReceiver;->this$0:Lobject/p2pwificam/clientActivity/AddCameraActivity;

    const-string v3, "USE_NAME"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lobject/p2pwificam/clientActivity/AddCameraActivity;->access$15(Lobject/p2pwificam/clientActivity/AddCameraActivity;Ljava/lang/String;)V

    .line 626
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/AddCameraActivity$SettingWifiReceiver;->this$0:Lobject/p2pwificam/clientActivity/AddCameraActivity;

    const-string v3, "USE_PWD"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lobject/p2pwificam/clientActivity/AddCameraActivity;->access$16(Lobject/p2pwificam/clientActivity/AddCameraActivity;Ljava/lang/String;)V

    .line 629
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/AddCameraActivity$SettingWifiReceiver;->this$0:Lobject/p2pwificam/clientActivity/AddCameraActivity;

    iget-object v2, v2, Lobject/p2pwificam/clientActivity/AddCameraActivity;->updateListHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 630
    .local v1, "msg":Landroid/os/Message;
    const/4 v2, 0x2

    iput v2, v1, Landroid/os/Message;->what:I

    .line 631
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/AddCameraActivity$SettingWifiReceiver;->this$0:Lobject/p2pwificam/clientActivity/AddCameraActivity;

    iget-object v2, v2, Lobject/p2pwificam/clientActivity/AddCameraActivity;->updateListHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 636
    .end local v1    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method
