.class Lcom/easyview/basecamera/QueryFunction$1;
.super Ljava/lang/Object;
.source "QueryFunction.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    iput-object p1, p0, Lcom/easyview/basecamera/QueryFunction$1;->this$0:Lcom/easyview/basecamera/QueryFunction;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 41
    iget-object v0, p0, Lcom/easyview/basecamera/QueryFunction$1;->this$0:Lcom/easyview/basecamera/QueryFunction;

    # getter for: Lcom/easyview/basecamera/QueryFunction;->_function:Lcom/easyview/basecamera/QueryFunction$IFunction;
    invoke-static {v0}, Lcom/easyview/basecamera/QueryFunction;->access$0(Lcom/easyview/basecamera/QueryFunction;)Lcom/easyview/basecamera/QueryFunction$IFunction;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/easyview/basecamera/QueryFunction$1;->this$0:Lcom/easyview/basecamera/QueryFunction;

    # getter for: Lcom/easyview/basecamera/QueryFunction;->_function:Lcom/easyview/basecamera/QueryFunction$IFunction;
    invoke-static {v0}, Lcom/easyview/basecamera/QueryFunction;->access$0(Lcom/easyview/basecamera/QueryFunction;)Lcom/easyview/basecamera/QueryFunction$IFunction;

    move-result-object v0

    invoke-interface {v0}, Lcom/easyview/basecamera/QueryFunction$IFunction;->isPause()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 45
    iget-object v0, p0, Lcom/easyview/basecamera/QueryFunction$1;->this$0:Lcom/easyview/basecamera/QueryFunction;

    # getter for: Lcom/easyview/basecamera/QueryFunction;->_handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/easyview/basecamera/QueryFunction;->access$1(Lcom/easyview/basecamera/QueryFunction;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/easyview/basecamera/QueryFunction$1;->this$0:Lcom/easyview/basecamera/QueryFunction;

    # getter for: Lcom/easyview/basecamera/QueryFunction;->_runnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/easyview/basecamera/QueryFunction;->access$2(Lcom/easyview/basecamera/QueryFunction;)Ljava/lang/Runnable;

    move-result-object v1

    iget-object v2, p0, Lcom/easyview/basecamera/QueryFunction$1;->this$0:Lcom/easyview/basecamera/QueryFunction;

    # getter for: Lcom/easyview/basecamera/QueryFunction;->_timeout:I
    invoke-static {v2}, Lcom/easyview/basecamera/QueryFunction;->access$3(Lcom/easyview/basecamera/QueryFunction;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 50
    :cond_0
    :goto_0
    return-void

    .line 48
    :cond_1
    iget-object v0, p0, Lcom/easyview/basecamera/QueryFunction$1;->this$0:Lcom/easyview/basecamera/QueryFunction;

    # getter for: Lcom/easyview/basecamera/QueryFunction;->_function:Lcom/easyview/basecamera/QueryFunction$IFunction;
    invoke-static {v0}, Lcom/easyview/basecamera/QueryFunction;->access$0(Lcom/easyview/basecamera/QueryFunction;)Lcom/easyview/basecamera/QueryFunction$IFunction;

    move-result-object v0

    invoke-interface {v0}, Lcom/easyview/basecamera/QueryFunction$IFunction;->isFinish()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/easyview/basecamera/QueryFunction$1;->this$0:Lcom/easyview/basecamera/QueryFunction;

    # getter for: Lcom/easyview/basecamera/QueryFunction;->_function:Lcom/easyview/basecamera/QueryFunction$IFunction;
    invoke-static {v0}, Lcom/easyview/basecamera/QueryFunction;->access$0(Lcom/easyview/basecamera/QueryFunction;)Lcom/easyview/basecamera/QueryFunction$IFunction;

    move-result-object v0

    iget-object v1, p0, Lcom/easyview/basecamera/QueryFunction$1;->this$0:Lcom/easyview/basecamera/QueryFunction;

    iget-object v1, v1, Lcom/easyview/basecamera/QueryFunction;->respond:Lcom/easyview/basecamera/ICamera$IRespondListener;

    invoke-interface {v0, v1}, Lcom/easyview/basecamera/QueryFunction$IFunction;->OnStart(Lcom/easyview/basecamera/ICamera$IRespondListener;)V

    goto :goto_0
.end method
