.class Lobject/p2pwificam/clientActivity/CallVideoActivity$5;
.super Landroid/os/Handler;
.source "CallVideoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pwificam/clientActivity/CallVideoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/CallVideoActivity;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/CallVideoActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity$5;->this$0:Lobject/p2pwificam/clientActivity/CallVideoActivity;

    .line 374
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v10, 0x11

    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 377
    iget v4, p1, Landroid/os/Message;->what:I

    if-eq v4, v8, :cond_0

    iget v4, p1, Landroid/os/Message;->what:I

    if-ne v4, v9, :cond_1

    .line 378
    :cond_0
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity$5;->this$0:Lobject/p2pwificam/clientActivity/CallVideoActivity;

    # invokes: Lobject/p2pwificam/clientActivity/CallVideoActivity;->setViewVisible()V
    invoke-static {v4}, Lobject/p2pwificam/clientActivity/CallVideoActivity;->access$8(Lobject/p2pwificam/clientActivity/CallVideoActivity;)V

    .line 381
    :cond_1
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 408
    :goto_0
    iget v4, p1, Landroid/os/Message;->what:I

    if-eq v4, v8, :cond_2

    iget v4, p1, Landroid/os/Message;->what:I

    if-ne v4, v9, :cond_3

    .line 411
    :cond_2
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity$5;->this$0:Lobject/p2pwificam/clientActivity/CallVideoActivity;

    invoke-static {v4, v8}, Lobject/p2pwificam/clientActivity/CallVideoActivity;->access$14(Lobject/p2pwificam/clientActivity/CallVideoActivity;Z)V

    .line 413
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity$5;->this$0:Lobject/p2pwificam/clientActivity/CallVideoActivity;

    # getter for: Lobject/p2pwificam/clientActivity/CallVideoActivity;->nPlayCount:I
    invoke-static {v4}, Lobject/p2pwificam/clientActivity/CallVideoActivity;->access$15(Lobject/p2pwificam/clientActivity/CallVideoActivity;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v4, v5}, Lobject/p2pwificam/clientActivity/CallVideoActivity;->access$16(Lobject/p2pwificam/clientActivity/CallVideoActivity;I)V

    .line 414
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity$5;->this$0:Lobject/p2pwificam/clientActivity/CallVideoActivity;

    # getter for: Lobject/p2pwificam/clientActivity/CallVideoActivity;->nPlayCount:I
    invoke-static {v4}, Lobject/p2pwificam/clientActivity/CallVideoActivity;->access$15(Lobject/p2pwificam/clientActivity/CallVideoActivity;)I

    move-result v4

    const/16 v5, 0x64

    if-lt v4, v5, :cond_3

    .line 415
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity$5;->this$0:Lobject/p2pwificam/clientActivity/CallVideoActivity;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lobject/p2pwificam/clientActivity/CallVideoActivity;->access$16(Lobject/p2pwificam/clientActivity/CallVideoActivity;I)V

    .line 418
    :cond_3
    return-void

    .line 388
    :pswitch_0
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity$5;->this$0:Lobject/p2pwificam/clientActivity/CallVideoActivity;

    invoke-virtual {v4}, Lobject/p2pwificam/clientActivity/CallVideoActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getWidth()I

    move-result v3

    .line 389
    .local v3, "width":I
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity$5;->this$0:Lobject/p2pwificam/clientActivity/CallVideoActivity;

    invoke-virtual {v4}, Lobject/p2pwificam/clientActivity/CallVideoActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getHeight()I

    move-result v0

    .line 390
    .local v0, "height":I
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity$5;->this$0:Lobject/p2pwificam/clientActivity/CallVideoActivity;

    # getter for: Lobject/p2pwificam/clientActivity/CallVideoActivity;->nVideoHeight:I
    invoke-static {v4}, Lobject/p2pwificam/clientActivity/CallVideoActivity;->access$9(Lobject/p2pwificam/clientActivity/CallVideoActivity;)I

    move-result v4

    int-to-double v4, v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v4, v6

    iget-object v6, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity$5;->this$0:Lobject/p2pwificam/clientActivity/CallVideoActivity;

    # getter for: Lobject/p2pwificam/clientActivity/CallVideoActivity;->nVideoWidth:I
    invoke-static {v6}, Lobject/p2pwificam/clientActivity/CallVideoActivity;->access$10(Lobject/p2pwificam/clientActivity/CallVideoActivity;)I

    move-result v6

    int-to-double v6, v6

    div-double/2addr v4, v6

    double-to-float v2, v4

    .line 392
    .local v2, "s":F
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity$5;->this$0:Lobject/p2pwificam/clientActivity/CallVideoActivity;

    invoke-virtual {v4}, Lobject/p2pwificam/clientActivity/CallVideoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    if-ne v4, v8, :cond_5

    .line 393
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    int-to-float v4, v3

    mul-float/2addr v4, v2

    float-to-int v4, v4

    invoke-direct {v1, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 394
    .local v1, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iput v10, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 395
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity$5;->this$0:Lobject/p2pwificam/clientActivity/CallVideoActivity;

    # getter for: Lobject/p2pwificam/clientActivity/CallVideoActivity;->myGlSurfaceView:Landroid/opengl/GLSurfaceView;
    invoke-static {v4}, Lobject/p2pwificam/clientActivity/CallVideoActivity;->access$11(Lobject/p2pwificam/clientActivity/CallVideoActivity;)Landroid/opengl/GLSurfaceView;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/opengl/GLSurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 401
    .end local v1    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_4
    :goto_1
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity$5;->this$0:Lobject/p2pwificam/clientActivity/CallVideoActivity;

    # getter for: Lobject/p2pwificam/clientActivity/CallVideoActivity;->myRender:Lobject/p2pwificam/clientActivity/MyRender;
    invoke-static {v4}, Lobject/p2pwificam/clientActivity/CallVideoActivity;->access$12(Lobject/p2pwificam/clientActivity/CallVideoActivity;)Lobject/p2pwificam/clientActivity/MyRender;

    move-result-object v4

    iget-object v5, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity$5;->this$0:Lobject/p2pwificam/clientActivity/CallVideoActivity;

    # getter for: Lobject/p2pwificam/clientActivity/CallVideoActivity;->videodata:[B
    invoke-static {v5}, Lobject/p2pwificam/clientActivity/CallVideoActivity;->access$13(Lobject/p2pwificam/clientActivity/CallVideoActivity;)[B

    move-result-object v5

    iget-object v6, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity$5;->this$0:Lobject/p2pwificam/clientActivity/CallVideoActivity;

    # getter for: Lobject/p2pwificam/clientActivity/CallVideoActivity;->nVideoWidth:I
    invoke-static {v6}, Lobject/p2pwificam/clientActivity/CallVideoActivity;->access$10(Lobject/p2pwificam/clientActivity/CallVideoActivity;)I

    move-result v6

    iget-object v7, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity$5;->this$0:Lobject/p2pwificam/clientActivity/CallVideoActivity;

    # getter for: Lobject/p2pwificam/clientActivity/CallVideoActivity;->nVideoHeight:I
    invoke-static {v7}, Lobject/p2pwificam/clientActivity/CallVideoActivity;->access$9(Lobject/p2pwificam/clientActivity/CallVideoActivity;)I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Lobject/p2pwificam/clientActivity/MyRender;->writeSample([BII)I

    goto/16 :goto_0

    .line 396
    :cond_5
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity$5;->this$0:Lobject/p2pwificam/clientActivity/CallVideoActivity;

    invoke-virtual {v4}, Lobject/p2pwificam/clientActivity/CallVideoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    if-ne v4, v9, :cond_4

    .line 397
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v3, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 398
    .restart local v1    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    iput v10, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 399
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity$5;->this$0:Lobject/p2pwificam/clientActivity/CallVideoActivity;

    # getter for: Lobject/p2pwificam/clientActivity/CallVideoActivity;->myGlSurfaceView:Landroid/opengl/GLSurfaceView;
    invoke-static {v4}, Lobject/p2pwificam/clientActivity/CallVideoActivity;->access$11(Lobject/p2pwificam/clientActivity/CallVideoActivity;)Landroid/opengl/GLSurfaceView;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/opengl/GLSurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 381
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
