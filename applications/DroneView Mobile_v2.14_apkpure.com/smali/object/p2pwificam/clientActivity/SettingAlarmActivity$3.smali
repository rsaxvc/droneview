.class Lobject/p2pwificam/clientActivity/SettingAlarmActivity$3;
.super Ljava/lang/Object;
.source "SettingAlarmActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pwificam/clientActivity/SettingAlarmActivity;
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
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity$3;->this$0:Lobject/p2pwificam/clientActivity/SettingAlarmActivity;

    .line 684
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 688
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity$3;->this$0:Lobject/p2pwificam/clientActivity/SettingAlarmActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->successFlag:Z
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->access$8(Lobject/p2pwificam/clientActivity/SettingAlarmActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 689
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity$3;->this$0:Lobject/p2pwificam/clientActivity/SettingAlarmActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->access$0(Lobject/p2pwificam/clientActivity/SettingAlarmActivity;Z)V

    .line 690
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity$3;->this$0:Lobject/p2pwificam/clientActivity/SettingAlarmActivity;

    const v1, 0x7f060148

    invoke-virtual {v0, v1}, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->showToast(I)V

    .line 692
    :cond_0
    return-void
.end method
