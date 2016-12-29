.class Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$11;
.super Ljava/lang/Object;
.source "SettingAPWifiActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->getDevInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$11;->this$0:Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;

    .line 580
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 584
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$11;->this$0:Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;

    invoke-virtual {v3}, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->getWifiType()Z

    move-result v0

    .line 585
    .local v0, "ISwifi":Z
    const/4 v2, 0x0

    .line 586
    .local v2, "iswificount":I
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$11;->this$0:Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->devAPDID:Ljava/lang/String;
    invoke-static {v3}, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->access$3(Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-static {v3, v4}, Lobject/p2pipcam/utils/MyWifiUtils;->connectToWifi(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    const-wide/16 v3, 0x7d0

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 594
    :goto_0
    if-eqz v0, :cond_1

    .line 611
    :cond_0
    const-string v3, "strDIDtag"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "devCamName1:----"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->devCamName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "devDID:-----"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->devDID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    if-eqz v0, :cond_2

    .line 613
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$11;->this$0:Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;

    iget-object v3, v3, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->devhandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 619
    :goto_1
    return-void

    .line 590
    :catch_0
    move-exception v1

    .line 592
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 595
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 596
    const-string v3, "strDIDtag"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "strDID:----"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->devDID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$11;->this$0:Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->devAPDID:Ljava/lang/String;
    invoke-static {v3}, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->access$3(Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-static {v3, v4}, Lobject/p2pipcam/utils/MyWifiUtils;->connectToWifi(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    const-wide/16 v3, 0x7d0

    :try_start_1
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 604
    :goto_2
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$11;->this$0:Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;

    invoke-virtual {v3}, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->getWifiType()Z

    move-result v0

    .line 605
    const/16 v3, 0xa

    if-gt v2, v3, :cond_0

    .line 608
    const-string v3, "strDIDtag"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getWifiType:===="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 600
    :catch_1
    move-exception v1

    .line 602
    .restart local v1    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    .line 615
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_2
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$11;->this$0:Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->progressdlg:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->access$0(Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;)Landroid/app/ProgressDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V

    .line 616
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$11;->this$0:Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;

    const-string v4, "wifi\u8fde\u63a5\u9519\u8bef\uff0c\u8bf7\u91cd\u65b0\u8f93\u5165\u5bc6\u7801\uff01"

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method
