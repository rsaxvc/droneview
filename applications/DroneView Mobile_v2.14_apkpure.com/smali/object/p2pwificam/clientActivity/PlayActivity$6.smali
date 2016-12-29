.class Lobject/p2pwificam/clientActivity/PlayActivity$6;
.super Landroid/os/Handler;
.source "PlayActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pwificam/clientActivity/PlayActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/PlayActivity;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/PlayActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/PlayActivity$6;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    .line 1106
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 17
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1109
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->what:I

    const/4 v14, 0x1

    if-eq v13, v14, :cond_0

    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->what:I

    const/4 v14, 0x2

    if-ne v13, v14, :cond_1

    .line 1110
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lobject/p2pwificam/clientActivity/PlayActivity$6;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # invokes: Lobject/p2pwificam/clientActivity/PlayActivity;->setViewVisible()V
    invoke-static {v13}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$16(Lobject/p2pwificam/clientActivity/PlayActivity;)V

    .line 1112
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lobject/p2pwificam/clientActivity/PlayActivity$6;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->isPTZPrompt:Z
    invoke-static {v13}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$17(Lobject/p2pwificam/clientActivity/PlayActivity;)Z

    move-result v13

    if-nez v13, :cond_2

    .line 1113
    move-object/from16 v0, p0

    iget-object v13, v0, Lobject/p2pwificam/clientActivity/PlayActivity$6;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    const/4 v14, 0x1

    invoke-static {v13, v14}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$18(Lobject/p2pwificam/clientActivity/PlayActivity;Z)V

    .line 1117
    :cond_2
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->what:I

    packed-switch v13, :pswitch_data_0

    .line 1227
    :cond_3
    :goto_0
    :pswitch_0
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->what:I

    const/4 v14, 0x1

    if-eq v13, v14, :cond_4

    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->what:I

    const/4 v14, 0x2

    if-ne v13, v14, :cond_5

    .line 1230
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lobject/p2pwificam/clientActivity/PlayActivity$6;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    const/4 v14, 0x1

    invoke-static {v13, v14}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$41(Lobject/p2pwificam/clientActivity/PlayActivity;Z)V

    .line 1232
    move-object/from16 v0, p0

    iget-object v13, v0, Lobject/p2pwificam/clientActivity/PlayActivity$6;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->nPlayCount:I
    invoke-static {v13}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$53(Lobject/p2pwificam/clientActivity/PlayActivity;)I

    move-result v14

    add-int/lit8 v14, v14, 0x1

    invoke-static {v13, v14}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$54(Lobject/p2pwificam/clientActivity/PlayActivity;I)V

    .line 1233
    move-object/from16 v0, p0

    iget-object v13, v0, Lobject/p2pwificam/clientActivity/PlayActivity$6;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->nPlayCount:I
    invoke-static {v13}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$53(Lobject/p2pwificam/clientActivity/PlayActivity;)I

    move-result v13

    const/16 v14, 0x64

    if-lt v13, v14, :cond_5

    .line 1234
    move-object/from16 v0, p0

    iget-object v13, v0, Lobject/p2pwificam/clientActivity/PlayActivity$6;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    const/4 v14, 0x0

    invoke-static {v13, v14}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$54(Lobject/p2pwificam/clientActivity/PlayActivity;I)V

    .line 1237
    :cond_5
    :goto_1
    return-void

    .line 1123
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lobject/p2pwificam/clientActivity/PlayActivity$6;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->vidoeView:Landroid/widget/ImageView;
    invoke-static {v13}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$19(Lobject/p2pwificam/clientActivity/PlayActivity;)Landroid/widget/ImageView;

    move-result-object v13

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1124
    move-object/from16 v0, p0

    iget-object v13, v0, Lobject/p2pwificam/clientActivity/PlayActivity$6;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    invoke-virtual {v13}, Lobject/p2pwificam/clientActivity/PlayActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v13

    invoke-interface {v13}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/Display;->getWidth()I

    move-result v12

    .line 1125
    .local v12, "width":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lobject/p2pwificam/clientActivity/PlayActivity$6;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    invoke-virtual {v13}, Lobject/p2pwificam/clientActivity/PlayActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v13

    invoke-interface {v13}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/Display;->getHeight()I

    move-result v3

    .line 1126
    .local v3, "height":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lobject/p2pwificam/clientActivity/PlayActivity$6;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->nVideoHeight:I
    invoke-static {v13}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$20(Lobject/p2pwificam/clientActivity/PlayActivity;)I

    move-result v13

    int-to-double v13, v13

    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v13, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lobject/p2pwificam/clientActivity/PlayActivity$6;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->nVideoWidth:I
    invoke-static {v15}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$21(Lobject/p2pwificam/clientActivity/PlayActivity;)I

    move-result v15

    int-to-double v15, v15

    div-double/2addr v13, v15

    double-to-float v9, v13

    .line 1127
    .local v9, "s":F
    move-object/from16 v0, p0

    iget-object v13, v0, Lobject/p2pwificam/clientActivity/PlayActivity$6;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->isResolution:Ljava/lang/Boolean;
    invoke-static {v13}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$22(Lobject/p2pwificam/clientActivity/PlayActivity;)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-eqz v13, :cond_6

    .line 1128
    move-object/from16 v0, p0

    iget-object v14, v0, Lobject/p2pwificam/clientActivity/PlayActivity$6;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    move-object/from16 v0, p0

    iget-object v13, v0, Lobject/p2pwificam/clientActivity/PlayActivity$6;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->isResolution:Ljava/lang/Boolean;
    invoke-static {v13}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$22(Lobject/p2pwificam/clientActivity/PlayActivity;)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-eqz v13, :cond_9

    const/4 v13, 0x0

    :goto_2
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-static {v14, v13}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$23(Lobject/p2pwificam/clientActivity/PlayActivity;Ljava/lang/Boolean;)V

    .line 1129
    move-object/from16 v0, p0

    iget-object v13, v0, Lobject/p2pwificam/clientActivity/PlayActivity$6;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->txtResolution:Landroid/widget/TextView;
    invoke-static {v13}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$24(Lobject/p2pwificam/clientActivity/PlayActivity;)Landroid/widget/TextView;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v15, v0, Lobject/p2pwificam/clientActivity/PlayActivity$6;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->nVideoWidth:I
    invoke-static {v15}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$21(Lobject/p2pwificam/clientActivity/PlayActivity;)I

    move-result v15

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v15, "x"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 1130
    move-object/from16 v0, p0

    iget-object v15, v0, Lobject/p2pwificam/clientActivity/PlayActivity$6;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->nVideoHeight:I
    invoke-static {v15}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$20(Lobject/p2pwificam/clientActivity/PlayActivity;)I

    move-result v15

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 1129
    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1134
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lobject/p2pwificam/clientActivity/PlayActivity$6;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->isFPS:Ljava/lang/Boolean;
    invoke-static {v13}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$25(Lobject/p2pwificam/clientActivity/PlayActivity;)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-eqz v13, :cond_7

    .line 1135
    move-object/from16 v0, p0

    iget-object v14, v0, Lobject/p2pwificam/clientActivity/PlayActivity$6;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    move-object/from16 v0, p0

    iget-object v13, v0, Lobject/p2pwificam/clientActivity/PlayActivity$6;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->isFPS:Ljava/lang/Boolean;
    invoke-static {v13}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$25(Lobject/p2pwificam/clientActivity/PlayActivity;)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-eqz v13, :cond_a

    const/4 v13, 0x0

    :goto_3
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-static {v14, v13}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$26(Lobject/p2pwificam/clientActivity/PlayActivity;Ljava/lang/Boolean;)V

    .line 1136
    move-object/from16 v0, p0

    iget-object v13, v0, Lobject/p2pwificam/clientActivity/PlayActivity$6;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->txtFPS:Landroid/widget/TextView;
    invoke-static {v13}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$27(Lobject/p2pwificam/clientActivity/PlayActivity;)Landroid/widget/TextView;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lobject/p2pwificam/clientActivity/PlayActivity$6;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    iget v14, v14, Lobject/p2pwificam/clientActivity/PlayActivity;->VideoFPS:I

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1137
    move-object/from16 v0, p0

    iget-object v13, v0, Lobject/p2pwificam/clientActivity/PlayActivity$6;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->txtBPS:Landroid/widget/TextView;
    invoke-static {v13}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$28(Lobject/p2pwificam/clientActivity/PlayActivity;)Landroid/widget/TextView;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v15, v0, Lobject/p2pwificam/clientActivity/PlayActivity$6;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    iget v15, v15, Lobject/p2pwificam/clientActivity/PlayActivity;->VideoBPS:I

    mul-int/lit8 v15, v15, 0x8

    div-int/lit16 v15, v15, 0x400

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v15, "kps"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1140
    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lobject/p2pwificam/clientActivity/PlayActivity$6;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    invoke-virtual {v13}, Lobject/p2pwificam/clientActivity/PlayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v13

    iget v13, v13, Landroid/content/res/Configuration;->orientation:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_b

    .line 1141
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 1142
    int-to-float v13, v12

    mul-float/2addr v13, v9

    float-to-int v13, v13

    .line 1141
    invoke-direct {v5, v12, v13}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1143
    .local v5, "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v13, 0x11

    iput v13, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1144
    move-object/from16 v0, p0

    iget-object v13, v0, Lobject/p2pwificam/clientActivity/PlayActivity$6;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->myGlSurfaceView:Landroid/opengl/GLSurfaceView;
    invoke-static {v13}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$29(Lobject/p2pwificam/clientActivity/PlayActivity;)Landroid/opengl/GLSurfaceView;

    move-result-object v13

    invoke-virtual {v13, v5}, Landroid/opengl/GLSurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1151
    .end local v5    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_8
    :goto_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lobject/p2pwificam/clientActivity/PlayActivity$6;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->myRender:Lobject/p2pwificam/clientActivity/MyRender;
    invoke-static {v13}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$30(Lobject/p2pwificam/clientActivity/PlayActivity;)Lobject/p2pwificam/clientActivity/MyRender;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lobject/p2pwificam/clientActivity/PlayActivity$6;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->videodata:[B
    invoke-static {v14}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$31(Lobject/p2pwificam/clientActivity/PlayActivity;)[B

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lobject/p2pwificam/clientActivity/PlayActivity$6;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->nVideoWidth:I
    invoke-static {v15}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$21(Lobject/p2pwificam/clientActivity/PlayActivity;)I

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lobject/p2pwificam/clientActivity/PlayActivity$6;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    move-object/from16 v16, v0

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->nVideoHeight:I
    invoke-static/range {v16 .. v16}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$20(Lobject/p2pwificam/clientActivity/PlayActivity;)I

    move-result v16

    invoke-virtual/range {v13 .. v16}, Lobject/p2pwificam/clientActivity/MyRender;->writeSample([BII)I

    .line 1152
    move-object/from16 v0, p0

    iget-object v13, v0, Lobject/p2pwificam/clientActivity/PlayActivity$6;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->videoViewStandard:Landroid/widget/ImageView;
    invoke-static {v13}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$32(Lobject/p2pwificam/clientActivity/PlayActivity;)Landroid/widget/ImageView;

    move-result-object v13

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1153
    move-object/from16 v0, p0

    iget-object v13, v0, Lobject/p2pwificam/clientActivity/PlayActivity$6;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->isTakeVideo:Z
    invoke-static {v13}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$33(Lobject/p2pwificam/clientActivity/PlayActivity;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 1155
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    move-object/from16 v0, p0

    iget-object v15, v0, Lobject/p2pwificam/clientActivity/PlayActivity$6;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->start_record_time:J
    invoke-static {v15}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$34(Lobject/p2pwificam/clientActivity/PlayActivity;)J

    move-result-wide v15

    sub-long/2addr v13, v15

    const-wide/16 v15, 0x3e8

    div-long v7, v13, v15

    .line 1156
    .local v7, "period":J
    const-wide/16 v13, 0x3c

    rem-long v13, v7, v13

    long-to-int v10, v13

    .line 1157
    .local v10, "second":I
    const-wide/16 v13, 0x3c

    div-long/2addr v7, v13

    .line 1158
    const-wide/16 v13, 0x3c

    rem-long v13, v7, v13

    long-to-int v6, v13

    .line 1159
    .local v6, "min":I
    const-wide/16 v13, 0x3c

    div-long/2addr v7, v13

    .line 1160
    const-string v13, "%02d:%02d:%02d  "

    const/4 v14, 0x3

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 1161
    .local v11, "str":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lobject/p2pwificam/clientActivity/PlayActivity$6;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->txtRecordText:Landroid/widget/TextView;
    invoke-static {v13}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$35(Lobject/p2pwificam/clientActivity/PlayActivity;)Landroid/widget/TextView;

    move-result-object v13

    invoke-virtual {v13, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1128
    .end local v6    # "min":I
    .end local v7    # "period":J
    .end local v10    # "second":I
    .end local v11    # "str":Ljava/lang/String;
    :cond_9
    const/4 v13, 0x1

    goto/16 :goto_2

    .line 1135
    :cond_a
    const/4 v13, 0x1

    goto/16 :goto_3

    .line 1145
    :cond_b
    move-object/from16 v0, p0

    iget-object v13, v0, Lobject/p2pwificam/clientActivity/PlayActivity$6;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    invoke-virtual {v13}, Lobject/p2pwificam/clientActivity/PlayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v13

    iget v13, v13, Landroid/content/res/Configuration;->orientation:I

    const/4 v14, 0x2

    if-ne v13, v14, :cond_8

    .line 1146
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v5, v12, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1148
    .restart local v5    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v13, 0x11

    iput v13, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1149
    move-object/from16 v0, p0

    iget-object v13, v0, Lobject/p2pwificam/clientActivity/PlayActivity$6;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->myGlSurfaceView:Landroid/opengl/GLSurfaceView;
    invoke-static {v13}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$29(Lobject/p2pwificam/clientActivity/PlayActivity;)Landroid/opengl/GLSurfaceView;

    move-result-object v13

    invoke-virtual {v13, v5}, Landroid/opengl/GLSurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_4

    .line 1168
    .end local v3    # "height":I
    .end local v5    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v9    # "s":F
    .end local v12    # "width":I
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lobject/p2pwificam/clientActivity/PlayActivity$6;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->ptzTakepic:Landroid/widget/ImageButton;
    invoke-static {v13}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$36(Lobject/p2pwificam/clientActivity/PlayActivity;)Landroid/widget/ImageButton;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1169
    move-object/from16 v0, p0

    iget-object v13, v0, Lobject/p2pwificam/clientActivity/PlayActivity$6;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->ptzTakeVideo:Landroid/widget/ImageButton;
    invoke-static {v13}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$37(Lobject/p2pwificam/clientActivity/PlayActivity;)Landroid/widget/ImageButton;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1170
    move-object/from16 v0, p0

    iget-object v13, v0, Lobject/p2pwificam/clientActivity/PlayActivity$6;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->myGlSurfaceView:Landroid/opengl/GLSurfaceView;
    invoke-static {v13}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$29(Lobject/p2pwificam/clientActivity/PlayActivity;)Landroid/opengl/GLSurfaceView;

    move-result-object v13

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/opengl/GLSurfaceView;->setVisibility(I)V

    .line 1171
    move-object/from16 v0, p0

    iget-object v13, v0, Lobject/p2pwificam/clientActivity/PlayActivity$6;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    .line 1172
    move-object/from16 v0, p0

    iget-object v14, v0, Lobject/p2pwificam/clientActivity/PlayActivity$6;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->videodata:[B
    invoke-static {v14}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$31(Lobject/p2pwificam/clientActivity/PlayActivity;)[B

    move-result-object v14

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lobject/p2pwificam/clientActivity/PlayActivity$6;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    move-object/from16 v16, v0

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->videoDataLen:I
    invoke-static/range {v16 .. v16}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$38(Lobject/p2pwificam/clientActivity/PlayActivity;)I

    move-result v16

    invoke-static/range {v14 .. v16}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 1171
    invoke-static {v13, v14}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$39(Lobject/p2pwificam/clientActivity/PlayActivity;Landroid/graphics/Bitmap;)V

    .line 1173
    move-object/from16 v0, p0

    iget-object v13, v0, Lobject/p2pwificam/clientActivity/PlayActivity$6;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->mBmp:Landroid/graphics/Bitmap;
    invoke-static {v13}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$40(Lobject/p2pwificam/clientActivity/PlayActivity;)Landroid/graphics/Bitmap;

    move-result-object v13

    if-nez v13, :cond_c

    .line 1174
    const-string v13, "PlayActivity"

    const-string v14, "bmp can\'t be decode..."

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1175
    move-object/from16 v0, p0

    iget-object v13, v0, Lobject/p2pwificam/clientActivity/PlayActivity$6;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    const/4 v14, 0x1

    invoke-static {v13, v14}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$41(Lobject/p2pwificam/clientActivity/PlayActivity;Z)V

    goto/16 :goto_1

    .line 1178
    :cond_c
    move-object/from16 v0, p0

    iget-object v13, v0, Lobject/p2pwificam/clientActivity/PlayActivity$6;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    invoke-virtual {v13}, Lobject/p2pwificam/clientActivity/PlayActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v13

    invoke-interface {v13}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/Display;->getWidth()I

    move-result v12

    .line 1179
    .restart local v12    # "width":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lobject/p2pwificam/clientActivity/PlayActivity$6;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    invoke-virtual {v13}, Lobject/p2pwificam/clientActivity/PlayActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v13

    invoke-interface {v13}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/Display;->getHeight()I

    move-result v3

    .line 1181
    .restart local v3    # "height":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lobject/p2pwificam/clientActivity/PlayActivity$6;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    move-object/from16 v0, p0

    iget-object v14, v0, Lobject/p2pwificam/clientActivity/PlayActivity$6;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->mBmp:Landroid/graphics/Bitmap;
    invoke-static {v14}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$40(Lobject/p2pwificam/clientActivity/PlayActivity;)Landroid/graphics/Bitmap;

    move-result-object v14

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    invoke-static {v13, v14}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$42(Lobject/p2pwificam/clientActivity/PlayActivity;I)V

    .line 1182
    move-object/from16 v0, p0

    iget-object v13, v0, Lobject/p2pwificam/clientActivity/PlayActivity$6;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    move-object/from16 v0, p0

    iget-object v14, v0, Lobject/p2pwificam/clientActivity/PlayActivity$6;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->mBmp:Landroid/graphics/Bitmap;
    invoke-static {v14}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$40(Lobject/p2pwificam/clientActivity/PlayActivity;)Landroid/graphics/Bitmap;

    move-result-object v14

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    invoke-static {v13, v14}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$43(Lobject/p2pwificam/clientActivity/PlayActivity;I)V

    .line 1184
    move-object/from16 v0, p0

    iget-object v13, v0, Lobject/p2pwificam/clientActivity/PlayActivity$6;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    invoke-virtual {v13}, Lobject/p2pwificam/clientActivity/PlayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v13

    iget v13, v13, Landroid/content/res/Configuration;->orientation:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_e

    .line 1185
    move-object/from16 v0, p0

    iget-object v13, v0, Lobject/p2pwificam/clientActivity/PlayActivity$6;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->mBmp:Landroid/graphics/Bitmap;
    invoke-static {v13}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$40(Lobject/p2pwificam/clientActivity/PlayActivity;)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 1186
    mul-int/lit8 v14, v12, 0x3

    div-int/lit8 v14, v14, 0x4

    const/4 v15, 0x1

    .line 1185
    invoke-static {v13, v12, v14, v15}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1187
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v13, v0, Lobject/p2pwificam/clientActivity/PlayActivity$6;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->videoViewStandard:Landroid/widget/ImageView;
    invoke-static {v13}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$32(Lobject/p2pwificam/clientActivity/PlayActivity;)Landroid/widget/ImageView;

    move-result-object v13

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1188
    move-object/from16 v0, p0

    iget-object v13, v0, Lobject/p2pwificam/clientActivity/PlayActivity$6;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->vidoeView:Landroid/widget/ImageView;
    invoke-static {v13}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$19(Lobject/p2pwificam/clientActivity/PlayActivity;)Landroid/widget/ImageView;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1189
    move-object/from16 v0, p0

    iget-object v13, v0, Lobject/p2pwificam/clientActivity/PlayActivity$6;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->vidoeView:Landroid/widget/ImageView;
    invoke-static {v13}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$19(Lobject/p2pwificam/clientActivity/PlayActivity;)Landroid/widget/ImageView;

    move-result-object v13

    invoke-virtual {v13, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1198
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    :cond_d
    :goto_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lobject/p2pwificam/clientActivity/PlayActivity$6;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->isTakepic:Z
    invoke-static {v13}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$44(Lobject/p2pwificam/clientActivity/PlayActivity;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 1199
    move-object/from16 v0, p0

    iget-object v13, v0, Lobject/p2pwificam/clientActivity/PlayActivity$6;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    const/4 v14, 0x0

    invoke-static {v13, v14}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$45(Lobject/p2pwificam/clientActivity/PlayActivity;Z)V

    .line 1200
    move-object/from16 v0, p0

    iget-object v13, v0, Lobject/p2pwificam/clientActivity/PlayActivity$6;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    move-object/from16 v0, p0

    iget-object v14, v0, Lobject/p2pwificam/clientActivity/PlayActivity$6;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->mBmp:Landroid/graphics/Bitmap;
    invoke-static {v14}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$40(Lobject/p2pwificam/clientActivity/PlayActivity;)Landroid/graphics/Bitmap;

    move-result-object v14

    # invokes: Lobject/p2pwificam/clientActivity/PlayActivity;->takePicture(Landroid/graphics/Bitmap;)V
    invoke-static {v13, v14}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$46(Lobject/p2pwificam/clientActivity/PlayActivity;Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 1191
    :cond_e
    move-object/from16 v0, p0

    iget-object v13, v0, Lobject/p2pwificam/clientActivity/PlayActivity$6;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    invoke-virtual {v13}, Lobject/p2pwificam/clientActivity/PlayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v13

    iget v13, v13, Landroid/content/res/Configuration;->orientation:I

    const/4 v14, 0x2

    if-ne v13, v14, :cond_d

    .line 1192
    move-object/from16 v0, p0

    iget-object v13, v0, Lobject/p2pwificam/clientActivity/PlayActivity$6;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->mBmp:Landroid/graphics/Bitmap;
    invoke-static {v13}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$40(Lobject/p2pwificam/clientActivity/PlayActivity;)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 1193
    const/4 v14, 0x1

    .line 1192
    invoke-static {v13, v12, v3, v14}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1194
    .restart local v1    # "bitmap":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v13, v0, Lobject/p2pwificam/clientActivity/PlayActivity$6;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->videoViewStandard:Landroid/widget/ImageView;
    invoke-static {v13}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$32(Lobject/p2pwificam/clientActivity/PlayActivity;)Landroid/widget/ImageView;

    move-result-object v13

    invoke-virtual {v13, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1195
    move-object/from16 v0, p0

    iget-object v13, v0, Lobject/p2pwificam/clientActivity/PlayActivity$6;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->videoViewStandard:Landroid/widget/ImageView;
    invoke-static {v13}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$32(Lobject/p2pwificam/clientActivity/PlayActivity;)Landroid/widget/ImageView;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1196
    move-object/from16 v0, p0

    iget-object v13, v0, Lobject/p2pwificam/clientActivity/PlayActivity$6;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->vidoeView:Landroid/widget/ImageView;
    invoke-static {v13}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$19(Lobject/p2pwificam/clientActivity/PlayActivity;)Landroid/widget/ImageView;

    move-result-object v13

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_5

    .line 1206
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v3    # "height":I
    .end local v12    # "width":I
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lobject/p2pwificam/clientActivity/PlayActivity$6;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    invoke-virtual {v13}, Lobject/p2pwificam/clientActivity/PlayActivity;->displayResolution()V

    goto/16 :goto_0

    .line 1211
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lobject/p2pwificam/clientActivity/PlayActivity$6;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->_camera:Lcom/easyview/basecamera/BaseCamera;
    invoke-static {v13}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$47(Lobject/p2pwificam/clientActivity/PlayActivity;)Lcom/easyview/basecamera/BaseCamera;

    move-result-object v13

    if-eqz v13, :cond_3

    .line 1212
    move-object/from16 v0, p0

    iget-object v13, v0, Lobject/p2pwificam/clientActivity/PlayActivity$6;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->_camera:Lcom/easyview/basecamera/BaseCamera;
    invoke-static {v13}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$47(Lobject/p2pwificam/clientActivity/PlayActivity;)Lcom/easyview/basecamera/BaseCamera;

    move-result-object v2

    check-cast v2, Lcom/easyview/ppcs/PPCSCamera;

    .line 1213
    .local v2, "camera":Lcom/easyview/ppcs/PPCSCamera;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_6
    const/16 v13, 0x8

    if-ge v4, v13, :cond_3

    .line 1215
    iget-object v13, v2, Lcom/easyview/ppcs/PPCSCamera;->ioSwitchParams:[Lcom/easyview/struct/EVCommandDefs$IOSwitchParam;

    aget-object v13, v13, v4

    iget v13, v13, Lcom/easyview/struct/EVCommandDefs$IOSwitchParam;->enable:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_f

    move-object/from16 v0, p0

    iget-object v13, v0, Lobject/p2pwificam/clientActivity/PlayActivity$6;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->buttonSwitch:[Landroid/widget/Button;
    invoke-static {v13}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$48(Lobject/p2pwificam/clientActivity/PlayActivity;)[Landroid/widget/Button;

    move-result-object v13

    aget-object v13, v13, v4

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1216
    :cond_f
    move-object/from16 v0, p0

    iget-object v13, v0, Lobject/p2pwificam/clientActivity/PlayActivity$6;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->buttonSwitch:[Landroid/widget/Button;
    invoke-static {v13}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$48(Lobject/p2pwificam/clientActivity/PlayActivity;)[Landroid/widget/Button;

    move-result-object v13

    aget-object v13, v13, v4

    iget-object v14, v2, Lcom/easyview/ppcs/PPCSCamera;->ioSwitchParams:[Lcom/easyview/struct/EVCommandDefs$IOSwitchParam;

    aget-object v14, v14, v4

    iget-object v14, v14, Lcom/easyview/struct/EVCommandDefs$IOSwitchParam;->Name:Lstruct/CString;

    invoke-virtual {v14}, Lstruct/CString;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1213
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 1222
    .end local v2    # "camera":Lcom/easyview/ppcs/PPCSCamera;
    .end local v4    # "i":I
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lobject/p2pwificam/clientActivity/PlayActivity$6;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->_light_white:Landroid/widget/SeekBar;
    invoke-static {v13}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$49(Lobject/p2pwificam/clientActivity/PlayActivity;)Landroid/widget/SeekBar;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lobject/p2pwificam/clientActivity/PlayActivity$6;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->light_white_value:I
    invoke-static {v14}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$50(Lobject/p2pwificam/clientActivity/PlayActivity;)I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1223
    move-object/from16 v0, p0

    iget-object v13, v0, Lobject/p2pwificam/clientActivity/PlayActivity$6;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->_light_yellow:Landroid/widget/SeekBar;
    invoke-static {v13}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$51(Lobject/p2pwificam/clientActivity/PlayActivity;)Landroid/widget/SeekBar;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lobject/p2pwificam/clientActivity/PlayActivity$6;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->light_yellow_value:I
    invoke-static {v14}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$52(Lobject/p2pwificam/clientActivity/PlayActivity;)I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/widget/SeekBar;->setProgress(I)V

    goto/16 :goto_0

    .line 1117
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
