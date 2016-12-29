.class Lobject/p2pwificam/clientActivity/CallVideoActivity$6;
.super Landroid/os/Handler;
.source "CallVideoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pwificam/clientActivity/CallVideoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/CallVideoActivity;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/CallVideoActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity$6;->this$0:Lobject/p2pwificam/clientActivity/CallVideoActivity;

    .line 507
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 509
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 510
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity$6;->this$0:Lobject/p2pwificam/clientActivity/CallVideoActivity;

    invoke-virtual {v0}, Lobject/p2pwificam/clientActivity/CallVideoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 511
    const v1, 0x7f06003e

    const/4 v2, 0x0

    .line 510
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 512
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 513
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity$6;->this$0:Lobject/p2pwificam/clientActivity/CallVideoActivity;

    # invokes: Lobject/p2pwificam/clientActivity/CallVideoActivity;->stopService()V
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/CallVideoActivity;->access$17(Lobject/p2pwificam/clientActivity/CallVideoActivity;)V

    .line 514
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity$6;->this$0:Lobject/p2pwificam/clientActivity/CallVideoActivity;

    invoke-virtual {v0}, Lobject/p2pwificam/clientActivity/CallVideoActivity;->finish()V

    .line 516
    :cond_0
    return-void
.end method
