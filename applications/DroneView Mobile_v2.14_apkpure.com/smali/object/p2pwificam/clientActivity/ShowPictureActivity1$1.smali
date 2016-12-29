.class Lobject/p2pwificam/clientActivity/ShowPictureActivity1$1;
.super Landroid/os/Handler;
.source "ShowPictureActivity1.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pwificam/clientActivity/ShowPictureActivity1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/ShowPictureActivity1;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/ShowPictureActivity1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/ShowPictureActivity1$1;->this$0:Lobject/p2pwificam/clientActivity/ShowPictureActivity1;

    .line 62
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x1

    .line 64
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 66
    :pswitch_0
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/ShowPictureActivity1$1;->this$0:Lobject/p2pwificam/clientActivity/ShowPictureActivity1;

    # getter for: Lobject/p2pwificam/clientActivity/ShowPictureActivity1;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/ShowPictureActivity1;->access$0(Lobject/p2pwificam/clientActivity/ShowPictureActivity1;)Landroid/support/v7/widget/LinearLayoutManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 67
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/ShowPictureActivity1$1;->this$0:Lobject/p2pwificam/clientActivity/ShowPictureActivity1;

    # getter for: Lobject/p2pwificam/clientActivity/ShowPictureActivity1;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/ShowPictureActivity1;->access$0(Lobject/p2pwificam/clientActivity/ShowPictureActivity1;)Landroid/support/v7/widget/LinearLayoutManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    .line 68
    .local v0, "position":I
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/ShowPictureActivity1$1;->this$0:Lobject/p2pwificam/clientActivity/ShowPictureActivity1;

    # getter for: Lobject/p2pwificam/clientActivity/ShowPictureActivity1;->tvTitle:Landroid/widget/TextView;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/ShowPictureActivity1;->access$1(Lobject/p2pwificam/clientActivity/ShowPictureActivity1;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, " %d / %d "

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    add-int/lit8 v5, v0, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    iget-object v4, p0, Lobject/p2pwificam/clientActivity/ShowPictureActivity1$1;->this$0:Lobject/p2pwificam/clientActivity/ShowPictureActivity1;

    # getter for: Lobject/p2pwificam/clientActivity/ShowPictureActivity1;->_camera:Lcom/easyview/camera/EVBaseCamera;
    invoke-static {v4}, Lobject/p2pwificam/clientActivity/ShowPictureActivity1;->access$2(Lobject/p2pwificam/clientActivity/ShowPictureActivity1;)Lcom/easyview/camera/EVBaseCamera;

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

    .line 69
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/ShowPictureActivity1$1;->this$0:Lobject/p2pwificam/clientActivity/ShowPictureActivity1;

    # getter for: Lobject/p2pwificam/clientActivity/ShowPictureActivity1;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/ShowPictureActivity1;->access$3(Lobject/p2pwificam/clientActivity/ShowPictureActivity1;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v6, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 70
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/ShowPictureActivity1$1;->this$0:Lobject/p2pwificam/clientActivity/ShowPictureActivity1;

    # getter for: Lobject/p2pwificam/clientActivity/ShowPictureActivity1;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/ShowPictureActivity1;->access$4(Lobject/p2pwificam/clientActivity/ShowPictureActivity1;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "update title"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 64
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
