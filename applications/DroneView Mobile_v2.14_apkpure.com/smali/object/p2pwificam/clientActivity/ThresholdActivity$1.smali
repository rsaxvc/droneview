.class Lobject/p2pwificam/clientActivity/ThresholdActivity$1;
.super Landroid/os/Handler;
.source "ThresholdActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pwificam/clientActivity/ThresholdActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/ThresholdActivity;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/ThresholdActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/ThresholdActivity$1;->this$0:Lobject/p2pwificam/clientActivity/ThresholdActivity;

    .line 215
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation

    .prologue
    .line 219
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 234
    :goto_0
    return-void

    .line 223
    :pswitch_0
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/ThresholdActivity$1;->this$0:Lobject/p2pwificam/clientActivity/ThresholdActivity;

    # invokes: Lobject/p2pwificam/clientActivity/ThresholdActivity;->showThres()V
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/ThresholdActivity;->access$0(Lobject/p2pwificam/clientActivity/ThresholdActivity;)V

    .line 224
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/ThresholdActivity$1;->this$0:Lobject/p2pwificam/clientActivity/ThresholdActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lobject/p2pwificam/clientActivity/ThresholdActivity;->access$1(Lobject/p2pwificam/clientActivity/ThresholdActivity;Z)V

    .line 225
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/ThresholdActivity$1;->this$0:Lobject/p2pwificam/clientActivity/ThresholdActivity;

    # getter for: Lobject/p2pwificam/clientActivity/ThresholdActivity;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/ThresholdActivity;->access$2(Lobject/p2pwificam/clientActivity/ThresholdActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    goto :goto_0

    .line 230
    :pswitch_1
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/ThresholdActivity$1;->this$0:Lobject/p2pwificam/clientActivity/ThresholdActivity;

    invoke-virtual {v0}, Lobject/p2pwificam/clientActivity/ThresholdActivity;->finish()V

    .line 231
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/ThresholdActivity$1;->this$0:Lobject/p2pwificam/clientActivity/ThresholdActivity;

    const v1, 0x7f040006

    const/high16 v2, 0x7f040000

    invoke-virtual {v0, v1, v2}, Lobject/p2pwificam/clientActivity/ThresholdActivity;->overridePendingTransition(II)V

    goto :goto_0

    .line 219
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
