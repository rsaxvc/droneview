.class Lobject/p2pwificam/clientActivity/SettingLCDCtrlActivity$4;
.super Ljava/lang/Object;
.source "SettingLCDCtrlActivity.java"

# interfaces
.implements Lcom/easyview/basecamera/ICamera$IRespondListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lobject/p2pwificam/clientActivity/SettingLCDCtrlActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/SettingLCDCtrlActivity;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/SettingLCDCtrlActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/SettingLCDCtrlActivity$4;->this$0:Lobject/p2pwificam/clientActivity/SettingLCDCtrlActivity;

    .line 217
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
    .line 220
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingLCDCtrlActivity$4;->this$0:Lobject/p2pwificam/clientActivity/SettingLCDCtrlActivity;

    iget-object v0, v0, Lobject/p2pwificam/clientActivity/SettingLCDCtrlActivity;->mhandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 221
    return-void
.end method
