.class Lobject/p2pwificam/clientActivity/SliderRelativeLayout$1;
.super Ljava/lang/Object;
.source "SliderRelativeLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pwificam/clientActivity/SliderRelativeLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/SliderRelativeLayout;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/SliderRelativeLayout;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/SliderRelativeLayout$1;->this$0:Lobject/p2pwificam/clientActivity/SliderRelativeLayout;

    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 264
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SliderRelativeLayout$1;->this$0:Lobject/p2pwificam/clientActivity/SliderRelativeLayout;

    # getter for: Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->mLastMoveX:I
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->access$0(Lobject/p2pwificam/clientActivity/SliderRelativeLayout;)I

    move-result v2

    # getter for: Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->BACK_DURATION:I
    invoke-static {}, Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->access$1()I

    move-result v3

    int-to-float v3, v3

    # getter for: Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->VE_HORIZONTAL:F
    invoke-static {}, Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->access$2()F

    move-result v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->access$3(Lobject/p2pwificam/clientActivity/SliderRelativeLayout;I)V

    .line 265
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SliderRelativeLayout$1;->this$0:Lobject/p2pwificam/clientActivity/SliderRelativeLayout;

    # getter for: Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->mLastMovey:I
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->access$4(Lobject/p2pwificam/clientActivity/SliderRelativeLayout;)I

    move-result v2

    # getter for: Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->BACK_DURATION:I
    invoke-static {}, Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->access$1()I

    move-result v3

    int-to-float v3, v3

    # getter for: Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->VE_HORIZONTAL:F
    invoke-static {}, Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->access$2()F

    move-result v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->access$5(Lobject/p2pwificam/clientActivity/SliderRelativeLayout;I)V

    .line 266
    # getter for: Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->TAG:Ljava/lang/String;
    invoke-static {}, Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->access$6()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "BackDragImgTask ############# mLastMoveX "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lobject/p2pwificam/clientActivity/SliderRelativeLayout$1;->this$0:Lobject/p2pwificam/clientActivity/SliderRelativeLayout;

    # getter for: Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->mLastMoveX:I
    invoke-static {v3}, Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->access$0(Lobject/p2pwificam/clientActivity/SliderRelativeLayout;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SliderRelativeLayout$1;->this$0:Lobject/p2pwificam/clientActivity/SliderRelativeLayout;

    invoke-virtual {v1}, Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->invalidate()V

    .line 270
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SliderRelativeLayout$1;->this$0:Lobject/p2pwificam/clientActivity/SliderRelativeLayout;

    # getter for: Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->mLastMoveX:I
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->access$0(Lobject/p2pwificam/clientActivity/SliderRelativeLayout;)I

    move-result v1

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/SliderRelativeLayout$1;->this$0:Lobject/p2pwificam/clientActivity/SliderRelativeLayout;

    # getter for: Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->tv_slider_icon:Landroid/widget/ImageView;
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->access$7(Lobject/p2pwificam/clientActivity/SliderRelativeLayout;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/16 v2, 0x8

    if-gt v1, v2, :cond_0

    const/4 v0, 0x1

    .line 271
    .local v0, "shouldEnd":Z
    :goto_0
    if-nez v0, :cond_1

    .line 272
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SliderRelativeLayout$1;->this$0:Lobject/p2pwificam/clientActivity/SliderRelativeLayout;

    # getter for: Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->access$8(Lobject/p2pwificam/clientActivity/SliderRelativeLayout;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/SliderRelativeLayout$1;->this$0:Lobject/p2pwificam/clientActivity/SliderRelativeLayout;

    # getter for: Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->BackDragImgTask:Ljava/lang/Runnable;
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->access$9(Lobject/p2pwificam/clientActivity/SliderRelativeLayout;)Ljava/lang/Runnable;

    move-result-object v2

    # getter for: Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->BACK_DURATION:I
    invoke-static {}, Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->access$1()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 276
    :goto_1
    return-void

    .line 270
    .end local v0    # "shouldEnd":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 274
    .restart local v0    # "shouldEnd":Z
    :cond_1
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/SliderRelativeLayout$1;->this$0:Lobject/p2pwificam/clientActivity/SliderRelativeLayout;

    # invokes: Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->resetViewState()V
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/SliderRelativeLayout;->access$10(Lobject/p2pwificam/clientActivity/SliderRelativeLayout;)V

    goto :goto_1
.end method
