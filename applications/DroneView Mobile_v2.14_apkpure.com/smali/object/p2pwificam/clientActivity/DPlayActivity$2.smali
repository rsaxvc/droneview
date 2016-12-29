.class Lobject/p2pwificam/clientActivity/DPlayActivity$2;
.super Landroid/os/Handler;
.source "DPlayActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pwificam/clientActivity/DPlayActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/DPlayActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$2;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    .line 469
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

    .line 472
    iget v4, p1, Landroid/os/Message;->what:I

    if-eq v4, v8, :cond_0

    iget v4, p1, Landroid/os/Message;->what:I

    if-ne v4, v9, :cond_1

    .line 473
    :cond_0
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$2;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # invokes: Lobject/p2pwificam/clientActivity/DPlayActivity;->setViewVisible()V
    invoke-static {v4}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$4(Lobject/p2pwificam/clientActivity/DPlayActivity;)V

    .line 476
    :cond_1
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 504
    :goto_0
    iget v4, p1, Landroid/os/Message;->what:I

    if-eq v4, v8, :cond_2

    iget v4, p1, Landroid/os/Message;->what:I

    if-ne v4, v9, :cond_3

    .line 507
    :cond_2
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$2;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    invoke-static {v4, v8}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$10(Lobject/p2pwificam/clientActivity/DPlayActivity;Z)V

    .line 509
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$2;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->nPlayCount:I
    invoke-static {v4}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$11(Lobject/p2pwificam/clientActivity/DPlayActivity;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v4, v5}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$12(Lobject/p2pwificam/clientActivity/DPlayActivity;I)V

    .line 510
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$2;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->nPlayCount:I
    invoke-static {v4}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$11(Lobject/p2pwificam/clientActivity/DPlayActivity;)I

    move-result v4

    const/16 v5, 0x64

    if-lt v4, v5, :cond_3

    .line 511
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$2;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$12(Lobject/p2pwificam/clientActivity/DPlayActivity;I)V

    .line 514
    :cond_3
    return-void

    .line 483
    :pswitch_0
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$2;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    invoke-virtual {v4}, Lobject/p2pwificam/clientActivity/DPlayActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getWidth()I

    move-result v3

    .line 484
    .local v3, "width":I
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$2;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    invoke-virtual {v4}, Lobject/p2pwificam/clientActivity/DPlayActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getHeight()I

    move-result v0

    .line 485
    .local v0, "height":I
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$2;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->nVideoHeight:I
    invoke-static {v4}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$5(Lobject/p2pwificam/clientActivity/DPlayActivity;)I

    move-result v4

    int-to-double v4, v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v4, v6

    iget-object v6, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$2;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->nVideoWidth:I
    invoke-static {v6}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$6(Lobject/p2pwificam/clientActivity/DPlayActivity;)I

    move-result v6

    int-to-double v6, v6

    div-double/2addr v4, v6

    double-to-float v2, v4

    .line 487
    .local v2, "s":F
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$2;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    invoke-virtual {v4}, Lobject/p2pwificam/clientActivity/DPlayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    if-ne v4, v8, :cond_5

    .line 488
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 489
    int-to-float v4, v3

    mul-float/2addr v4, v2

    float-to-int v4, v4

    .line 488
    invoke-direct {v1, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 490
    .local v1, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iput v10, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 491
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$2;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->myGlSurfaceView:Landroid/opengl/GLSurfaceView;
    invoke-static {v4}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$7(Lobject/p2pwificam/clientActivity/DPlayActivity;)Landroid/opengl/GLSurfaceView;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/opengl/GLSurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 498
    .end local v1    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_4
    :goto_1
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$2;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->myRender:Lobject/p2pwificam/clientActivity/MyRender;
    invoke-static {v4}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$8(Lobject/p2pwificam/clientActivity/DPlayActivity;)Lobject/p2pwificam/clientActivity/MyRender;

    move-result-object v4

    iget-object v5, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$2;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->videodata:[B
    invoke-static {v5}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$9(Lobject/p2pwificam/clientActivity/DPlayActivity;)[B

    move-result-object v5

    iget-object v6, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$2;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->nVideoWidth:I
    invoke-static {v6}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$6(Lobject/p2pwificam/clientActivity/DPlayActivity;)I

    move-result v6

    iget-object v7, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$2;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->nVideoHeight:I
    invoke-static {v7}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$5(Lobject/p2pwificam/clientActivity/DPlayActivity;)I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Lobject/p2pwificam/clientActivity/MyRender;->writeSample([BII)I

    goto/16 :goto_0

    .line 492
    :cond_5
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$2;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    invoke-virtual {v4}, Lobject/p2pwificam/clientActivity/DPlayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    if-ne v4, v9, :cond_4

    .line 493
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v3, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 495
    .restart local v1    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    iput v10, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 496
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$2;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->myGlSurfaceView:Landroid/opengl/GLSurfaceView;
    invoke-static {v4}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$7(Lobject/p2pwificam/clientActivity/DPlayActivity;)Landroid/opengl/GLSurfaceView;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/opengl/GLSurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 476
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
