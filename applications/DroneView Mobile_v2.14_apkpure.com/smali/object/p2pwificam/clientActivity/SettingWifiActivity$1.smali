.class Lobject/p2pwificam/clientActivity/SettingWifiActivity$1;
.super Landroid/os/Handler;
.source "SettingWifiActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pwificam/clientActivity/SettingWifiActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/SettingWifiActivity;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/SettingWifiActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingWifiActivity;

    .line 119
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const v7, 0x7f0600ba

    const v6, 0x7f0600b7

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 121
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 213
    :cond_0
    :goto_0
    return-void

    .line 123
    :pswitch_0
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingWifiActivity;

    invoke-static {v1, v4}, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->access$0(Lobject/p2pwificam/clientActivity/SettingWifiActivity;Z)V

    .line 124
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingWifiActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingWifiActivity;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->access$1(Lobject/p2pwificam/clientActivity/SettingWifiActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 125
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingWifiActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingWifiActivity;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->access$1(Lobject/p2pwificam/clientActivity/SettingWifiActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->cancel()V

    .line 127
    :cond_1
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingWifiActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingWifiActivity;->editText_wifi_chanal:Landroid/widget/EditText;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->access$2(Lobject/p2pwificam/clientActivity/SettingWifiActivity;)Landroid/widget/EditText;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingWifiActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingWifiActivity;->wifiBean:Lcom/easyview/bean/WifiBean;
    invoke-static {v3}, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->access$3(Lobject/p2pwificam/clientActivity/SettingWifiActivity;)Lcom/easyview/bean/WifiBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/easyview/bean/WifiBean;->getChannel()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 128
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingWifiActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingWifiActivity;->wifiBean:Lcom/easyview/bean/WifiBean;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->access$3(Lobject/p2pwificam/clientActivity/SettingWifiActivity;)Lcom/easyview/bean/WifiBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/easyview/bean/WifiBean;->getEnable()I

    move-result v1

    if-ne v1, v4, :cond_0

    .line 129
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingWifiActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingWifiActivity;->wifiBean:Lcom/easyview/bean/WifiBean;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->access$3(Lobject/p2pwificam/clientActivity/SettingWifiActivity;)Lcom/easyview/bean/WifiBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/easyview/bean/WifiBean;->getSsid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 130
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingWifiActivity;

    invoke-static {v1, v4}, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->access$4(Lobject/p2pwificam/clientActivity/SettingWifiActivity;Z)V

    .line 131
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingWifiActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingWifiActivity;->tvName:Landroid/widget/TextView;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->access$5(Lobject/p2pwificam/clientActivity/SettingWifiActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingWifiActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingWifiActivity;->wifiBean:Lcom/easyview/bean/WifiBean;
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->access$3(Lobject/p2pwificam/clientActivity/SettingWifiActivity;)Lcom/easyview/bean/WifiBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/easyview/bean/WifiBean;->getSsid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingWifiActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingWifiActivity;->tvPrompt:Landroid/widget/TextView;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->access$6(Lobject/p2pwificam/clientActivity/SettingWifiActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingWifiActivity;

    invoke-virtual {v2}, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06004c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingWifiActivity;

    # invokes: Lobject/p2pwificam/clientActivity/SettingWifiActivity;->isAP()Z
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->access$7(Lobject/p2pwificam/clientActivity/SettingWifiActivity;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingWifiActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingWifiActivity;->tvPrompt:Landroid/widget/TextView;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->access$6(Lobject/p2pwificam/clientActivity/SettingWifiActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingWifiActivity;

    invoke-virtual {v2}, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    :cond_2
    :goto_1
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingWifiActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingWifiActivity;->wifiBean:Lcom/easyview/bean/WifiBean;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->access$3(Lobject/p2pwificam/clientActivity/SettingWifiActivity;)Lcom/easyview/bean/WifiBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/easyview/bean/WifiBean;->getAuthtype()I

    move-result v1

    packed-switch v1, :pswitch_data_1

    goto/16 :goto_0

    .line 143
    :pswitch_1
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingWifiActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingWifiActivity;->tvSafe:Landroid/widget/TextView;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->access$8(Lobject/p2pwificam/clientActivity/SettingWifiActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingWifiActivity;

    invoke-virtual {v2}, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 135
    :cond_3
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingWifiActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingWifiActivity;->tvName:Landroid/widget/TextView;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->access$5(Lobject/p2pwificam/clientActivity/SettingWifiActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingWifiActivity;

    invoke-virtual {v2}, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingWifiActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingWifiActivity;->tvPrompt:Landroid/widget/TextView;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->access$6(Lobject/p2pwificam/clientActivity/SettingWifiActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingWifiActivity;

    invoke-virtual {v2}, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 147
    :pswitch_2
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingWifiActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingWifiActivity;->tvSafe:Landroid/widget/TextView;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->access$8(Lobject/p2pwificam/clientActivity/SettingWifiActivity;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, "WEP"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 150
    :pswitch_3
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingWifiActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingWifiActivity;->tvSafe:Landroid/widget/TextView;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->access$8(Lobject/p2pwificam/clientActivity/SettingWifiActivity;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, "WPA_PSK(AES)"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 153
    :pswitch_4
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingWifiActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingWifiActivity;->tvSafe:Landroid/widget/TextView;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->access$8(Lobject/p2pwificam/clientActivity/SettingWifiActivity;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, "WPA_PSK(TKIP)"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 156
    :pswitch_5
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingWifiActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingWifiActivity;->tvSafe:Landroid/widget/TextView;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->access$8(Lobject/p2pwificam/clientActivity/SettingWifiActivity;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, "WPA2_PSK(AES)"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 159
    :pswitch_6
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingWifiActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingWifiActivity;->tvSafe:Landroid/widget/TextView;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->access$8(Lobject/p2pwificam/clientActivity/SettingWifiActivity;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, "WPA2_PSK(TKIP)"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 168
    :pswitch_7
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingWifiActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingWifiActivity;->LOG_TAG:Ljava/lang/String;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->access$9(Lobject/p2pwificam/clientActivity/SettingWifiActivity;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "handler  scan wifi"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingWifiActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingWifiActivity;->scanDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->access$10(Lobject/p2pwificam/clientActivity/SettingWifiActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 170
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingWifiActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingWifiActivity;->scanDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->access$10(Lobject/p2pwificam/clientActivity/SettingWifiActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->cancel()V

    .line 171
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingWifiActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingWifiActivity;->isTimerOver:Z
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->access$11(Lobject/p2pwificam/clientActivity/SettingWifiActivity;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 172
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingWifiActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingWifiActivity;->mTimerTimeOut:Ljava/util/Timer;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->access$12(Lobject/p2pwificam/clientActivity/SettingWifiActivity;)Ljava/util/Timer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 174
    :cond_4
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingWifiActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingWifiActivity;->mListView:Landroid/widget/ListView;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->access$13(Lobject/p2pwificam/clientActivity/SettingWifiActivity;)Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingWifiActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingWifiActivity;->mAdapter:Lobject/p2pipcam/adapter/WifiScanListAdapter;
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->access$14(Lobject/p2pwificam/clientActivity/SettingWifiActivity;)Lobject/p2pipcam/adapter/WifiScanListAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 175
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingWifiActivity;

    invoke-virtual {v1}, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->setListViewHeight()V

    .line 176
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingWifiActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingWifiActivity;->mListView:Landroid/widget/ListView;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->access$13(Lobject/p2pwificam/clientActivity/SettingWifiActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/ListView;->setVisibility(I)V

    .line 177
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingWifiActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingWifiActivity;->LOG_TAG:Ljava/lang/String;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->access$9(Lobject/p2pwificam/clientActivity/SettingWifiActivity;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "handler  scan wifi  2"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :cond_5
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingWifiActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingWifiActivity;->LOG_TAG:Ljava/lang/String;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->access$9(Lobject/p2pwificam/clientActivity/SettingWifiActivity;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "handler  scan wifi  3"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 182
    :pswitch_8
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingWifiActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingWifiActivity;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->access$15(Lobject/p2pwificam/clientActivity/SettingWifiActivity;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingWifiActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingWifiActivity;->settingRunnable:Ljava/lang/Runnable;
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->access$16(Lobject/p2pwificam/clientActivity/SettingWifiActivity;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 183
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingWifiActivity;

    invoke-static {v1, v4}, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->access$0(Lobject/p2pwificam/clientActivity/SettingWifiActivity;Z)V

    .line 184
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingWifiActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingWifiActivity;->result:I
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->access$17(Lobject/p2pwificam/clientActivity/SettingWifiActivity;)I

    move-result v1

    if-ne v1, v4, :cond_7

    .line 185
    const-string v1, "tag"

    const-string v2, "over"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingWifiActivity;

    .line 189
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingWifiActivity;

    invoke-virtual {v2}, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0600b9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 187
    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 190
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 194
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingWifiActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingWifiActivity;->strDID:Ljava/lang/String;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->access$18(Lobject/p2pwificam/clientActivity/SettingWifiActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lobject/p2pipcam/utils/Pub;->setWifi(Ljava/lang/String;)V

    .line 195
    new-instance v0, Landroid/content/Intent;

    const-string v1, "myback"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 196
    .local v0, "intent2":Landroid/content/Intent;
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingWifiActivity;

    invoke-virtual {v1, v0}, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 197
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingWifiActivity;

    invoke-virtual {v1}, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->finish()V

    .line 201
    .end local v0    # "intent2":Landroid/content/Intent;
    :cond_6
    :goto_2
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingWifiActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingWifiActivity;->btnOk:Landroid/widget/Button;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->access$19(Lobject/p2pwificam/clientActivity/SettingWifiActivity;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0

    .line 198
    :cond_7
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingWifiActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingWifiActivity;->result:I
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->access$17(Lobject/p2pwificam/clientActivity/SettingWifiActivity;)I

    move-result v1

    if-nez v1, :cond_6

    .line 199
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingWifiActivity;

    const v2, 0x7f0600b8

    invoke-virtual {v1, v2}, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->showToast(I)V

    goto :goto_2

    .line 204
    :pswitch_9
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingWifiActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingWifiActivity;->scanDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->access$10(Lobject/p2pwificam/clientActivity/SettingWifiActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 205
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingWifiActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingWifiActivity;->scanDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->access$10(Lobject/p2pwificam/clientActivity/SettingWifiActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->cancel()V

    goto/16 :goto_0

    .line 121
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch

    .line 141
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
