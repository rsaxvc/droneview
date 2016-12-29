.class Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$5;
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
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$5;->this$0:Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;

    .line 682
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 685
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 698
    :goto_0
    return-void

    .line 687
    :pswitch_0
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$5;->this$0:Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->progressdlg:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->access$0(Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 688
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$5;->this$0:Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;

    const-string v1, "\u8bbe\u5907\u8fde\u63a5\u9519\u8bef\uff0c\u8bf7\u91cd\u65b0\u8fde\u63a5\uff01"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 685
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
