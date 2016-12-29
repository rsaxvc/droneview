.class Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity$1;
.super Landroid/os/Handler;
.source "ShowLocalVideoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity$1;->this$0:Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;

    .line 77
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v2, 0x8

    .line 79
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 98
    :goto_0
    return-void

    .line 81
    :pswitch_0
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity$1;->this$0:Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->access$0(Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;Z)V

    .line 82
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity$1;->this$0:Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;

    # getter for: Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->topLayout:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->access$1(Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 83
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity$1;->this$0:Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;

    # getter for: Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->bottomLayout:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->access$2(Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 86
    :pswitch_1
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity$1;->this$0:Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;

    # getter for: Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->videoSumTime:I
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->access$3(Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;)I

    move-result v0

    if-gez v0, :cond_0

    .line 87
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity$1;->this$0:Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;

    # getter for: Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->tvSumTime:Landroid/widget/TextView;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->access$4(Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity$1;->this$0:Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;

    invoke-virtual {v1}, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 88
    const v2, 0x7f0601a7

    .line 87
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 90
    :cond_0
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity$1;->this$0:Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;

    # getter for: Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->seekBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->access$5(Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity$1;->this$0:Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;

    # getter for: Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->videoSumTime:I
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->access$3(Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 91
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity$1;->this$0:Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;

    # getter for: Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->tvSumTime:Landroid/widget/TextView;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->access$4(Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity$1;->this$0:Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity$1;->this$0:Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;

    # getter for: Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->videoSumTime:I
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->access$3(Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;)I

    move-result v2

    div-int/lit16 v2, v2, 0x3e8

    # invokes: Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->getTime(I)Ljava/lang/String;
    invoke-static {v1, v2}, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->access$6(Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity$1;->this$0:Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;

    # invokes: Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->startVideo()V
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->access$7(Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;)V

    goto :goto_0

    .line 79
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
