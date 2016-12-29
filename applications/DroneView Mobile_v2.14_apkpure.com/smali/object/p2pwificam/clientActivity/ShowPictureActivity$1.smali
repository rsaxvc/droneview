.class Lobject/p2pwificam/clientActivity/ShowPictureActivity$1;
.super Landroid/os/Handler;
.source "ShowPictureActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pwificam/clientActivity/ShowPictureActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/ShowPictureActivity;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/ShowPictureActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/ShowPictureActivity$1;->this$0:Lobject/p2pwificam/clientActivity/ShowPictureActivity;

    .line 69
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x1

    .line 71
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 83
    :cond_0
    :goto_0
    return-void

    .line 73
    :pswitch_0
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/ShowPictureActivity$1;->this$0:Lobject/p2pwificam/clientActivity/ShowPictureActivity;

    # getter for: Lobject/p2pwificam/clientActivity/ShowPictureActivity;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/ShowPictureActivity;->access$0(Lobject/p2pwificam/clientActivity/ShowPictureActivity;)Landroid/support/v7/widget/LinearLayoutManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 74
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/ShowPictureActivity$1;->this$0:Lobject/p2pwificam/clientActivity/ShowPictureActivity;

    # getter for: Lobject/p2pwificam/clientActivity/ShowPictureActivity;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/ShowPictureActivity;->access$0(Lobject/p2pwificam/clientActivity/ShowPictureActivity;)Landroid/support/v7/widget/LinearLayoutManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    .line 75
    .local v0, "position":I
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/ShowPictureActivity$1;->this$0:Lobject/p2pwificam/clientActivity/ShowPictureActivity;

    # getter for: Lobject/p2pwificam/clientActivity/ShowPictureActivity;->tvTitle:Landroid/widget/TextView;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/ShowPictureActivity;->access$1(Lobject/p2pwificam/clientActivity/ShowPictureActivity;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, " %d / %d "

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    add-int/lit8 v5, v0, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    iget-object v4, p0, Lobject/p2pwificam/clientActivity/ShowPictureActivity$1;->this$0:Lobject/p2pwificam/clientActivity/ShowPictureActivity;

    # getter for: Lobject/p2pwificam/clientActivity/ShowPictureActivity;->_camera:Lcom/easyview/camera/EVBaseCamera;
    invoke-static {v4}, Lobject/p2pwificam/clientActivity/ShowPictureActivity;->access$2(Lobject/p2pwificam/clientActivity/ShowPictureActivity;)Lcom/easyview/camera/EVBaseCamera;

    move-result-object v4

    invoke-virtual {v4}, Lcom/easyview/camera/EVBaseCamera;->getEventDetailList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/ShowPictureActivity$1;->this$0:Lobject/p2pwificam/clientActivity/ShowPictureActivity;

    # getter for: Lobject/p2pwificam/clientActivity/ShowPictureActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/ShowPictureActivity;->access$3(Lobject/p2pwificam/clientActivity/ShowPictureActivity;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v6, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 77
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/ShowPictureActivity$1;->this$0:Lobject/p2pwificam/clientActivity/ShowPictureActivity;

    # getter for: Lobject/p2pwificam/clientActivity/ShowPictureActivity;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/ShowPictureActivity;->access$4(Lobject/p2pwificam/clientActivity/ShowPictureActivity;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "update title"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 71
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
