.class Lobject/p2pwificam/clientActivity/SettingWifiActivity$6;
.super Ljava/lang/Object;
.source "SettingWifiActivity.java"

# interfaces
.implements Lcom/easyview/basecamera/ICamera$IWifiScanListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lobject/p2pwificam/clientActivity/SettingWifiActivity;->onClick(Landroid/view/View;)V
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
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity$6;->this$0:Lobject/p2pwificam/clientActivity/SettingWifiActivity;

    .line 401
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnScanResult(Lcom/easyview/basecamera/ICamera;Lcom/easyview/bean/WifiScanBean;)V
    .locals 2
    .param p1, "camera"    # Lcom/easyview/basecamera/ICamera;
    .param p2, "bean"    # Lcom/easyview/bean/WifiScanBean;

    .prologue
    .line 405
    if-eqz p2, :cond_0

    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity$6;->this$0:Lobject/p2pwificam/clientActivity/SettingWifiActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingWifiActivity;->mAdapter:Lobject/p2pipcam/adapter/WifiScanListAdapter;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->access$14(Lobject/p2pwificam/clientActivity/SettingWifiActivity;)Lobject/p2pipcam/adapter/WifiScanListAdapter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lobject/p2pipcam/adapter/WifiScanListAdapter;->addWifiScan(Lcom/easyview/bean/WifiScanBean;)V

    .line 407
    :goto_0
    return-void

    .line 406
    :cond_0
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity$6;->this$0:Lobject/p2pwificam/clientActivity/SettingWifiActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingWifiActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->access$24(Lobject/p2pwificam/clientActivity/SettingWifiActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
