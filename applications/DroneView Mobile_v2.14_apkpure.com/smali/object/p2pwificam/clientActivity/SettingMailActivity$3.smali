.class Lobject/p2pwificam/clientActivity/SettingMailActivity$3;
.super Ljava/lang/Object;
.source "SettingMailActivity.java"

# interfaces
.implements Lcom/easyview/basecamera/ICamera$IRespondListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lobject/p2pwificam/clientActivity/SettingMailActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/SettingMailActivity;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/SettingMailActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity$3;->this$0:Lobject/p2pwificam/clientActivity/SettingMailActivity;

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnRespondResult(Lcom/easyview/basecamera/ICamera;II)V
    .locals 2
    .param p1, "camera"    # Lcom/easyview/basecamera/ICamera;
    .param p2, "cmd"    # I
    .param p3, "result"    # I

    .prologue
    .line 164
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity$3;->this$0:Lobject/p2pwificam/clientActivity/SettingMailActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingMailActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/SettingMailActivity;->access$15(Lobject/p2pwificam/clientActivity/SettingMailActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 165
    return-void
.end method
