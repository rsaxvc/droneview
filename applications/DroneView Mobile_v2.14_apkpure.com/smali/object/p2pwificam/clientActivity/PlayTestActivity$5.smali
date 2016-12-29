.class Lobject/p2pwificam/clientActivity/PlayTestActivity$5;
.super Landroid/os/Handler;
.source "PlayTestActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pwificam/clientActivity/PlayTestActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/PlayTestActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$5;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    .line 1007
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1010
    iget v5, p1, Landroid/os/Message;->what:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_0

    iget v5, p1, Landroid/os/Message;->what:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    .line 1011
    :cond_0
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$5;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    # invokes: Lobject/p2pwificam/clientActivity/PlayTestActivity;->setViewVisible()V
    invoke-static {v5}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$9(Lobject/p2pwificam/clientActivity/PlayTestActivity;)V

    .line 1013
    :cond_1
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$5;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayTestActivity;->isPTZPrompt:Z
    invoke-static {v5}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$10(Lobject/p2pwificam/clientActivity/PlayTestActivity;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1014
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$5;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$11(Lobject/p2pwificam/clientActivity/PlayTestActivity;Z)V

    .line 1015
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$5;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    const v6, 0x7f0601a2

    invoke-virtual {v5, v6}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->showToast(I)V

    .line 1018
    :cond_2
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 1105
    :cond_3
    :goto_0
    iget v5, p1, Landroid/os/Message;->what:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_4

    iget v5, p1, Landroid/os/Message;->what:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_5

    .line 1107
    :cond_4
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$5;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    invoke-virtual {v5}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->showTimeStamp()V

    .line 1108
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$5;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$30(Lobject/p2pwificam/clientActivity/PlayTestActivity;Z)V

    .line 1110
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$5;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayTestActivity;->nPlayCount:I
    invoke-static {v5}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$36(Lobject/p2pwificam/clientActivity/PlayTestActivity;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-static {v5, v6}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$37(Lobject/p2pwificam/clientActivity/PlayTestActivity;I)V

    .line 1111
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$5;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayTestActivity;->nPlayCount:I
    invoke-static {v5}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$36(Lobject/p2pwificam/clientActivity/PlayTestActivity;)I

    move-result v5

    const/16 v6, 0x64

    if-lt v5, v6, :cond_5

    .line 1112
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$5;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$37(Lobject/p2pwificam/clientActivity/PlayTestActivity;I)V

    .line 1115
    :cond_5
    :goto_1
    return-void

    .line 1024
    :pswitch_0
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$5;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayTestActivity;->vidoeView:Landroid/widget/ImageView;
    invoke-static {v5}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$12(Lobject/p2pwificam/clientActivity/PlayTestActivity;)Landroid/widget/ImageView;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1025
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$5;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    invoke-virtual {v5}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Display;->getWidth()I

    move-result v4

    .line 1026
    .local v4, "width":I
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$5;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    invoke-virtual {v5}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Display;->getHeight()I

    move-result v1

    .line 1027
    .local v1, "height":I
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$5;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayTestActivity;->nVideoHeight:I
    invoke-static {v5}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$13(Lobject/p2pwificam/clientActivity/PlayTestActivity;)I

    move-result v5

    int-to-double v5, v5

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v5, v7

    iget-object v7, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$5;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayTestActivity;->nVideoWidth:I
    invoke-static {v7}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$14(Lobject/p2pwificam/clientActivity/PlayTestActivity;)I

    move-result v7

    int-to-double v7, v7

    div-double/2addr v5, v7

    double-to-float v3, v5

    .line 1028
    .local v3, "s":F
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$5;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayTestActivity;->isResolution:Ljava/lang/Boolean;
    invoke-static {v5}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$15(Lobject/p2pwificam/clientActivity/PlayTestActivity;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1029
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$5;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$5;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayTestActivity;->isResolution:Ljava/lang/Boolean;
    invoke-static {v5}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$15(Lobject/p2pwificam/clientActivity/PlayTestActivity;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_9

    const/4 v5, 0x0

    :goto_2
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v6, v5}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$16(Lobject/p2pwificam/clientActivity/PlayTestActivity;Ljava/lang/Boolean;)V

    .line 1030
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$5;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayTestActivity;->txtResolution:Landroid/widget/TextView;
    invoke-static {v5}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$17(Lobject/p2pwificam/clientActivity/PlayTestActivity;)Landroid/widget/TextView;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v7, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$5;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayTestActivity;->nVideoWidth:I
    invoke-static {v7}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$14(Lobject/p2pwificam/clientActivity/PlayTestActivity;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1031
    iget-object v7, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$5;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayTestActivity;->nVideoHeight:I
    invoke-static {v7}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$13(Lobject/p2pwificam/clientActivity/PlayTestActivity;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1030
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1035
    :cond_6
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$5;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayTestActivity;->isFPS:Ljava/lang/Boolean;
    invoke-static {v5}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$18(Lobject/p2pwificam/clientActivity/PlayTestActivity;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1036
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$5;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$5;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayTestActivity;->isFPS:Ljava/lang/Boolean;
    invoke-static {v5}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$18(Lobject/p2pwificam/clientActivity/PlayTestActivity;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_a

    const/4 v5, 0x0

    :goto_3
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v6, v5}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$19(Lobject/p2pwificam/clientActivity/PlayTestActivity;Ljava/lang/Boolean;)V

    .line 1037
    const-string v5, "count"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "fps...........:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$5;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    iget v7, v7, Lobject/p2pwificam/clientActivity/PlayTestActivity;->VideoFPS:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".....bps:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$5;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    iget v7, v7, Lobject/p2pwificam/clientActivity/PlayTestActivity;->VideoBPS:I

    mul-int/lit8 v7, v7, 0x8

    div-int/lit16 v7, v7, 0x400

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1040
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$5;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayTestActivity;->text_bps:Landroid/widget/TextView;
    invoke-static {v5}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$20(Lobject/p2pwificam/clientActivity/PlayTestActivity;)Landroid/widget/TextView;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v7, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$5;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    iget v7, v7, Lobject/p2pwificam/clientActivity/PlayTestActivity;->VideoBPS:I

    div-int/lit16 v7, v7, 0x2000

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "kps"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1043
    :cond_7
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$5;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    invoke-virtual {v5}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_b

    .line 1044
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 1045
    int-to-float v5, v4

    mul-float/2addr v5, v3

    float-to-int v5, v5

    .line 1044
    invoke-direct {v2, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1046
    .local v2, "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v5, 0x11

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1047
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$5;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayTestActivity;->myGlSurfaceView:Landroid/opengl/GLSurfaceView;
    invoke-static {v5}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$21(Lobject/p2pwificam/clientActivity/PlayTestActivity;)Landroid/opengl/GLSurfaceView;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/opengl/GLSurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1054
    .end local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_8
    :goto_4
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$5;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayTestActivity;->myRender:Lobject/p2pwificam/clientActivity/MyRender;
    invoke-static {v5}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$22(Lobject/p2pwificam/clientActivity/PlayTestActivity;)Lobject/p2pwificam/clientActivity/MyRender;

    move-result-object v5

    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$5;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayTestActivity;->videodata:[B
    invoke-static {v6}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$23(Lobject/p2pwificam/clientActivity/PlayTestActivity;)[B

    move-result-object v6

    iget-object v7, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$5;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayTestActivity;->nVideoWidth:I
    invoke-static {v7}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$14(Lobject/p2pwificam/clientActivity/PlayTestActivity;)I

    move-result v7

    iget-object v8, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$5;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayTestActivity;->nVideoHeight:I
    invoke-static {v8}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$13(Lobject/p2pwificam/clientActivity/PlayTestActivity;)I

    move-result v8

    invoke-virtual {v5, v6, v7, v8}, Lobject/p2pwificam/clientActivity/MyRender;->writeSample([BII)I

    .line 1055
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$5;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayTestActivity;->videoViewStandard:Landroid/widget/ImageView;
    invoke-static {v5}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$24(Lobject/p2pwificam/clientActivity/PlayTestActivity;)Landroid/widget/ImageView;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 1029
    :cond_9
    const/4 v5, 0x1

    goto/16 :goto_2

    .line 1036
    :cond_a
    const/4 v5, 0x1

    goto/16 :goto_3

    .line 1048
    :cond_b
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$5;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    invoke-virtual {v5}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_8

    .line 1049
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v4, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1051
    .restart local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v5, 0x11

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1052
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$5;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayTestActivity;->myGlSurfaceView:Landroid/opengl/GLSurfaceView;
    invoke-static {v5}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$21(Lobject/p2pwificam/clientActivity/PlayTestActivity;)Landroid/opengl/GLSurfaceView;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/opengl/GLSurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_4

    .line 1061
    .end local v1    # "height":I
    .end local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v3    # "s":F
    .end local v4    # "width":I
    :pswitch_1
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$5;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayTestActivity;->ptzTakepic:Landroid/widget/ImageButton;
    invoke-static {v5}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$25(Lobject/p2pwificam/clientActivity/PlayTestActivity;)Landroid/widget/ImageButton;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1062
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$5;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayTestActivity;->ptzTakeVideo:Landroid/widget/ImageButton;
    invoke-static {v5}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$26(Lobject/p2pwificam/clientActivity/PlayTestActivity;)Landroid/widget/ImageButton;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1063
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$5;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayTestActivity;->myGlSurfaceView:Landroid/opengl/GLSurfaceView;
    invoke-static {v5}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$21(Lobject/p2pwificam/clientActivity/PlayTestActivity;)Landroid/opengl/GLSurfaceView;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/opengl/GLSurfaceView;->setVisibility(I)V

    .line 1064
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$5;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    .line 1065
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$5;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayTestActivity;->videodata:[B
    invoke-static {v6}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$23(Lobject/p2pwificam/clientActivity/PlayTestActivity;)[B

    move-result-object v6

    const/4 v7, 0x0

    iget-object v8, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$5;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayTestActivity;->videoDataLen:I
    invoke-static {v8}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$27(Lobject/p2pwificam/clientActivity/PlayTestActivity;)I

    move-result v8

    invoke-static {v6, v7, v8}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 1064
    invoke-static {v5, v6}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$28(Lobject/p2pwificam/clientActivity/PlayTestActivity;Landroid/graphics/Bitmap;)V

    .line 1066
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$5;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayTestActivity;->mBmp:Landroid/graphics/Bitmap;
    invoke-static {v5}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$29(Lobject/p2pwificam/clientActivity/PlayTestActivity;)Landroid/graphics/Bitmap;

    move-result-object v5

    if-nez v5, :cond_c

    .line 1067
    const-string v5, "PlayTestActivity"

    const-string v6, "bmp can\'t be decode..."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1068
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$5;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$30(Lobject/p2pwificam/clientActivity/PlayTestActivity;Z)V

    goto/16 :goto_1

    .line 1071
    :cond_c
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$5;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    invoke-virtual {v5}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Display;->getWidth()I

    move-result v4

    .line 1072
    .restart local v4    # "width":I
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$5;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    invoke-virtual {v5}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Display;->getHeight()I

    move-result v1

    .line 1074
    .restart local v1    # "height":I
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$5;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$5;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayTestActivity;->mBmp:Landroid/graphics/Bitmap;
    invoke-static {v6}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$29(Lobject/p2pwificam/clientActivity/PlayTestActivity;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-static {v5, v6}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$31(Lobject/p2pwificam/clientActivity/PlayTestActivity;I)V

    .line 1075
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$5;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$5;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayTestActivity;->mBmp:Landroid/graphics/Bitmap;
    invoke-static {v6}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$29(Lobject/p2pwificam/clientActivity/PlayTestActivity;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-static {v5, v6}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$32(Lobject/p2pwificam/clientActivity/PlayTestActivity;I)V

    .line 1077
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$5;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    invoke-virtual {v5}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_e

    .line 1078
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$5;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayTestActivity;->mBmp:Landroid/graphics/Bitmap;
    invoke-static {v5}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$29(Lobject/p2pwificam/clientActivity/PlayTestActivity;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 1079
    mul-int/lit8 v6, v4, 0x3

    div-int/lit8 v6, v6, 0x4

    const/4 v7, 0x1

    .line 1078
    invoke-static {v5, v4, v6, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1080
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$5;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayTestActivity;->videoViewStandard:Landroid/widget/ImageView;
    invoke-static {v5}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$24(Lobject/p2pwificam/clientActivity/PlayTestActivity;)Landroid/widget/ImageView;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1081
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$5;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayTestActivity;->vidoeView:Landroid/widget/ImageView;
    invoke-static {v5}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$12(Lobject/p2pwificam/clientActivity/PlayTestActivity;)Landroid/widget/ImageView;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1082
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$5;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayTestActivity;->vidoeView:Landroid/widget/ImageView;
    invoke-static {v5}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$12(Lobject/p2pwificam/clientActivity/PlayTestActivity;)Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1091
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_d
    :goto_5
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$5;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayTestActivity;->isTakepic:Z
    invoke-static {v5}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$33(Lobject/p2pwificam/clientActivity/PlayTestActivity;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1092
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$5;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$34(Lobject/p2pwificam/clientActivity/PlayTestActivity;Z)V

    .line 1093
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$5;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$5;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayTestActivity;->mBmp:Landroid/graphics/Bitmap;
    invoke-static {v6}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$29(Lobject/p2pwificam/clientActivity/PlayTestActivity;)Landroid/graphics/Bitmap;

    move-result-object v6

    # invokes: Lobject/p2pwificam/clientActivity/PlayTestActivity;->takePicture(Landroid/graphics/Bitmap;)V
    invoke-static {v5, v6}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$35(Lobject/p2pwificam/clientActivity/PlayTestActivity;Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 1084
    :cond_e
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$5;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    invoke-virtual {v5}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_d

    .line 1085
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$5;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayTestActivity;->mBmp:Landroid/graphics/Bitmap;
    invoke-static {v5}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$29(Lobject/p2pwificam/clientActivity/PlayTestActivity;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 1086
    const/4 v6, 0x1

    .line 1085
    invoke-static {v5, v4, v1, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1087
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$5;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayTestActivity;->videoViewStandard:Landroid/widget/ImageView;
    invoke-static {v5}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$24(Lobject/p2pwificam/clientActivity/PlayTestActivity;)Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1088
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$5;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayTestActivity;->videoViewStandard:Landroid/widget/ImageView;
    invoke-static {v5}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$24(Lobject/p2pwificam/clientActivity/PlayTestActivity;)Landroid/widget/ImageView;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1089
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$5;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayTestActivity;->vidoeView:Landroid/widget/ImageView;
    invoke-static {v5}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$12(Lobject/p2pwificam/clientActivity/PlayTestActivity;)Landroid/widget/ImageView;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_5

    .line 1100
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "height":I
    .end local v4    # "width":I
    :pswitch_2
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$5;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    invoke-virtual {v5}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->displayResolution()V

    goto/16 :goto_0

    .line 1018
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
