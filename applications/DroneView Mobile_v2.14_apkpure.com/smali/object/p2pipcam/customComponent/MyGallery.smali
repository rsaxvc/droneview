.class public Lobject/p2pipcam/customComponent/MyGallery;
.super Landroid/widget/Gallery;
.source "MyGallery.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lobject/p2pipcam/customComponent/MyGallery$MyGalleryEvent;,
        Lobject/p2pipcam/customComponent/MyGallery$MySimpleGesture;
    }
.end annotation


# instance fields
.field private gestureScanner:Landroid/view/GestureDetector;

.field handler:Landroid/os/Handler;

.field private imageView:Lobject/p2pipcam/customComponent/MyLocalPicImageView;

.field private isFirst:Z

.field private myGalleryEvent:Lobject/p2pipcam/customComponent/MyGallery$MyGalleryEvent;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;)V

    .line 169
    const/4 v0, 0x1

    iput-boolean v0, p0, Lobject/p2pipcam/customComponent/MyGallery;->isFirst:Z

    .line 170
    new-instance v0, Lobject/p2pipcam/customComponent/MyGallery$1;

    invoke-direct {v0, p0}, Lobject/p2pipcam/customComponent/MyGallery$1;-><init>(Lobject/p2pipcam/customComponent/MyGallery;)V

    iput-object v0, p0, Lobject/p2pipcam/customComponent/MyGallery;->handler:Landroid/os/Handler;

    .line 228
    const/4 v0, 0x0

    iput-object v0, p0, Lobject/p2pipcam/customComponent/MyGallery;->myGalleryEvent:Lobject/p2pipcam/customComponent/MyGallery$MyGalleryEvent;

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 169
    const/4 v0, 0x1

    iput-boolean v0, p0, Lobject/p2pipcam/customComponent/MyGallery;->isFirst:Z

    .line 170
    new-instance v0, Lobject/p2pipcam/customComponent/MyGallery$1;

    invoke-direct {v0, p0}, Lobject/p2pipcam/customComponent/MyGallery$1;-><init>(Lobject/p2pipcam/customComponent/MyGallery;)V

    iput-object v0, p0, Lobject/p2pipcam/customComponent/MyGallery;->handler:Landroid/os/Handler;

    .line 228
    iput-object v2, p0, Lobject/p2pipcam/customComponent/MyGallery;->myGalleryEvent:Lobject/p2pipcam/customComponent/MyGallery$MyGalleryEvent;

    .line 34
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lobject/p2pipcam/customComponent/MyGallery$MySimpleGesture;

    invoke-direct {v1, p0, v2}, Lobject/p2pipcam/customComponent/MyGallery$MySimpleGesture;-><init>(Lobject/p2pipcam/customComponent/MyGallery;Lobject/p2pipcam/customComponent/MyGallery$MySimpleGesture;)V

    invoke-direct {v0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lobject/p2pipcam/customComponent/MyGallery;->gestureScanner:Landroid/view/GestureDetector;

    .line 35
    new-instance v0, Lobject/p2pipcam/customComponent/MyGallery$2;

    invoke-direct {v0, p0}, Lobject/p2pipcam/customComponent/MyGallery$2;-><init>(Lobject/p2pipcam/customComponent/MyGallery;)V

    invoke-virtual {p0, v0}, Lobject/p2pipcam/customComponent/MyGallery;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 169
    const/4 v0, 0x1

    iput-boolean v0, p0, Lobject/p2pipcam/customComponent/MyGallery;->isFirst:Z

    .line 170
    new-instance v0, Lobject/p2pipcam/customComponent/MyGallery$1;

    invoke-direct {v0, p0}, Lobject/p2pipcam/customComponent/MyGallery$1;-><init>(Lobject/p2pipcam/customComponent/MyGallery;)V

    iput-object v0, p0, Lobject/p2pipcam/customComponent/MyGallery;->handler:Landroid/os/Handler;

    .line 228
    const/4 v0, 0x0

    iput-object v0, p0, Lobject/p2pipcam/customComponent/MyGallery;->myGalleryEvent:Lobject/p2pipcam/customComponent/MyGallery$MyGalleryEvent;

    .line 29
    return-void
.end method

.method static synthetic access$0(Lobject/p2pipcam/customComponent/MyGallery;)Z
    .locals 1

    .prologue
    .line 169
    iget-boolean v0, p0, Lobject/p2pipcam/customComponent/MyGallery;->isFirst:Z

    return v0
.end method

.method static synthetic access$1(Lobject/p2pipcam/customComponent/MyGallery;)Lobject/p2pipcam/customComponent/MyGallery$MyGalleryEvent;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lobject/p2pipcam/customComponent/MyGallery;->myGalleryEvent:Lobject/p2pipcam/customComponent/MyGallery$MyGalleryEvent;

    return-object v0
.end method

.method static synthetic access$2(Lobject/p2pipcam/customComponent/MyGallery;Z)V
    .locals 0

    .prologue
    .line 169
    iput-boolean p1, p0, Lobject/p2pipcam/customComponent/MyGallery;->isFirst:Z

    return-void
.end method

.method static synthetic access$3(Lobject/p2pipcam/customComponent/MyGallery;Lobject/p2pipcam/customComponent/MyLocalPicImageView;)V
    .locals 0

    .prologue
    .line 20
    iput-object p1, p0, Lobject/p2pipcam/customComponent/MyGallery;->imageView:Lobject/p2pipcam/customComponent/MyLocalPicImageView;

    return-void
.end method

.method static synthetic access$4(Lobject/p2pipcam/customComponent/MyGallery;)Lobject/p2pipcam/customComponent/MyLocalPicImageView;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lobject/p2pipcam/customComponent/MyGallery;->imageView:Lobject/p2pipcam/customComponent/MyLocalPicImageView;

    return-object v0
.end method


# virtual methods
.method public getScreenHeight()I
    .locals 1

    .prologue
    .line 81
    sget v0, Lobject/p2pwificam/clientActivity/ShowLocalPictureActivity;->screenHeight:I

    if-eqz v0, :cond_0

    sget v0, Lobject/p2pwificam/clientActivity/ShowLocalPictureActivity;->screenHeight:I

    .line 82
    :goto_0
    return v0

    :cond_0
    sget v0, Lobject/p2pwificam/clientActivity/ShowEventPictureActivity;->screenHeight:I

    goto :goto_0
.end method

.method public getScreenWidth()I
    .locals 1

    .prologue
    .line 76
    sget v0, Lobject/p2pwificam/clientActivity/ShowLocalPictureActivity;->screenWidth:I

    if-eqz v0, :cond_0

    sget v0, Lobject/p2pwificam/clientActivity/ShowLocalPictureActivity;->screenWidth:I

    .line 77
    :goto_0
    return v0

    :cond_0
    sget v0, Lobject/p2pwificam/clientActivity/ShowEventPictureActivity;->screenWidth:I

    goto :goto_0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    .line 143
    const/4 v0, 0x0

    return v0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 11
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    const/4 v10, 0x0

    .line 88
    invoke-virtual {p0}, Lobject/p2pipcam/customComponent/MyGallery;->getSelectedView()Landroid/view/View;

    move-result-object v6

    .line 89
    .local v6, "view":Landroid/view/View;
    instance-of v8, v6, Lobject/p2pipcam/customComponent/MyLocalPicImageView;

    if-eqz v8, :cond_7

    .line 90
    check-cast v6, Lobject/p2pipcam/customComponent/MyLocalPicImageView;

    .end local v6    # "view":Landroid/view/View;
    iput-object v6, p0, Lobject/p2pipcam/customComponent/MyGallery;->imageView:Lobject/p2pipcam/customComponent/MyLocalPicImageView;

    .line 92
    const/16 v8, 0x9

    new-array v5, v8, [F

    .line 93
    .local v5, "v":[F
    iget-object v8, p0, Lobject/p2pipcam/customComponent/MyGallery;->imageView:Lobject/p2pipcam/customComponent/MyLocalPicImageView;

    invoke-virtual {v8}, Lobject/p2pipcam/customComponent/MyLocalPicImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    .line 94
    .local v2, "m":Landroid/graphics/Matrix;
    invoke-virtual {v2, v5}, Landroid/graphics/Matrix;->getValues([F)V

    .line 99
    iget-object v8, p0, Lobject/p2pipcam/customComponent/MyGallery;->imageView:Lobject/p2pipcam/customComponent/MyLocalPicImageView;

    invoke-virtual {v8}, Lobject/p2pipcam/customComponent/MyLocalPicImageView;->getScale()F

    move-result v8

    iget-object v9, p0, Lobject/p2pipcam/customComponent/MyGallery;->imageView:Lobject/p2pipcam/customComponent/MyLocalPicImageView;

    invoke-virtual {v9}, Lobject/p2pipcam/customComponent/MyLocalPicImageView;->getImageWidth()I

    move-result v9

    int-to-float v9, v9

    mul-float v7, v8, v9

    .line 100
    .local v7, "width":F
    iget-object v8, p0, Lobject/p2pipcam/customComponent/MyGallery;->imageView:Lobject/p2pipcam/customComponent/MyLocalPicImageView;

    invoke-virtual {v8}, Lobject/p2pipcam/customComponent/MyLocalPicImageView;->getScale()F

    move-result v8

    iget-object v9, p0, Lobject/p2pipcam/customComponent/MyGallery;->imageView:Lobject/p2pipcam/customComponent/MyLocalPicImageView;

    invoke-virtual {v9}, Lobject/p2pipcam/customComponent/MyLocalPicImageView;->getImageHeight()I

    move-result v9

    int-to-float v9, v9

    mul-float v0, v8, v9

    .line 102
    .local v0, "height":F
    float-to-int v8, v7

    invoke-virtual {p0}, Lobject/p2pipcam/customComponent/MyGallery;->getScreenWidth()I

    move-result v9

    if-gt v8, v9, :cond_1

    .line 103
    float-to-int v8, v0

    invoke-virtual {p0}, Lobject/p2pipcam/customComponent/MyGallery;->getScreenHeight()I

    move-result v9

    if-gt v8, v9, :cond_1

    .line 105
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/Gallery;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    .line 137
    .end local v0    # "height":F
    .end local v2    # "m":Landroid/graphics/Matrix;
    .end local v5    # "v":[F
    .end local v7    # "width":F
    :cond_0
    :goto_0
    const/4 v8, 0x0

    return v8

    .line 107
    .restart local v0    # "height":F
    .restart local v2    # "m":Landroid/graphics/Matrix;
    .restart local v5    # "v":[F
    .restart local v7    # "width":F
    :cond_1
    const/4 v8, 0x2

    aget v1, v5, v8

    .line 108
    .local v1, "left":F
    add-float v4, v1, v7

    .line 109
    .local v4, "right":F
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 110
    .local v3, "r":Landroid/graphics/Rect;
    iget-object v8, p0, Lobject/p2pipcam/customComponent/MyGallery;->imageView:Lobject/p2pipcam/customComponent/MyLocalPicImageView;

    invoke-virtual {v8, v3}, Lobject/p2pipcam/customComponent/MyLocalPicImageView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 112
    cmpl-float v8, p3, v10

    if-lez v8, :cond_4

    .line 114
    iget v8, v3, Landroid/graphics/Rect;->left:I

    if-lez v8, :cond_2

    .line 115
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/Gallery;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    goto :goto_0

    .line 116
    :cond_2
    invoke-virtual {p0}, Lobject/p2pipcam/customComponent/MyGallery;->getScreenWidth()I

    move-result v8

    int-to-float v8, v8

    cmpg-float v8, v4, v8

    if-gez v8, :cond_3

    .line 117
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/Gallery;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    goto :goto_0

    .line 119
    :cond_3
    iget-object v8, p0, Lobject/p2pipcam/customComponent/MyGallery;->imageView:Lobject/p2pipcam/customComponent/MyLocalPicImageView;

    neg-float v9, p3

    neg-float v10, p4

    invoke-virtual {v8, v9, v10}, Lobject/p2pipcam/customComponent/MyLocalPicImageView;->postTranslate(FF)V

    goto :goto_0

    .line 121
    :cond_4
    cmpg-float v8, p3, v10

    if-gez v8, :cond_0

    .line 123
    iget v8, v3, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Lobject/p2pipcam/customComponent/MyGallery;->getScreenWidth()I

    move-result v9

    if-ge v8, v9, :cond_5

    .line 124
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/Gallery;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    goto :goto_0

    .line 125
    :cond_5
    cmpl-float v8, v1, v10

    if-lez v8, :cond_6

    .line 126
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/Gallery;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    goto :goto_0

    .line 128
    :cond_6
    iget-object v8, p0, Lobject/p2pipcam/customComponent/MyGallery;->imageView:Lobject/p2pipcam/customComponent/MyLocalPicImageView;

    neg-float v9, p3

    neg-float v10, p4

    invoke-virtual {v8, v9, v10}, Lobject/p2pipcam/customComponent/MyLocalPicImageView;->postTranslate(FF)V

    goto :goto_0

    .line 135
    .end local v0    # "height":F
    .end local v1    # "left":F
    .end local v2    # "m":Landroid/graphics/Matrix;
    .end local v3    # "r":Landroid/graphics/Rect;
    .end local v4    # "right":F
    .end local v5    # "v":[F
    .end local v7    # "width":F
    .restart local v6    # "view":Landroid/view/View;
    :cond_7
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/Gallery;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 148
    iget-object v3, p0, Lobject/p2pipcam/customComponent/MyGallery;->gestureScanner:Landroid/view/GestureDetector;

    invoke-virtual {v3, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 149
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 166
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/Gallery;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    return v3

    .line 152
    :pswitch_0
    invoke-virtual {p0}, Lobject/p2pipcam/customComponent/MyGallery;->getSelectedView()Landroid/view/View;

    move-result-object v1

    .line 153
    .local v1, "view":Landroid/view/View;
    instance-of v3, v1, Lobject/p2pipcam/customComponent/MyLocalPicImageView;

    if-eqz v3, :cond_0

    .line 154
    check-cast v1, Lobject/p2pipcam/customComponent/MyLocalPicImageView;

    .end local v1    # "view":Landroid/view/View;
    iput-object v1, p0, Lobject/p2pipcam/customComponent/MyGallery;->imageView:Lobject/p2pipcam/customComponent/MyLocalPicImageView;

    .line 155
    iget-object v3, p0, Lobject/p2pipcam/customComponent/MyGallery;->imageView:Lobject/p2pipcam/customComponent/MyLocalPicImageView;

    invoke-virtual {v3}, Lobject/p2pipcam/customComponent/MyLocalPicImageView;->getScale()F

    move-result v3

    iget-object v4, p0, Lobject/p2pipcam/customComponent/MyGallery;->imageView:Lobject/p2pipcam/customComponent/MyLocalPicImageView;

    invoke-virtual {v4}, Lobject/p2pipcam/customComponent/MyLocalPicImageView;->getImageWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float v2, v3, v4

    .line 156
    .local v2, "width":F
    iget-object v3, p0, Lobject/p2pipcam/customComponent/MyGallery;->imageView:Lobject/p2pipcam/customComponent/MyLocalPicImageView;

    invoke-virtual {v3}, Lobject/p2pipcam/customComponent/MyLocalPicImageView;->getScale()F

    move-result v3

    .line 157
    iget-object v4, p0, Lobject/p2pipcam/customComponent/MyGallery;->imageView:Lobject/p2pipcam/customComponent/MyLocalPicImageView;

    invoke-virtual {v4}, Lobject/p2pipcam/customComponent/MyLocalPicImageView;->getImageHeight()I

    move-result v4

    int-to-float v4, v4

    .line 156
    mul-float v0, v3, v4

    .line 158
    .local v0, "height":F
    float-to-int v3, v2

    invoke-virtual {p0}, Lobject/p2pipcam/customComponent/MyGallery;->getScreenWidth()I

    move-result v4

    if-gt v3, v4, :cond_0

    .line 159
    float-to-int v3, v0

    invoke-virtual {p0}, Lobject/p2pipcam/customComponent/MyGallery;->getScreenHeight()I

    move-result v4

    if-gt v3, v4, :cond_0

    goto :goto_0

    .line 149
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public setMyTouch(Lobject/p2pipcam/customComponent/MyGallery$MyGalleryEvent;)V
    .locals 0
    .param p1, "myGalleryEvent"    # Lobject/p2pipcam/customComponent/MyGallery$MyGalleryEvent;

    .prologue
    .line 225
    iput-object p1, p0, Lobject/p2pipcam/customComponent/MyGallery;->myGalleryEvent:Lobject/p2pipcam/customComponent/MyGallery$MyGalleryEvent;

    .line 226
    return-void
.end method
