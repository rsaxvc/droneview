.class Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$8;
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
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$8;->this$0:Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;

    .line 853
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 857
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 863
    :goto_0
    return-void

    .line 860
    :pswitch_0
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$8;->this$0:Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;

    # invokes: Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->refresh()V
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->access$8(Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;)V

    goto :goto_0

    .line 857
    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_0
    .end packed-switch
.end method
