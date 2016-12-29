.class Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$ThreadConfig;
.super Ljava/lang/Thread;
.source "SettingAPWifiActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ThreadConfig"
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;)V
    .locals 0

    .prologue
    .line 402
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$ThreadConfig;->this$0:Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 406
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 407
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$ThreadConfig;->this$0:Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;

    # invokes: Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->doConfig()V
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->access$9(Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;)V

    .line 415
    return-void
.end method
