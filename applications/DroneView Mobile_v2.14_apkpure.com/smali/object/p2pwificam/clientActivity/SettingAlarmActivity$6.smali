.class Lobject/p2pwificam/clientActivity/SettingAlarmActivity$6;
.super Ljava/lang/Object;
.source "SettingAlarmActivity.java"

# interfaces
.implements Lcom/easyview/basecamera/ICamera$IRespondListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->setAlerm()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/SettingAlarmActivity;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/SettingAlarmActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity$6;->this$0:Lobject/p2pwificam/clientActivity/SettingAlarmActivity;

    .line 664
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnRespondResult(Lcom/easyview/basecamera/ICamera;II)V
    .locals 1
    .param p1, "camera"    # Lcom/easyview/basecamera/ICamera;
    .param p2, "cmd"    # I
    .param p3, "result"    # I

    .prologue
    .line 668
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity$6;->this$0:Lobject/p2pwificam/clientActivity/SettingAlarmActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->access$9(Lobject/p2pwificam/clientActivity/SettingAlarmActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 669
    return-void
.end method
