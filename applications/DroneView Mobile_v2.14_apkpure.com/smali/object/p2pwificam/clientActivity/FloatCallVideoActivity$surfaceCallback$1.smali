.class Lobject/p2pwificam/clientActivity/FloatCallVideoActivity$surfaceCallback$1;
.super Ljava/lang/Object;
.source "FloatCallVideoActivity.java"

# interfaces
.implements Lcom/easyview/basecamera/ICamera$IRespondListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lobject/p2pwificam/clientActivity/FloatCallVideoActivity$surfaceCallback;->surfaceChanged(Landroid/view/SurfaceHolder;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lobject/p2pwificam/clientActivity/FloatCallVideoActivity$surfaceCallback;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/FloatCallVideoActivity$surfaceCallback;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity$surfaceCallback$1;->this$1:Lobject/p2pwificam/clientActivity/FloatCallVideoActivity$surfaceCallback;

    .line 144
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
    .line 148
    const-string v0, "NDT"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Device online:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    const/4 v0, 0x2

    if-ne p3, v0, :cond_0

    .line 151
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity$surfaceCallback$1;->this$1:Lobject/p2pwificam/clientActivity/FloatCallVideoActivity$surfaceCallback;

    # getter for: Lobject/p2pwificam/clientActivity/FloatCallVideoActivity$surfaceCallback;->this$0:Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity$surfaceCallback;->access$1(Lobject/p2pwificam/clientActivity/FloatCallVideoActivity$surfaceCallback;)Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;

    move-result-object v0

    # getter for: Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->access$32(Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 153
    :cond_0
    return-void
.end method
