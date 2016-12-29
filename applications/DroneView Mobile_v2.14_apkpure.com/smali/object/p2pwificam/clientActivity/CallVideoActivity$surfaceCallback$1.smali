.class Lobject/p2pwificam/clientActivity/CallVideoActivity$surfaceCallback$1;
.super Ljava/lang/Object;
.source "CallVideoActivity.java"

# interfaces
.implements Lcom/easyview/basecamera/ICamera$IRespondListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lobject/p2pwificam/clientActivity/CallVideoActivity$surfaceCallback;->surfaceChanged(Landroid/view/SurfaceHolder;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lobject/p2pwificam/clientActivity/CallVideoActivity$surfaceCallback;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/CallVideoActivity$surfaceCallback;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity$surfaceCallback$1;->this$1:Lobject/p2pwificam/clientActivity/CallVideoActivity$surfaceCallback;

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnRespondResult(Lcom/easyview/basecamera/ICamera;II)V
    .locals 3
    .param p1, "camera"    # Lcom/easyview/basecamera/ICamera;
    .param p2, "cmd"    # I
    .param p3, "result"    # I

    .prologue
    .line 157
    const-string v0, "NDT"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Device online:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    const/4 v0, 0x2

    if-ne p3, v0, :cond_0

    .line 160
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity$surfaceCallback$1;->this$1:Lobject/p2pwificam/clientActivity/CallVideoActivity$surfaceCallback;

    # getter for: Lobject/p2pwificam/clientActivity/CallVideoActivity$surfaceCallback;->this$0:Lobject/p2pwificam/clientActivity/CallVideoActivity;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/CallVideoActivity$surfaceCallback;->access$1(Lobject/p2pwificam/clientActivity/CallVideoActivity$surfaceCallback;)Lobject/p2pwificam/clientActivity/CallVideoActivity;

    move-result-object v0

    # getter for: Lobject/p2pwificam/clientActivity/CallVideoActivity;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/CallVideoActivity;->access$30(Lobject/p2pwificam/clientActivity/CallVideoActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 162
    :cond_0
    return-void
.end method
