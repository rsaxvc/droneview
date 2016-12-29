.class Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$3;
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
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$3;->this$0:Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;

    .line 495
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 499
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$3;->this$0:Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->access$1(Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;Ljava/lang/Thread;)V

    .line 500
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$3;->this$0:Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->progressdlg:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->access$0(Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 501
    return-void
.end method
