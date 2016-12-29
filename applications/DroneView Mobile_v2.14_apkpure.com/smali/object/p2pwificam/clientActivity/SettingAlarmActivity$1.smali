.class Lobject/p2pwificam/clientActivity/SettingAlarmActivity$1;
.super Landroid/os/Handler;
.source "SettingAlarmActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pwificam/clientActivity/SettingAlarmActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/SettingAlarmActivity;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/SettingAlarmActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingAlarmActivity;

    .line 69
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

    .line 71
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 169
    :goto_0
    :pswitch_0
    return-void

    .line 73
    :pswitch_1
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingAlarmActivity;

    const v2, 0x7f060148

    invoke-virtual {v1, v2}, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->showToast(I)V

    goto :goto_0

    .line 76
    :pswitch_2
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingAlarmActivity;

    const v2, 0x7f060164

    invoke-virtual {v1, v2}, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->showToast(I)V

    .line 77
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingAlarmActivity;

    invoke-virtual {v1}, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->finish()V

    goto :goto_0

    .line 80
    :pswitch_3
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingAlarmActivity;

    invoke-static {v1, v3}, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->access$0(Lobject/p2pwificam/clientActivity/SettingAlarmActivity;Z)V

    .line 81
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingAlarmActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->access$1(Lobject/p2pwificam/clientActivity/SettingAlarmActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->cancel()V

    .line 83
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingAlarmActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->alermBean:Lcom/easyview/bean/AlermBean;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->access$2(Lobject/p2pwificam/clientActivity/SettingAlarmActivity;)Lcom/easyview/bean/AlermBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/easyview/bean/AlermBean;->getMotion_armed()I

    move-result v1

    if-nez v1, :cond_0

    .line 84
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingAlarmActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->motionAlermView:Landroid/view/View;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->access$3(Lobject/p2pwificam/clientActivity/SettingAlarmActivity;)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 123
    :goto_1
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingAlarmActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->alermBean:Lcom/easyview/bean/AlermBean;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->access$2(Lobject/p2pwificam/clientActivity/SettingAlarmActivity;)Lcom/easyview/bean/AlermBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/easyview/bean/AlermBean;->getMail()I

    move-result v1

    if-nez v1, :cond_1

    .line 124
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingAlarmActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->cbxMail:Landroid/widget/CheckBox;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->access$6(Lobject/p2pwificam/clientActivity/SettingAlarmActivity;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 128
    :goto_2
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingAlarmActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->alermBean:Lcom/easyview/bean/AlermBean;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->access$2(Lobject/p2pwificam/clientActivity/SettingAlarmActivity;)Lcom/easyview/bean/AlermBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/easyview/bean/AlermBean;->getRecord()I

    move-result v1

    if-nez v1, :cond_2

    .line 130
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingAlarmActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->cbxRecord:Landroid/widget/CheckBox;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->access$7(Lobject/p2pwificam/clientActivity/SettingAlarmActivity;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 86
    :cond_0
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingAlarmActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->cbxMotionAlerm:Landroid/widget/CheckBox;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->access$4(Lobject/p2pwificam/clientActivity/SettingAlarmActivity;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 87
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingAlarmActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->motionAlermView:Landroid/view/View;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->access$3(Lobject/p2pwificam/clientActivity/SettingAlarmActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 89
    const/4 v1, 0x4

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    .line 92
    .local v0, "Sensitivity":[I
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingAlarmActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->tvSensitivity:Landroid/widget/TextView;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->access$5(Lobject/p2pwificam/clientActivity/SettingAlarmActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingAlarmActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->alermBean:Lcom/easyview/bean/AlermBean;
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->access$2(Lobject/p2pwificam/clientActivity/SettingAlarmActivity;)Lcom/easyview/bean/AlermBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/easyview/bean/AlermBean;->getMotion_sensitivity()I

    move-result v2

    aget v2, v0, v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 126
    .end local v0    # "Sensitivity":[I
    :cond_1
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingAlarmActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->cbxMail:Landroid/widget/CheckBox;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->access$6(Lobject/p2pwificam/clientActivity/SettingAlarmActivity;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_2

    .line 132
    :cond_2
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingAlarmActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->cbxRecord:Landroid/widget/CheckBox;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->access$7(Lobject/p2pwificam/clientActivity/SettingAlarmActivity;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_0

    .line 71
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
    .end packed-switch

    .line 89
    :array_0
    .array-data 4
        0x7f060165
        0x7f060166
        0x7f060167
        0x7f060168
    .end array-data
.end method
