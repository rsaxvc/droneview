.class Lobject/p2pwificam/clientActivity/SettingOpenLockActivity$1;
.super Landroid/os/Handler;
.source "SettingOpenLockActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/SettingOpenLockActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;

    .line 81
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 86
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 126
    :goto_0
    :pswitch_0
    return-void

    .line 90
    :pswitch_1
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/SettingOpenLockActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;

    const v3, 0x7f0600c8

    invoke-virtual {v2, v3}, Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;->showToast(I)V

    goto :goto_0

    .line 96
    :pswitch_2
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/SettingOpenLockActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;

    const v3, 0x7f0600c7

    invoke-virtual {v2, v3}, Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;->showToast(I)V

    .line 98
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/SettingOpenLockActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;

    invoke-virtual {v2}, Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;->finish()V

    goto :goto_0

    .line 103
    :pswitch_3
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/SettingOpenLockActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;->access$0(Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 104
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/SettingOpenLockActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;->access$0(Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 105
    :cond_0
    new-array v0, v7, [Landroid/widget/RadioButton;

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/SettingOpenLockActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;->radioButton1:Landroid/widget/RadioButton;
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;->access$1(Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;)Landroid/widget/RadioButton;

    move-result-object v2

    aput-object v2, v0, v6

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/SettingOpenLockActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;->radioButton2:Landroid/widget/RadioButton;
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;->access$2(Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;)Landroid/widget/RadioButton;

    move-result-object v2

    aput-object v2, v0, v5

    const/4 v2, 0x2

    iget-object v3, p0, Lobject/p2pwificam/clientActivity/SettingOpenLockActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;->radioButton3:Landroid/widget/RadioButton;
    invoke-static {v3}, Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;->access$3(Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;)Landroid/widget/RadioButton;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lobject/p2pwificam/clientActivity/SettingOpenLockActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;->radioButton4:Landroid/widget/RadioButton;
    invoke-static {v3}, Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;->access$4(Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;)Landroid/widget/RadioButton;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lobject/p2pwificam/clientActivity/SettingOpenLockActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;->radioButton5:Landroid/widget/RadioButton;
    invoke-static {v3}, Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;->access$5(Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;)Landroid/widget/RadioButton;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x5

    iget-object v3, p0, Lobject/p2pwificam/clientActivity/SettingOpenLockActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;->radioButton6:Landroid/widget/RadioButton;
    invoke-static {v3}, Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;->access$6(Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;)Landroid/widget/RadioButton;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x6

    iget-object v3, p0, Lobject/p2pwificam/clientActivity/SettingOpenLockActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;->radioButton7:Landroid/widget/RadioButton;
    invoke-static {v3}, Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;->access$7(Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;)Landroid/widget/RadioButton;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x7

    iget-object v3, p0, Lobject/p2pwificam/clientActivity/SettingOpenLockActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;->radioButton8:Landroid/widget/RadioButton;
    invoke-static {v3}, Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;->access$8(Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;)Landroid/widget/RadioButton;

    move-result-object v3

    aput-object v3, v0, v2

    .line 106
    .local v0, "RadioButtonArray":[Landroid/widget/RadioButton;
    const-string v2, "ViewRecord"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "openTime11111111111111= "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lobject/p2pwificam/clientActivity/SettingOpenLockActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;->openTime:I
    invoke-static {v4}, Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;->access$9(Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/SettingOpenLockActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;->openTime:I
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;->access$9(Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;)I

    move-result v2

    if-le v2, v7, :cond_1

    .line 109
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/SettingOpenLockActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;

    invoke-static {v2, v7}, Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;->access$10(Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;I)V

    .line 111
    :cond_1
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/SettingOpenLockActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;->openTime:I
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;->access$9(Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;)I

    move-result v2

    if-ge v2, v5, :cond_2

    .line 113
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/SettingOpenLockActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;

    invoke-static {v2, v5}, Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;->access$10(Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;I)V

    .line 116
    :cond_2
    aget-object v2, v0, v6

    invoke-virtual {v2, v6}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 118
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/SettingOpenLockActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;->openTime:I
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;->access$9(Lobject/p2pwificam/clientActivity/SettingOpenLockActivity;)I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .line 120
    .local v1, "i":I
    aget-object v2, v0, v1

    invoke-virtual {v2, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_0

    .line 86
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method
