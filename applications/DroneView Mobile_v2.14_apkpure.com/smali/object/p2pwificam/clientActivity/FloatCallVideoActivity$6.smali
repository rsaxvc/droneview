.class Lobject/p2pwificam/clientActivity/FloatCallVideoActivity$6;
.super Landroid/os/Handler;
.source "FloatCallVideoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity$6;->this$0:Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;

    .line 430
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 432
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 433
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity$6;->this$0:Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;

    invoke-virtual {v0}, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 434
    const v1, 0x7f06003e

    const/4 v2, 0x0

    .line 433
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 435
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 436
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity$6;->this$0:Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;

    # invokes: Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->stopService()V
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->access$19(Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;)V

    .line 437
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity$6;->this$0:Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;

    # getter for: Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->mWindowManager:Landroid/view/WindowManager;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->access$4(Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity$6;->this$0:Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;

    # getter for: Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->mFloatLayout:Landroid/widget/FrameLayout;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->access$5(Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 438
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity$6;->this$0:Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;

    invoke-virtual {v0}, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->finish()V

    .line 440
    :cond_0
    return-void
.end method
