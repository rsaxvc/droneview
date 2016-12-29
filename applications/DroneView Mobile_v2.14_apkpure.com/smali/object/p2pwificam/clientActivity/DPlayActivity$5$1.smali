.class Lobject/p2pwificam/clientActivity/DPlayActivity$5$1;
.super Ljava/lang/Object;
.source "DPlayActivity.java"

# interfaces
.implements Lcom/easyview/basecamera/ICamera$IRespondListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lobject/p2pwificam/clientActivity/DPlayActivity$5;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lobject/p2pwificam/clientActivity/DPlayActivity$5;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/DPlayActivity$5;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$5$1;->this$1:Lobject/p2pwificam/clientActivity/DPlayActivity$5;

    .line 931
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
    .line 934
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$5$1;->this$1:Lobject/p2pwificam/clientActivity/DPlayActivity$5;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity$5;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity$5;->access$0(Lobject/p2pwificam/clientActivity/DPlayActivity$5;)Lobject/p2pwificam/clientActivity/DPlayActivity;

    move-result-object v0

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->device_state:I
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$17(Lobject/p2pwificam/clientActivity/DPlayActivity;)I

    move-result v0

    if-eq v0, p3, :cond_0

    .line 936
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$5$1;->this$1:Lobject/p2pwificam/clientActivity/DPlayActivity$5;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity$5;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity$5;->access$0(Lobject/p2pwificam/clientActivity/DPlayActivity$5;)Lobject/p2pwificam/clientActivity/DPlayActivity;

    move-result-object v0

    invoke-static {v0, p3}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$18(Lobject/p2pwificam/clientActivity/DPlayActivity;I)V

    .line 937
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$5$1;->this$1:Lobject/p2pwificam/clientActivity/DPlayActivity$5;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity$5;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity$5;->access$0(Lobject/p2pwificam/clientActivity/DPlayActivity$5;)Lobject/p2pwificam/clientActivity/DPlayActivity;

    move-result-object v0

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->_isPause:Z
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$19(Lobject/p2pwificam/clientActivity/DPlayActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$5$1;->this$1:Lobject/p2pwificam/clientActivity/DPlayActivity$5;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity$5;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity$5;->access$0(Lobject/p2pwificam/clientActivity/DPlayActivity$5;)Lobject/p2pwificam/clientActivity/DPlayActivity;

    move-result-object v0

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$20(Lobject/p2pwificam/clientActivity/DPlayActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x68

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 939
    :cond_0
    return-void
.end method
