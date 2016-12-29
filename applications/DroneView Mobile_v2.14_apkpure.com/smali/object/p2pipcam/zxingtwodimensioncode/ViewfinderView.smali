.class public final Lobject/p2pipcam/zxingtwodimensioncode/ViewfinderView;
.super Landroid/view/View;
.source "ViewfinderView.java"


# static fields
.field private static final ANIMATION_DELAY:J = 0x64L

.field private static final OPAQUE:I = 0xff

.field private static final SCANNER_ALPHA:[I


# instance fields
.field private final frameColor:I

.field private final laserColor:I

.field private lastPossibleResultPoints:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/google/zxing/ResultPoint;",
            ">;"
        }
    .end annotation
.end field

.field private final maskColor:I

.field private final paint:Landroid/graphics/Paint;

.field private possibleResultPoints:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/google/zxing/ResultPoint;",
            ">;"
        }
    .end annotation
.end field

.field private resultBitmap:Landroid/graphics/Bitmap;

.field private final resultColor:I

.field private final resultPointColor:I

.field private scannerAlpha:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/16 v5, 0xc0

    const/16 v4, 0x80

    const/16 v3, 0x40

    .line 42
    const/16 v0, 0x8

    new-array v0, v0, [I

    const/4 v1, 0x1

    aput v3, v0, v1

    const/4 v1, 0x2

    aput v4, v0, v1

    const/4 v1, 0x3

    aput v5, v0, v1

    const/4 v1, 0x4

    const/16 v2, 0xff

    aput v2, v0, v1

    const/4 v1, 0x5

    aput v5, v0, v1

    const/4 v1, 0x6

    aput v4, v0, v1

    const/4 v1, 0x7

    aput v3, v0, v1

    sput-object v0, Lobject/p2pipcam/zxingtwodimensioncode/ViewfinderView;->SCANNER_ALPHA:[I

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lobject/p2pipcam/zxingtwodimensioncode/ViewfinderView;->paint:Landroid/graphics/Paint;

    .line 63
    invoke-virtual {p0}, Lobject/p2pipcam/zxingtwodimensioncode/ViewfinderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 64
    .local v0, "resources":Landroid/content/res/Resources;
    const v1, 0x7f090031

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lobject/p2pipcam/zxingtwodimensioncode/ViewfinderView;->maskColor:I

    .line 65
    const v1, 0x7f090023

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lobject/p2pipcam/zxingtwodimensioncode/ViewfinderView;->resultColor:I

    .line 66
    const v1, 0x7f09002f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lobject/p2pipcam/zxingtwodimensioncode/ViewfinderView;->frameColor:I

    .line 67
    const v1, 0x7f090030

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lobject/p2pipcam/zxingtwodimensioncode/ViewfinderView;->laserColor:I

    .line 68
    const v1, 0x7f09001e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lobject/p2pipcam/zxingtwodimensioncode/ViewfinderView;->resultPointColor:I

    .line 69
    const/4 v1, 0x0

    iput v1, p0, Lobject/p2pipcam/zxingtwodimensioncode/ViewfinderView;->scannerAlpha:I

    .line 70
    new-instance v1, Ljava/util/HashSet;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    iput-object v1, p0, Lobject/p2pipcam/zxingtwodimensioncode/ViewfinderView;->possibleResultPoints:Ljava/util/Collection;

    .line 71
    return-void
.end method


# virtual methods
.method public addPossibleResultPoint(Lcom/google/zxing/ResultPoint;)V
    .locals 1
    .param p1, "point"    # Lcom/google/zxing/ResultPoint;

    .prologue
    .line 152
    iget-object v0, p0, Lobject/p2pipcam/zxingtwodimensioncode/ViewfinderView;->possibleResultPoints:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 153
    return-void
.end method

.method public drawResultBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "barcode"    # Landroid/graphics/Bitmap;

    .prologue
    .line 147
    iput-object p1, p0, Lobject/p2pipcam/zxingtwodimensioncode/ViewfinderView;->resultBitmap:Landroid/graphics/Bitmap;

    .line 148
    invoke-virtual {p0}, Lobject/p2pipcam/zxingtwodimensioncode/ViewfinderView;->invalidate()V

    .line 149
    return-void
.end method

.method public drawViewfinder()V
    .locals 1

    .prologue
    .line 137
    const/4 v0, 0x0

    iput-object v0, p0, Lobject/p2pipcam/zxingtwodimensioncode/ViewfinderView;->resultBitmap:Landroid/graphics/Bitmap;

    .line 138
    invoke-virtual {p0}, Lobject/p2pipcam/zxingtwodimensioncode/ViewfinderView;->invalidate()V

    .line 139
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 75
    invoke-static {}, Lobject/p2pipcam/zxingtwodimensioncode/CameraManager;->get()Lobject/p2pipcam/zxingtwodimensioncode/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lobject/p2pipcam/zxingtwodimensioncode/CameraManager;->getFramingRect()Landroid/graphics/Rect;

    move-result-object v9

    .line 76
    .local v9, "frame":Landroid/graphics/Rect;
    if-nez v9, :cond_0

    .line 134
    :goto_0
    return-void

    .line 79
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v13

    .line 80
    .local v13, "width":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v10

    .line 83
    .local v10, "height":I
    iget-object v1, p0, Lobject/p2pipcam/zxingtwodimensioncode/ViewfinderView;->paint:Landroid/graphics/Paint;

    iget-object v0, p0, Lobject/p2pipcam/zxingtwodimensioncode/ViewfinderView;->resultBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget v0, p0, Lobject/p2pipcam/zxingtwodimensioncode/ViewfinderView;->resultColor:I

    :goto_1
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 84
    const/4 v1, 0x0

    const/4 v2, 0x0

    int-to-float v3, v13

    iget v0, v9, Landroid/graphics/Rect;->top:I

    int-to-float v4, v0

    iget-object v5, p0, Lobject/p2pipcam/zxingtwodimensioncode/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 85
    const/4 v1, 0x0

    iget v0, v9, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget v0, v9, Landroid/graphics/Rect;->left:I

    int-to-float v3, v0

    iget v0, v9, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v4, v0

    iget-object v5, p0, Lobject/p2pipcam/zxingtwodimensioncode/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 86
    iget v0, v9, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v1, v0

    iget v0, v9, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    int-to-float v3, v13

    iget v0, v9, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v4, v0

    iget-object v5, p0, Lobject/p2pipcam/zxingtwodimensioncode/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 87
    const/4 v1, 0x0

    iget v0, v9, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v2, v0

    int-to-float v3, v13

    int-to-float v4, v10

    iget-object v5, p0, Lobject/p2pipcam/zxingtwodimensioncode/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 89
    iget-object v0, p0, Lobject/p2pipcam/zxingtwodimensioncode/ViewfinderView;->resultBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 91
    iget-object v0, p0, Lobject/p2pipcam/zxingtwodimensioncode/ViewfinderView;->paint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 92
    iget-object v0, p0, Lobject/p2pipcam/zxingtwodimensioncode/ViewfinderView;->resultBitmap:Landroid/graphics/Bitmap;

    iget v1, v9, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, v9, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget-object v3, p0, Lobject/p2pipcam/zxingtwodimensioncode/ViewfinderView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 83
    :cond_1
    iget v0, p0, Lobject/p2pipcam/zxingtwodimensioncode/ViewfinderView;->maskColor:I

    goto :goto_1

    .line 96
    :cond_2
    iget-object v0, p0, Lobject/p2pipcam/zxingtwodimensioncode/ViewfinderView;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lobject/p2pipcam/zxingtwodimensioncode/ViewfinderView;->frameColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 97
    iget v0, v9, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget v0, v9, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget v0, v9, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v3, v0

    iget v0, v9, Landroid/graphics/Rect;->top:I

    add-int/lit8 v0, v0, 0x2

    int-to-float v4, v0

    iget-object v5, p0, Lobject/p2pipcam/zxingtwodimensioncode/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 98
    iget v0, v9, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget v0, v9, Landroid/graphics/Rect;->top:I

    add-int/lit8 v0, v0, 0x2

    int-to-float v2, v0

    iget v0, v9, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, 0x2

    int-to-float v3, v0

    iget v0, v9, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, -0x1

    int-to-float v4, v0

    iget-object v5, p0, Lobject/p2pipcam/zxingtwodimensioncode/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 99
    iget v0, v9, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, -0x1

    int-to-float v1, v0

    iget v0, v9, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget v0, v9, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v3, v0

    iget v0, v9, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, -0x1

    int-to-float v4, v0

    iget-object v5, p0, Lobject/p2pipcam/zxingtwodimensioncode/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 100
    iget v0, v9, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget v0, v9, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, -0x1

    int-to-float v2, v0

    iget v0, v9, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v3, v0

    iget v0, v9, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v4, v0

    iget-object v5, p0, Lobject/p2pipcam/zxingtwodimensioncode/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 103
    iget-object v0, p0, Lobject/p2pipcam/zxingtwodimensioncode/ViewfinderView;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lobject/p2pipcam/zxingtwodimensioncode/ViewfinderView;->laserColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 104
    iget-object v0, p0, Lobject/p2pipcam/zxingtwodimensioncode/ViewfinderView;->paint:Landroid/graphics/Paint;

    sget-object v1, Lobject/p2pipcam/zxingtwodimensioncode/ViewfinderView;->SCANNER_ALPHA:[I

    iget v2, p0, Lobject/p2pipcam/zxingtwodimensioncode/ViewfinderView;->scannerAlpha:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 105
    iget v0, p0, Lobject/p2pipcam/zxingtwodimensioncode/ViewfinderView;->scannerAlpha:I

    add-int/lit8 v0, v0, 0x1

    sget-object v1, Lobject/p2pipcam/zxingtwodimensioncode/ViewfinderView;->SCANNER_ALPHA:[I

    array-length v1, v1

    rem-int/2addr v0, v1

    iput v0, p0, Lobject/p2pipcam/zxingtwodimensioncode/ViewfinderView;->scannerAlpha:I

    .line 106
    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget v1, v9, Landroid/graphics/Rect;->top:I

    add-int v11, v0, v1

    .line 107
    .local v11, "middle":I
    iget v0, v9, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, 0x2

    int-to-float v1, v0

    add-int/lit8 v0, v11, -0x1

    int-to-float v2, v0

    iget v0, v9, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, -0x1

    int-to-float v3, v0

    add-int/lit8 v0, v11, 0x2

    int-to-float v4, v0

    iget-object v5, p0, Lobject/p2pipcam/zxingtwodimensioncode/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 109
    iget-object v8, p0, Lobject/p2pipcam/zxingtwodimensioncode/ViewfinderView;->possibleResultPoints:Ljava/util/Collection;

    .line 110
    .local v8, "currentPossible":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/zxing/ResultPoint;>;"
    iget-object v7, p0, Lobject/p2pipcam/zxingtwodimensioncode/ViewfinderView;->lastPossibleResultPoints:Ljava/util/Collection;

    .line 111
    .local v7, "currentLast":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/zxing/ResultPoint;>;"
    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 112
    const/4 v0, 0x0

    iput-object v0, p0, Lobject/p2pipcam/zxingtwodimensioncode/ViewfinderView;->lastPossibleResultPoints:Ljava/util/Collection;

    .line 122
    :cond_3
    if-eqz v7, :cond_4

    .line 123
    iget-object v0, p0, Lobject/p2pipcam/zxingtwodimensioncode/ViewfinderView;->paint:Landroid/graphics/Paint;

    const/16 v1, 0x7f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 124
    iget-object v0, p0, Lobject/p2pipcam/zxingtwodimensioncode/ViewfinderView;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lobject/p2pipcam/zxingtwodimensioncode/ViewfinderView;->resultPointColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 125
    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_6

    .line 132
    :cond_4
    const-wide/16 v1, 0x64

    iget v3, v9, Landroid/graphics/Rect;->left:I

    iget v4, v9, Landroid/graphics/Rect;->top:I

    iget v5, v9, Landroid/graphics/Rect;->right:I

    iget v6, v9, Landroid/graphics/Rect;->bottom:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lobject/p2pipcam/zxingtwodimensioncode/ViewfinderView;->postInvalidateDelayed(JIIII)V

    goto/16 :goto_0

    .line 114
    :cond_5
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lobject/p2pipcam/zxingtwodimensioncode/ViewfinderView;->possibleResultPoints:Ljava/util/Collection;

    .line 115
    iput-object v8, p0, Lobject/p2pipcam/zxingtwodimensioncode/ViewfinderView;->lastPossibleResultPoints:Ljava/util/Collection;

    .line 116
    iget-object v0, p0, Lobject/p2pipcam/zxingtwodimensioncode/ViewfinderView;->paint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 117
    iget-object v0, p0, Lobject/p2pipcam/zxingtwodimensioncode/ViewfinderView;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lobject/p2pipcam/zxingtwodimensioncode/ViewfinderView;->resultPointColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 118
    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/zxing/ResultPoint;

    .line 119
    .local v12, "point":Lcom/google/zxing/ResultPoint;
    iget v1, v9, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    invoke-virtual {v12}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v2

    add-float/2addr v1, v2

    iget v2, v9, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {v12}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v3

    add-float/2addr v2, v3

    const/high16 v3, 0x40c00000    # 6.0f

    iget-object v4, p0, Lobject/p2pipcam/zxingtwodimensioncode/ViewfinderView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_3

    .line 125
    .end local v12    # "point":Lcom/google/zxing/ResultPoint;
    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/zxing/ResultPoint;

    .line 126
    .restart local v12    # "point":Lcom/google/zxing/ResultPoint;
    iget v1, v9, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    invoke-virtual {v12}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v2

    add-float/2addr v1, v2

    iget v2, v9, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {v12}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v3

    add-float/2addr v2, v3

    const/high16 v3, 0x40400000    # 3.0f

    iget-object v4, p0, Lobject/p2pipcam/zxingtwodimensioncode/ViewfinderView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_2
.end method
