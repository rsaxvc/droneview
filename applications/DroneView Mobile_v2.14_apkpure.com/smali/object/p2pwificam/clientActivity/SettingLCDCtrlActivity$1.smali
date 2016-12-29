.class Lobject/p2pwificam/clientActivity/SettingLCDCtrlActivity$1;
.super Landroid/os/Handler;
.source "SettingLCDCtrlActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pwificam/clientActivity/SettingLCDCtrlActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/SettingLCDCtrlActivity;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/SettingLCDCtrlActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/SettingLCDCtrlActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingLCDCtrlActivity;

    .line 68
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 71
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 114
    :goto_0
    :pswitch_0
    return-void

    .line 75
    :pswitch_1
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/SettingLCDCtrlActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingLCDCtrlActivity;

    const v3, 0x7f0600c8

    invoke-virtual {v2, v3}, Lobject/p2pwificam/clientActivity/SettingLCDCtrlActivity;->showToast(I)V

    goto :goto_0

    .line 81
    :pswitch_2
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/SettingLCDCtrlActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingLCDCtrlActivity;

    const v3, 0x7f0600ce

    invoke-virtual {v2, v3}, Lobject/p2pwificam/clientActivity/SettingLCDCtrlActivity;->showToast(I)V

    .line 83
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/SettingLCDCtrlActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingLCDCtrlActivity;

    invoke-virtual {v2}, Lobject/p2pwificam/clientActivity/SettingLCDCtrlActivity;->finish()V

    goto :goto_0

    .line 88
    :pswitch_3
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/SettingLCDCtrlActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingLCDCtrlActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingLCDCtrlActivity;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/SettingLCDCtrlActivity;->access$0(Lobject/p2pwificam/clientActivity/SettingLCDCtrlActivity;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/SettingLCDCtrlActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingLCDCtrlActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingLCDCtrlActivity;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/SettingLCDCtrlActivity;->access$0(Lobject/p2pwificam/clientActivity/SettingLCDCtrlActivity;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 89
    :cond_0
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/SettingLCDCtrlActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingLCDCtrlActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingLCDCtrlActivity;->_camera:Lcom/easyview/ppcs/PPCSCamera;
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/SettingLCDCtrlActivity;->access$1(Lobject/p2pwificam/clientActivity/SettingLCDCtrlActivity;)Lcom/easyview/ppcs/PPCSCamera;

    move-result-object v2

    iget-object v2, v2, Lcom/easyview/ppcs/PPCSCamera;->lcdCtrlParam:Lcom/easyview/struct/EVCommandDefs$LCDCtrlParam;

    iget-object v2, v2, Lcom/easyview/struct/EVCommandDefs$LCDCtrlParam;->text:Lstruct/CString;

    const-string v3, "iso-8859-1"

    invoke-virtual {v2, v3}, Lstruct/CString;->asCString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, "text":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 92
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/SettingLCDCtrlActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingLCDCtrlActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingLCDCtrlActivity;->editTitle:Landroid/widget/EditText;
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/SettingLCDCtrlActivity;->access$2(Lobject/p2pwificam/clientActivity/SettingLCDCtrlActivity;)Landroid/widget/EditText;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 93
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/SettingLCDCtrlActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingLCDCtrlActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingLCDCtrlActivity;->editMessage:Landroid/widget/EditText;
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/SettingLCDCtrlActivity;->access$3(Lobject/p2pwificam/clientActivity/SettingLCDCtrlActivity;)Landroid/widget/EditText;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 96
    :cond_1
    const-string v2, "#"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 97
    .local v1, "texts":[Ljava/lang/String;
    array-length v2, v1

    if-ne v2, v5, :cond_2

    .line 99
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/SettingLCDCtrlActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingLCDCtrlActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingLCDCtrlActivity;->editTitle:Landroid/widget/EditText;
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/SettingLCDCtrlActivity;->access$2(Lobject/p2pwificam/clientActivity/SettingLCDCtrlActivity;)Landroid/widget/EditText;

    move-result-object v2

    aget-object v3, v1, v4

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/SettingLCDCtrlActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingLCDCtrlActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingLCDCtrlActivity;->editMessage:Landroid/widget/EditText;
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/SettingLCDCtrlActivity;->access$3(Lobject/p2pwificam/clientActivity/SettingLCDCtrlActivity;)Landroid/widget/EditText;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 102
    :cond_2
    array-length v2, v1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 104
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/SettingLCDCtrlActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingLCDCtrlActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingLCDCtrlActivity;->editTitle:Landroid/widget/EditText;
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/SettingLCDCtrlActivity;->access$2(Lobject/p2pwificam/clientActivity/SettingLCDCtrlActivity;)Landroid/widget/EditText;

    move-result-object v2

    aget-object v3, v1, v4

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 105
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/SettingLCDCtrlActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingLCDCtrlActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingLCDCtrlActivity;->editMessage:Landroid/widget/EditText;
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/SettingLCDCtrlActivity;->access$3(Lobject/p2pwificam/clientActivity/SettingLCDCtrlActivity;)Landroid/widget/EditText;

    move-result-object v2

    aget-object v3, v1, v5

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 108
    :cond_3
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/SettingLCDCtrlActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingLCDCtrlActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingLCDCtrlActivity;->editTitle:Landroid/widget/EditText;
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/SettingLCDCtrlActivity;->access$2(Lobject/p2pwificam/clientActivity/SettingLCDCtrlActivity;)Landroid/widget/EditText;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 109
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/SettingLCDCtrlActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingLCDCtrlActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingLCDCtrlActivity;->editMessage:Landroid/widget/EditText;
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/SettingLCDCtrlActivity;->access$3(Lobject/p2pwificam/clientActivity/SettingLCDCtrlActivity;)Landroid/widget/EditText;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 71
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method
