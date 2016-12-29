.class Lobject/p2pwificam/clientActivity/MediaViewerActivity$3;
.super Landroid/view/OrientationEventListener;
.source "MediaViewerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lobject/p2pwificam/clientActivity/MediaViewerActivity;->startOrientationChangeListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/MediaViewerActivity;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/MediaViewerActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "$anonymous0"    # Landroid/content/Context;

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/MediaViewerActivity$3;->this$0:Lobject/p2pwificam/clientActivity/MediaViewerActivity;

    .line 427
    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 3
    .param p1, "rotation"    # I

    .prologue
    const/4 v2, 0x0

    .line 431
    const/16 v0, 0x2d

    if-lt p1, v0, :cond_0

    const/16 v0, 0x87

    if-gt p1, v0, :cond_0

    .line 433
    invoke-static {}, Lobject/p2pipcam/utils/Pub;->isReverseLandscape()Z

    move-result v0

    if-nez v0, :cond_0

    .line 434
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/MediaViewerActivity$3;->this$0:Lobject/p2pwificam/clientActivity/MediaViewerActivity;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lobject/p2pwificam/clientActivity/MediaViewerActivity;->setRequestedOrientation(I)V

    .line 435
    const/4 v0, 0x1

    invoke-static {v0}, Lobject/p2pipcam/utils/Pub;->setReverseLandscape(Z)V

    .line 438
    :cond_0
    const/16 v0, 0xe1

    if-lt p1, v0, :cond_1

    const/16 v0, 0x13b

    if-gt p1, v0, :cond_1

    .line 440
    invoke-static {}, Lobject/p2pipcam/utils/Pub;->isReverseLandscape()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 441
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/MediaViewerActivity$3;->this$0:Lobject/p2pwificam/clientActivity/MediaViewerActivity;

    invoke-virtual {v0, v2}, Lobject/p2pwificam/clientActivity/MediaViewerActivity;->setRequestedOrientation(I)V

    .line 442
    invoke-static {v2}, Lobject/p2pipcam/utils/Pub;->setReverseLandscape(Z)V

    .line 445
    :cond_1
    return-void
.end method
