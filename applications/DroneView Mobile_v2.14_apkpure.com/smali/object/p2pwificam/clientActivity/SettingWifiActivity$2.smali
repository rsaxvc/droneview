.class Lobject/p2pwificam/clientActivity/SettingWifiActivity$2;
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
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity$2;->this$0:Lobject/p2pwificam/clientActivity/SettingWifiActivity;

    .line 219
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    .line 221
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity$2;->this$0:Lobject/p2pwificam/clientActivity/SettingWifiActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingWifiActivity;->tvSigal:Landroid/widget/TextView;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->access$20(Lobject/p2pwificam/clientActivity/SettingWifiActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity$2;->this$0:Lobject/p2pwificam/clientActivity/SettingWifiActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingWifiActivity;->wifiBean:Lcom/easyview/bean/WifiBean;
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->access$3(Lobject/p2pwificam/clientActivity/SettingWifiActivity;)Lcom/easyview/bean/WifiBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/easyview/bean/WifiBean;->getDbm0()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 222
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity$2;->this$0:Lobject/p2pwificam/clientActivity/SettingWifiActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingWifiActivity;->editText_wifi_chanal:Landroid/widget/EditText;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->access$2(Lobject/p2pwificam/clientActivity/SettingWifiActivity;)Landroid/widget/EditText;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity$2;->this$0:Lobject/p2pwificam/clientActivity/SettingWifiActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingWifiActivity;->wifiBean:Lcom/easyview/bean/WifiBean;
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->access$3(Lobject/p2pwificam/clientActivity/SettingWifiActivity;)Lcom/easyview/bean/WifiBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/easyview/bean/WifiBean;->getChannel()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 223
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity$2;->this$0:Lobject/p2pwificam/clientActivity/SettingWifiActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingWifiActivity;->tvName:Landroid/widget/TextView;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->access$5(Lobject/p2pwificam/clientActivity/SettingWifiActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity$2;->this$0:Lobject/p2pwificam/clientActivity/SettingWifiActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingWifiActivity;->wifiBean:Lcom/easyview/bean/WifiBean;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->access$3(Lobject/p2pwificam/clientActivity/SettingWifiActivity;)Lcom/easyview/bean/WifiBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/easyview/bean/WifiBean;->getSsid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 224
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity$2;->this$0:Lobject/p2pwificam/clientActivity/SettingWifiActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingWifiActivity;->signalView:Landroid/view/View;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->access$21(Lobject/p2pwificam/clientActivity/SettingWifiActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 225
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity$2;->this$0:Lobject/p2pwificam/clientActivity/SettingWifiActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingWifiActivity;->tvPrompt:Landroid/widget/TextView;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->access$6(Lobject/p2pwificam/clientActivity/SettingWifiActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity$2;->this$0:Lobject/p2pwificam/clientActivity/SettingWifiActivity;

    invoke-virtual {v1}, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 226
    const v2, 0x7f0600ba

    .line 225
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity$2;->this$0:Lobject/p2pwificam/clientActivity/SettingWifiActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingWifiActivity;->wifiBean:Lcom/easyview/bean/WifiBean;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->access$3(Lobject/p2pwificam/clientActivity/SettingWifiActivity;)Lcom/easyview/bean/WifiBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easyview/bean/WifiBean;->getAuthtype()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 256
    :goto_0
    return-void

    .line 229
    :pswitch_0
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity$2;->this$0:Lobject/p2pwificam/clientActivity/SettingWifiActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingWifiActivity;->pwdView:Landroid/view/View;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->access$22(Lobject/p2pwificam/clientActivity/SettingWifiActivity;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 230
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity$2;->this$0:Lobject/p2pwificam/clientActivity/SettingWifiActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingWifiActivity;->tvSafe:Landroid/widget/TextView;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->access$8(Lobject/p2pwificam/clientActivity/SettingWifiActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity$2;->this$0:Lobject/p2pwificam/clientActivity/SettingWifiActivity;

    invoke-virtual {v1}, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0600b7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 233
    :pswitch_1
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity$2;->this$0:Lobject/p2pwificam/clientActivity/SettingWifiActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingWifiActivity;->pwdView:Landroid/view/View;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->access$22(Lobject/p2pwificam/clientActivity/SettingWifiActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 234
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity$2;->this$0:Lobject/p2pwificam/clientActivity/SettingWifiActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingWifiActivity;->tvSafe:Landroid/widget/TextView;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->access$8(Lobject/p2pwificam/clientActivity/SettingWifiActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "WEP"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 237
    :pswitch_2
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity$2;->this$0:Lobject/p2pwificam/clientActivity/SettingWifiActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingWifiActivity;->pwdView:Landroid/view/View;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->access$22(Lobject/p2pwificam/clientActivity/SettingWifiActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 238
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity$2;->this$0:Lobject/p2pwificam/clientActivity/SettingWifiActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingWifiActivity;->tvSafe:Landroid/widget/TextView;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->access$8(Lobject/p2pwificam/clientActivity/SettingWifiActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "WPA_PSK(AES)"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 241
    :pswitch_3
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity$2;->this$0:Lobject/p2pwificam/clientActivity/SettingWifiActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingWifiActivity;->pwdView:Landroid/view/View;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->access$22(Lobject/p2pwificam/clientActivity/SettingWifiActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 242
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity$2;->this$0:Lobject/p2pwificam/clientActivity/SettingWifiActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingWifiActivity;->tvSafe:Landroid/widget/TextView;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->access$8(Lobject/p2pwificam/clientActivity/SettingWifiActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "WPA_PSK(TKIP)"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 245
    :pswitch_4
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity$2;->this$0:Lobject/p2pwificam/clientActivity/SettingWifiActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingWifiActivity;->pwdView:Landroid/view/View;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->access$22(Lobject/p2pwificam/clientActivity/SettingWifiActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 246
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity$2;->this$0:Lobject/p2pwificam/clientActivity/SettingWifiActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingWifiActivity;->tvSafe:Landroid/widget/TextView;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->access$8(Lobject/p2pwificam/clientActivity/SettingWifiActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "WPA2_PSK(AES)"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 249
    :pswitch_5
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity$2;->this$0:Lobject/p2pwificam/clientActivity/SettingWifiActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingWifiActivity;->pwdView:Landroid/view/View;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->access$22(Lobject/p2pwificam/clientActivity/SettingWifiActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 250
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity$2;->this$0:Lobject/p2pwificam/clientActivity/SettingWifiActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingWifiActivity;->tvSafe:Landroid/widget/TextView;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->access$8(Lobject/p2pwificam/clientActivity/SettingWifiActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "WPA2_PSK(TKIP)"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 227
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
