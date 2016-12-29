.class Lobject/p2pwificam/clientActivity/MediaPlayerActivity$3;
.super Landroid/view/OrientationEventListener;
.source "MediaPlayerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lobject/p2pwificam/clientActivity/MediaPlayerActivity;->startOrientationChangeListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/MediaPlayerActivity;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/MediaPlayerActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "$anonymous0"    # Landroid/content/Context;

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/MediaPlayerActivity$3;->this$0:Lobject/p2pwificam/clientActivity/MediaPlayerActivity;

    .line 500
    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 6
    .param p1, "rotation"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 503
    const-string v0, "MediaPlayer"

    const-string v1, "rotation %d "

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    const/16 v0, 0x2d

    if-lt p1, v0, :cond_0

    const/16 v0, 0x87

    if-gt p1, v0, :cond_0

    .line 506
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/MediaPlayerActivity$3;->this$0:Lobject/p2pwificam/clientActivity/MediaPlayerActivity;

    # getter for: Lobject/p2pwificam/clientActivity/MediaPlayerActivity;->isReverseLandscape:Z
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/MediaPlayerActivity;->access$13(Lobject/p2pwificam/clientActivity/MediaPlayerActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 508
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/MediaPlayerActivity$3;->this$0:Lobject/p2pwificam/clientActivity/MediaPlayerActivity;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lobject/p2pwificam/clientActivity/MediaPlayerActivity;->setRequestedOrientation(I)V

    .line 509
    invoke-static {v5}, Lobject/p2pipcam/utils/Pub;->setReverseLandscape(Z)V

    .line 510
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/MediaPlayerActivity$3;->this$0:Lobject/p2pwificam/clientActivity/MediaPlayerActivity;

    invoke-static {v0, v5}, Lobject/p2pwificam/clientActivity/MediaPlayerActivity;->access$14(Lobject/p2pwificam/clientActivity/MediaPlayerActivity;Z)V

    .line 513
    :cond_0
    const/16 v0, 0xe1

    if-lt p1, v0, :cond_1

    const/16 v0, 0x13b

    if-gt p1, v0, :cond_1

    .line 515
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/MediaPlayerActivity$3;->this$0:Lobject/p2pwificam/clientActivity/MediaPlayerActivity;

    # getter for: Lobject/p2pwificam/clientActivity/MediaPlayerActivity;->isReverseLandscape:Z
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/MediaPlayerActivity;->access$13(Lobject/p2pwificam/clientActivity/MediaPlayerActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 517
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/MediaPlayerActivity$3;->this$0:Lobject/p2pwificam/clientActivity/MediaPlayerActivity;

    invoke-virtual {v0, v4}, Lobject/p2pwificam/clientActivity/MediaPlayerActivity;->setRequestedOrientation(I)V

    .line 518
    invoke-static {v4}, Lobject/p2pipcam/utils/Pub;->setReverseLandscape(Z)V

    .line 519
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/MediaPlayerActivity$3;->this$0:Lobject/p2pwificam/clientActivity/MediaPlayerActivity;

    invoke-static {v0, v4}, Lobject/p2pwificam/clientActivity/MediaPlayerActivity;->access$14(Lobject/p2pwificam/clientActivity/MediaPlayerActivity;Z)V

    .line 522
    :cond_1
    return-void
.end method
