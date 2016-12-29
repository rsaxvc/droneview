.class Lobject/p2pwificam/clientActivity/DeviceInitActivity$8;
.super Ljava/lang/Object;
.source "DeviceInitActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lobject/p2pwificam/clientActivity/DeviceInitActivity;->doConfig(Ljava/lang/Thread;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/DeviceInitActivity;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/DeviceInitActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/DeviceInitActivity$8;->this$0:Lobject/p2pwificam/clientActivity/DeviceInitActivity;

    .line 310
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 314
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/DeviceInitActivity$8;->this$0:Lobject/p2pwificam/clientActivity/DeviceInitActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DeviceInitActivity;->progressdlg:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/DeviceInitActivity;->access$2(Lobject/p2pwificam/clientActivity/DeviceInitActivity;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 315
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/DeviceInitActivity$8;->this$0:Lobject/p2pwificam/clientActivity/DeviceInitActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DeviceInitActivity;->btnOK:Landroid/widget/Button;
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/DeviceInitActivity;->access$0(Lobject/p2pwificam/clientActivity/DeviceInitActivity;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 316
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/DeviceInitActivity$8;->this$0:Lobject/p2pwificam/clientActivity/DeviceInitActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DeviceInitActivity;->btnCancel:Landroid/widget/Button;
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/DeviceInitActivity;->access$1(Lobject/p2pwificam/clientActivity/DeviceInitActivity;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 317
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/DeviceInitActivity$8;->this$0:Lobject/p2pwificam/clientActivity/DeviceInitActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DeviceInitActivity;->_config_success:Z
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/DeviceInitActivity;->access$12(Lobject/p2pwificam/clientActivity/DeviceInitActivity;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 320
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 321
    .local v0, "extras":Landroid/os/Bundle;
    const-string v2, "P2P_ID"

    iget-object v3, p0, Lobject/p2pwificam/clientActivity/DeviceInitActivity$8;->this$0:Lobject/p2pwificam/clientActivity/DeviceInitActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DeviceInitActivity;->_p2p_id:Ljava/lang/String;
    invoke-static {v3}, Lobject/p2pwificam/clientActivity/DeviceInitActivity;->access$13(Lobject/p2pwificam/clientActivity/DeviceInitActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    const-string v2, "P2P_NAME"

    iget-object v3, p0, Lobject/p2pwificam/clientActivity/DeviceInitActivity$8;->this$0:Lobject/p2pwificam/clientActivity/DeviceInitActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DeviceInitActivity;->_p2p_name:Ljava/lang/String;
    invoke-static {v3}, Lobject/p2pwificam/clientActivity/DeviceInitActivity;->access$14(Lobject/p2pwificam/clientActivity/DeviceInitActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    const-string v2, "USE_NAME"

    const-string v3, "admin"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    const-string v2, "USE_PWD"

    const-string v3, "admin"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 333
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 336
    const-string v2, "setting_ap_wifi"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 338
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/DeviceInitActivity$8;->this$0:Lobject/p2pwificam/clientActivity/DeviceInitActivity;

    invoke-virtual {v2, v1}, Lobject/p2pwificam/clientActivity/DeviceInitActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 342
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/DeviceInitActivity$8;->this$0:Lobject/p2pwificam/clientActivity/DeviceInitActivity;

    invoke-virtual {v2}, Lobject/p2pwificam/clientActivity/DeviceInitActivity;->finish()V

    .line 344
    .end local v0    # "extras":Landroid/os/Bundle;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method
