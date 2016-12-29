.class Lobject/p2pwificam/clientActivity/SettingIOSwitchActivity$1;
.super Landroid/os/Handler;
.source "SettingIOSwitchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pwificam/clientActivity/SettingIOSwitchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/SettingIOSwitchActivity;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/SettingIOSwitchActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/SettingIOSwitchActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingIOSwitchActivity;

    .line 66
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x1

    .line 69
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 98
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 73
    :pswitch_1
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingIOSwitchActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingIOSwitchActivity;

    const v2, 0x7f0600c8

    invoke-virtual {v1, v2}, Lobject/p2pwificam/clientActivity/SettingIOSwitchActivity;->showToast(I)V

    goto :goto_0

    .line 79
    :pswitch_2
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingIOSwitchActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingIOSwitchActivity;

    const v2, 0x7f0600ce

    invoke-virtual {v1, v2}, Lobject/p2pwificam/clientActivity/SettingIOSwitchActivity;->showToast(I)V

    .line 81
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingIOSwitchActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingIOSwitchActivity;

    invoke-virtual {v1}, Lobject/p2pwificam/clientActivity/SettingIOSwitchActivity;->finish()V

    goto :goto_0

    .line 86
    :pswitch_3
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingIOSwitchActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingIOSwitchActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingIOSwitchActivity;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/SettingIOSwitchActivity;->access$0(Lobject/p2pwificam/clientActivity/SettingIOSwitchActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 87
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingIOSwitchActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingIOSwitchActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingIOSwitchActivity;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/SettingIOSwitchActivity;->access$0(Lobject/p2pwificam/clientActivity/SettingIOSwitchActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 88
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    .line 90
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingIOSwitchActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingIOSwitchActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingIOSwitchActivity;->_camera:Lcom/easyview/ppcs/PPCSCamera;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/SettingIOSwitchActivity;->access$1(Lobject/p2pwificam/clientActivity/SettingIOSwitchActivity;)Lcom/easyview/ppcs/PPCSCamera;

    move-result-object v1

    iget-object v1, v1, Lcom/easyview/ppcs/PPCSCamera;->ioSwitchParams:[Lcom/easyview/struct/EVCommandDefs$IOSwitchParam;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/easyview/struct/EVCommandDefs$IOSwitchParam;->enable:I

    if-ne v1, v3, :cond_2

    .line 91
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingIOSwitchActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingIOSwitchActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingIOSwitchActivity;->checkBox:[Landroid/widget/CheckBox;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/SettingIOSwitchActivity;->access$2(Lobject/p2pwificam/clientActivity/SettingIOSwitchActivity;)[Landroid/widget/CheckBox;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 93
    :goto_2
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingIOSwitchActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingIOSwitchActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingIOSwitchActivity;->editText:[Landroid/widget/EditText;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/SettingIOSwitchActivity;->access$3(Lobject/p2pwificam/clientActivity/SettingIOSwitchActivity;)[Landroid/widget/EditText;

    move-result-object v1

    aget-object v1, v1, v0

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/SettingIOSwitchActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingIOSwitchActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingIOSwitchActivity;->_camera:Lcom/easyview/ppcs/PPCSCamera;
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/SettingIOSwitchActivity;->access$1(Lobject/p2pwificam/clientActivity/SettingIOSwitchActivity;)Lcom/easyview/ppcs/PPCSCamera;

    move-result-object v2

    iget-object v2, v2, Lcom/easyview/ppcs/PPCSCamera;->ioSwitchParams:[Lcom/easyview/struct/EVCommandDefs$IOSwitchParam;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/easyview/struct/EVCommandDefs$IOSwitchParam;->Name:Lstruct/CString;

    invoke-virtual {v2}, Lstruct/CString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 88
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 92
    :cond_2
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingIOSwitchActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingIOSwitchActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingIOSwitchActivity;->checkBox:[Landroid/widget/CheckBox;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/SettingIOSwitchActivity;->access$2(Lobject/p2pwificam/clientActivity/SettingIOSwitchActivity;)[Landroid/widget/CheckBox;

    move-result-object v1

    aget-object v1, v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_2

    .line 69
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method
