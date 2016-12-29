.class Lobject/p2pwificam/clientActivity/FloatCallVideoActivity$1;
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
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity$1;->this$0:Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;

    .line 187
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 190
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity$1;->this$0:Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;

    # getter for: Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->nTimeoutRemain:I
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->access$0(Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;)I

    move-result v1

    if-lez v1, :cond_0

    .line 191
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity$1;->this$0:Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;

    # getter for: Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->nTimeoutRemain:I
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->access$0(Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->access$1(Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;I)V

    .line 193
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 194
    .local v0, "msgMessage":Landroid/os/Message;
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity$1;->this$0:Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;

    # getter for: Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->timeoutHandle:Landroid/os/Handler;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->access$2(Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 204
    .end local v0    # "msgMessage":Landroid/os/Message;
    :goto_0
    return-void

    .line 196
    :cond_0
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity$1;->this$0:Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;

    # getter for: Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->isExit:Z
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->access$3(Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 197
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity$1;->this$0:Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;

    invoke-virtual {v1}, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 198
    const v2, 0x7f060198

    const/4 v3, 0x0

    .line 197
    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 199
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 201
    :cond_1
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity$1;->this$0:Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;

    # getter for: Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->mWindowManager:Landroid/view/WindowManager;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->access$4(Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;)Landroid/view/WindowManager;

    move-result-object v1

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity$1;->this$0:Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;

    # getter for: Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->mFloatLayout:Landroid/widget/FrameLayout;
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->access$5(Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 202
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity$1;->this$0:Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;

    invoke-virtual {v1}, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->finish()V

    goto :goto_0
.end method
