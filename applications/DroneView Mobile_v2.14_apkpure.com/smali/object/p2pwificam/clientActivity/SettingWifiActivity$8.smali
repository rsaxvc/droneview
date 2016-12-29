.class Lobject/p2pwificam/clientActivity/SettingWifiActivity$8;
.super Ljava/util/TimerTask;
.source "SettingWifiActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lobject/p2pwificam/clientActivity/SettingWifiActivity;->setTimeOut()V
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
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity$8;->this$0:Lobject/p2pwificam/clientActivity/SettingWifiActivity;

    .line 456
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 460
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity$8;->this$0:Lobject/p2pwificam/clientActivity/SettingWifiActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingWifiActivity;->LOG_TAG:Ljava/lang/String;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->access$9(Lobject/p2pwificam/clientActivity/SettingWifiActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "isTimeOver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity$8;->this$0:Lobject/p2pwificam/clientActivity/SettingWifiActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->access$25(Lobject/p2pwificam/clientActivity/SettingWifiActivity;Z)V

    .line 462
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity$8;->this$0:Lobject/p2pwificam/clientActivity/SettingWifiActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingWifiActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->access$24(Lobject/p2pwificam/clientActivity/SettingWifiActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 463
    return-void
.end method
