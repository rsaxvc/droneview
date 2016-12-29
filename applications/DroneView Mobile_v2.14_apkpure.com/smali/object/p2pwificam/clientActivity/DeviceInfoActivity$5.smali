.class Lobject/p2pwificam/clientActivity/DeviceInfoActivity$5;
.super Ljava/lang/Object;
.source "DeviceInfoActivity.java"

# interfaces
.implements Lcom/easyview/basecamera/ICamera$IRespondListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lobject/p2pwificam/clientActivity/DeviceInfoActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/DeviceInfoActivity;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/DeviceInfoActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/DeviceInfoActivity$5;->this$0:Lobject/p2pwificam/clientActivity/DeviceInfoActivity;

    .line 165
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
    .line 169
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DeviceInfoActivity$5;->this$0:Lobject/p2pwificam/clientActivity/DeviceInfoActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DeviceInfoActivity;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DeviceInfoActivity;->access$6(Lobject/p2pwificam/clientActivity/DeviceInfoActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 170
    return-void
.end method
