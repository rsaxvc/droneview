.class Lobject/p2pwificam/clientActivity/SettingSDCardActivity$1;
.super Landroid/os/Handler;
.source "SettingSDCardActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pwificam/clientActivity/SettingSDCardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/SettingSDCardActivity;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/SettingSDCardActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/SettingSDCardActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingSDCardActivity;

    .line 73
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

    .line 75
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 124
    :goto_0
    return-void

    .line 77
    :pswitch_0
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingSDCardActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingSDCardActivity;

    const v1, 0x7f060131

    invoke-virtual {v0, v1}, Lobject/p2pwificam/clientActivity/SettingSDCardActivity;->showToast(I)V

    goto :goto_0

    .line 80
    :pswitch_1
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingSDCardActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingSDCardActivity;

    const v1, 0x7f060132

    invoke-virtual {v0, v1}, Lobject/p2pwificam/clientActivity/SettingSDCardActivity;->showToast(I)V

    .line 81
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingSDCardActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingSDCardActivity;

    invoke-virtual {v0}, Lobject/p2pwificam/clientActivity/SettingSDCardActivity;->finish()V

    goto :goto_0

    .line 84
    :pswitch_2
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingSDCardActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingSDCardActivity;

    invoke-static {v0, v3}, Lobject/p2pwificam/clientActivity/SettingSDCardActivity;->access$0(Lobject/p2pwificam/clientActivity/SettingSDCardActivity;Z)V

    .line 85
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingSDCardActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingSDCardActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingSDCardActivity;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/SettingSDCardActivity;->access$1(Lobject/p2pwificam/clientActivity/SettingSDCardActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 86
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingSDCardActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingSDCardActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingSDCardActivity;->tvSdTotal:Landroid/widget/TextView;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/SettingSDCardActivity;->access$2(Lobject/p2pwificam/clientActivity/SettingSDCardActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/SettingSDCardActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingSDCardActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingSDCardActivity;->sdcardBean:Lcom/easyview/bean/SdcardBean;
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/SettingSDCardActivity;->access$3(Lobject/p2pwificam/clientActivity/SettingSDCardActivity;)Lcom/easyview/bean/SdcardBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/easyview/bean/SdcardBean;->getSdtotal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "M"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingSDCardActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingSDCardActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingSDCardActivity;->tvSdRemain:Landroid/widget/TextView;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/SettingSDCardActivity;->access$4(Lobject/p2pwificam/clientActivity/SettingSDCardActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/SettingSDCardActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingSDCardActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingSDCardActivity;->sdcardBean:Lcom/easyview/bean/SdcardBean;
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/SettingSDCardActivity;->access$3(Lobject/p2pwificam/clientActivity/SettingSDCardActivity;)Lcom/easyview/bean/SdcardBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/easyview/bean/SdcardBean;->getSdfree()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "M"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingSDCardActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingSDCardActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingSDCardActivity;->sdcardBean:Lcom/easyview/bean/SdcardBean;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/SettingSDCardActivity;->access$3(Lobject/p2pwificam/clientActivity/SettingSDCardActivity;)Lcom/easyview/bean/SdcardBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easyview/bean/SdcardBean;->getRecord_sd_status()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 89
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingSDCardActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingSDCardActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingSDCardActivity;->tvSdStatus:Landroid/widget/TextView;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/SettingSDCardActivity;->access$5(Lobject/p2pwificam/clientActivity/SettingSDCardActivity;)Landroid/widget/TextView;

    move-result-object v0

    .line 90
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingSDCardActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingSDCardActivity;

    invoke-virtual {v1}, Lobject/p2pwificam/clientActivity/SettingSDCardActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 91
    const v2, 0x7f060129

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 90
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    :goto_1
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingSDCardActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingSDCardActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingSDCardActivity;->sdcardBean:Lcom/easyview/bean/SdcardBean;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/SettingSDCardActivity;->access$3(Lobject/p2pwificam/clientActivity/SettingSDCardActivity;)Lcom/easyview/bean/SdcardBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easyview/bean/SdcardBean;->getRecord_time_enable()I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 103
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingSDCardActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingSDCardActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingSDCardActivity;->cbxRecordTime:Landroid/widget/CheckBox;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/SettingSDCardActivity;->access$6(Lobject/p2pwificam/clientActivity/SettingSDCardActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 108
    :goto_2
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingSDCardActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingSDCardActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingSDCardActivity;->sdcardBean:Lcom/easyview/bean/SdcardBean;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/SettingSDCardActivity;->access$3(Lobject/p2pwificam/clientActivity/SettingSDCardActivity;)Lcom/easyview/bean/SdcardBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easyview/bean/SdcardBean;->getRecord_timer()I

    move-result v0

    if-ne v0, v3, :cond_2

    .line 109
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingSDCardActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingSDCardActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingSDCardActivity;->spinRecordLength:Landroid/widget/Spinner;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/SettingSDCardActivity;->access$7(Lobject/p2pwificam/clientActivity/SettingSDCardActivity;)Landroid/widget/Spinner;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_0

    .line 93
    :cond_0
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingSDCardActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingSDCardActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingSDCardActivity;->tvSdStatus:Landroid/widget/TextView;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/SettingSDCardActivity;->access$5(Lobject/p2pwificam/clientActivity/SettingSDCardActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingSDCardActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingSDCardActivity;

    .line 94
    invoke-virtual {v1}, Lobject/p2pwificam/clientActivity/SettingSDCardActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 95
    const v2, 0x7f06012a

    .line 94
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 93
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 105
    :cond_1
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingSDCardActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingSDCardActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingSDCardActivity;->cbxRecordTime:Landroid/widget/CheckBox;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/SettingSDCardActivity;->access$6(Lobject/p2pwificam/clientActivity/SettingSDCardActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_2

    .line 110
    :cond_2
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingSDCardActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingSDCardActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingSDCardActivity;->sdcardBean:Lcom/easyview/bean/SdcardBean;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/SettingSDCardActivity;->access$3(Lobject/p2pwificam/clientActivity/SettingSDCardActivity;)Lcom/easyview/bean/SdcardBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easyview/bean/SdcardBean;->getRecord_timer()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_3

    .line 111
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingSDCardActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingSDCardActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingSDCardActivity;->spinRecordLength:Landroid/widget/Spinner;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/SettingSDCardActivity;->access$7(Lobject/p2pwificam/clientActivity/SettingSDCardActivity;)Landroid/widget/Spinner;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_0

    .line 112
    :cond_3
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingSDCardActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingSDCardActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingSDCardActivity;->spinRecordLength:Landroid/widget/Spinner;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/SettingSDCardActivity;->access$7(Lobject/p2pwificam/clientActivity/SettingSDCardActivity;)Landroid/widget/Spinner;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_0

    .line 75
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
