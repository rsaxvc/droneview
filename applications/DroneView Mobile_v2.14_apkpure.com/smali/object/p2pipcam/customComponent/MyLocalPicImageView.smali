.class public Lobject/p2pipcam/customComponent/MyLocalPicImageView;
.super Landroid/widget/ImageView;
.source "MyLocalPicImageView.java"


# static fields
.field static final SCALE_RATE:F = 1.25f

.field private static final TAG:Ljava/lang/String; = "ImageViewTouchBase"


# instance fields
.field _dy:F

.field protected image:Landroid/graphics/Bitmap;

.field private imageHeight:I

.field private imageWidth:I

.field protected mBaseMatrix:Landroid/graphics/Matrix;

.field private final mDisplayMatrix:Landroid/graphics/Matrix;

.field protected mHandler:Landroid/os/Handler;

.field private final mMatrixValues:[F

.field mMaxZoom:F

.field mMinZoom:F

.field protected mSuppMatrix:Landroid/graphics/Matrix;

.field mThisHeight:I

.field mThisWidth:I

.field private scaleRate:F


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imageWidth"    # I
    .param p3, "imageHeight"    # I

    .prologue
    const/4 v1, -0x1

    .line 33
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 19
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lobject/p2pipcam/customComponent/MyLocalPicImageView;->mBaseMatrix:Landroid/graphics/Matrix;

    .line 20
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lobject/p2pipcam/customComponent/MyLocalPicImageView;->mSuppMatrix:Landroid/graphics/Matrix;

    .line 21
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lobject/p2pipcam/customComponent/MyLocalPicImageView;->mDisplayMatrix:Landroid/graphics/Matrix;

    .line 22
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lobject/p2pipcam/customComponent/MyLocalPicImageView;->mMatrixValues:[F

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lobject/p2pipcam/customComponent/MyLocalPicImageView;->image:Landroid/graphics/Bitmap;

    .line 24
    iput v1, p0, Lobject/p2pipcam/customComponent/MyLocalPicImageView;->mThisWidth:I

    iput v1, p0, Lobject/p2pipcam/customComponent/MyLocalPicImageView;->mThisHeight:I

    .line 25
    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lobject/p2pipcam/customComponent/MyLocalPicImageView;->mMaxZoom:F

    .line 104
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lobject/p2pipcam/customComponent/MyLocalPicImageView;->mHandler:Landroid/os/Handler;

    .line 329
    const/4 v0, 0x0

    iput v0, p0, Lobject/p2pipcam/customComponent/MyLocalPicImageView;->_dy:F

    .line 34
    iput p3, p0, Lobject/p2pipcam/customComponent/MyLocalPicImageView;->imageHeight:I

    .line 35
    iput p2, p0, Lobject/p2pipcam/customComponent/MyLocalPicImageView;->imageWidth:I

    .line 36
    invoke-direct {p0}, Lobject/p2pipcam/customComponent/MyLocalPicImageView;->init()V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "imageWidth"    # I
    .param p4, "imageHeight"    # I

    .prologue
    const/4 v1, -0x1

    .line 41
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lobject/p2pipcam/customComponent/MyLocalPicImageView;->mBaseMatrix:Landroid/graphics/Matrix;

    .line 20
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lobject/p2pipcam/customComponent/MyLocalPicImageView;->mSuppMatrix:Landroid/graphics/Matrix;

    .line 21
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lobject/p2pipcam/customComponent/MyLocalPicImageView;->mDisplayMatrix:Landroid/graphics/Matrix;

    .line 22
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lobject/p2pipcam/customComponent/MyLocalPicImageView;->mMatrixValues:[F

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lobject/p2pipcam/customComponent/MyLocalPicImageView;->image:Landroid/graphics/Bitmap;

    .line 24
    iput v1, p0, Lobject/p2pipcam/customComponent/MyLocalPicImageView;->mThisWidth:I

    iput v1, p0, Lobject/p2pipcam/customComponent/MyLocalPicImageView;->mThisHeight:I

    .line 25
    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lobject/p2pipcam/customComponent/MyLocalPicImageView;->mMaxZoom:F

    .line 104
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lobject/p2pipcam/customComponent/MyLocalPicImageView;->mHandler:Landroid/os/Handler;

    .line 329
    const/4 v0, 0x0

    iput v0, p0, Lobject/p2pipcam/customComponent/MyLocalPicImageView;->_dy:F

    .line 42
    iput p4, p0, Lobject/p2pipcam/customComponent/MyLocalPicImageView;->imageHeight:I

    .line 43
    iput p3, p0, Lobject/p2pipcam/customComponent/MyLocalPicImageView;->imageWidth:I

    .line 44
    invoke-direct {p0}, Lobject/p2pipcam/customComponent/MyLocalPicImageView;->init()V

    .line 45
    return-void
.end method

.method private arithScaleRate()V
    .locals 4

    .prologue
    .line 58
    invoke-virtual {p0}, Lobject/p2pipcam/customComponent/MyLocalPicImageView;->getScreenWidth()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lobject/p2pipcam/customComponent/MyLocalPicImageView;->imageWidth:I

    int-to-float v3, v3

    div-float v1, v2, v3

    .line 59
    .local v1, "scaleWidth":F
    invoke-virtual {p0}, Lobject/p2pipcam/customComponent/MyLocalPicImageView;->getScreenHeight()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lobject/p2pipcam/customComponent/MyLocalPicImageView;->imageHeight:I

    int-to-float v3, v3

    div-float v0, v2, v3

    .line 60
    .local v0, "scaleHeight":F
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iput v2, p0, Lobject/p2pipcam/customComponent/MyLocalPicImageView;->scaleRate:F

    .line 61
    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    .line 162
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lobject/p2pipcam/customComponent/MyLocalPicImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 163
    return-void
.end method


# virtual methods
.method protected center(ZZ)V
    .locals 12
    .param p1, "horizontal"    # Z
    .param p2, "vertical"    # Z

    .prologue
    const/high16 v11, 0x40000000    # 2.0f

    const/4 v10, 0x0

    .line 120
    iget-object v8, p0, Lobject/p2pipcam/customComponent/MyLocalPicImageView;->image:Landroid/graphics/Bitmap;

    if-nez v8, :cond_0

    .line 159
    :goto_0
    return-void

    .line 124
    :cond_0
    invoke-virtual {p0}, Lobject/p2pipcam/customComponent/MyLocalPicImageView;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    .line 126
    .local v3, "m":Landroid/graphics/Matrix;
    new-instance v4, Landroid/graphics/RectF;

    iget-object v8, p0, Lobject/p2pipcam/customComponent/MyLocalPicImageView;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-float v8, v8

    iget-object v9, p0, Lobject/p2pipcam/customComponent/MyLocalPicImageView;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    int-to-float v9, v9

    invoke-direct {v4, v10, v10, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 128
    .local v4, "rect":Landroid/graphics/RectF;
    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 130
    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v2

    .line 131
    .local v2, "height":F
    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v7

    .line 133
    .local v7, "width":F
    const/4 v0, 0x0

    .local v0, "deltaX":F
    const/4 v1, 0x0

    .line 135
    .local v1, "deltaY":F
    if-eqz p2, :cond_1

    .line 136
    invoke-virtual {p0}, Lobject/p2pipcam/customComponent/MyLocalPicImageView;->getHeight()I

    move-result v5

    .line 137
    .local v5, "viewHeight":I
    int-to-float v8, v5

    cmpg-float v8, v2, v8

    if-gez v8, :cond_3

    .line 138
    int-to-float v8, v5

    sub-float/2addr v8, v2

    div-float/2addr v8, v11

    iget v9, v4, Landroid/graphics/RectF;->top:F

    sub-float v1, v8, v9

    .line 146
    .end local v5    # "viewHeight":I
    :cond_1
    :goto_1
    if-eqz p1, :cond_2

    .line 147
    invoke-virtual {p0}, Lobject/p2pipcam/customComponent/MyLocalPicImageView;->getWidth()I

    move-result v6

    .line 148
    .local v6, "viewWidth":I
    int-to-float v8, v6

    cmpg-float v8, v7, v8

    if-gez v8, :cond_5

    .line 149
    int-to-float v8, v6

    sub-float/2addr v8, v7

    div-float/2addr v8, v11

    iget v9, v4, Landroid/graphics/RectF;->left:F

    sub-float v0, v8, v9

    .line 157
    .end local v6    # "viewWidth":I
    :cond_2
    :goto_2
    invoke-virtual {p0, v0, v1}, Lobject/p2pipcam/customComponent/MyLocalPicImageView;->postTranslate(FF)V

    .line 158
    invoke-virtual {p0}, Lobject/p2pipcam/customComponent/MyLocalPicImageView;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v8

    invoke-virtual {p0, v8}, Lobject/p2pipcam/customComponent/MyLocalPicImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    goto :goto_0

    .line 139
    .restart local v5    # "viewHeight":I
    :cond_3
    iget v8, v4, Landroid/graphics/RectF;->top:F

    cmpl-float v8, v8, v10

    if-lez v8, :cond_4

    .line 140
    iget v8, v4, Landroid/graphics/RectF;->top:F

    neg-float v1, v8

    .line 141
    goto :goto_1

    :cond_4
    iget v8, v4, Landroid/graphics/RectF;->bottom:F

    int-to-float v9, v5

    cmpg-float v8, v8, v9

    if-gez v8, :cond_1

    .line 142
    invoke-virtual {p0}, Lobject/p2pipcam/customComponent/MyLocalPicImageView;->getHeight()I

    move-result v8

    int-to-float v8, v8

    iget v9, v4, Landroid/graphics/RectF;->bottom:F

    sub-float v1, v8, v9

    goto :goto_1

    .line 150
    .end local v5    # "viewHeight":I
    .restart local v6    # "viewWidth":I
    :cond_5
    iget v8, v4, Landroid/graphics/RectF;->left:F

    cmpl-float v8, v8, v10

    if-lez v8, :cond_6

    .line 151
    iget v8, v4, Landroid/graphics/RectF;->left:F

    neg-float v0, v8

    .line 152
    goto :goto_2

    :cond_6
    iget v8, v4, Landroid/graphics/RectF;->right:F

    int-to-float v9, v6

    cmpg-float v8, v8, v9

    if-gez v8, :cond_2

    .line 153
    int-to-float v8, v6

    iget v9, v4, Landroid/graphics/RectF;->right:F

    sub-float v0, v8, v9

    goto :goto_2
.end method

.method public getImageHeight()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lobject/p2pipcam/customComponent/MyLocalPicImageView;->imageHeight:I

    return v0
.end method

.method protected getImageViewMatrix()Landroid/graphics/Matrix;
    .locals 2

    .prologue
    .line 208
    iget-object v0, p0, Lobject/p2pipcam/customComponent/MyLocalPicImageView;->mDisplayMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lobject/p2pipcam/customComponent/MyLocalPicImageView;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 209
    iget-object v0, p0, Lobject/p2pipcam/customComponent/MyLocalPicImageView;->mDisplayMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lobject/p2pipcam/customComponent/MyLocalPicImageView;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 210
    iget-object v0, p0, Lobject/p2pipcam/customComponent/MyLocalPicImageView;->mDisplayMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public getImageWidth()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lobject/p2pipcam/customComponent/MyLocalPicImageView;->imageWidth:I

    return v0
.end method

.method protected getScale()F
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lobject/p2pipcam/customComponent/MyLocalPicImageView;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lobject/p2pipcam/customComponent/MyLocalPicImageView;->getScale(Landroid/graphics/Matrix;)F

    move-result v0

    return v0
.end method

.method protected getScale(Landroid/graphics/Matrix;)F
    .locals 1
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 200
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lobject/p2pipcam/customComponent/MyLocalPicImageView;->getValue(Landroid/graphics/Matrix;I)F

    move-result v0

    return v0
.end method

.method public getScaleRate()F
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lobject/p2pipcam/customComponent/MyLocalPicImageView;->scaleRate:F

    return v0
.end method

.method public getScreenHeight()I
    .locals 1

    .prologue
    .line 54
    sget v0, Lobject/p2pwificam/clientActivity/ShowLocalPictureActivity;->screenHeight:I

    if-eqz v0, :cond_0

    sget v0, Lobject/p2pwificam/clientActivity/ShowLocalPictureActivity;->screenHeight:I

    .line 55
    :goto_0
    return v0

    :cond_0
    sget v0, Lobject/p2pwificam/clientActivity/ShowEventPictureActivity;->screenHeight:I

    goto :goto_0
.end method

.method public getScreenWidth()I
    .locals 1

    .prologue
    .line 49
    sget v0, Lobject/p2pwificam/clientActivity/ShowLocalPictureActivity;->screenWidth:I

    if-eqz v0, :cond_0

    sget v0, Lobject/p2pwificam/clientActivity/ShowLocalPictureActivity;->screenWidth:I

    .line 50
    :goto_0
    return v0

    :cond_0
    sget v0, Lobject/p2pwificam/clientActivity/ShowEventPictureActivity;->screenWidth:I

    goto :goto_0
.end method

.method protected getValue(Landroid/graphics/Matrix;I)F
    .locals 2
    .param p1, "matrix"    # Landroid/graphics/Matrix;
    .param p2, "whichValue"    # I

    .prologue
    .line 192
    iget-object v0, p0, Lobject/p2pipcam/customComponent/MyLocalPicImageView;->mMatrixValues:[F

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 193
    invoke-virtual {p0}, Lobject/p2pipcam/customComponent/MyLocalPicImageView;->getScreenWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget v1, p0, Lobject/p2pipcam/customComponent/MyLocalPicImageView;->imageWidth:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lobject/p2pipcam/customComponent/MyLocalPicImageView;->mMinZoom:F

    .line 195
    iget-object v0, p0, Lobject/p2pipcam/customComponent/MyLocalPicImageView;->mMatrixValues:[F

    aget v0, v0, p2

    return v0
.end method

.method public layoutToCenter()V
    .locals 11

    .prologue
    const/high16 v10, 0x40000000    # 2.0f

    const/4 v9, 0x0

    .line 170
    iget v6, p0, Lobject/p2pipcam/customComponent/MyLocalPicImageView;->imageWidth:I

    int-to-float v6, v6

    invoke-virtual {p0}, Lobject/p2pipcam/customComponent/MyLocalPicImageView;->getScale()F

    move-result v7

    mul-float v5, v6, v7

    .line 171
    .local v5, "width":F
    iget v6, p0, Lobject/p2pipcam/customComponent/MyLocalPicImageView;->imageHeight:I

    int-to-float v6, v6

    invoke-virtual {p0}, Lobject/p2pipcam/customComponent/MyLocalPicImageView;->getScale()F

    move-result v7

    mul-float v2, v6, v7

    .line 172
    .local v2, "height":F
    const-string v6, "tag"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "\u5b9e\u9645\u5bbd\u5ea6:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    const-string v6, "tag"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "\u5b9e\u9645\u9ad8\u5ea6:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    invoke-virtual {p0}, Lobject/p2pipcam/customComponent/MyLocalPicImageView;->getScreenWidth()I

    move-result v6

    int-to-float v6, v6

    sub-float v1, v6, v5

    .line 176
    .local v1, "fill_width":F
    invoke-virtual {p0}, Lobject/p2pipcam/customComponent/MyLocalPicImageView;->getScreenHeight()I

    move-result v6

    int-to-float v6, v6

    sub-float v0, v6, v2

    .line 179
    .local v0, "fill_height":F
    const/4 v4, 0x0

    .line 180
    .local v4, "tran_width":F
    const/4 v3, 0x0

    .line 182
    .local v3, "tran_height":F
    cmpl-float v6, v1, v9

    if-lez v6, :cond_0

    .line 183
    div-float v4, v1, v10

    .line 184
    :cond_0
    cmpl-float v6, v0, v9

    if-lez v6, :cond_1

    .line 185
    div-float v3, v0, v10

    .line 187
    :cond_1
    invoke-virtual {p0, v4, v3}, Lobject/p2pipcam/customComponent/MyLocalPicImageView;->postTranslate(FF)V

    .line 188
    invoke-virtual {p0}, Lobject/p2pipcam/customComponent/MyLocalPicImageView;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v6

    invoke-virtual {p0, v6}, Lobject/p2pipcam/customComponent/MyLocalPicImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 189
    return-void
.end method

.method protected maxZoom()F
    .locals 5

    .prologue
    .line 216
    iget-object v3, p0, Lobject/p2pipcam/customComponent/MyLocalPicImageView;->image:Landroid/graphics/Bitmap;

    if-nez v3, :cond_0

    .line 217
    const/high16 v2, 0x3f800000    # 1.0f

    .line 223
    :goto_0
    return v2

    .line 220
    :cond_0
    iget-object v3, p0, Lobject/p2pipcam/customComponent/MyLocalPicImageView;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lobject/p2pipcam/customComponent/MyLocalPicImageView;->mThisWidth:I

    int-to-float v4, v4

    div-float v1, v3, v4

    .line 221
    .local v1, "fw":F
    iget-object v3, p0, Lobject/p2pipcam/customComponent/MyLocalPicImageView;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lobject/p2pipcam/customComponent/MyLocalPicImageView;->mThisHeight:I

    int-to-float v4, v4

    div-float v0, v3, v4

    .line 222
    .local v0, "fh":F
    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v3

    const/high16 v4, 0x40800000    # 4.0f

    mul-float v2, v3, v4

    .line 223
    .local v2, "max":F
    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v0, 0x1

    .line 266
    invoke-virtual {p0, v0, v0}, Lobject/p2pipcam/customComponent/MyLocalPicImageView;->center(ZZ)V

    .line 267
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 268
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 85
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 86
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    .line 87
    const/4 v0, 0x1

    .line 89
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 94
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    invoke-virtual {p0}, Lobject/p2pipcam/customComponent/MyLocalPicImageView;->getScale()F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 97
    invoke-virtual {p0, v1}, Lobject/p2pipcam/customComponent/MyLocalPicImageView;->zoomTo(F)V

    .line 98
    const/4 v0, 0x1

    .line 101
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected panBy(FF)V
    .locals 1
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    .prologue
    .line 351
    invoke-virtual {p0, p1, p2}, Lobject/p2pipcam/customComponent/MyLocalPicImageView;->postTranslate(FF)V

    .line 352
    invoke-virtual {p0}, Lobject/p2pipcam/customComponent/MyLocalPicImageView;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Lobject/p2pipcam/customComponent/MyLocalPicImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 353
    return-void
.end method

.method public postTranslate(FF)V
    .locals 1
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    .prologue
    .line 325
    iget-object v0, p0, Lobject/p2pipcam/customComponent/MyLocalPicImageView;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 326
    invoke-virtual {p0}, Lobject/p2pipcam/customComponent/MyLocalPicImageView;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Lobject/p2pipcam/customComponent/MyLocalPicImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 327
    return-void
.end method

.method protected postTranslateDur(FF)V
    .locals 7
    .param p1, "dy"    # F
    .param p2, "durationMs"    # F

    .prologue
    .line 332
    const/4 v0, 0x0

    iput v0, p0, Lobject/p2pipcam/customComponent/MyLocalPicImageView;->_dy:F

    .line 333
    div-float v5, p1, p2

    .line 334
    .local v5, "incrementPerMs":F
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 335
    .local v3, "startTime":J
    iget-object v6, p0, Lobject/p2pipcam/customComponent/MyLocalPicImageView;->mHandler:Landroid/os/Handler;

    new-instance v0, Lobject/p2pipcam/customComponent/MyLocalPicImageView$2;

    move-object v1, p0

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lobject/p2pipcam/customComponent/MyLocalPicImageView$2;-><init>(Lobject/p2pipcam/customComponent/MyLocalPicImageView;FJF)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 348
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 108
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 109
    iput-object p1, p0, Lobject/p2pipcam/customComponent/MyLocalPicImageView;->image:Landroid/graphics/Bitmap;

    .line 111
    invoke-direct {p0}, Lobject/p2pipcam/customComponent/MyLocalPicImageView;->arithScaleRate()V

    .line 113
    iget v0, p0, Lobject/p2pipcam/customComponent/MyLocalPicImageView;->scaleRate:F

    invoke-virtual {p0}, Lobject/p2pipcam/customComponent/MyLocalPicImageView;->getScreenWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    invoke-virtual {p0}, Lobject/p2pipcam/customComponent/MyLocalPicImageView;->getScreenHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lobject/p2pipcam/customComponent/MyLocalPicImageView;->zoomTo(FFF)V

    .line 116
    invoke-virtual {p0}, Lobject/p2pipcam/customComponent/MyLocalPicImageView;->layoutToCenter()V

    .line 117
    return-void
.end method

.method public setImageHeight(I)V
    .locals 0
    .param p1, "imageHeight"    # I

    .prologue
    .line 80
    iput p1, p0, Lobject/p2pipcam/customComponent/MyLocalPicImageView;->imageHeight:I

    .line 81
    return-void
.end method

.method public setImageWidth(I)V
    .locals 0
    .param p1, "imageWidth"    # I

    .prologue
    .line 72
    iput p1, p0, Lobject/p2pipcam/customComponent/MyLocalPicImageView;->imageWidth:I

    .line 73
    return-void
.end method

.method protected zoomIn(F)V
    .locals 5
    .param p1, "rate"    # F

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 286
    const-string v2, "tg"

    const-string v3, "zoomIn"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    invoke-virtual {p0}, Lobject/p2pipcam/customComponent/MyLocalPicImageView;->getScale()F

    move-result v2

    iget v3, p0, Lobject/p2pipcam/customComponent/MyLocalPicImageView;->mMaxZoom:F

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_1

    .line 301
    :cond_0
    :goto_0
    return-void

    .line 289
    :cond_1
    invoke-virtual {p0}, Lobject/p2pipcam/customComponent/MyLocalPicImageView;->getScale()F

    move-result v2

    iget v3, p0, Lobject/p2pipcam/customComponent/MyLocalPicImageView;->mMinZoom:F

    cmpg-float v2, v2, v3

    if-lez v2, :cond_0

    .line 292
    iget-object v2, p0, Lobject/p2pipcam/customComponent/MyLocalPicImageView;->image:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    .line 296
    invoke-virtual {p0}, Lobject/p2pipcam/customComponent/MyLocalPicImageView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v0, v2, v4

    .line 297
    .local v0, "cx":F
    invoke-virtual {p0}, Lobject/p2pipcam/customComponent/MyLocalPicImageView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v1, v2, v4

    .line 299
    .local v1, "cy":F
    iget-object v2, p0, Lobject/p2pipcam/customComponent/MyLocalPicImageView;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, p1, p1, v0, v1}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 300
    invoke-virtual {p0}, Lobject/p2pipcam/customComponent/MyLocalPicImageView;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {p0, v2}, Lobject/p2pipcam/customComponent/MyLocalPicImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    goto :goto_0
.end method

.method protected zoomOut(F)V
    .locals 8
    .param p1, "rate"    # F

    .prologue
    const/4 v7, 0x1

    const/high16 v6, 0x40000000    # 2.0f

    const/high16 v5, 0x3f800000    # 1.0f

    .line 304
    iget-object v3, p0, Lobject/p2pipcam/customComponent/MyLocalPicImageView;->image:Landroid/graphics/Bitmap;

    if-nez v3, :cond_0

    .line 322
    :goto_0
    return-void

    .line 307
    :cond_0
    const-string v3, "tag"

    const-string v4, "zoomOut:"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    invoke-virtual {p0}, Lobject/p2pipcam/customComponent/MyLocalPicImageView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v0, v3, v6

    .line 309
    .local v0, "cx":F
    invoke-virtual {p0}, Lobject/p2pipcam/customComponent/MyLocalPicImageView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v1, v3, v6

    .line 312
    .local v1, "cy":F
    new-instance v2, Landroid/graphics/Matrix;

    iget-object v3, p0, Lobject/p2pipcam/customComponent/MyLocalPicImageView;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-direct {v2, v3}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 313
    .local v2, "tmp":Landroid/graphics/Matrix;
    div-float v3, v5, p1

    div-float v4, v5, p1

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 315
    invoke-virtual {p0, v2}, Lobject/p2pipcam/customComponent/MyLocalPicImageView;->getScale(Landroid/graphics/Matrix;)F

    move-result v3

    cmpg-float v3, v3, v5

    if-gez v3, :cond_1

    .line 316
    iget-object v3, p0, Lobject/p2pipcam/customComponent/MyLocalPicImageView;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v5, v5, v0, v1}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 320
    :goto_1
    invoke-virtual {p0}, Lobject/p2pipcam/customComponent/MyLocalPicImageView;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {p0, v3}, Lobject/p2pipcam/customComponent/MyLocalPicImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 321
    invoke-virtual {p0, v7, v7}, Lobject/p2pipcam/customComponent/MyLocalPicImageView;->center(ZZ)V

    goto :goto_0

    .line 318
    :cond_1
    iget-object v3, p0, Lobject/p2pipcam/customComponent/MyLocalPicImageView;->mSuppMatrix:Landroid/graphics/Matrix;

    div-float v4, v5, p1

    div-float/2addr v5, p1

    invoke-virtual {v3, v4, v5, v0, v1}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    goto :goto_1
.end method

.method protected zoomTo(F)V
    .locals 4
    .param p1, "scale"    # F

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 271
    invoke-virtual {p0}, Lobject/p2pipcam/customComponent/MyLocalPicImageView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v0, v2, v3

    .line 272
    .local v0, "cx":F
    invoke-virtual {p0}, Lobject/p2pipcam/customComponent/MyLocalPicImageView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v1, v2, v3

    .line 274
    .local v1, "cy":F
    invoke-virtual {p0, p1, v0, v1}, Lobject/p2pipcam/customComponent/MyLocalPicImageView;->zoomTo(FFF)V

    .line 275
    return-void
.end method

.method protected zoomTo(FFF)V
    .locals 6
    .param p1, "scale"    # F
    .param p2, "centerX"    # F
    .param p3, "centerY"    # F

    .prologue
    const/4 v5, 0x1

    .line 227
    const-string v2, "tg"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "zoomTo scale:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    iget v2, p0, Lobject/p2pipcam/customComponent/MyLocalPicImageView;->mMaxZoom:F

    cmpl-float v2, p1, v2

    if-lez v2, :cond_1

    .line 229
    iget p1, p0, Lobject/p2pipcam/customComponent/MyLocalPicImageView;->mMaxZoom:F

    .line 230
    const-string v2, "tag"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "img max scale:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lobject/p2pipcam/customComponent/MyLocalPicImageView;->getScale()F

    move-result v1

    .line 237
    .local v1, "oldScale":F
    const-string v2, "tg"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "oldScale:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    div-float v0, p1, v1

    .line 239
    .local v0, "deltaScale":F
    const-string v2, "tag"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "deltaScale:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    iget-object v2, p0, Lobject/p2pipcam/customComponent/MyLocalPicImageView;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v0, v0, p2, p3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 241
    invoke-virtual {p0}, Lobject/p2pipcam/customComponent/MyLocalPicImageView;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {p0, v2}, Lobject/p2pipcam/customComponent/MyLocalPicImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 242
    invoke-virtual {p0, v5, v5}, Lobject/p2pipcam/customComponent/MyLocalPicImageView;->center(ZZ)V

    .line 243
    return-void

    .line 231
    .end local v0    # "deltaScale":F
    .end local v1    # "oldScale":F
    :cond_1
    iget v2, p0, Lobject/p2pipcam/customComponent/MyLocalPicImageView;->mMinZoom:F

    cmpg-float v2, p1, v2

    if-gez v2, :cond_0

    .line 232
    iget p1, p0, Lobject/p2pipcam/customComponent/MyLocalPicImageView;->mMinZoom:F

    .line 233
    const-string v2, "tag"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "img min scale:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected zoomTo(FFFF)V
    .locals 10
    .param p1, "scale"    # F
    .param p2, "centerX"    # F
    .param p3, "centerY"    # F
    .param p4, "durationMs"    # F

    .prologue
    .line 247
    invoke-virtual {p0}, Lobject/p2pipcam/customComponent/MyLocalPicImageView;->getScale()F

    move-result v0

    sub-float v0, p1, v0

    div-float v6, v0, p4

    .line 248
    .local v6, "incrementPerMs":F
    invoke-virtual {p0}, Lobject/p2pipcam/customComponent/MyLocalPicImageView;->getScale()F

    move-result v5

    .line 249
    .local v5, "oldScale":F
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 251
    .local v3, "startTime":J
    iget-object v9, p0, Lobject/p2pipcam/customComponent/MyLocalPicImageView;->mHandler:Landroid/os/Handler;

    new-instance v0, Lobject/p2pipcam/customComponent/MyLocalPicImageView$1;

    move-object v1, p0

    move v2, p4

    move v7, p2

    move v8, p3

    invoke-direct/range {v0 .. v8}, Lobject/p2pipcam/customComponent/MyLocalPicImageView$1;-><init>(Lobject/p2pipcam/customComponent/MyLocalPicImageView;FJFFFF)V

    invoke-virtual {v9, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 262
    return-void
.end method

.method protected zoomToPoint(FFF)V
    .locals 4
    .param p1, "scale"    # F
    .param p2, "pointX"    # F
    .param p3, "pointY"    # F

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 278
    invoke-virtual {p0}, Lobject/p2pipcam/customComponent/MyLocalPicImageView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v0, v2, v3

    .line 279
    .local v0, "cx":F
    invoke-virtual {p0}, Lobject/p2pipcam/customComponent/MyLocalPicImageView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v1, v2, v3

    .line 281
    .local v1, "cy":F
    sub-float v2, v0, p2

    sub-float v3, v1, p3

    invoke-virtual {p0, v2, v3}, Lobject/p2pipcam/customComponent/MyLocalPicImageView;->panBy(FF)V

    .line 282
    invoke-virtual {p0, p1, v0, v1}, Lobject/p2pipcam/customComponent/MyLocalPicImageView;->zoomTo(FFF)V

    .line 283
    return-void
.end method
