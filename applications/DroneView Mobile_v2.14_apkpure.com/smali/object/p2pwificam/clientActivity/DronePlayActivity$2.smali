.class Lobject/p2pwificam/clientActivity/DronePlayActivity$2;
.super Landroid/os/Handler;
.source "DronePlayActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pwificam/clientActivity/DronePlayActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/DronePlayActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$2;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    .line 396
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

    .line 399
    iget v4, p1, Landroid/os/Message;->what:I

    if-eq v4, v8, :cond_0

    iget v4, p1, Landroid/os/Message;->what:I

    if-ne v4, v9, :cond_1

    .line 400
    :cond_0
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$2;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    # invokes: Lobject/p2pwificam/clientActivity/DronePlayActivity;->setViewVisible()V
    invoke-static {v4}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$4(Lobject/p2pwificam/clientActivity/DronePlayActivity;)V

    .line 403
    :cond_1
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 430
    :goto_0
    iget v4, p1, Landroid/os/Message;->what:I

    if-eq v4, v8, :cond_2

    iget v4, p1, Landroid/os/Message;->what:I

    if-ne v4, v9, :cond_3

    .line 433
    :cond_2
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$2;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    invoke-static {v4, v8}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$10(Lobject/p2pwificam/clientActivity/DronePlayActivity;Z)V

    .line 435
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$2;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->nPlayCount:I
    invoke-static {v4}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$11(Lobject/p2pwificam/clientActivity/DronePlayActivity;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v4, v5}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$12(Lobject/p2pwificam/clientActivity/DronePlayActivity;I)V

    .line 436
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$2;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->nPlayCount:I
    invoke-static {v4}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$11(Lobject/p2pwificam/clientActivity/DronePlayActivity;)I

    move-result v4

    const/16 v5, 0x64

    if-lt v4, v5, :cond_3

    .line 437
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$2;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$12(Lobject/p2pwificam/clientActivity/DronePlayActivity;I)V

    .line 440
    :cond_3
    return-void

    .line 410
    :pswitch_0
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$2;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    invoke-virtual {v4}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getWidth()I

    move-result v3

    .line 411
    .local v3, "width":I
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$2;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    invoke-virtual {v4}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getHeight()I

    move-result v0

    .line 412
    .local v0, "height":I
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$2;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->nVideoHeight:I
    invoke-static {v4}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$5(Lobject/p2pwificam/clientActivity/DronePlayActivity;)I

    move-result v4

    int-to-double v4, v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v4, v6

    iget-object v6, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$2;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->nVideoWidth:I
    invoke-static {v6}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$6(Lobject/p2pwificam/clientActivity/DronePlayActivity;)I

    move-result v6

    int-to-double v6, v6

    div-double/2addr v4, v6

    double-to-float v2, v4

    .line 414
    .local v2, "s":F
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$2;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    invoke-virtual {v4}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    if-ne v4, v8, :cond_5

    .line 415
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 416
    int-to-float v4, v3

    mul-float/2addr v4, v2

    float-to-int v4, v4

    .line 415
    invoke-direct {v1, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 417
    .local v1, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iput v10, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 418
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$2;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->myGlSurfaceView:Landroid/opengl/GLSurfaceView;
    invoke-static {v4}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$7(Lobject/p2pwificam/clientActivity/DronePlayActivity;)Landroid/opengl/GLSurfaceView;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/opengl/GLSurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 424
    .end local v1    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_4
    :goto_1
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$2;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->myRender:Lobject/p2pwificam/clientActivity/MyRender;
    invoke-static {v4}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$8(Lobject/p2pwificam/clientActivity/DronePlayActivity;)Lobject/p2pwificam/clientActivity/MyRender;

    move-result-object v4

    iget-object v5, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$2;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->videodata:[B
    invoke-static {v5}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$9(Lobject/p2pwificam/clientActivity/DronePlayActivity;)[B

    move-result-object v5

    iget-object v6, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$2;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->nVideoWidth:I
    invoke-static {v6}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$6(Lobject/p2pwificam/clientActivity/DronePlayActivity;)I

    move-result v6

    iget-object v7, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$2;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->nVideoHeight:I
    invoke-static {v7}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$5(Lobject/p2pwificam/clientActivity/DronePlayActivity;)I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Lobject/p2pwificam/clientActivity/MyRender;->writeSample([BII)I

    goto/16 :goto_0

    .line 419
    :cond_5
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$2;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    invoke-virtual {v4}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    if-ne v4, v9, :cond_4

    .line 420
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v3, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 421
    .restart local v1    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    iput v10, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 422
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$2;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->myGlSurfaceView:Landroid/opengl/GLSurfaceView;
    invoke-static {v4}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$7(Lobject/p2pwificam/clientActivity/DronePlayActivity;)Landroid/opengl/GLSurfaceView;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/opengl/GLSurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 403
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
