.class Lobject/p2pwificam/clientActivity/SettingDateActivity$3;
.super Ljava/lang/Object;
.source "SettingDateActivity.java"

# interfaces
.implements Lcom/easyview/basecamera/ICamera$IRespondListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lobject/p2pwificam/clientActivity/SettingDateActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/SettingDateActivity;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/SettingDateActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity$3;->this$0:Lobject/p2pwificam/clientActivity/SettingDateActivity;

    .line 411
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
    .line 415
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingDateActivity$3;->this$0:Lobject/p2pwificam/clientActivity/SettingDateActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingDateActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/SettingDateActivity;->access$7(Lobject/p2pwificam/clientActivity/SettingDateActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 416
    return-void
.end method
