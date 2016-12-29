.class Lobject/p2pwificam/clientActivity/VideoActivity$1;
.super Landroid/os/Handler;
.source "VideoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pwificam/clientActivity/VideoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/VideoActivity;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/VideoActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/VideoActivity$1;->this$0:Lobject/p2pwificam/clientActivity/VideoActivity;

    .line 58
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 60
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 72
    :goto_0
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/VideoActivity$1;->this$0:Lobject/p2pwificam/clientActivity/VideoActivity;

    # getter for: Lobject/p2pwificam/clientActivity/VideoActivity;->mAdapter:Lobject/p2pipcam/adapter/VideoActivityAdapter;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/VideoActivity;->access$0(Lobject/p2pwificam/clientActivity/VideoActivity;)Lobject/p2pipcam/adapter/VideoActivityAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lobject/p2pipcam/adapter/VideoActivityAdapter;->notifyDataSetChanged()V

    .line 73
    :goto_1
    return-void

    .line 62
    :pswitch_0
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/VideoActivity$1;->this$0:Lobject/p2pwificam/clientActivity/VideoActivity;

    # getter for: Lobject/p2pwificam/clientActivity/VideoActivity;->mAdapter:Lobject/p2pipcam/adapter/VideoActivityAdapter;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/VideoActivity;->access$0(Lobject/p2pwificam/clientActivity/VideoActivity;)Lobject/p2pipcam/adapter/VideoActivityAdapter;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lobject/p2pipcam/adapter/VideoActivityAdapter;->setOver(Z)V

    goto :goto_0

    .line 66
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "other"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 67
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/VideoActivity$1;->this$0:Lobject/p2pwificam/clientActivity/VideoActivity;

    invoke-virtual {v1, v0}, Lobject/p2pwificam/clientActivity/VideoActivity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    .line 60
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
