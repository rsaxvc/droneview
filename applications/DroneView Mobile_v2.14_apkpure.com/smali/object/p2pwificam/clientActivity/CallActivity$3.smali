.class Lobject/p2pwificam/clientActivity/CallActivity$3;
.super Ljava/lang/Object;
.source "CallActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pwificam/clientActivity/CallActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/CallActivity;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/CallActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/CallActivity$3;->this$0:Lobject/p2pwificam/clientActivity/CallActivity;

    .line 367
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 374
    const-wide/32 v1, 0xea60

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 375
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/CallActivity$3;->this$0:Lobject/p2pwificam/clientActivity/CallActivity;

    # getter for: Lobject/p2pwificam/clientActivity/CallActivity;->state:Ljava/lang/Boolean;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/CallActivity;->access$8(Lobject/p2pwificam/clientActivity/CallActivity;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 376
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/CallActivity$3;->this$0:Lobject/p2pwificam/clientActivity/CallActivity;

    # getter for: Lobject/p2pwificam/clientActivity/CallActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/CallActivity;->access$1(Lobject/p2pwificam/clientActivity/CallActivity;)Landroid/os/Handler;

    move-result-object v1

    sget v2, Lobject/p2pwificam/clientActivity/CallActivity;->MSG_CALL_OFF:I

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 414
    :cond_0
    :goto_0
    return-void

    .line 411
    :catch_0
    move-exception v0

    .line 412
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
