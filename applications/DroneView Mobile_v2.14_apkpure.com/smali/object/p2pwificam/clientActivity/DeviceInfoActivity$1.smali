.class Lobject/p2pwificam/clientActivity/DeviceInfoActivity$1;
.super Landroid/os/Handler;
.source "DeviceInfoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pwificam/clientActivity/DeviceInfoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/DeviceInfoActivity;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/DeviceInfoActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/DeviceInfoActivity$1;->this$0:Lobject/p2pwificam/clientActivity/DeviceInfoActivity;

    .line 44
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const v6, 0x7f080211

    const v5, 0x7f08020e

    const/16 v4, 0x8

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 46
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 77
    :goto_0
    return-void

    .line 48
    :pswitch_0
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DeviceInfoActivity$1;->this$0:Lobject/p2pwificam/clientActivity/DeviceInfoActivity;

    const v1, 0x7f060131

    invoke-virtual {v0, v1}, Lobject/p2pwificam/clientActivity/DeviceInfoActivity;->showToast(I)V

    goto :goto_0

    .line 51
    :pswitch_1
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DeviceInfoActivity$1;->this$0:Lobject/p2pwificam/clientActivity/DeviceInfoActivity;

    const v1, 0x7f060172

    invoke-virtual {v0, v1}, Lobject/p2pwificam/clientActivity/DeviceInfoActivity;->showToast(I)V

    .line 52
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DeviceInfoActivity$1;->this$0:Lobject/p2pwificam/clientActivity/DeviceInfoActivity;

    invoke-virtual {v0}, Lobject/p2pwificam/clientActivity/DeviceInfoActivity;->finish()V

    goto :goto_0

    .line 55
    :pswitch_2
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DeviceInfoActivity$1;->this$0:Lobject/p2pwificam/clientActivity/DeviceInfoActivity;

    invoke-static {v0, v3}, Lobject/p2pwificam/clientActivity/DeviceInfoActivity;->access$0(Lobject/p2pwificam/clientActivity/DeviceInfoActivity;Z)V

    .line 56
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DeviceInfoActivity$1;->this$0:Lobject/p2pwificam/clientActivity/DeviceInfoActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DeviceInfoActivity;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DeviceInfoActivity;->access$1(Lobject/p2pwificam/clientActivity/DeviceInfoActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 57
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DeviceInfoActivity$1;->this$0:Lobject/p2pwificam/clientActivity/DeviceInfoActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DeviceInfoActivity;->tvDeviceVersion:Landroid/widget/TextView;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DeviceInfoActivity;->access$2(Lobject/p2pwificam/clientActivity/DeviceInfoActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DeviceInfoActivity$1;->this$0:Lobject/p2pwificam/clientActivity/DeviceInfoActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DeviceInfoActivity;->_camera:Lcom/easyview/camera/EVBaseCamera;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/DeviceInfoActivity;->access$3(Lobject/p2pwificam/clientActivity/DeviceInfoActivity;)Lcom/easyview/camera/EVBaseCamera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/easyview/camera/EVBaseCamera;->getDeviceInfo()Lcom/easyview/struct/EVCommandDefs$DeviceInfoParam;

    move-result-object v1

    iget-object v1, v1, Lcom/easyview/struct/EVCommandDefs$DeviceInfoParam;->DeviceVersion:Lstruct/CString;

    invoke-virtual {v1}, Lstruct/CString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DeviceInfoActivity$1;->this$0:Lobject/p2pwificam/clientActivity/DeviceInfoActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DeviceInfoActivity;->_camera:Lcom/easyview/camera/EVBaseCamera;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DeviceInfoActivity;->access$3(Lobject/p2pwificam/clientActivity/DeviceInfoActivity;)Lcom/easyview/camera/EVBaseCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easyview/camera/EVBaseCamera;->getDeviceInfo()Lcom/easyview/struct/EVCommandDefs$DeviceInfoParam;

    move-result-object v0

    iget v0, v0, Lcom/easyview/struct/EVCommandDefs$DeviceInfoParam;->have_upgrade:I

    if-ne v0, v3, :cond_0

    .line 60
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DeviceInfoActivity$1;->this$0:Lobject/p2pwificam/clientActivity/DeviceInfoActivity;

    invoke-virtual {v0, v6}, Lobject/p2pwificam/clientActivity/DeviceInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 61
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DeviceInfoActivity$1;->this$0:Lobject/p2pwificam/clientActivity/DeviceInfoActivity;

    invoke-virtual {v0, v5}, Lobject/p2pwificam/clientActivity/DeviceInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 62
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DeviceInfoActivity$1;->this$0:Lobject/p2pwificam/clientActivity/DeviceInfoActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DeviceInfoActivity;->tvUpgradeVersion:Landroid/widget/TextView;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DeviceInfoActivity;->access$4(Lobject/p2pwificam/clientActivity/DeviceInfoActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DeviceInfoActivity$1;->this$0:Lobject/p2pwificam/clientActivity/DeviceInfoActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DeviceInfoActivity;->_camera:Lcom/easyview/camera/EVBaseCamera;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/DeviceInfoActivity;->access$3(Lobject/p2pwificam/clientActivity/DeviceInfoActivity;)Lcom/easyview/camera/EVBaseCamera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/easyview/camera/EVBaseCamera;->getDeviceInfo()Lcom/easyview/struct/EVCommandDefs$DeviceInfoParam;

    move-result-object v1

    iget-object v1, v1, Lcom/easyview/struct/EVCommandDefs$DeviceInfoParam;->UpgradeVersion:Lstruct/CString;

    invoke-virtual {v1}, Lstruct/CString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 65
    :cond_0
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DeviceInfoActivity$1;->this$0:Lobject/p2pwificam/clientActivity/DeviceInfoActivity;

    invoke-virtual {v0, v6}, Lobject/p2pwificam/clientActivity/DeviceInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 66
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DeviceInfoActivity$1;->this$0:Lobject/p2pwificam/clientActivity/DeviceInfoActivity;

    invoke-virtual {v0, v5}, Lobject/p2pwificam/clientActivity/DeviceInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 70
    :pswitch_3
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DeviceInfoActivity$1;->this$0:Lobject/p2pwificam/clientActivity/DeviceInfoActivity;

    const v1, 0x7f060173

    invoke-virtual {v0, v1}, Lobject/p2pwificam/clientActivity/DeviceInfoActivity;->showToast(I)V

    .line 71
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DeviceInfoActivity$1;->this$0:Lobject/p2pwificam/clientActivity/DeviceInfoActivity;

    invoke-virtual {v0}, Lobject/p2pwificam/clientActivity/DeviceInfoActivity;->finish()V

    goto/16 :goto_0

    .line 46
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
