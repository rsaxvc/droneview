.class Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$6$1;
.super Ljava/lang/Object;
.source "SettingAPWifiActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$6;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$6;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$6;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$6$1;->this$1:Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$6;

    .line 703
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 708
    sget-object v3, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->devDID:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 714
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$6$1;->this$1:Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$6;

    # getter for: Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$6;->this$0:Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;
    invoke-static {v3}, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$6;->access$0(Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$6;)Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;

    move-result-object v3

    new-instance v4, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$ThreadConfig;

    iget-object v5, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$6$1;->this$1:Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$6;

    # getter for: Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$6;->this$0:Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;
    invoke-static {v5}, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$6;->access$0(Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$6;)Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;

    move-result-object v5

    invoke-direct {v4, v5}, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$ThreadConfig;-><init>(Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;)V

    invoke-static {v3, v4}, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->access$5(Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$ThreadConfig;)V

    .line 715
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$6$1;->this$1:Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$6;

    # getter for: Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$6;->this$0:Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;
    invoke-static {v3}, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$6;->access$0(Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$6;)Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;

    move-result-object v3

    # getter for: Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->_thread:Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$ThreadConfig;
    invoke-static {v3}, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->access$6(Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;)Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$ThreadConfig;

    move-result-object v3

    invoke-virtual {v3}, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$ThreadConfig;->start()V

    .line 717
    const-wide/16 v3, 0xbb8

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 722
    :goto_0
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$6$1;->this$1:Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$6;

    # getter for: Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$6;->this$0:Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;
    invoke-static {v3}, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$6;->access$0(Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$6;)Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;

    move-result-object v3

    iget-object v3, v3, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->wifi_name:Ljava/lang/String;

    iget-object v4, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$6$1;->this$1:Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$6;

    # getter for: Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$6;->this$0:Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;
    invoke-static {v4}, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$6;->access$0(Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$6;)Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;

    move-result-object v4

    iget-object v4, v4, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->wifi_pwd:Ljava/lang/String;

    invoke-static {v3, v4}, Lobject/p2pipcam/utils/MyWifiUtils;->connectToWifiAP(Ljava/lang/String;Ljava/lang/String;)V

    .line 723
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$6$1;->this$1:Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$6;

    # getter for: Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$6;->this$0:Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;
    invoke-static {v3}, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$6;->access$0(Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$6;)Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;

    move-result-object v3

    invoke-virtual {v3}, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->getWifiType()Z

    move-result v0

    .line 724
    .local v0, "ISwifi":Z
    const/4 v2, 0x0

    .line 725
    .local v2, "iscount":I
    :cond_0
    if-eqz v0, :cond_1

    .line 741
    :goto_1
    if-eqz v0, :cond_2

    .line 742
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$6$1;->this$1:Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$6;

    # getter for: Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$6;->this$0:Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;
    invoke-static {v3}, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$6;->access$0(Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$6;)Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;

    move-result-object v3

    iget-object v3, v3, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->donehandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 761
    .end local v0    # "ISwifi":Z
    .end local v2    # "iscount":I
    :goto_2
    return-void

    .line 718
    :catch_0
    move-exception v1

    .line 720
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 726
    .end local v1    # "e":Ljava/lang/InterruptedException;
    .restart local v0    # "ISwifi":Z
    .restart local v2    # "iscount":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 727
    const-string v3, "strDIDtag"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "strDID:----"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$6$1;->this$1:Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$6;

    # getter for: Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$6;->this$0:Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;
    invoke-static {v5}, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$6;->access$0(Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$6;)Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;

    move-result-object v5

    iget-object v5, v5, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->wifi_name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$6$1;->this$1:Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$6;

    # getter for: Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$6;->this$0:Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;
    invoke-static {v3}, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$6;->access$0(Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$6;)Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;

    move-result-object v3

    iget-object v3, v3, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->wifi_name:Ljava/lang/String;

    iget-object v4, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$6$1;->this$1:Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$6;

    # getter for: Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$6;->this$0:Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;
    invoke-static {v4}, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$6;->access$0(Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$6;)Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;

    move-result-object v4

    iget-object v4, v4, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->wifi_pwd:Ljava/lang/String;

    invoke-static {v3, v4}, Lobject/p2pipcam/utils/MyWifiUtils;->connectToWifiAP(Ljava/lang/String;Ljava/lang/String;)V

    .line 730
    const-wide/16 v3, 0xbb8

    :try_start_1
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 735
    :goto_3
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$6$1;->this$1:Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$6;

    # getter for: Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$6;->this$0:Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;
    invoke-static {v3}, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$6;->access$0(Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$6;)Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;

    move-result-object v3

    invoke-virtual {v3}, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->getWifiType()Z

    move-result v0

    .line 736
    const-string v3, "strDIDtag"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getWifiType:===="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    const/4 v3, 0x5

    if-le v2, v3, :cond_0

    goto :goto_1

    .line 731
    :catch_1
    move-exception v1

    .line 733
    .restart local v1    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_3

    .line 744
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_2
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$6$1;->this$1:Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$6;

    # getter for: Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$6;->this$0:Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;
    invoke-static {v3}, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$6;->access$0(Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$6;)Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;

    move-result-object v3

    # getter for: Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->progressdlg:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->access$0(Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;)Landroid/app/ProgressDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V

    .line 745
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$6$1;->this$1:Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$6;

    # getter for: Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$6;->this$0:Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;
    invoke-static {v3}, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$6;->access$0(Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$6;)Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;

    move-result-object v3

    const-string v4, "wifi\u8fde\u63a5\u9519\u8bef\uff0c\u8bf7\u91cd\u65b0\u8f93\u5165\u5bc6\u7801\uff01"

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 757
    .end local v0    # "ISwifi":Z
    .end local v2    # "iscount":I
    :cond_3
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$6$1;->this$1:Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$6;

    # getter for: Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$6;->this$0:Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;
    invoke-static {v3}, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$6;->access$0(Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$6;)Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;

    move-result-object v3

    # getter for: Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->progressdlg:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->access$0(Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;)Landroid/app/ProgressDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V

    .line 758
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$6$1;->this$1:Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$6;

    # getter for: Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$6;->this$0:Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;
    invoke-static {v3}, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$6;->access$0(Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$6;)Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;

    move-result-object v3

    const-string v4, "\u8bbe\u5907\u8fde\u63a5\u9519\u8bef\uff01"

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_2
.end method
