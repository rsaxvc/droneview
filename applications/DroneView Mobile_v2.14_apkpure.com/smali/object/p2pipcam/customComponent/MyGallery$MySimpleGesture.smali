.class Lobject/p2pipcam/customComponent/MyGallery$MySimpleGesture;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "MyGallery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pipcam/customComponent/MyGallery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MySimpleGesture"
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pipcam/customComponent/MyGallery;


# direct methods
.method private constructor <init>(Lobject/p2pipcam/customComponent/MyGallery;)V
    .locals 0

    .prologue
    .line 188
    iput-object p1, p0, Lobject/p2pipcam/customComponent/MyGallery$MySimpleGesture;->this$0:Lobject/p2pipcam/customComponent/MyGallery;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lobject/p2pipcam/customComponent/MyGallery;Lobject/p2pipcam/customComponent/MyGallery$MySimpleGesture;)V
    .locals 0

    .prologue
    .line 188
    invoke-direct {p0, p1}, Lobject/p2pipcam/customComponent/MyGallery$MySimpleGesture;-><init>(Lobject/p2pipcam/customComponent/MyGallery;)V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/high16 v5, 0x43480000    # 200.0f

    .line 201
    iget-object v1, p0, Lobject/p2pipcam/customComponent/MyGallery$MySimpleGesture;->this$0:Lobject/p2pipcam/customComponent/MyGallery;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lobject/p2pipcam/customComponent/MyGallery;->access$2(Lobject/p2pipcam/customComponent/MyGallery;Z)V

    .line 202
    const-string v1, "tgg"

    const-string v2, "OnDublieTap"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget-object v1, p0, Lobject/p2pipcam/customComponent/MyGallery$MySimpleGesture;->this$0:Lobject/p2pipcam/customComponent/MyGallery;

    invoke-virtual {v1}, Lobject/p2pipcam/customComponent/MyGallery;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 204
    .local v0, "view":Landroid/view/View;
    instance-of v1, v0, Lobject/p2pipcam/customComponent/MyLocalPicImageView;

    if-eqz v1, :cond_0

    .line 205
    iget-object v1, p0, Lobject/p2pipcam/customComponent/MyGallery$MySimpleGesture;->this$0:Lobject/p2pipcam/customComponent/MyGallery;

    check-cast v0, Lobject/p2pipcam/customComponent/MyLocalPicImageView;

    .end local v0    # "view":Landroid/view/View;
    invoke-static {v1, v0}, Lobject/p2pipcam/customComponent/MyGallery;->access$3(Lobject/p2pipcam/customComponent/MyGallery;Lobject/p2pipcam/customComponent/MyLocalPicImageView;)V

    .line 206
    iget-object v1, p0, Lobject/p2pipcam/customComponent/MyGallery$MySimpleGesture;->this$0:Lobject/p2pipcam/customComponent/MyGallery;

    # getter for: Lobject/p2pipcam/customComponent/MyGallery;->imageView:Lobject/p2pipcam/customComponent/MyLocalPicImageView;
    invoke-static {v1}, Lobject/p2pipcam/customComponent/MyGallery;->access$4(Lobject/p2pipcam/customComponent/MyGallery;)Lobject/p2pipcam/customComponent/MyLocalPicImageView;

    move-result-object v1

    invoke-virtual {v1}, Lobject/p2pipcam/customComponent/MyLocalPicImageView;->getScale()F

    move-result v1

    iget-object v2, p0, Lobject/p2pipcam/customComponent/MyGallery$MySimpleGesture;->this$0:Lobject/p2pipcam/customComponent/MyGallery;

    # getter for: Lobject/p2pipcam/customComponent/MyGallery;->imageView:Lobject/p2pipcam/customComponent/MyLocalPicImageView;
    invoke-static {v2}, Lobject/p2pipcam/customComponent/MyGallery;->access$4(Lobject/p2pipcam/customComponent/MyGallery;)Lobject/p2pipcam/customComponent/MyLocalPicImageView;

    move-result-object v2

    invoke-virtual {v2}, Lobject/p2pipcam/customComponent/MyLocalPicImageView;->getScaleRate()F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 208
    iget-object v1, p0, Lobject/p2pipcam/customComponent/MyGallery$MySimpleGesture;->this$0:Lobject/p2pipcam/customComponent/MyGallery;

    # getter for: Lobject/p2pipcam/customComponent/MyGallery;->imageView:Lobject/p2pipcam/customComponent/MyLocalPicImageView;
    invoke-static {v1}, Lobject/p2pipcam/customComponent/MyGallery;->access$4(Lobject/p2pipcam/customComponent/MyGallery;)Lobject/p2pipcam/customComponent/MyLocalPicImageView;

    move-result-object v1

    iget-object v2, p0, Lobject/p2pipcam/customComponent/MyGallery$MySimpleGesture;->this$0:Lobject/p2pipcam/customComponent/MyGallery;

    # getter for: Lobject/p2pipcam/customComponent/MyGallery;->imageView:Lobject/p2pipcam/customComponent/MyLocalPicImageView;
    invoke-static {v2}, Lobject/p2pipcam/customComponent/MyGallery;->access$4(Lobject/p2pipcam/customComponent/MyGallery;)Lobject/p2pipcam/customComponent/MyLocalPicImageView;

    move-result-object v2

    invoke-virtual {v2}, Lobject/p2pipcam/customComponent/MyLocalPicImageView;->getScaleRate()F

    move-result v2

    .line 209
    iget-object v3, p0, Lobject/p2pipcam/customComponent/MyGallery$MySimpleGesture;->this$0:Lobject/p2pipcam/customComponent/MyGallery;

    invoke-virtual {v3}, Lobject/p2pipcam/customComponent/MyGallery;->getScreenWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    .line 210
    iget-object v4, p0, Lobject/p2pipcam/customComponent/MyGallery$MySimpleGesture;->this$0:Lobject/p2pipcam/customComponent/MyGallery;

    invoke-virtual {v4}, Lobject/p2pipcam/customComponent/MyGallery;->getScreenHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    .line 208
    invoke-virtual {v1, v2, v3, v4, v5}, Lobject/p2pipcam/customComponent/MyLocalPicImageView;->zoomTo(FFFF)V

    .line 220
    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 212
    :cond_1
    iget-object v1, p0, Lobject/p2pipcam/customComponent/MyGallery$MySimpleGesture;->this$0:Lobject/p2pipcam/customComponent/MyGallery;

    # getter for: Lobject/p2pipcam/customComponent/MyGallery;->imageView:Lobject/p2pipcam/customComponent/MyLocalPicImageView;
    invoke-static {v1}, Lobject/p2pipcam/customComponent/MyGallery;->access$4(Lobject/p2pipcam/customComponent/MyGallery;)Lobject/p2pipcam/customComponent/MyLocalPicImageView;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    .line 213
    iget-object v3, p0, Lobject/p2pipcam/customComponent/MyGallery$MySimpleGesture;->this$0:Lobject/p2pipcam/customComponent/MyGallery;

    invoke-virtual {v3}, Lobject/p2pipcam/customComponent/MyGallery;->getScreenWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    .line 214
    iget-object v4, p0, Lobject/p2pipcam/customComponent/MyGallery$MySimpleGesture;->this$0:Lobject/p2pipcam/customComponent/MyGallery;

    invoke-virtual {v4}, Lobject/p2pipcam/customComponent/MyGallery;->getScreenHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    .line 212
    invoke-virtual {v1, v2, v3, v4, v5}, Lobject/p2pipcam/customComponent/MyLocalPicImageView;->zoomTo(FFFF)V

    goto :goto_0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 191
    const-string v1, "tgg"

    const-string v2, "isFirst"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    iget-object v1, p0, Lobject/p2pipcam/customComponent/MyGallery$MySimpleGesture;->this$0:Lobject/p2pipcam/customComponent/MyGallery;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lobject/p2pipcam/customComponent/MyGallery;->access$2(Lobject/p2pipcam/customComponent/MyGallery;Z)V

    .line 193
    iget-object v1, p0, Lobject/p2pipcam/customComponent/MyGallery$MySimpleGesture;->this$0:Lobject/p2pipcam/customComponent/MyGallery;

    iget-object v1, v1, Lobject/p2pipcam/customComponent/MyGallery;->handler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 194
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 195
    iget-object v1, p0, Lobject/p2pipcam/customComponent/MyGallery$MySimpleGesture;->this$0:Lobject/p2pipcam/customComponent/MyGallery;

    iget-object v1, v1, Lobject/p2pipcam/customComponent/MyGallery;->handler:Landroid/os/Handler;

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 196
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method
