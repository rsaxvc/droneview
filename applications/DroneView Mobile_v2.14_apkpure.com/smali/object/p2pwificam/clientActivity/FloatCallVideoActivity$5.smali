.class Lobject/p2pwificam/clientActivity/FloatCallVideoActivity$5;
.super Landroid/os/Handler;
.source "FloatCallVideoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity$5;->this$0:Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;

    .line 293
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

    .line 296
    iget v4, p1, Landroid/os/Message;->what:I

    if-eq v4, v8, :cond_0

    iget v4, p1, Landroid/os/Message;->what:I

    if-ne v4, v9, :cond_1

    .line 297
    :cond_0
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity$5;->this$0:Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;

    # invokes: Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->setViewVisible()V
    invoke-static {v4}, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->access$10(Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;)V

    .line 300
    :cond_1
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 329
    :goto_0
    iget v4, p1, Landroid/os/Message;->what:I

    if-eq v4, v8, :cond_2

    iget v4, p1, Landroid/os/Message;->what:I

    if-ne v4, v9, :cond_3

    .line 332
    :cond_2
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity$5;->this$0:Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;

    invoke-static {v4, v8}, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->access$16(Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;Z)V

    .line 334
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity$5;->this$0:Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;

    # getter for: Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->nPlayCount:I
    invoke-static {v4}, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->access$17(Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v4, v5}, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->access$18(Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;I)V

    .line 335
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity$5;->this$0:Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;

    # getter for: Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->nPlayCount:I
    invoke-static {v4}, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->access$17(Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;)I

    move-result v4

    const/16 v5, 0x64

    if-lt v4, v5, :cond_3

    .line 336
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity$5;->this$0:Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->access$18(Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;I)V

    .line 339
    :cond_3
    return-void

    .line 307
    :pswitch_0
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity$5;->this$0:Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;

    invoke-virtual {v4}, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getWidth()I

    move-result v3

    .line 308
    .local v3, "width":I
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity$5;->this$0:Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;

    invoke-virtual {v4}, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getHeight()I

    move-result v0

    .line 309
    .local v0, "height":I
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity$5;->this$0:Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;

    # getter for: Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->nVideoHeight:I
    invoke-static {v4}, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->access$11(Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;)I

    move-result v4

    int-to-double v4, v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v4, v6

    iget-object v6, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity$5;->this$0:Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;

    # getter for: Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->nVideoWidth:I
    invoke-static {v6}, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->access$12(Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;)I

    move-result v6

    int-to-double v6, v6

    div-double/2addr v4, v6

    double-to-float v2, v4

    .line 311
    .local v2, "s":F
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity$5;->this$0:Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;

    invoke-virtual {v4}, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    if-ne v4, v8, :cond_5

    .line 312
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 313
    int-to-float v4, v3

    mul-float/2addr v4, v2

    float-to-int v4, v4

    .line 312
    invoke-direct {v1, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 314
    .local v1, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iput v10, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 315
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity$5;->this$0:Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;

    # getter for: Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->myGlSurfaceView:Landroid/opengl/GLSurfaceView;
    invoke-static {v4}, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->access$13(Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;)Landroid/opengl/GLSurfaceView;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/opengl/GLSurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 322
    .end local v1    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_4
    :goto_1
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity$5;->this$0:Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;

    # getter for: Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->myRender:Lobject/p2pwificam/clientActivity/MyRender;
    invoke-static {v4}, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->access$14(Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;)Lobject/p2pwificam/clientActivity/MyRender;

    move-result-object v4

    iget-object v5, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity$5;->this$0:Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;

    # getter for: Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->videodata:[B
    invoke-static {v5}, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->access$15(Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;)[B

    move-result-object v5

    iget-object v6, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity$5;->this$0:Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;

    # getter for: Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->nVideoWidth:I
    invoke-static {v6}, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->access$12(Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;)I

    move-result v6

    iget-object v7, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity$5;->this$0:Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;

    # getter for: Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->nVideoHeight:I
    invoke-static {v7}, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->access$11(Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;)I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Lobject/p2pwificam/clientActivity/MyRender;->writeSample([BII)I

    goto/16 :goto_0

    .line 316
    :cond_5
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity$5;->this$0:Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;

    invoke-virtual {v4}, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    if-ne v4, v9, :cond_4

    .line 317
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v3, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 319
    .restart local v1    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    iput v10, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 320
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity$5;->this$0:Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;

    # getter for: Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->myGlSurfaceView:Landroid/opengl/GLSurfaceView;
    invoke-static {v4}, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->access$13(Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;)Landroid/opengl/GLSurfaceView;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/opengl/GLSurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 300
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
