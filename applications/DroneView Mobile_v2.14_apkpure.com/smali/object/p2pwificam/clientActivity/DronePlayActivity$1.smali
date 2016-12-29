.class Lobject/p2pwificam/clientActivity/DronePlayActivity$1;
.super Landroid/os/Handler;
.source "DronePlayActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pwificam/clientActivity/DronePlayActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/DronePlayActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$1;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    .line 328
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 331
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$1;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->nTimeoutRemain:I
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$0(Lobject/p2pwificam/clientActivity/DronePlayActivity;)I

    move-result v1

    if-lez v1, :cond_1

    .line 332
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$1;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->nTimeoutRemain:I
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$0(Lobject/p2pwificam/clientActivity/DronePlayActivity;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$1(Lobject/p2pwificam/clientActivity/DronePlayActivity;I)V

    .line 334
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 335
    .local v0, "msgMessage":Landroid/os/Message;
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$1;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->timeoutHandle:Landroid/os/Handler;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$2(Lobject/p2pwificam/clientActivity/DronePlayActivity;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 344
    .end local v0    # "msgMessage":Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    .line 337
    :cond_1
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$1;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->isExit:Z
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$3(Lobject/p2pwificam/clientActivity/DronePlayActivity;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 338
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$1;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    invoke-virtual {v1}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 339
    const v2, 0x7f060198

    const/4 v3, 0x0

    .line 338
    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 340
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
