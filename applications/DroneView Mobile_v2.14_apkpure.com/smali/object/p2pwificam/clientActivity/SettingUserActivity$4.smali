.class Lobject/p2pwificam/clientActivity/SettingUserActivity$4;
.super Ljava/lang/Object;
.source "SettingUserActivity.java"

# interfaces
.implements Lcom/easyview/basecamera/ICamera$IRespondListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lobject/p2pwificam/clientActivity/SettingUserActivity;->setUser()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/SettingUserActivity;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/SettingUserActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/SettingUserActivity$4;->this$0:Lobject/p2pwificam/clientActivity/SettingUserActivity;

    .line 303
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
    .line 306
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingUserActivity$4;->this$0:Lobject/p2pwificam/clientActivity/SettingUserActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingUserActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/SettingUserActivity;->access$6(Lobject/p2pwificam/clientActivity/SettingUserActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 307
    return-void
.end method
