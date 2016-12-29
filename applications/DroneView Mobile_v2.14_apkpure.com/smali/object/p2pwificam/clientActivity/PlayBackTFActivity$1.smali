.class Lobject/p2pwificam/clientActivity/PlayBackTFActivity$1;
.super Landroid/os/Handler;
.source "PlayBackTFActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pwificam/clientActivity/PlayBackTFActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/PlayBackTFActivity;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/PlayBackTFActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/PlayBackTFActivity$1;->this$0:Lobject/p2pwificam/clientActivity/PlayBackTFActivity;

    .line 87
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 89
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 101
    :goto_0
    return-void

    .line 91
    :pswitch_0
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayBackTFActivity$1;->this$0:Lobject/p2pwificam/clientActivity/PlayBackTFActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->access$0(Lobject/p2pwificam/clientActivity/PlayBackTFActivity;Z)V

    .line 92
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayBackTFActivity$1;->this$0:Lobject/p2pwificam/clientActivity/PlayBackTFActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->access$1(Lobject/p2pwificam/clientActivity/PlayBackTFActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayBackTFActivity$1;->this$0:Lobject/p2pwificam/clientActivity/PlayBackTFActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->access$1(Lobject/p2pwificam/clientActivity/PlayBackTFActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 95
    :cond_0
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayBackTFActivity$1;->this$0:Lobject/p2pwificam/clientActivity/PlayBackTFActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->mExAdapter:Lobject/p2pipcam/adapter/PlaybackTFAdapter;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->access$2(Lobject/p2pwificam/clientActivity/PlayBackTFActivity;)Lobject/p2pipcam/adapter/PlaybackTFAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lobject/p2pipcam/adapter/PlaybackTFAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 89
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
