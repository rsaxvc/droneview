.class Lobject/p2pwificam/clientActivity/PictureActivity$1;
.super Landroid/os/Handler;
.source "PictureActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pwificam/clientActivity/PictureActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/PictureActivity;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/PictureActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/PictureActivity$1;->this$0:Lobject/p2pwificam/clientActivity/PictureActivity;

    .line 57
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 59
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 69
    :goto_0
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PictureActivity$1;->this$0:Lobject/p2pwificam/clientActivity/PictureActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PictureActivity;->mAdapter:Lobject/p2pipcam/adapter/PictureActivityAdapter;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/PictureActivity;->access$0(Lobject/p2pwificam/clientActivity/PictureActivity;)Lobject/p2pipcam/adapter/PictureActivityAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lobject/p2pipcam/adapter/PictureActivityAdapter;->notifyDataSetChanged()V

    .line 70
    :goto_1
    return-void

    .line 61
    :pswitch_0
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PictureActivity$1;->this$0:Lobject/p2pwificam/clientActivity/PictureActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PictureActivity;->mAdapter:Lobject/p2pipcam/adapter/PictureActivityAdapter;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/PictureActivity;->access$0(Lobject/p2pwificam/clientActivity/PictureActivity;)Lobject/p2pipcam/adapter/PictureActivityAdapter;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lobject/p2pipcam/adapter/PictureActivityAdapter;->setOver(Z)V

    goto :goto_0

    .line 65
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "other"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 66
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PictureActivity$1;->this$0:Lobject/p2pwificam/clientActivity/PictureActivity;

    invoke-virtual {v1, v0}, Lobject/p2pwificam/clientActivity/PictureActivity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    .line 59
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
