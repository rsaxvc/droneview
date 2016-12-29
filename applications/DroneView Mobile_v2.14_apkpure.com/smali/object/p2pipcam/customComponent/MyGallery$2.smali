.class Lobject/p2pipcam/customComponent/MyGallery$2;
.super Ljava/lang/Object;
.source "MyGallery.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lobject/p2pipcam/customComponent/MyGallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field baseValue:F

.field originalScale:F

.field final synthetic this$0:Lobject/p2pipcam/customComponent/MyGallery;


# direct methods
.method constructor <init>(Lobject/p2pipcam/customComponent/MyGallery;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pipcam/customComponent/MyGallery$2;->this$0:Lobject/p2pipcam/customComponent/MyGallery;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 42
    iget-object v5, p0, Lobject/p2pipcam/customComponent/MyGallery$2;->this$0:Lobject/p2pipcam/customComponent/MyGallery;

    invoke-virtual {v5}, Lobject/p2pipcam/customComponent/MyGallery;->getSelectedView()Landroid/view/View;

    move-result-object v2

    .line 43
    .local v2, "view":Landroid/view/View;
    instance-of v5, v2, Lobject/p2pipcam/customComponent/MyLocalPicImageView;

    if-eqz v5, :cond_1

    .line 44
    iget-object v5, p0, Lobject/p2pipcam/customComponent/MyGallery$2;->this$0:Lobject/p2pipcam/customComponent/MyGallery;

    check-cast v2, Lobject/p2pipcam/customComponent/MyLocalPicImageView;

    .end local v2    # "view":Landroid/view/View;
    invoke-static {v5, v2}, Lobject/p2pipcam/customComponent/MyGallery;->access$3(Lobject/p2pipcam/customComponent/MyGallery;Lobject/p2pipcam/customComponent/MyLocalPicImageView;)V

    .line 46
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_0

    .line 47
    iput v10, p0, Lobject/p2pipcam/customComponent/MyGallery$2;->baseValue:F

    .line 48
    iget-object v5, p0, Lobject/p2pipcam/customComponent/MyGallery$2;->this$0:Lobject/p2pipcam/customComponent/MyGallery;

    # getter for: Lobject/p2pipcam/customComponent/MyGallery;->imageView:Lobject/p2pipcam/customComponent/MyLocalPicImageView;
    invoke-static {v5}, Lobject/p2pipcam/customComponent/MyGallery;->access$4(Lobject/p2pipcam/customComponent/MyGallery;)Lobject/p2pipcam/customComponent/MyLocalPicImageView;

    move-result-object v5

    invoke-virtual {v5}, Lobject/p2pipcam/customComponent/MyLocalPicImageView;->getScale()F

    move-result v5

    iput v5, p0, Lobject/p2pipcam/customComponent/MyGallery$2;->originalScale:F

    .line 49
    const-string v5, "tg"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "originalScale:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, p0, Lobject/p2pipcam/customComponent/MyGallery$2;->originalScale:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-ne v5, v11, :cond_1

    .line 52
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v5

    if-ne v5, v11, :cond_1

    .line 53
    invoke-virtual {p2, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    invoke-virtual {p2, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    sub-float v3, v5, v6

    .line 54
    .local v3, "x":F
    invoke-virtual {p2, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    invoke-virtual {p2, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    sub-float v4, v5, v6

    .line 55
    .local v4, "y":F
    mul-float v5, v3, v3

    mul-float v6, v4, v4

    add-float/2addr v5, v6

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-float v1, v5

    .line 56
    .local v1, "value":F
    iget v5, p0, Lobject/p2pipcam/customComponent/MyGallery$2;->baseValue:F

    cmpl-float v5, v5, v10

    if-nez v5, :cond_2

    .line 57
    iput v1, p0, Lobject/p2pipcam/customComponent/MyGallery$2;->baseValue:F

    .line 68
    .end local v1    # "value":F
    .end local v3    # "x":F
    .end local v4    # "y":F
    :cond_1
    :goto_0
    return v9

    .line 59
    .restart local v1    # "value":F
    .restart local v3    # "x":F
    .restart local v4    # "y":F
    :cond_2
    iget v5, p0, Lobject/p2pipcam/customComponent/MyGallery$2;->baseValue:F

    div-float v0, v1, v5

    .line 60
    .local v0, "scale":F
    const-string v5, "tg"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "MyGallery onTouch scale:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    iget-object v5, p0, Lobject/p2pipcam/customComponent/MyGallery$2;->this$0:Lobject/p2pipcam/customComponent/MyGallery;

    # getter for: Lobject/p2pipcam/customComponent/MyGallery;->imageView:Lobject/p2pipcam/customComponent/MyLocalPicImageView;
    invoke-static {v5}, Lobject/p2pipcam/customComponent/MyGallery;->access$4(Lobject/p2pipcam/customComponent/MyGallery;)Lobject/p2pipcam/customComponent/MyLocalPicImageView;

    move-result-object v5

    iget v6, p0, Lobject/p2pipcam/customComponent/MyGallery$2;->originalScale:F

    mul-float/2addr v6, v0

    .line 62
    invoke-virtual {p2, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    add-float/2addr v7, v3

    invoke-virtual {p2, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    add-float/2addr v8, v4

    .line 61
    invoke-virtual {v5, v6, v7, v8}, Lobject/p2pipcam/customComponent/MyLocalPicImageView;->zoomTo(FFF)V

    goto :goto_0
.end method
