.class Lobject/p2pwificam/clientActivity/PlayAlarmActivity$5;
.super Landroid/os/Handler;
.source "PlayAlarmActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pwificam/clientActivity/PlayAlarmActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$5;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    .line 893
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 896
    iget v5, p1, Landroid/os/Message;->what:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_0

    iget v5, p1, Landroid/os/Message;->what:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    .line 897
    :cond_0
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$5;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    # invokes: Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->setViewVisible()V
    invoke-static {v5}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$9(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)V

    .line 899
    :cond_1
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$5;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->isPTZPrompt:Z
    invoke-static {v5}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$10(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 900
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$5;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$11(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;Z)V

    .line 901
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$5;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    const v6, 0x7f0601a2

    invoke-virtual {v5, v6}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->showToast(I)V

    .line 904
    :cond_2
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 991
    :cond_3
    :goto_0
    iget v5, p1, Landroid/os/Message;->what:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_4

    iget v5, p1, Landroid/os/Message;->what:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_5

    .line 993
    :cond_4
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$5;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    invoke-virtual {v5}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->showTimeStamp()V

    .line 994
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$5;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$30(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;Z)V

    .line 996
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$5;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->nPlayCount:I
    invoke-static {v5}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$36(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-static {v5, v6}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$37(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;I)V

    .line 997
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$5;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->nPlayCount:I
    invoke-static {v5}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$36(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)I

    move-result v5

    const/16 v6, 0x64

    if-lt v5, v6, :cond_5

    .line 998
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$5;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$37(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;I)V

    .line 1001
    :cond_5
    :goto_1
    return-void

    .line 910
    :pswitch_0
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$5;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->vidoeView:Landroid/widget/ImageView;
    invoke-static {v5}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$12(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)Landroid/widget/ImageView;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 911
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$5;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    invoke-virtual {v5}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Display;->getWidth()I

    move-result v4

    .line 912
    .local v4, "width":I
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$5;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    invoke-virtual {v5}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Display;->getHeight()I

    move-result v1

    .line 913
    .local v1, "height":I
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$5;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->nVideoHeight:I
    invoke-static {v5}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$13(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)I

    move-result v5

    int-to-double v5, v5

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v5, v7

    iget-object v7, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$5;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->nVideoWidth:I
    invoke-static {v7}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$14(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)I

    move-result v7

    int-to-double v7, v7

    div-double/2addr v5, v7

    double-to-float v3, v5

    .line 914
    .local v3, "s":F
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$5;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->isResolution:Ljava/lang/Boolean;
    invoke-static {v5}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$15(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 915
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$5;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$5;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->isResolution:Ljava/lang/Boolean;
    invoke-static {v5}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$15(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_9

    const/4 v5, 0x0

    :goto_2
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v6, v5}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$16(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;Ljava/lang/Boolean;)V

    .line 916
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$5;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->txtResolution:Landroid/widget/TextView;
    invoke-static {v5}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$17(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)Landroid/widget/TextView;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v7, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$5;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->nVideoWidth:I
    invoke-static {v7}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$14(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 917
    iget-object v7, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$5;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->nVideoHeight:I
    invoke-static {v7}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$13(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 916
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 921
    :cond_6
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$5;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->isFPS:Ljava/lang/Boolean;
    invoke-static {v5}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$18(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 922
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$5;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$5;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->isFPS:Ljava/lang/Boolean;
    invoke-static {v5}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$18(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_a

    const/4 v5, 0x0

    :goto_3
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v6, v5}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$19(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;Ljava/lang/Boolean;)V

    .line 923
    const-string v5, "count"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "fps...........:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$5;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    iget v7, v7, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->VideoFPS:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".....bps:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$5;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    iget v7, v7, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->VideoBPS:I

    mul-int/lit8 v7, v7, 0x8

    div-int/lit16 v7, v7, 0x400

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$5;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->text_bps:Landroid/widget/TextView;
    invoke-static {v5}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$20(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)Landroid/widget/TextView;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v7, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$5;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    iget v7, v7, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->VideoBPS:I

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

    .line 929
    :cond_7
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$5;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    invoke-virtual {v5}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_b

    .line 930
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 931
    int-to-float v5, v4

    mul-float/2addr v5, v3

    float-to-int v5, v5

    .line 930
    invoke-direct {v2, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 932
    .local v2, "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v5, 0x11

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 933
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$5;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->myGlSurfaceView:Landroid/opengl/GLSurfaceView;
    invoke-static {v5}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$21(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)Landroid/opengl/GLSurfaceView;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/opengl/GLSurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 940
    .end local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_8
    :goto_4
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$5;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->myRender:Lobject/p2pwificam/clientActivity/MyRender;
    invoke-static {v5}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$22(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)Lobject/p2pwificam/clientActivity/MyRender;

    move-result-object v5

    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$5;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->videodata:[B
    invoke-static {v6}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$23(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)[B

    move-result-object v6

    iget-object v7, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$5;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->nVideoWidth:I
    invoke-static {v7}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$14(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)I

    move-result v7

    iget-object v8, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$5;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->nVideoHeight:I
    invoke-static {v8}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$13(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)I

    move-result v8

    invoke-virtual {v5, v6, v7, v8}, Lobject/p2pwificam/clientActivity/MyRender;->writeSample([BII)I

    .line 941
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$5;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->videoViewStandard:Landroid/widget/ImageView;
    invoke-static {v5}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$24(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)Landroid/widget/ImageView;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 915
    :cond_9
    const/4 v5, 0x1

    goto/16 :goto_2

    .line 922
    :cond_a
    const/4 v5, 0x1

    goto/16 :goto_3

    .line 934
    :cond_b
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$5;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    invoke-virtual {v5}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_8

    .line 935
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v4, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 937
    .restart local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v5, 0x11

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 938
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$5;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->myGlSurfaceView:Landroid/opengl/GLSurfaceView;
    invoke-static {v5}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$21(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)Landroid/opengl/GLSurfaceView;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/opengl/GLSurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_4

    .line 947
    .end local v1    # "height":I
    .end local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v3    # "s":F
    .end local v4    # "width":I
    :pswitch_1
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$5;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->ptzTakepic:Landroid/widget/ImageButton;
    invoke-static {v5}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$25(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)Landroid/widget/ImageButton;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 948
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$5;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->ptzTakeVideo:Landroid/widget/ImageButton;
    invoke-static {v5}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$26(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)Landroid/widget/ImageButton;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 949
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$5;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->myGlSurfaceView:Landroid/opengl/GLSurfaceView;
    invoke-static {v5}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$21(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)Landroid/opengl/GLSurfaceView;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/opengl/GLSurfaceView;->setVisibility(I)V

    .line 950
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$5;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    .line 951
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$5;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->videodata:[B
    invoke-static {v6}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$23(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)[B

    move-result-object v6

    const/4 v7, 0x0

    iget-object v8, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$5;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->videoDataLen:I
    invoke-static {v8}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$27(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)I

    move-result v8

    invoke-static {v6, v7, v8}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 950
    invoke-static {v5, v6}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$28(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;Landroid/graphics/Bitmap;)V

    .line 952
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$5;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->mBmp:Landroid/graphics/Bitmap;
    invoke-static {v5}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$29(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)Landroid/graphics/Bitmap;

    move-result-object v5

    if-nez v5, :cond_c

    .line 953
    const-string v5, "PlayTestActivity"

    const-string v6, "bmp can\'t be decode..."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$5;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$30(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;Z)V

    goto/16 :goto_1

    .line 957
    :cond_c
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$5;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    invoke-virtual {v5}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Display;->getWidth()I

    move-result v4

    .line 958
    .restart local v4    # "width":I
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$5;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    invoke-virtual {v5}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Display;->getHeight()I

    move-result v1

    .line 960
    .restart local v1    # "height":I
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$5;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$5;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->mBmp:Landroid/graphics/Bitmap;
    invoke-static {v6}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$29(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-static {v5, v6}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$31(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;I)V

    .line 961
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$5;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$5;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->mBmp:Landroid/graphics/Bitmap;
    invoke-static {v6}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$29(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-static {v5, v6}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$32(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;I)V

    .line 963
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$5;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    invoke-virtual {v5}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_e

    .line 964
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$5;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->mBmp:Landroid/graphics/Bitmap;
    invoke-static {v5}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$29(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 965
    mul-int/lit8 v6, v4, 0x3

    div-int/lit8 v6, v6, 0x4

    const/4 v7, 0x1

    .line 964
    invoke-static {v5, v4, v6, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 966
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$5;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->videoViewStandard:Landroid/widget/ImageView;
    invoke-static {v5}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$24(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)Landroid/widget/ImageView;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 967
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$5;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->vidoeView:Landroid/widget/ImageView;
    invoke-static {v5}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$12(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)Landroid/widget/ImageView;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 968
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$5;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->vidoeView:Landroid/widget/ImageView;
    invoke-static {v5}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$12(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 977
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_d
    :goto_5
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$5;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->isTakepic:Z
    invoke-static {v5}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$33(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 978
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$5;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$34(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;Z)V

    .line 979
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$5;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$5;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->mBmp:Landroid/graphics/Bitmap;
    invoke-static {v6}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$29(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)Landroid/graphics/Bitmap;

    move-result-object v6

    # invokes: Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->takePicture(Landroid/graphics/Bitmap;)V
    invoke-static {v5, v6}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$35(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 970
    :cond_e
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$5;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    invoke-virtual {v5}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_d

    .line 971
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$5;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->mBmp:Landroid/graphics/Bitmap;
    invoke-static {v5}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$29(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 972
    const/4 v6, 0x1

    .line 971
    invoke-static {v5, v4, v1, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 973
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$5;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->videoViewStandard:Landroid/widget/ImageView;
    invoke-static {v5}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$24(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 974
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$5;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->videoViewStandard:Landroid/widget/ImageView;
    invoke-static {v5}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$24(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)Landroid/widget/ImageView;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 975
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$5;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->vidoeView:Landroid/widget/ImageView;
    invoke-static {v5}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$12(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)Landroid/widget/ImageView;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_5

    .line 986
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "height":I
    .end local v4    # "width":I
    :pswitch_2
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$5;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    invoke-virtual {v5}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->displayResolution()V

    goto/16 :goto_0

    .line 904
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
