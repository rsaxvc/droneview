.class Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$1;
.super Landroid/os/Handler;
.source "SettingAPWifiActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;
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
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;

    .line 342
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 346
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;

    invoke-virtual {v0}, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->getWifiType()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 347
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;

    invoke-virtual {v0}, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->getDevInfo()V

    .line 354
    :goto_0
    return-void

    .line 350
    :cond_0
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->progressdlg:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->access$0(Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 351
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->access$1(Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;Ljava/lang/Thread;)V

    .line 352
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$1;->this$0:Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;

    const-string v1, "wifi\u8fde\u63a5\u9519\u8bef\uff0c\u8bf7\u91cd\u65b0\u8f93\u5165\u5bc6\u7801\uff01"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
