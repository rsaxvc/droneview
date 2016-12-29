.class Lobject/p2pwificam/clientActivity/PlayActivity$7;
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
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/PlayActivity$7;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    .line 1378
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1380
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1381
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity$7;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    invoke-virtual {v0}, Lobject/p2pwificam/clientActivity/PlayActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 1382
    const v1, 0x7f06003e

    const/4 v2, 0x0

    .line 1381
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 1383
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1384
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity$7;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$12(Lobject/p2pwificam/clientActivity/PlayActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity$7;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->runnableHangup:Ljava/lang/Runnable;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$13(Lobject/p2pwificam/clientActivity/PlayActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1385
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity$7;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$12(Lobject/p2pwificam/clientActivity/PlayActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity$7;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->runnableStartVideo:Ljava/lang/Runnable;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$14(Lobject/p2pwificam/clientActivity/PlayActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1387
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity$7;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    invoke-virtual {v0}, Lobject/p2pwificam/clientActivity/PlayActivity;->finish()V

    .line 1389
    :cond_0
    return-void
.end method
