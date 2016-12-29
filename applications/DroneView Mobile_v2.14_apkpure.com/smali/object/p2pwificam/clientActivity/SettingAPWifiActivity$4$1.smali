.class Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$4$1;
.super Ljava/lang/Object;
.source "SettingAPWifiActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$4;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$4;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$4;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$4$1;->this$1:Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$4;

    .line 629
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v7, 0x0

    const/4 v10, 0x0

    .line 633
    const/4 v3, 0x1

    .line 634
    .local v3, "isdev":Z
    const/4 v2, 0x0

    .line 635
    .local v2, "iscount":I
    sput-object v7, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->devCamName:Ljava/lang/String;

    .line 636
    sput-object v7, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->devDID:Ljava/lang/String;

    .line 637
    iget-object v7, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$4$1;->this$1:Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$4;

    # getter for: Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$4;->this$0:Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;
    invoke-static {v7}, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$4;->access$0(Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$4;)Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;

    move-result-object v7

    const v8, 0x7f060003

    invoke-virtual {v7, v8}, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 638
    .local v6, "searchPort":Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 639
    .local v4, "port":I
    iget-object v7, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$4$1;->this$1:Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$4;

    # getter for: Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$4;->this$0:Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;
    invoke-static {v7}, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$4;->access$0(Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$4;)Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;

    move-result-object v7

    const-string v8, "camera_info"

    invoke-virtual {v7, v8, v10}, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 640
    .local v5, "preference":Landroid/content/SharedPreferences;
    const-string v7, "camera_user"

    const-string v8, "admin"

    invoke-interface {v5, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 642
    .local v0, "cameraUser":Ljava/lang/String;
    :cond_0
    :goto_0
    if-nez v3, :cond_1

    .line 666
    sget-object v7, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->devDID:Ljava/lang/String;

    if-eqz v7, :cond_3

    .line 668
    iget-object v7, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$4$1;->this$1:Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$4;

    # getter for: Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$4;->this$0:Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;
    invoke-static {v7}, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$4;->access$0(Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$4;)Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;

    move-result-object v7

    iget-object v7, v7, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->listhandler:Landroid/os/Handler;

    invoke-virtual {v7, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 676
    :goto_1
    return-void

    .line 643
    :cond_1
    invoke-static {v4, v0}, Lobject/p2pipcam/nativecaller/NativeCaller;->StartSearch(ILjava/lang/String;)V

    .line 645
    const-wide/16 v7, 0x7d0

    :try_start_0
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 650
    :goto_2
    const-string v7, "strDIDtag"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "devCamName:1"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v9, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->devCamName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "devDID:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->devDID:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    invoke-static {}, Lobject/p2pipcam/nativecaller/NativeCaller;->StopSearch()V

    .line 654
    const/16 v7, 0xa

    if-le v2, v7, :cond_2

    .line 655
    const/4 v3, 0x0

    .line 657
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 658
    sget-object v7, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->devDID:Ljava/lang/String;

    if-eqz v7, :cond_0

    .line 661
    const/4 v3, 0x0

    goto :goto_0

    .line 646
    :catch_0
    move-exception v1

    .line 648
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    .line 671
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_3
    iget-object v7, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$4$1;->this$1:Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$4;

    # getter for: Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$4;->this$0:Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;
    invoke-static {v7}, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$4;->access$0(Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$4;)Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;

    move-result-object v7

    iget-object v7, v7, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->dishandler:Landroid/os/Handler;

    invoke-virtual {v7, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1
.end method
