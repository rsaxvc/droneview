.class Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$7;
.super Ljava/lang/Object;
.source "SettingAPWifiActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$7;->this$0:Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;

    .line 832
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 837
    :goto_0
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$7;->this$0:Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->mThread:Ljava/lang/Thread;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->access$7(Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;)Ljava/lang/Thread;

    move-result-object v1

    if-nez v1, :cond_0

    .line 850
    return-void

    .line 842
    :cond_0
    const-wide/16 v1, 0x3e8

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 843
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$7;->this$0:Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;

    iget-object v1, v1, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->mHadler:Landroid/os/Handler;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 844
    :catch_0
    move-exception v0

    .line 846
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
