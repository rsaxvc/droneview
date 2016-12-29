.class Lobject/p2pwificam/clientActivity/SettingAlarmActivity$4;
.super Ljava/lang/Object;
.source "SettingAlarmActivity.java"

# interfaces
.implements Lcom/easyview/basecamera/ICamera$IAlarmParamListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->onCreate(Landroid/os/Bundle;)V
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
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity$4;->this$0:Lobject/p2pwificam/clientActivity/SettingAlarmActivity;

    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnAlarmParam(Lcom/easyview/basecamera/ICamera;Lcom/easyview/bean/AlermBean;)V
    .locals 2
    .param p1, "camera"    # Lcom/easyview/basecamera/ICamera;
    .param p2, "bean"    # Lcom/easyview/bean/AlermBean;

    .prologue
    .line 221
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity$4;->this$0:Lobject/p2pwificam/clientActivity/SettingAlarmActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->alermBean:Lcom/easyview/bean/AlermBean;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->access$2(Lobject/p2pwificam/clientActivity/SettingAlarmActivity;)Lcom/easyview/bean/AlermBean;

    move-result-object v0

    invoke-virtual {p2}, Lcom/easyview/bean/AlermBean;->getMotion_armed()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/easyview/bean/AlermBean;->setMotion_armed(I)V

    .line 222
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity$4;->this$0:Lobject/p2pwificam/clientActivity/SettingAlarmActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->alermBean:Lcom/easyview/bean/AlermBean;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->access$2(Lobject/p2pwificam/clientActivity/SettingAlarmActivity;)Lcom/easyview/bean/AlermBean;

    move-result-object v0

    invoke-virtual {p2}, Lcom/easyview/bean/AlermBean;->getMail()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/easyview/bean/AlermBean;->setMail(I)V

    .line 223
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity$4;->this$0:Lobject/p2pwificam/clientActivity/SettingAlarmActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->alermBean:Lcom/easyview/bean/AlermBean;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->access$2(Lobject/p2pwificam/clientActivity/SettingAlarmActivity;)Lcom/easyview/bean/AlermBean;

    move-result-object v0

    invoke-virtual {p2}, Lcom/easyview/bean/AlermBean;->getMotion_sensitivity()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/easyview/bean/AlermBean;->setMotion_sensitivity(I)V

    .line 224
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity$4;->this$0:Lobject/p2pwificam/clientActivity/SettingAlarmActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->alermBean:Lcom/easyview/bean/AlermBean;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->access$2(Lobject/p2pwificam/clientActivity/SettingAlarmActivity;)Lcom/easyview/bean/AlermBean;

    move-result-object v0

    invoke-virtual {p2}, Lcom/easyview/bean/AlermBean;->getRecord()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/easyview/bean/AlermBean;->setRecord(I)V

    .line 225
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingAlarmActivity$4;->this$0:Lobject/p2pwificam/clientActivity/SettingAlarmActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/SettingAlarmActivity;->access$9(Lobject/p2pwificam/clientActivity/SettingAlarmActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 226
    return-void
.end method
