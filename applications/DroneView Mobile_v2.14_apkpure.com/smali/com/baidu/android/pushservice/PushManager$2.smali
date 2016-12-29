.class final Lcom/baidu/android/pushservice/PushManager$2;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/android/pushservice/PushManager;->checkHuaweiTokenResponse(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0x10011

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/baidu/android/pushservice/PushManager;->handler:Landroid/os/Handler;

    # getter for: Lcom/baidu/android/pushservice/PushManager;->responseRunnable:Ljava/lang/Runnable;
    invoke-static {}, Lcom/baidu/android/pushservice/PushManager;->access$000()Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void
.end method
