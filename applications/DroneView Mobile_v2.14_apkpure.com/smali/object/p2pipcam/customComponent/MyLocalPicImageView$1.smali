.class Lobject/p2pipcam/customComponent/MyLocalPicImageView$1;
.super Ljava/lang/Object;
.source "MyLocalPicImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lobject/p2pipcam/customComponent/MyLocalPicImageView;->zoomTo(FFFF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pipcam/customComponent/MyLocalPicImageView;

.field private final synthetic val$centerX:F

.field private final synthetic val$centerY:F

.field private final synthetic val$durationMs:F

.field private final synthetic val$incrementPerMs:F

.field private final synthetic val$oldScale:F

.field private final synthetic val$startTime:J


# direct methods
.method constructor <init>(Lobject/p2pipcam/customComponent/MyLocalPicImageView;FJFFFF)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pipcam/customComponent/MyLocalPicImageView$1;->this$0:Lobject/p2pipcam/customComponent/MyLocalPicImageView;

    iput p2, p0, Lobject/p2pipcam/customComponent/MyLocalPicImageView$1;->val$durationMs:F

    iput-wide p3, p0, Lobject/p2pipcam/customComponent/MyLocalPicImageView$1;->val$startTime:J

    iput p5, p0, Lobject/p2pipcam/customComponent/MyLocalPicImageView$1;->val$oldScale:F

    iput p6, p0, Lobject/p2pipcam/customComponent/MyLocalPicImageView$1;->val$incrementPerMs:F

    iput p7, p0, Lobject/p2pipcam/customComponent/MyLocalPicImageView$1;->val$centerX:F

    iput p8, p0, Lobject/p2pipcam/customComponent/MyLocalPicImageView$1;->val$centerY:F

    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 253
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 254
    .local v1, "now":J
    iget v4, p0, Lobject/p2pipcam/customComponent/MyLocalPicImageView$1;->val$durationMs:F

    iget-wide v5, p0, Lobject/p2pipcam/customComponent/MyLocalPicImageView$1;->val$startTime:J

    sub-long v5, v1, v5

    long-to-float v5, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 255
    .local v0, "currentMs":F
    iget v4, p0, Lobject/p2pipcam/customComponent/MyLocalPicImageView$1;->val$oldScale:F

    iget v5, p0, Lobject/p2pipcam/customComponent/MyLocalPicImageView$1;->val$incrementPerMs:F

    mul-float/2addr v5, v0

    add-float v3, v4, v5

    .line 256
    .local v3, "target":F
    iget-object v4, p0, Lobject/p2pipcam/customComponent/MyLocalPicImageView$1;->this$0:Lobject/p2pipcam/customComponent/MyLocalPicImageView;

    iget v5, p0, Lobject/p2pipcam/customComponent/MyLocalPicImageView$1;->val$centerX:F

    iget v6, p0, Lobject/p2pipcam/customComponent/MyLocalPicImageView$1;->val$centerY:F

    invoke-virtual {v4, v3, v5, v6}, Lobject/p2pipcam/customComponent/MyLocalPicImageView;->zoomTo(FFF)V

    .line 257
    iget v4, p0, Lobject/p2pipcam/customComponent/MyLocalPicImageView$1;->val$durationMs:F

    cmpg-float v4, v0, v4

    if-gez v4, :cond_0

    .line 258
    iget-object v4, p0, Lobject/p2pipcam/customComponent/MyLocalPicImageView$1;->this$0:Lobject/p2pipcam/customComponent/MyLocalPicImageView;

    iget-object v4, v4, Lobject/p2pipcam/customComponent/MyLocalPicImageView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 260
    :cond_0
    return-void
.end method
