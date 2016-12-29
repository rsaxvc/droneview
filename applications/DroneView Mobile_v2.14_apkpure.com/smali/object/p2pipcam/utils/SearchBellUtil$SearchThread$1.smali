.class Lobject/p2pipcam/utils/SearchBellUtil$SearchThread$1;
.super Ljava/lang/Object;
.source "SearchBellUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lobject/p2pipcam/utils/SearchBellUtil$SearchThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lobject/p2pipcam/utils/SearchBellUtil$SearchThread;


# direct methods
.method constructor <init>(Lobject/p2pipcam/utils/SearchBellUtil$SearchThread;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pipcam/utils/SearchBellUtil$SearchThread$1;->this$1:Lobject/p2pipcam/utils/SearchBellUtil$SearchThread;

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 166
    iget-object v2, p0, Lobject/p2pipcam/utils/SearchBellUtil$SearchThread$1;->this$1:Lobject/p2pipcam/utils/SearchBellUtil$SearchThread;

    # getter for: Lobject/p2pipcam/utils/SearchBellUtil$SearchThread;->this$0:Lobject/p2pipcam/utils/SearchBellUtil;
    invoke-static {v2}, Lobject/p2pipcam/utils/SearchBellUtil$SearchThread;->access$1(Lobject/p2pipcam/utils/SearchBellUtil$SearchThread;)Lobject/p2pipcam/utils/SearchBellUtil;

    move-result-object v2

    # getter for: Lobject/p2pipcam/utils/SearchBellUtil;->progressdlg:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lobject/p2pipcam/utils/SearchBellUtil;->access$4(Lobject/p2pipcam/utils/SearchBellUtil;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 167
    iget-object v2, p0, Lobject/p2pipcam/utils/SearchBellUtil$SearchThread$1;->this$1:Lobject/p2pipcam/utils/SearchBellUtil$SearchThread;

    # getter for: Lobject/p2pipcam/utils/SearchBellUtil$SearchThread;->this$0:Lobject/p2pipcam/utils/SearchBellUtil;
    invoke-static {v2}, Lobject/p2pipcam/utils/SearchBellUtil$SearchThread;->access$1(Lobject/p2pipcam/utils/SearchBellUtil$SearchThread;)Lobject/p2pipcam/utils/SearchBellUtil;

    move-result-object v2

    # getter for: Lobject/p2pipcam/utils/SearchBellUtil;->_UID:Ljava/lang/String;
    invoke-static {v2}, Lobject/p2pipcam/utils/SearchBellUtil;->access$5(Lobject/p2pipcam/utils/SearchBellUtil;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 168
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lobject/p2pipcam/utils/SearchBellUtil$SearchThread$1;->this$1:Lobject/p2pipcam/utils/SearchBellUtil$SearchThread;

    # getter for: Lobject/p2pipcam/utils/SearchBellUtil$SearchThread;->this$0:Lobject/p2pipcam/utils/SearchBellUtil;
    invoke-static {v3}, Lobject/p2pipcam/utils/SearchBellUtil$SearchThread;->access$1(Lobject/p2pipcam/utils/SearchBellUtil$SearchThread;)Lobject/p2pipcam/utils/SearchBellUtil;

    move-result-object v3

    # getter for: Lobject/p2pipcam/utils/SearchBellUtil;->_context:Landroid/app/Activity;
    invoke-static {v3}, Lobject/p2pipcam/utils/SearchBellUtil;->access$0(Lobject/p2pipcam/utils/SearchBellUtil;)Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f06005a

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lobject/p2pipcam/utils/SearchBellUtil$SearchThread$1;->this$1:Lobject/p2pipcam/utils/SearchBellUtil$SearchThread;

    # getter for: Lobject/p2pipcam/utils/SearchBellUtil$SearchThread;->this$0:Lobject/p2pipcam/utils/SearchBellUtil;
    invoke-static {v3}, Lobject/p2pipcam/utils/SearchBellUtil$SearchThread;->access$1(Lobject/p2pipcam/utils/SearchBellUtil$SearchThread;)Lobject/p2pipcam/utils/SearchBellUtil;

    move-result-object v3

    # getter for: Lobject/p2pipcam/utils/SearchBellUtil;->_UID:Ljava/lang/String;
    invoke-static {v3}, Lobject/p2pipcam/utils/SearchBellUtil;->access$5(Lobject/p2pipcam/utils/SearchBellUtil;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lobject/p2pipcam/utils/Pub;->getDIDNum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 169
    .local v1, "name":Ljava/lang/String;
    iget-object v2, p0, Lobject/p2pipcam/utils/SearchBellUtil$SearchThread$1;->this$1:Lobject/p2pipcam/utils/SearchBellUtil$SearchThread;

    # getter for: Lobject/p2pipcam/utils/SearchBellUtil$SearchThread;->this$0:Lobject/p2pipcam/utils/SearchBellUtil;
    invoke-static {v2}, Lobject/p2pipcam/utils/SearchBellUtil$SearchThread;->access$1(Lobject/p2pipcam/utils/SearchBellUtil$SearchThread;)Lobject/p2pipcam/utils/SearchBellUtil;

    move-result-object v2

    # getter for: Lobject/p2pipcam/utils/SearchBellUtil;->_addListener:Lobject/p2pipcam/utils/SearchBellUtil$IAddBellListener;
    invoke-static {v2}, Lobject/p2pipcam/utils/SearchBellUtil;->access$6(Lobject/p2pipcam/utils/SearchBellUtil;)Lobject/p2pipcam/utils/SearchBellUtil$IAddBellListener;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lobject/p2pipcam/utils/SearchBellUtil$SearchThread$1;->this$1:Lobject/p2pipcam/utils/SearchBellUtil$SearchThread;

    # getter for: Lobject/p2pipcam/utils/SearchBellUtil$SearchThread;->this$0:Lobject/p2pipcam/utils/SearchBellUtil;
    invoke-static {v2}, Lobject/p2pipcam/utils/SearchBellUtil$SearchThread;->access$1(Lobject/p2pipcam/utils/SearchBellUtil$SearchThread;)Lobject/p2pipcam/utils/SearchBellUtil;

    move-result-object v2

    # getter for: Lobject/p2pipcam/utils/SearchBellUtil;->_addListener:Lobject/p2pipcam/utils/SearchBellUtil$IAddBellListener;
    invoke-static {v2}, Lobject/p2pipcam/utils/SearchBellUtil;->access$6(Lobject/p2pipcam/utils/SearchBellUtil;)Lobject/p2pipcam/utils/SearchBellUtil$IAddBellListener;

    move-result-object v2

    iget-object v3, p0, Lobject/p2pipcam/utils/SearchBellUtil$SearchThread$1;->this$1:Lobject/p2pipcam/utils/SearchBellUtil$SearchThread;

    # getter for: Lobject/p2pipcam/utils/SearchBellUtil$SearchThread;->this$0:Lobject/p2pipcam/utils/SearchBellUtil;
    invoke-static {v3}, Lobject/p2pipcam/utils/SearchBellUtil$SearchThread;->access$1(Lobject/p2pipcam/utils/SearchBellUtil$SearchThread;)Lobject/p2pipcam/utils/SearchBellUtil;

    move-result-object v3

    # getter for: Lobject/p2pipcam/utils/SearchBellUtil;->_UID:Ljava/lang/String;
    invoke-static {v3}, Lobject/p2pipcam/utils/SearchBellUtil;->access$5(Lobject/p2pipcam/utils/SearchBellUtil;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lobject/p2pipcam/utils/SearchBellUtil$SearchThread$1;->this$1:Lobject/p2pipcam/utils/SearchBellUtil$SearchThread;

    # getter for: Lobject/p2pipcam/utils/SearchBellUtil$SearchThread;->this$0:Lobject/p2pipcam/utils/SearchBellUtil;
    invoke-static {v4}, Lobject/p2pipcam/utils/SearchBellUtil$SearchThread;->access$1(Lobject/p2pipcam/utils/SearchBellUtil$SearchThread;)Lobject/p2pipcam/utils/SearchBellUtil;

    move-result-object v4

    # getter for: Lobject/p2pipcam/utils/SearchBellUtil;->_deviceName:Ljava/lang/String;
    invoke-static {v4}, Lobject/p2pipcam/utils/SearchBellUtil;->access$7(Lobject/p2pipcam/utils/SearchBellUtil;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "admin"

    invoke-interface {v2, v3, v1, v4, v5}, Lobject/p2pipcam/utils/SearchBellUtil$IAddBellListener;->OnAdd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 171
    .local v0, "in":Landroid/content/Intent;
    const-string v2, "object.ipcam.client.camerainforeceiver"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 172
    const-string v2, "camera_option"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 173
    const-string v2, "camera_name"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 174
    const-string v2, "cameraid"

    iget-object v3, p0, Lobject/p2pipcam/utils/SearchBellUtil$SearchThread$1;->this$1:Lobject/p2pipcam/utils/SearchBellUtil$SearchThread;

    # getter for: Lobject/p2pipcam/utils/SearchBellUtil$SearchThread;->this$0:Lobject/p2pipcam/utils/SearchBellUtil;
    invoke-static {v3}, Lobject/p2pipcam/utils/SearchBellUtil$SearchThread;->access$1(Lobject/p2pipcam/utils/SearchBellUtil$SearchThread;)Lobject/p2pipcam/utils/SearchBellUtil;

    move-result-object v3

    # getter for: Lobject/p2pipcam/utils/SearchBellUtil;->_UID:Ljava/lang/String;
    invoke-static {v3}, Lobject/p2pipcam/utils/SearchBellUtil;->access$5(Lobject/p2pipcam/utils/SearchBellUtil;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 175
    const-string v2, "camera_user"

    iget-object v3, p0, Lobject/p2pipcam/utils/SearchBellUtil$SearchThread$1;->this$1:Lobject/p2pipcam/utils/SearchBellUtil$SearchThread;

    # getter for: Lobject/p2pipcam/utils/SearchBellUtil$SearchThread;->this$0:Lobject/p2pipcam/utils/SearchBellUtil;
    invoke-static {v3}, Lobject/p2pipcam/utils/SearchBellUtil$SearchThread;->access$1(Lobject/p2pipcam/utils/SearchBellUtil$SearchThread;)Lobject/p2pipcam/utils/SearchBellUtil;

    move-result-object v3

    # getter for: Lobject/p2pipcam/utils/SearchBellUtil;->_deviceName:Ljava/lang/String;
    invoke-static {v3}, Lobject/p2pipcam/utils/SearchBellUtil;->access$7(Lobject/p2pipcam/utils/SearchBellUtil;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 176
    const-string v2, "camera_pwd"

    const-string v3, "admin"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 177
    const-string v2, "IS_DEV_AP"

    iget-object v3, p0, Lobject/p2pipcam/utils/SearchBellUtil$SearchThread$1;->this$1:Lobject/p2pipcam/utils/SearchBellUtil$SearchThread;

    # getter for: Lobject/p2pipcam/utils/SearchBellUtil$SearchThread;->this$0:Lobject/p2pipcam/utils/SearchBellUtil;
    invoke-static {v3}, Lobject/p2pipcam/utils/SearchBellUtil$SearchThread;->access$1(Lobject/p2pipcam/utils/SearchBellUtil$SearchThread;)Lobject/p2pipcam/utils/SearchBellUtil;

    move-result-object v3

    # invokes: Lobject/p2pipcam/utils/SearchBellUtil;->isDeviceWifiAp()Z
    invoke-static {v3}, Lobject/p2pipcam/utils/SearchBellUtil;->access$8(Lobject/p2pipcam/utils/SearchBellUtil;)Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 181
    .end local v0    # "in":Landroid/content/Intent;
    .end local v1    # "name":Ljava/lang/String;
    :cond_1
    return-void
.end method
