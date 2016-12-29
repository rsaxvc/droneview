.class Lobject/p2pwificam/clientActivity/SettingMailActivity$1;
.super Landroid/os/Handler;
.source "SettingMailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pwificam/clientActivity/SettingMailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/SettingMailActivity;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/SettingMailActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingMailActivity;

    .line 81
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 83
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 132
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 85
    :pswitch_1
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingMailActivity;

    const v1, 0x7f060122

    invoke-virtual {v0, v1}, Lobject/p2pwificam/clientActivity/SettingMailActivity;->showToast(I)V

    goto :goto_0

    .line 88
    :pswitch_2
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingMailActivity;

    const v1, 0x7f060121

    invoke-virtual {v0, v1}, Lobject/p2pwificam/clientActivity/SettingMailActivity;->showToast(I)V

    .line 89
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingMailActivity;

    invoke-virtual {v0}, Lobject/p2pwificam/clientActivity/SettingMailActivity;->finish()V

    goto :goto_0

    .line 92
    :pswitch_3
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingMailActivity;

    invoke-static {v0, v3}, Lobject/p2pwificam/clientActivity/SettingMailActivity;->access$0(Lobject/p2pwificam/clientActivity/SettingMailActivity;Z)V

    .line 93
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingMailActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingMailActivity;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/SettingMailActivity;->access$1(Lobject/p2pwificam/clientActivity/SettingMailActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingMailActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingMailActivity;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/SettingMailActivity;->access$1(Lobject/p2pwificam/clientActivity/SettingMailActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 95
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingMailActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingMailActivity;->editSender:Landroid/widget/EditText;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/SettingMailActivity;->access$2(Lobject/p2pwificam/clientActivity/SettingMailActivity;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingMailActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingMailActivity;->mailBean:Lcom/easyview/bean/MailBean;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/SettingMailActivity;->access$3(Lobject/p2pwificam/clientActivity/SettingMailActivity;)Lcom/easyview/bean/MailBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/easyview/bean/MailBean;->getSender()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 96
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingMailActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingMailActivity;->editSmtpServer:Landroid/widget/EditText;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/SettingMailActivity;->access$4(Lobject/p2pwificam/clientActivity/SettingMailActivity;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingMailActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingMailActivity;->mailBean:Lcom/easyview/bean/MailBean;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/SettingMailActivity;->access$3(Lobject/p2pwificam/clientActivity/SettingMailActivity;)Lcom/easyview/bean/MailBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/easyview/bean/MailBean;->getSvr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 97
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingMailActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingMailActivity;->editReceiver1:Landroid/widget/EditText;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/SettingMailActivity;->access$5(Lobject/p2pwificam/clientActivity/SettingMailActivity;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingMailActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingMailActivity;->mailBean:Lcom/easyview/bean/MailBean;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/SettingMailActivity;->access$3(Lobject/p2pwificam/clientActivity/SettingMailActivity;)Lcom/easyview/bean/MailBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/easyview/bean/MailBean;->getReceiver1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 98
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingMailActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingMailActivity;->editReceiver2:Landroid/widget/EditText;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/SettingMailActivity;->access$6(Lobject/p2pwificam/clientActivity/SettingMailActivity;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingMailActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingMailActivity;->mailBean:Lcom/easyview/bean/MailBean;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/SettingMailActivity;->access$3(Lobject/p2pwificam/clientActivity/SettingMailActivity;)Lcom/easyview/bean/MailBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/easyview/bean/MailBean;->getReceiver2()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingMailActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingMailActivity;->editReceiver3:Landroid/widget/EditText;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/SettingMailActivity;->access$7(Lobject/p2pwificam/clientActivity/SettingMailActivity;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingMailActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingMailActivity;->mailBean:Lcom/easyview/bean/MailBean;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/SettingMailActivity;->access$3(Lobject/p2pwificam/clientActivity/SettingMailActivity;)Lcom/easyview/bean/MailBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/easyview/bean/MailBean;->getReceiver3()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingMailActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingMailActivity;->editSmtpPort:Landroid/widget/EditText;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/SettingMailActivity;->access$8(Lobject/p2pwificam/clientActivity/SettingMailActivity;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingMailActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingMailActivity;->mailBean:Lcom/easyview/bean/MailBean;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/SettingMailActivity;->access$3(Lobject/p2pwificam/clientActivity/SettingMailActivity;)Lcom/easyview/bean/MailBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/easyview/bean/MailBean;->getPort()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 102
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingMailActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingMailActivity;->mailBean:Lcom/easyview/bean/MailBean;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/SettingMailActivity;->access$3(Lobject/p2pwificam/clientActivity/SettingMailActivity;)Lcom/easyview/bean/MailBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easyview/bean/MailBean;->getSsl()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    .line 116
    :goto_1
    const-string v0, "mailsetting"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mailBean.getUser() = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingMailActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingMailActivity;->mailBean:Lcom/easyview/bean/MailBean;
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/SettingMailActivity;->access$3(Lobject/p2pwificam/clientActivity/SettingMailActivity;)Lcom/easyview/bean/MailBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/easyview/bean/MailBean;->getUser()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingMailActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingMailActivity;->mailBean:Lcom/easyview/bean/MailBean;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/SettingMailActivity;->access$3(Lobject/p2pwificam/clientActivity/SettingMailActivity;)Lcom/easyview/bean/MailBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easyview/bean/MailBean;->getUser()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingMailActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingMailActivity;->mailBean:Lcom/easyview/bean/MailBean;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/SettingMailActivity;->access$3(Lobject/p2pwificam/clientActivity/SettingMailActivity;)Lcom/easyview/bean/MailBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easyview/bean/MailBean;->getAuth()I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 118
    const-string v0, "mailsetting"

    const-string v1, "\u8fdb\u5165"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingMailActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingMailActivity;->mailBean:Lcom/easyview/bean/MailBean;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/SettingMailActivity;->access$3(Lobject/p2pwificam/clientActivity/SettingMailActivity;)Lcom/easyview/bean/MailBean;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/easyview/bean/MailBean;->setChecked(Z)V

    .line 120
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingMailActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingMailActivity;->cbxCheck:Landroid/widget/CheckBox;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/SettingMailActivity;->access$10(Lobject/p2pwificam/clientActivity/SettingMailActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 121
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingMailActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingMailActivity;->cbxView:Landroid/view/View;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/SettingMailActivity;->access$11(Lobject/p2pwificam/clientActivity/SettingMailActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 122
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingMailActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingMailActivity;->editSmtpUser:Landroid/widget/EditText;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/SettingMailActivity;->access$12(Lobject/p2pwificam/clientActivity/SettingMailActivity;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingMailActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingMailActivity;->mailBean:Lcom/easyview/bean/MailBean;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/SettingMailActivity;->access$3(Lobject/p2pwificam/clientActivity/SettingMailActivity;)Lcom/easyview/bean/MailBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/easyview/bean/MailBean;->getUser()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 123
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingMailActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingMailActivity;->editSmtpPwd:Landroid/widget/EditText;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/SettingMailActivity;->access$13(Lobject/p2pwificam/clientActivity/SettingMailActivity;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingMailActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingMailActivity;->mailBean:Lcom/easyview/bean/MailBean;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/SettingMailActivity;->access$3(Lobject/p2pwificam/clientActivity/SettingMailActivity;)Lcom/easyview/bean/MailBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/easyview/bean/MailBean;->getPwd()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 104
    :pswitch_4
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingMailActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingMailActivity;->editSSL:Landroid/widget/EditText;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/SettingMailActivity;->access$9(Lobject/p2pwificam/clientActivity/SettingMailActivity;)Landroid/widget/EditText;

    move-result-object v0

    const v1, 0x7f06010c

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(I)V

    goto/16 :goto_1

    .line 107
    :pswitch_5
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingMailActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingMailActivity;->editSSL:Landroid/widget/EditText;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/SettingMailActivity;->access$9(Lobject/p2pwificam/clientActivity/SettingMailActivity;)Landroid/widget/EditText;

    move-result-object v0

    const v1, 0x7f06010d

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(I)V

    goto/16 :goto_1

    .line 125
    :cond_1
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingMailActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingMailActivity;->cbxView:Landroid/view/View;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/SettingMailActivity;->access$11(Lobject/p2pwificam/clientActivity/SettingMailActivity;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 126
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingMailActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingMailActivity;->mailBean:Lcom/easyview/bean/MailBean;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/SettingMailActivity;->access$3(Lobject/p2pwificam/clientActivity/SettingMailActivity;)Lcom/easyview/bean/MailBean;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/easyview/bean/MailBean;->setChecked(Z)V

    goto/16 :goto_0

    .line 83
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 102
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
