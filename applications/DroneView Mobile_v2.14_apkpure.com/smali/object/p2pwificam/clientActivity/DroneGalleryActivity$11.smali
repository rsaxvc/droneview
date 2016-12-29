.class Lobject/p2pwificam/clientActivity/DroneGalleryActivity$11;
.super Landroid/view/OrientationEventListener;
.source "DroneGalleryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->startOrientationChangeListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/DroneGalleryActivity;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/DroneGalleryActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "$anonymous0"    # Landroid/content/Context;

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity$11;->this$0:Lobject/p2pwificam/clientActivity/DroneGalleryActivity;

    .line 525
    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 3
    .param p1, "rotation"    # I

    .prologue
    const/4 v2, 0x0

    .line 529
    const/16 v0, 0x2d

    if-lt p1, v0, :cond_0

    const/16 v0, 0x87

    if-gt p1, v0, :cond_0

    .line 531
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity$11;->this$0:Lobject/p2pwificam/clientActivity/DroneGalleryActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->isReverseLandscape:Z
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->access$34(Lobject/p2pwificam/clientActivity/DroneGalleryActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 534
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity$11;->this$0:Lobject/p2pwificam/clientActivity/DroneGalleryActivity;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->setRequestedOrientation(I)V

    .line 535
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity$11;->this$0:Lobject/p2pwificam/clientActivity/DroneGalleryActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->access$35(Lobject/p2pwificam/clientActivity/DroneGalleryActivity;Z)V

    .line 538
    :cond_0
    const/16 v0, 0xe1

    if-lt p1, v0, :cond_1

    const/16 v0, 0x13b

    if-gt p1, v0, :cond_1

    .line 540
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity$11;->this$0:Lobject/p2pwificam/clientActivity/DroneGalleryActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->isReverseLandscape:Z
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->access$34(Lobject/p2pwificam/clientActivity/DroneGalleryActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 543
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity$11;->this$0:Lobject/p2pwificam/clientActivity/DroneGalleryActivity;

    invoke-virtual {v0, v2}, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->setRequestedOrientation(I)V

    .line 544
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DroneGalleryActivity$11;->this$0:Lobject/p2pwificam/clientActivity/DroneGalleryActivity;

    invoke-static {v0, v2}, Lobject/p2pwificam/clientActivity/DroneGalleryActivity;->access$35(Lobject/p2pwificam/clientActivity/DroneGalleryActivity;Z)V

    .line 547
    :cond_1
    return-void
.end method
