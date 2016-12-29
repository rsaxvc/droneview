.class Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity$3;
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
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity$3;->this$0:Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;

    .line 502
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 504
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 521
    :goto_0
    return-void

    .line 506
    :pswitch_0
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity$3;->this$0:Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;

    # getter for: Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->seekBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->access$5(Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity$3;->this$0:Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;

    # getter for: Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->progress:I
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->access$9(Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 507
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity$3;->this$0:Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;

    # getter for: Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->tvCurrentTime:Landroid/widget/TextView;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->access$10(Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity$3;->this$0:Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity$3;->this$0:Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;

    # getter for: Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->progress:I
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->access$9(Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;)I

    move-result v2

    # invokes: Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->getTime(I)Ljava/lang/String;
    invoke-static {v1, v2}, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->access$6(Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 510
    :pswitch_1
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity$3;->this$0:Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;

    # getter for: Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->imgPause:Landroid/widget/ImageView;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->access$11(Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 511
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity$3;->this$0:Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;

    # getter for: Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->btnPlay:Landroid/widget/Button;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->access$12(Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f02016b

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 512
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity$3;->this$0:Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;

    const v1, 0x7f060185

    invoke-virtual {v0, v1}, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->showToast(I)V

    .line 513
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity$3;->this$0:Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;

    invoke-virtual {v0}, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->finish()V

    .line 514
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity$3;->this$0:Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;

    const v1, 0x7f040006

    .line 515
    const/high16 v2, 0x7f040000

    .line 514
    invoke-virtual {v0, v1, v2}, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->overridePendingTransition(II)V

    goto :goto_0

    .line 504
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
