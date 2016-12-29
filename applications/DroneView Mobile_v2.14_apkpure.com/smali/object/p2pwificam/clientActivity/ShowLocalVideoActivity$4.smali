.class Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity$4;
.super Ljava/lang/Object;
.source "ShowLocalVideoActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity$4;->this$0:Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;

    .line 526
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 530
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity$4;->this$0:Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;

    # getter for: Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->seekBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->access$5(Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity$4;->this$0:Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;

    # getter for: Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->seekBar:Landroid/widget/ProgressBar;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->access$5(Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getMax()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 531
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity$4;->this$0:Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;

    # getter for: Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->seekBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->access$5(Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity$4;->this$0:Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;

    # getter for: Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->sumTime:I
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->access$13(Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 532
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity$4;->this$0:Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;

    # getter for: Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->tvCurrentTime:Landroid/widget/TextView;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->access$10(Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity$4;->this$0:Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity$4;->this$0:Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;

    # getter for: Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->sumTime:I
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->access$13(Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;)I

    move-result v2

    div-int/lit16 v2, v2, 0x3e8

    # invokes: Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->getTime(I)Ljava/lang/String;
    invoke-static {v1, v2}, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->access$6(Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 533
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity$4;->this$0:Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;

    # getter for: Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->mProgressHandler:Landroid/os/Handler;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->access$14(Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity$4;->this$0:Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;

    # getter for: Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->myProRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;->access$15(Lobject/p2pwificam/clientActivity/ShowLocalVideoActivity;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 535
    :cond_0
    return-void
.end method
