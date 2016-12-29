.class Lcom/easyview/basecamera/QueryFunction$2;
.super Ljava/lang/Object;
.source "QueryFunction.java"

# interfaces
.implements Lcom/easyview/basecamera/ICamera$IRespondListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/easyview/basecamera/QueryFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/easyview/basecamera/QueryFunction;


# direct methods
.method constructor <init>(Lcom/easyview/basecamera/QueryFunction;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/easyview/basecamera/QueryFunction$2;->this$0:Lcom/easyview/basecamera/QueryFunction;

    .line 51
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
    .line 55
    iget-object v0, p0, Lcom/easyview/basecamera/QueryFunction$2;->this$0:Lcom/easyview/basecamera/QueryFunction;

    # getter for: Lcom/easyview/basecamera/QueryFunction;->_handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/easyview/basecamera/QueryFunction;->access$1(Lcom/easyview/basecamera/QueryFunction;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/easyview/basecamera/QueryFunction$2;->this$0:Lcom/easyview/basecamera/QueryFunction;

    # getter for: Lcom/easyview/basecamera/QueryFunction;->_runnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/easyview/basecamera/QueryFunction;->access$2(Lcom/easyview/basecamera/QueryFunction;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 56
    iget-object v0, p0, Lcom/easyview/basecamera/QueryFunction$2;->this$0:Lcom/easyview/basecamera/QueryFunction;

    # getter for: Lcom/easyview/basecamera/QueryFunction;->_respond:Lcom/easyview/basecamera/ICamera$IRespondListener;
    invoke-static {v0}, Lcom/easyview/basecamera/QueryFunction;->access$4(Lcom/easyview/basecamera/QueryFunction;)Lcom/easyview/basecamera/ICamera$IRespondListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/easyview/basecamera/QueryFunction$2;->this$0:Lcom/easyview/basecamera/QueryFunction;

    # getter for: Lcom/easyview/basecamera/QueryFunction;->_respond:Lcom/easyview/basecamera/ICamera$IRespondListener;
    invoke-static {v0}, Lcom/easyview/basecamera/QueryFunction;->access$4(Lcom/easyview/basecamera/QueryFunction;)Lcom/easyview/basecamera/ICamera$IRespondListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/easyview/basecamera/ICamera$IRespondListener;->OnRespondResult(Lcom/easyview/basecamera/ICamera;II)V

    .line 57
    :cond_0
    return-void
.end method
