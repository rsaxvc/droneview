.class public final Lcom/google/zxing/common/DetectorResult;
.super Ljava/lang/Object;
.source "DetectorResult.java"


# instance fields
.field private final bits:Lcom/google/zxing/common/BitMatrix;

.field private final points:[Lcom/google/zxing/ResultPoint;


# direct methods
.method public constructor <init>(Lcom/google/zxing/common/BitMatrix;[Lcom/google/zxing/ResultPoint;)V
    .locals 0
    .param p1, "bits"    # Lcom/google/zxing/common/BitMatrix;
    .param p2, "points"    # [Lcom/google/zxing/ResultPoint;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/google/zxing/common/DetectorResult;->bits:Lcom/google/zxing/common/BitMatrix;

    .line 35
    iput-object p2, p0, Lcom/google/zxing/common/DetectorResult;->points:[Lcom/google/zxing/ResultPoint;

    .line 36
    return-void
.end method


# virtual methods
.method public getBits()Lcom/google/zxing/common/BitMatrix;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/zxing/common/DetectorResult;->bits:Lcom/google/zxing/common/BitMatrix;

    return-object v0
.end method

.method public getPoints()[Lcom/google/zxing/ResultPoint;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/zxing/common/DetectorResult;->points:[Lcom/google/zxing/ResultPoint;

    return-object v0
.end method
