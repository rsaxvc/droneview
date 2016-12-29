.class Lobject/p2pwificam/clientActivity/SettingFtpActivity$1;
.super Landroid/os/Handler;
.source "SettingFtpActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pwificam/clientActivity/SettingFtpActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/SettingFtpActivity;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/SettingFtpActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/SettingFtpActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingFtpActivity;

    .line 48
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 50
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 76
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 52
    :pswitch_1
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingFtpActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingFtpActivity;

    const v1, 0x7f06013a

    invoke-virtual {v0, v1}, Lobject/p2pwificam/clientActivity/SettingFtpActivity;->showToast(I)V

    goto :goto_0

    .line 55
    :pswitch_2
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingFtpActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingFtpActivity;

    const v1, 0x7f060139

    invoke-virtual {v0, v1}, Lobject/p2pwificam/clientActivity/SettingFtpActivity;->showToast(I)V

    .line 56
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingFtpActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingFtpActivity;

    invoke-virtual {v0}, Lobject/p2pwificam/clientActivity/SettingFtpActivity;->finish()V

    goto :goto_0

    .line 59
    :pswitch_3
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingFtpActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingFtpActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lobject/p2pwificam/clientActivity/SettingFtpActivity;->access$0(Lobject/p2pwificam/clientActivity/SettingFtpActivity;Z)V

    .line 60
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingFtpActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingFtpActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingFtpActivity;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/SettingFtpActivity;->access$1(Lobject/p2pwificam/clientActivity/SettingFtpActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingFtpActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingFtpActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingFtpActivity;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/SettingFtpActivity;->access$1(Lobject/p2pwificam/clientActivity/SettingFtpActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 62
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingFtpActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingFtpActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingFtpActivity;->editFtpServer:Landroid/widget/EditText;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/SettingFtpActivity;->access$2(Lobject/p2pwificam/clientActivity/SettingFtpActivity;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingFtpActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingFtpActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingFtpActivity;->ftpBean:Lobject/p2pipcam/bean/FtpBean;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/SettingFtpActivity;->access$3(Lobject/p2pwificam/clientActivity/SettingFtpActivity;)Lobject/p2pipcam/bean/FtpBean;

    move-result-object v1

    invoke-virtual {v1}, Lobject/p2pipcam/bean/FtpBean;->getSvr_ftp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 63
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingFtpActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingFtpActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingFtpActivity;->editFtpPort:Landroid/widget/EditText;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/SettingFtpActivity;->access$4(Lobject/p2pwificam/clientActivity/SettingFtpActivity;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingFtpActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingFtpActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingFtpActivity;->ftpBean:Lobject/p2pipcam/bean/FtpBean;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/SettingFtpActivity;->access$3(Lobject/p2pwificam/clientActivity/SettingFtpActivity;)Lobject/p2pipcam/bean/FtpBean;

    move-result-object v1

    invoke-virtual {v1}, Lobject/p2pipcam/bean/FtpBean;->getPort()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 64
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingFtpActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingFtpActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingFtpActivity;->editFtpUser:Landroid/widget/EditText;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/SettingFtpActivity;->access$5(Lobject/p2pwificam/clientActivity/SettingFtpActivity;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingFtpActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingFtpActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingFtpActivity;->ftpBean:Lobject/p2pipcam/bean/FtpBean;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/SettingFtpActivity;->access$3(Lobject/p2pwificam/clientActivity/SettingFtpActivity;)Lobject/p2pipcam/bean/FtpBean;

    move-result-object v1

    invoke-virtual {v1}, Lobject/p2pipcam/bean/FtpBean;->getUser()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 65
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingFtpActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingFtpActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingFtpActivity;->editFtpPwd:Landroid/widget/EditText;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/SettingFtpActivity;->access$6(Lobject/p2pwificam/clientActivity/SettingFtpActivity;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingFtpActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingFtpActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingFtpActivity;->ftpBean:Lobject/p2pipcam/bean/FtpBean;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/SettingFtpActivity;->access$3(Lobject/p2pwificam/clientActivity/SettingFtpActivity;)Lobject/p2pipcam/bean/FtpBean;

    move-result-object v1

    invoke-virtual {v1}, Lobject/p2pipcam/bean/FtpBean;->getPwd()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 50
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method
