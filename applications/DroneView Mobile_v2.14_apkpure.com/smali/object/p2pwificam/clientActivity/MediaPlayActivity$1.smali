.class Lobject/p2pwificam/clientActivity/MediaPlayActivity$1;
.super Landroid/os/Handler;
.source "MediaPlayActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pwificam/clientActivity/MediaPlayActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/MediaPlayActivity;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/MediaPlayActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/MediaPlayActivity$1;->this$0:Lobject/p2pwificam/clientActivity/MediaPlayActivity;

    .line 125
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v12, 0x11

    const/16 v11, 0x8

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 127
    iget-object v7, p0, Lobject/p2pwificam/clientActivity/MediaPlayActivity$1;->this$0:Lobject/p2pwificam/clientActivity/MediaPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/MediaPlayActivity;->layoutConnPrompt:Landroid/widget/LinearLayout;
    invoke-static {v7}, Lobject/p2pwificam/clientActivity/MediaPlayActivity;->access$0(Lobject/p2pwificam/clientActivity/MediaPlayActivity;)Landroid/widget/LinearLayout;

    move-result-object v7

    invoke-virtual {v7, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 128
    iget v7, p1, Landroid/os/Message;->what:I

    sparse-switch v7, :sswitch_data_0

    .line 183
    :goto_0
    return-void

    .line 131
    :sswitch_0
    iget-object v7, p0, Lobject/p2pwificam/clientActivity/MediaPlayActivity$1;->this$0:Lobject/p2pwificam/clientActivity/MediaPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/MediaPlayActivity;->myRender:Lobject/p2pwificam/clientActivity/MyRender;
    invoke-static {v7}, Lobject/p2pwificam/clientActivity/MediaPlayActivity;->access$1(Lobject/p2pwificam/clientActivity/MediaPlayActivity;)Lobject/p2pwificam/clientActivity/MyRender;

    move-result-object v7

    iget-object v8, p0, Lobject/p2pwificam/clientActivity/MediaPlayActivity$1;->this$0:Lobject/p2pwificam/clientActivity/MediaPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/MediaPlayActivity;->videodata:[B
    invoke-static {v8}, Lobject/p2pwificam/clientActivity/MediaPlayActivity;->access$2(Lobject/p2pwificam/clientActivity/MediaPlayActivity;)[B

    move-result-object v8

    iget-object v9, p0, Lobject/p2pwificam/clientActivity/MediaPlayActivity$1;->this$0:Lobject/p2pwificam/clientActivity/MediaPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/MediaPlayActivity;->nVideoWidth:I
    invoke-static {v9}, Lobject/p2pwificam/clientActivity/MediaPlayActivity;->access$3(Lobject/p2pwificam/clientActivity/MediaPlayActivity;)I

    move-result v9

    iget-object v10, p0, Lobject/p2pwificam/clientActivity/MediaPlayActivity$1;->this$0:Lobject/p2pwificam/clientActivity/MediaPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/MediaPlayActivity;->nVideoHeight:I
    invoke-static {v10}, Lobject/p2pwificam/clientActivity/MediaPlayActivity;->access$4(Lobject/p2pwificam/clientActivity/MediaPlayActivity;)I

    move-result v10

    invoke-virtual {v7, v8, v9, v10}, Lobject/p2pwificam/clientActivity/MyRender;->writeSample([BII)I

    .line 132
    iget-object v7, p0, Lobject/p2pwificam/clientActivity/MediaPlayActivity$1;->this$0:Lobject/p2pwificam/clientActivity/MediaPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/MediaPlayActivity;->playImg:Landroid/widget/ImageView;
    invoke-static {v7}, Lobject/p2pwificam/clientActivity/MediaPlayActivity;->access$5(Lobject/p2pwificam/clientActivity/MediaPlayActivity;)Landroid/widget/ImageView;

    move-result-object v7

    invoke-virtual {v7, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 133
    iget-object v7, p0, Lobject/p2pwificam/clientActivity/MediaPlayActivity$1;->this$0:Lobject/p2pwificam/clientActivity/MediaPlayActivity;

    invoke-virtual {v7}, Lobject/p2pwificam/clientActivity/MediaPlayActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v7

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Display;->getWidth()I

    move-result v6

    .line 134
    .local v6, "width":I
    iget-object v7, p0, Lobject/p2pwificam/clientActivity/MediaPlayActivity$1;->this$0:Lobject/p2pwificam/clientActivity/MediaPlayActivity;

    invoke-virtual {v7}, Lobject/p2pwificam/clientActivity/MediaPlayActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v7

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Display;->getHeight()I

    move-result v3

    .line 135
    .local v3, "height":I
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v6, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 137
    .local v4, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iput v12, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 138
    iget-object v7, p0, Lobject/p2pwificam/clientActivity/MediaPlayActivity$1;->this$0:Lobject/p2pwificam/clientActivity/MediaPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/MediaPlayActivity;->myGlSurfaceView:Landroid/opengl/GLSurfaceView;
    invoke-static {v7}, Lobject/p2pwificam/clientActivity/MediaPlayActivity;->access$6(Lobject/p2pwificam/clientActivity/MediaPlayActivity;)Landroid/opengl/GLSurfaceView;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/opengl/GLSurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 143
    .end local v3    # "height":I
    .end local v4    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v6    # "width":I
    :sswitch_1
    iget-object v7, p0, Lobject/p2pwificam/clientActivity/MediaPlayActivity$1;->this$0:Lobject/p2pwificam/clientActivity/MediaPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/MediaPlayActivity;->videodata:[B
    invoke-static {v7}, Lobject/p2pwificam/clientActivity/MediaPlayActivity;->access$2(Lobject/p2pwificam/clientActivity/MediaPlayActivity;)[B

    move-result-object v7

    .line 144
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/MediaPlayActivity$1;->this$0:Lobject/p2pwificam/clientActivity/MediaPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/MediaPlayActivity;->videoDataLen:I
    invoke-static {v8}, Lobject/p2pwificam/clientActivity/MediaPlayActivity;->access$7(Lobject/p2pwificam/clientActivity/MediaPlayActivity;)I

    move-result v8

    .line 143
    invoke-static {v7, v10, v8}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 146
    .local v1, "bmp":Landroid/graphics/Bitmap;
    const/4 v0, 0x0

    .line 147
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v7, p0, Lobject/p2pwificam/clientActivity/MediaPlayActivity$1;->this$0:Lobject/p2pwificam/clientActivity/MediaPlayActivity;

    invoke-virtual {v7}, Lobject/p2pwificam/clientActivity/MediaPlayActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v7

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Display;->getWidth()I

    move-result v6

    .line 148
    .restart local v6    # "width":I
    iget-object v7, p0, Lobject/p2pwificam/clientActivity/MediaPlayActivity$1;->this$0:Lobject/p2pwificam/clientActivity/MediaPlayActivity;

    invoke-virtual {v7}, Lobject/p2pwificam/clientActivity/MediaPlayActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v7

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Display;->getHeight()I

    move-result v3

    .line 149
    .restart local v3    # "height":I
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 150
    mul-int/lit8 v7, v6, 0x3

    div-int/lit8 v7, v7, 0x4

    .line 149
    invoke-direct {v4, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 151
    .restart local v4    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    iput v12, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 152
    iget-object v7, p0, Lobject/p2pwificam/clientActivity/MediaPlayActivity$1;->this$0:Lobject/p2pwificam/clientActivity/MediaPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/MediaPlayActivity;->playImg:Landroid/widget/ImageView;
    invoke-static {v7}, Lobject/p2pwificam/clientActivity/MediaPlayActivity;->access$5(Lobject/p2pwificam/clientActivity/MediaPlayActivity;)Landroid/widget/ImageView;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 153
    iget-object v7, p0, Lobject/p2pwificam/clientActivity/MediaPlayActivity$1;->this$0:Lobject/p2pwificam/clientActivity/MediaPlayActivity;

    invoke-virtual {v7}, Lobject/p2pwificam/clientActivity/MediaPlayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->orientation:I

    if-ne v7, v9, :cond_1

    .line 155
    mul-int/lit8 v7, v6, 0x3

    div-int/lit8 v7, v7, 0x4

    .line 154
    invoke-static {v1, v6, v7, v9}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 160
    :cond_0
    :goto_1
    iget-object v7, p0, Lobject/p2pwificam/clientActivity/MediaPlayActivity$1;->this$0:Lobject/p2pwificam/clientActivity/MediaPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/MediaPlayActivity;->playImg:Landroid/widget/ImageView;
    invoke-static {v7}, Lobject/p2pwificam/clientActivity/MediaPlayActivity;->access$5(Lobject/p2pwificam/clientActivity/MediaPlayActivity;)Landroid/widget/ImageView;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 161
    iget-object v7, p0, Lobject/p2pwificam/clientActivity/MediaPlayActivity$1;->this$0:Lobject/p2pwificam/clientActivity/MediaPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/MediaPlayActivity;->playImg:Landroid/widget/ImageView;
    invoke-static {v7}, Lobject/p2pwificam/clientActivity/MediaPlayActivity;->access$5(Lobject/p2pwificam/clientActivity/MediaPlayActivity;)Landroid/widget/ImageView;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 163
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v7, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v5, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 169
    .local v5, "sDateFormat":Ljava/text/SimpleDateFormat;
    const-string v7, "iven"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "nTimeStamp: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lobject/p2pwificam/clientActivity/MediaPlayActivity$1;->this$0:Lobject/p2pwificam/clientActivity/MediaPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/MediaPlayActivity;->nTimestamp:J
    invoke-static {v9}, Lobject/p2pwificam/clientActivity/MediaPlayActivity;->access$8(Lobject/p2pwificam/clientActivity/MediaPlayActivity;)J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    new-instance v7, Ljava/util/Date;

    iget-object v8, p0, Lobject/p2pwificam/clientActivity/MediaPlayActivity$1;->this$0:Lobject/p2pwificam/clientActivity/MediaPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/MediaPlayActivity;->nTimestamp:J
    invoke-static {v8}, Lobject/p2pwificam/clientActivity/MediaPlayActivity;->access$8(Lobject/p2pwificam/clientActivity/MediaPlayActivity;)J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    mul-long/2addr v8, v10

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 171
    .local v2, "date":Ljava/lang/String;
    iget-object v7, p0, Lobject/p2pwificam/clientActivity/MediaPlayActivity$1;->this$0:Lobject/p2pwificam/clientActivity/MediaPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/MediaPlayActivity;->m_textTimestampTextView:Landroid/widget/TextView;
    invoke-static {v7}, Lobject/p2pwificam/clientActivity/MediaPlayActivity;->access$9(Lobject/p2pwificam/clientActivity/MediaPlayActivity;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 156
    .end local v2    # "date":Ljava/lang/String;
    .end local v5    # "sDateFormat":Ljava/text/SimpleDateFormat;
    :cond_1
    iget-object v7, p0, Lobject/p2pwificam/clientActivity/MediaPlayActivity$1;->this$0:Lobject/p2pwificam/clientActivity/MediaPlayActivity;

    invoke-virtual {v7}, Lobject/p2pwificam/clientActivity/MediaPlayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->orientation:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    .line 158
    invoke-static {v1, v6, v3, v9}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 157
    goto :goto_1

    .line 177
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "bmp":Landroid/graphics/Bitmap;
    .end local v3    # "height":I
    .end local v4    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v6    # "width":I
    :sswitch_2
    iget-object v7, p0, Lobject/p2pwificam/clientActivity/MediaPlayActivity$1;->this$0:Lobject/p2pwificam/clientActivity/MediaPlayActivity;

    invoke-virtual {v7}, Lobject/p2pwificam/clientActivity/MediaPlayActivity;->finish()V

    goto/16 :goto_0

    .line 128
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0xa -> :sswitch_2
    .end sparse-switch
.end method
