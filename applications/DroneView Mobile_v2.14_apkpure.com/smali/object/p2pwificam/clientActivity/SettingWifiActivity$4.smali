.class Lobject/p2pwificam/clientActivity/SettingWifiActivity$4;
.super Ljava/lang/Object;
.source "SettingWifiActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity$4;->this$0:Lobject/p2pwificam/clientActivity/SettingWifiActivity;

    .line 573
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 577
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity$4;->this$0:Lobject/p2pwificam/clientActivity/SettingWifiActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingWifiActivity;->successFlag:Z
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->access$23(Lobject/p2pwificam/clientActivity/SettingWifiActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 578
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity$4;->this$0:Lobject/p2pwificam/clientActivity/SettingWifiActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingWifiActivity;->btnOk:Landroid/widget/Button;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->access$19(Lobject/p2pwificam/clientActivity/SettingWifiActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 579
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingWifiActivity$4;->this$0:Lobject/p2pwificam/clientActivity/SettingWifiActivity;

    const v1, 0x7f0600b8

    invoke-virtual {v0, v1}, Lobject/p2pwificam/clientActivity/SettingWifiActivity;->showToast(I)V

    .line 581
    :cond_0
    return-void
.end method
