.class final Lobject/p2pwificam/gridview/PullToRefreshBase$SmoothScrollRunnable;
.super Ljava/lang/Object;
.source "PullToRefreshBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pwificam/gridview/PullToRefreshBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "SmoothScrollRunnable"
.end annotation


# static fields
.field static final ANIMATION_DURATION_MS:I = 0xbe

.field static final ANIMATION_FPS:I = 0x10


# instance fields
.field private continueRunning:Z

.field private currentY:I

.field private final handler:Landroid/os/Handler;

.field private final interpolator:Landroid/view/animation/Interpolator;

.field private final scrollFromY:I

.field private final scrollToY:I

.field private startTime:J

.field final synthetic this$0:Lobject/p2pwificam/gridview/PullToRefreshBase;


# direct methods
.method public constructor <init>(Lobject/p2pwificam/gridview/PullToRefreshBase;Landroid/os/Handler;II)V
    .locals 2
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "fromY"    # I
    .param p4, "toY"    # I

    .prologue
    .line 33
    iput-object p1, p0, Lobject/p2pwificam/gridview/PullToRefreshBase$SmoothScrollRunnable;->this$0:Lobject/p2pwificam/gridview/PullToRefreshBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lobject/p2pwificam/gridview/PullToRefreshBase$SmoothScrollRunnable;->continueRunning:Z

    .line 30
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lobject/p2pwificam/gridview/PullToRefreshBase$SmoothScrollRunnable;->startTime:J

    .line 31
    const/4 v0, -0x1

    iput v0, p0, Lobject/p2pwificam/gridview/PullToRefreshBase$SmoothScrollRunnable;->currentY:I

    .line 34
    iput-object p2, p0, Lobject/p2pwificam/gridview/PullToRefreshBase$SmoothScrollRunnable;->handler:Landroid/os/Handler;

    .line 35
    iput p3, p0, Lobject/p2pwificam/gridview/PullToRefreshBase$SmoothScrollRunnable;->scrollFromY:I

    .line 36
    iput p4, p0, Lobject/p2pwificam/gridview/PullToRefreshBase$SmoothScrollRunnable;->scrollToY:I

    .line 37
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lobject/p2pwificam/gridview/PullToRefreshBase$SmoothScrollRunnable;->interpolator:Landroid/view/animation/Interpolator;

    .line 38
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const-wide/16 v7, 0x3e8

    .line 47
    iget-wide v3, p0, Lobject/p2pwificam/gridview/PullToRefreshBase$SmoothScrollRunnable;->startTime:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    .line 48
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lobject/p2pwificam/gridview/PullToRefreshBase$SmoothScrollRunnable;->startTime:J

    .line 66
    :goto_0
    iget-boolean v3, p0, Lobject/p2pwificam/gridview/PullToRefreshBase$SmoothScrollRunnable;->continueRunning:Z

    if-eqz v3, :cond_0

    iget v3, p0, Lobject/p2pwificam/gridview/PullToRefreshBase$SmoothScrollRunnable;->scrollToY:I

    iget v4, p0, Lobject/p2pwificam/gridview/PullToRefreshBase$SmoothScrollRunnable;->currentY:I

    if-eq v3, v4, :cond_0

    .line 67
    iget-object v3, p0, Lobject/p2pwificam/gridview/PullToRefreshBase$SmoothScrollRunnable;->handler:Landroid/os/Handler;

    const-wide/16 v4, 0x10

    invoke-virtual {v3, p0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 69
    :cond_0
    return-void

    .line 56
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lobject/p2pwificam/gridview/PullToRefreshBase$SmoothScrollRunnable;->startTime:J

    sub-long/2addr v3, v5

    mul-long/2addr v3, v7

    const-wide/16 v5, 0xbe

    div-long v1, v3, v5

    .line 57
    .local v1, "normalizedTime":J
    invoke-static {v1, v2, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 59
    iget v3, p0, Lobject/p2pwificam/gridview/PullToRefreshBase$SmoothScrollRunnable;->scrollFromY:I

    iget v4, p0, Lobject/p2pwificam/gridview/PullToRefreshBase$SmoothScrollRunnable;->scrollToY:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    .line 60
    iget-object v4, p0, Lobject/p2pwificam/gridview/PullToRefreshBase$SmoothScrollRunnable;->interpolator:Landroid/view/animation/Interpolator;

    long-to-float v5, v1

    const/high16 v6, 0x447a0000    # 1000.0f

    div-float/2addr v5, v6

    invoke-interface {v4, v5}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v4

    .line 59
    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 61
    .local v0, "deltaY":I
    iget v3, p0, Lobject/p2pwificam/gridview/PullToRefreshBase$SmoothScrollRunnable;->scrollFromY:I

    sub-int/2addr v3, v0

    iput v3, p0, Lobject/p2pwificam/gridview/PullToRefreshBase$SmoothScrollRunnable;->currentY:I

    .line 62
    iget-object v3, p0, Lobject/p2pwificam/gridview/PullToRefreshBase$SmoothScrollRunnable;->this$0:Lobject/p2pwificam/gridview/PullToRefreshBase;

    iget v4, p0, Lobject/p2pwificam/gridview/PullToRefreshBase$SmoothScrollRunnable;->currentY:I

    invoke-virtual {v3, v4}, Lobject/p2pwificam/gridview/PullToRefreshBase;->setHeaderScroll(I)V

    goto :goto_0
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lobject/p2pwificam/gridview/PullToRefreshBase$SmoothScrollRunnable;->continueRunning:Z

    .line 73
    iget-object v0, p0, Lobject/p2pwificam/gridview/PullToRefreshBase$SmoothScrollRunnable;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 74
    return-void
.end method
