.class public final Lobject/p2pipcam/zxingtwodimensioncode/ViewfinderResultPointCallback;
.super Ljava/lang/Object;
.source "ViewfinderResultPointCallback.java"

# interfaces
.implements Lcom/google/zxing/ResultPointCallback;


# instance fields
.field private final viewfinderView:Lobject/p2pipcam/zxingtwodimensioncode/ViewfinderView;


# direct methods
.method public constructor <init>(Lobject/p2pipcam/zxingtwodimensioncode/ViewfinderView;)V
    .locals 0
    .param p1, "viewfinderView"    # Lobject/p2pipcam/zxingtwodimensioncode/ViewfinderView;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lobject/p2pipcam/zxingtwodimensioncode/ViewfinderResultPointCallback;->viewfinderView:Lobject/p2pipcam/zxingtwodimensioncode/ViewfinderView;

    .line 28
    return-void
.end method


# virtual methods
.method public foundPossibleResultPoint(Lcom/google/zxing/ResultPoint;)V
    .locals 1
    .param p1, "point"    # Lcom/google/zxing/ResultPoint;

    .prologue
    .line 31
    iget-object v0, p0, Lobject/p2pipcam/zxingtwodimensioncode/ViewfinderResultPointCallback;->viewfinderView:Lobject/p2pipcam/zxingtwodimensioncode/ViewfinderView;

    invoke-virtual {v0, p1}, Lobject/p2pipcam/zxingtwodimensioncode/ViewfinderView;->addPossibleResultPoint(Lcom/google/zxing/ResultPoint;)V

    .line 32
    return-void
.end method
