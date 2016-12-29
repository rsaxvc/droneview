.class Lobject/p2pwificam/clientActivity/RemotePictureActivity$1;
.super Landroid/os/Handler;
.source "RemotePictureActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pwificam/clientActivity/RemotePictureActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/RemotePictureActivity;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/RemotePictureActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/RemotePictureActivity$1;->this$0:Lobject/p2pwificam/clientActivity/RemotePictureActivity;

    .line 77
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 79
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 91
    :goto_0
    return-void

    .line 81
    :pswitch_0
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/RemotePictureActivity$1;->this$0:Lobject/p2pwificam/clientActivity/RemotePictureActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lobject/p2pwificam/clientActivity/RemotePictureActivity;->access$0(Lobject/p2pwificam/clientActivity/RemotePictureActivity;Z)V

    .line 82
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/RemotePictureActivity$1;->this$0:Lobject/p2pwificam/clientActivity/RemotePictureActivity;

    # getter for: Lobject/p2pwificam/clientActivity/RemotePictureActivity;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/RemotePictureActivity;->access$1(Lobject/p2pwificam/clientActivity/RemotePictureActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/RemotePictureActivity$1;->this$0:Lobject/p2pwificam/clientActivity/RemotePictureActivity;

    # getter for: Lobject/p2pwificam/clientActivity/RemotePictureActivity;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/RemotePictureActivity;->access$1(Lobject/p2pwificam/clientActivity/RemotePictureActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 85
    :cond_0
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/RemotePictureActivity$1;->this$0:Lobject/p2pwificam/clientActivity/RemotePictureActivity;

    # getter for: Lobject/p2pwificam/clientActivity/RemotePictureActivity;->mExAdapter:Lobject/p2pipcam/adapter/PlaybackTFAdapter;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/RemotePictureActivity;->access$2(Lobject/p2pwificam/clientActivity/RemotePictureActivity;)Lobject/p2pipcam/adapter/PlaybackTFAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lobject/p2pipcam/adapter/PlaybackTFAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 79
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
