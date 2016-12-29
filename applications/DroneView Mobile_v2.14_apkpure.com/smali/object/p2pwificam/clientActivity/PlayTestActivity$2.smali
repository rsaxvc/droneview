.class Lobject/p2pwificam/clientActivity/PlayTestActivity$2;
.super Landroid/os/Handler;
.source "PlayTestActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pwificam/clientActivity/PlayTestActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/PlayTestActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$2;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    .line 909
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 912
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$2;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayTestActivity;->nTimeoutRemain:I
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$3(Lobject/p2pwificam/clientActivity/PlayTestActivity;)I

    move-result v1

    if-lez v1, :cond_0

    .line 913
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$2;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayTestActivity;->nTimeoutRemain:I
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$3(Lobject/p2pwificam/clientActivity/PlayTestActivity;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$4(Lobject/p2pwificam/clientActivity/PlayTestActivity;I)V

    .line 915
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 916
    .local v0, "msgMessage":Landroid/os/Message;
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$2;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayTestActivity;->timeoutHandle:Landroid/os/Handler;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$5(Lobject/p2pwificam/clientActivity/PlayTestActivity;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 925
    .end local v0    # "msgMessage":Landroid/os/Message;
    :goto_0
    return-void

    .line 918
    :cond_0
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$2;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayTestActivity;->isExit:Z
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$6(Lobject/p2pwificam/clientActivity/PlayTestActivity;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 919
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$2;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    invoke-virtual {v1}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 920
    const v2, 0x7f060198

    const/4 v3, 0x0

    .line 919
    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 921
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 923
    :cond_1
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$2;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    invoke-virtual {v1}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->finish()V

    goto :goto_0
.end method
