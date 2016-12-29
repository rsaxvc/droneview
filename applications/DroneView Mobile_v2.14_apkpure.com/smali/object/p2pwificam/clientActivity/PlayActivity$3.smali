.class Lobject/p2pwificam/clientActivity/PlayActivity$3;
.super Landroid/os/Handler;
.source "PlayActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pwificam/clientActivity/PlayActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/PlayActivity;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/PlayActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/PlayActivity$3;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    .line 1001
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1004
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity$3;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->nTimeoutRemain:I
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$7(Lobject/p2pwificam/clientActivity/PlayActivity;)I

    move-result v1

    if-lez v1, :cond_0

    .line 1005
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity$3;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->nTimeoutRemain:I
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$7(Lobject/p2pwificam/clientActivity/PlayActivity;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$8(Lobject/p2pwificam/clientActivity/PlayActivity;I)V

    .line 1006
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity$3;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # invokes: Lobject/p2pwificam/clientActivity/PlayActivity;->updateTimeout()V
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$9(Lobject/p2pwificam/clientActivity/PlayActivity;)V

    .line 1007
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 1008
    .local v0, "msgMessage":Landroid/os/Message;
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity$3;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->timeoutHandle:Landroid/os/Handler;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$10(Lobject/p2pwificam/clientActivity/PlayActivity;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1020
    .end local v0    # "msgMessage":Landroid/os/Message;
    :goto_0
    return-void

    .line 1010
    :cond_0
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity$3;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->isExit:Z
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$11(Lobject/p2pwificam/clientActivity/PlayActivity;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1011
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity$3;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    invoke-virtual {v1}, Lobject/p2pwificam/clientActivity/PlayActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 1012
    const v2, 0x7f060198

    const/4 v3, 0x0

    .line 1011
    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 1013
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1015
    :cond_1
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity$3;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$12(Lobject/p2pwificam/clientActivity/PlayActivity;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/PlayActivity$3;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->runnableHangup:Ljava/lang/Runnable;
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$13(Lobject/p2pwificam/clientActivity/PlayActivity;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1016
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity$3;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$12(Lobject/p2pwificam/clientActivity/PlayActivity;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/PlayActivity$3;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->runnableStartVideo:Ljava/lang/Runnable;
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$14(Lobject/p2pwificam/clientActivity/PlayActivity;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1018
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity$3;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    invoke-virtual {v1}, Lobject/p2pwificam/clientActivity/PlayActivity;->finish()V

    goto :goto_0
.end method
