.class public final Lcom/google/zxing/common/DefaultGridSampler;
.super Lcom/google/zxing/common/GridSampler;
.source "DefaultGridSampler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/google/zxing/common/GridSampler;-><init>()V

    return-void
.end method


# virtual methods
.method public sampleGrid(Lcom/google/zxing/common/BitMatrix;IFFFFFFFFFFFFFFFF)Lcom/google/zxing/common/BitMatrix;
    .locals 2
    .param p1, "image"    # Lcom/google/zxing/common/BitMatrix;
    .param p2, "dimension"    # I
    .param p3, "p1ToX"    # F
    .param p4, "p1ToY"    # F
    .param p5, "p2ToX"    # F
    .param p6, "p2ToY"    # F
    .param p7, "p3ToX"    # F
    .param p8, "p3ToY"    # F
    .param p9, "p4ToX"    # F
    .param p10, "p4ToY"    # F
    .param p11, "p1FromX"    # F
    .param p12, "p1FromY"    # F
    .param p13, "p2FromX"    # F
    .param p14, "p2FromY"    # F
    .param p15, "p3FromX"    # F
    .param p16, "p3FromY"    # F
    .param p17, "p4FromX"    # F
    .param p18, "p4FromY"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 37
    invoke-static/range {p3 .. p18}, Lcom/google/zxing/common/PerspectiveTransform;->quadrilateralToQuadrilateral(FFFFFFFFFFFFFFFF)Lcom/google/zxing/common/PerspectiveTransform;

    move-result-object v0

    .line 41
    .local v0, "transform":Lcom/google/zxing/common/PerspectiveTransform;
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/zxing/common/DefaultGridSampler;->sampleGrid(Lcom/google/zxing/common/BitMatrix;ILcom/google/zxing/common/PerspectiveTransform;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v1

    return-object v1
.end method

.method public sampleGrid(Lcom/google/zxing/common/BitMatrix;ILcom/google/zxing/common/PerspectiveTransform;)Lcom/google/zxing/common/BitMatrix;
    .locals 10
    .param p1, "image"    # Lcom/google/zxing/common/BitMatrix;
    .param p2, "dimension"    # I
    .param p3, "transform"    # Lcom/google/zxing/common/PerspectiveTransform;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    const/high16 v9, 0x3f000000    # 0.5f

    .line 47
    new-instance v1, Lcom/google/zxing/common/BitMatrix;

    invoke-direct {v1, p2}, Lcom/google/zxing/common/BitMatrix;-><init>(I)V

    .line 48
    .local v1, "bits":Lcom/google/zxing/common/BitMatrix;
    shl-int/lit8 v7, p2, 0x1

    new-array v4, v7, [F

    .line 49
    .local v4, "points":[F
    const/4 v6, 0x0

    .local v6, "y":I
    :goto_0
    if-ge v6, p2, :cond_3

    .line 50
    array-length v3, v4

    .line 51
    .local v3, "max":I
    int-to-float v7, v6

    add-float v2, v7, v9

    .line 52
    .local v2, "iValue":F
    const/4 v5, 0x0

    .local v5, "x":I
    :goto_1
    if-ge v5, v3, :cond_0

    .line 53
    shr-int/lit8 v7, v5, 0x1

    int-to-float v7, v7

    add-float/2addr v7, v9

    aput v7, v4, v5

    .line 54
    add-int/lit8 v7, v5, 0x1

    aput v2, v4, v7

    .line 52
    add-int/lit8 v5, v5, 0x2

    goto :goto_1

    .line 56
    :cond_0
    invoke-virtual {p3, v4}, Lcom/google/zxing/common/PerspectiveTransform;->transformPoints([F)V

    .line 59
    invoke-static {p1, v4}, Lcom/google/zxing/common/DefaultGridSampler;->checkAndNudgePoints(Lcom/google/zxing/common/BitMatrix;[F)V

    .line 61
    const/4 v5, 0x0

    :goto_2
    if-ge v5, v3, :cond_2

    .line 62
    :try_start_0
    aget v7, v4, v5

    float-to-int v7, v7

    add-int/lit8 v8, v5, 0x1

    aget v8, v4, v8

    float-to-int v8, v8

    invoke-virtual {p1, v7, v8}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 64
    shr-int/lit8 v7, v5, 0x1

    invoke-virtual {v1, v7, v6}, Lcom/google/zxing/common/BitMatrix;->set(II)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :cond_1
    add-int/lit8 v5, v5, 0x2

    goto :goto_2

    .line 67
    :catch_0
    move-exception v0

    .line 75
    .local v0, "aioobe":Ljava/lang/ArrayIndexOutOfBoundsException;
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v7

    throw v7

    .line 49
    .end local v0    # "aioobe":Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 78
    .end local v2    # "iValue":F
    .end local v3    # "max":I
    .end local v5    # "x":I
    :cond_3
    return-object v1
.end method
