.class Lobject/p2pipcam/adapter/LocalVideoListActivityAdapter$1;
.super Landroid/os/Handler;
.source "LocalVideoListActivityAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pipcam/adapter/LocalVideoListActivityAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pipcam/adapter/LocalVideoListActivityAdapter;


# direct methods
.method constructor <init>(Lobject/p2pipcam/adapter/LocalVideoListActivityAdapter;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pipcam/adapter/LocalVideoListActivityAdapter$1;->this$0:Lobject/p2pipcam/adapter/LocalVideoListActivityAdapter;

    .line 39
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 41
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 48
    :goto_0
    iget-object v0, p0, Lobject/p2pipcam/adapter/LocalVideoListActivityAdapter$1;->this$0:Lobject/p2pipcam/adapter/LocalVideoListActivityAdapter;

    invoke-virtual {v0}, Lobject/p2pipcam/adapter/LocalVideoListActivityAdapter;->notifyDataSetChanged()V

    .line 49
    return-void

    .line 43
    :pswitch_0
    iget-object v0, p0, Lobject/p2pipcam/adapter/LocalVideoListActivityAdapter$1;->this$0:Lobject/p2pipcam/adapter/LocalVideoListActivityAdapter;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lobject/p2pipcam/adapter/LocalVideoListActivityAdapter;->access$0(Lobject/p2pipcam/adapter/LocalVideoListActivityAdapter;Z)V

    goto :goto_0

    .line 41
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
