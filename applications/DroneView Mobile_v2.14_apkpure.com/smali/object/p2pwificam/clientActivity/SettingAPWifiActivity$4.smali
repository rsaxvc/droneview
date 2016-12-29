.class Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$4;
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
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$4;->this$0:Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;

    .line 625
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$4;)Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;
    .locals 1

    .prologue
    .line 625
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$4;->this$0:Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 629
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$4$1;

    invoke-direct {v1, p0}, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$4$1;-><init>(Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$4;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 678
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 680
    return-void
.end method
