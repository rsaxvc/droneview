.class Lobject/p2pipcam/customComponent/MyLocalPicImageView$2;
.super Ljava/lang/Object;
.source "MyLocalPicImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lobject/p2pipcam/customComponent/MyLocalPicImageView;->postTranslateDur(FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pipcam/customComponent/MyLocalPicImageView;

.field private final synthetic val$durationMs:F

.field private final synthetic val$incrementPerMs:F

.field private final synthetic val$startTime:J


# direct methods
.method constructor <init>(Lobject/p2pipcam/customComponent/MyLocalPicImageView;FJF)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pipcam/customComponent/MyLocalPicImageView$2;->this$0:Lobject/p2pipcam/customComponent/MyLocalPicImageView;

    iput p2, p0, Lobject/p2pipcam/customComponent/MyLocalPicImageView$2;->val$durationMs:F

    iput-wide p3, p0, Lobject/p2pipcam/customComponent/MyLocalPicImageView$2;->val$startTime:J

    iput p5, p0, Lobject/p2pipcam/customComponent/MyLocalPicImageView$2;->val$incrementPerMs:F

    .line 335
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 337
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 338
    .local v1, "now":J
    iget v3, p0, Lobject/p2pipcam/customComponent/MyLocalPicImageView$2;->val$durationMs:F

    iget-wide v4, p0, Lobject/p2pipcam/customComponent/MyLocalPicImageView$2;->val$startTime:J

    sub-long v4, v1, v4

    long-to-float v4, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 340
    .local v0, "currentMs":F
    iget-object v3, p0, Lobject/p2pipcam/customComponent/MyLocalPicImageView$2;->this$0:Lobject/p2pipcam/customComponent/MyLocalPicImageView;

    const/4 v4, 0x0

    iget v5, p0, Lobject/p2pipcam/customComponent/MyLocalPicImageView$2;->val$incrementPerMs:F

    mul-float/2addr v5, v0

    iget-object v6, p0, Lobject/p2pipcam/customComponent/MyLocalPicImageView$2;->this$0:Lobject/p2pipcam/customComponent/MyLocalPicImageView;

    iget v6, v6, Lobject/p2pipcam/customComponent/MyLocalPicImageView;->_dy:F

    sub-float/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Lobject/p2pipcam/customComponent/MyLocalPicImageView;->postTranslate(FF)V

    .line 341
    iget-object v3, p0, Lobject/p2pipcam/customComponent/MyLocalPicImageView$2;->this$0:Lobject/p2pipcam/customComponent/MyLocalPicImageView;

    iget v4, p0, Lobject/p2pipcam/customComponent/MyLocalPicImageView$2;->val$incrementPerMs:F

    mul-float/2addr v4, v0

    iput v4, v3, Lobject/p2pipcam/customComponent/MyLocalPicImageView;->_dy:F

    .line 343
    iget v3, p0, Lobject/p2pipcam/customComponent/MyLocalPicImageView$2;->val$durationMs:F

    cmpg-float v3, v0, v3

    if-gez v3, :cond_0

    .line 344
    iget-object v3, p0, Lobject/p2pipcam/customComponent/MyLocalPicImageView$2;->this$0:Lobject/p2pipcam/customComponent/MyLocalPicImageView;

    iget-object v3, v3, Lobject/p2pipcam/customComponent/MyLocalPicImageView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 346
    :cond_0
    return-void
.end method
