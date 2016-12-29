.class Lobject/p2pwificam/clientActivity/LocalPictureListActivity$1;
.super Landroid/os/Handler;
.source "LocalPictureListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pwificam/clientActivity/LocalPictureListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/LocalPictureListActivity;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/LocalPictureListActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/LocalPictureListActivity$1;->this$0:Lobject/p2pwificam/clientActivity/LocalPictureListActivity;

    .line 48
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 50
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 55
    :goto_0
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/LocalPictureListActivity$1;->this$0:Lobject/p2pwificam/clientActivity/LocalPictureListActivity;

    # getter for: Lobject/p2pwificam/clientActivity/LocalPictureListActivity;->mAdapter:Lobject/p2pipcam/adapter/LocalPictureAdapter;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/LocalPictureListActivity;->access$0(Lobject/p2pwificam/clientActivity/LocalPictureListActivity;)Lobject/p2pipcam/adapter/LocalPictureAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lobject/p2pipcam/adapter/LocalPictureAdapter;->notifyDataSetChanged()V

    .line 56
    return-void

    .line 52
    :pswitch_0
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/LocalPictureListActivity$1;->this$0:Lobject/p2pwificam/clientActivity/LocalPictureListActivity;

    # getter for: Lobject/p2pwificam/clientActivity/LocalPictureListActivity;->mAdapter:Lobject/p2pipcam/adapter/LocalPictureAdapter;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/LocalPictureListActivity;->access$0(Lobject/p2pwificam/clientActivity/LocalPictureListActivity;)Lobject/p2pipcam/adapter/LocalPictureAdapter;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lobject/p2pipcam/adapter/LocalPictureAdapter;->setOver(Z)V

    goto :goto_0

    .line 50
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
