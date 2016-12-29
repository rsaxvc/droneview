.class Lobject/p2pwificam/clientActivity/ShowPictureActivity$3;
.super Landroid/view/OrientationEventListener;
.source "ShowPictureActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lobject/p2pwificam/clientActivity/ShowPictureActivity;->startOrientationChangeListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/ShowPictureActivity;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/ShowPictureActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "$anonymous0"    # Landroid/content/Context;

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/ShowPictureActivity$3;->this$0:Lobject/p2pwificam/clientActivity/ShowPictureActivity;

    .line 250
    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 4
    .param p1, "rotation"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 254
    const/16 v0, 0x2d

    if-lt p1, v0, :cond_0

    const/16 v0, 0x87

    if-gt p1, v0, :cond_0

    .line 256
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/ShowPictureActivity$3;->this$0:Lobject/p2pwificam/clientActivity/ShowPictureActivity;

    # getter for: Lobject/p2pwificam/clientActivity/ShowPictureActivity;->isReverseLandscape:Z
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/ShowPictureActivity;->access$9(Lobject/p2pwificam/clientActivity/ShowPictureActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 258
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/ShowPictureActivity$3;->this$0:Lobject/p2pwificam/clientActivity/ShowPictureActivity;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lobject/p2pwificam/clientActivity/ShowPictureActivity;->setRequestedOrientation(I)V

    .line 259
    invoke-static {v3}, Lobject/p2pipcam/utils/Pub;->setReverseLandscape(Z)V

    .line 260
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/ShowPictureActivity$3;->this$0:Lobject/p2pwificam/clientActivity/ShowPictureActivity;

    invoke-static {v0, v3}, Lobject/p2pwificam/clientActivity/ShowPictureActivity;->access$10(Lobject/p2pwificam/clientActivity/ShowPictureActivity;Z)V

    .line 263
    :cond_0
    const/16 v0, 0xe1

    if-lt p1, v0, :cond_1

    const/16 v0, 0x13b

    if-gt p1, v0, :cond_1

    .line 265
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/ShowPictureActivity$3;->this$0:Lobject/p2pwificam/clientActivity/ShowPictureActivity;

    # getter for: Lobject/p2pwificam/clientActivity/ShowPictureActivity;->isReverseLandscape:Z
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/ShowPictureActivity;->access$9(Lobject/p2pwificam/clientActivity/ShowPictureActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 267
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/ShowPictureActivity$3;->this$0:Lobject/p2pwificam/clientActivity/ShowPictureActivity;

    invoke-virtual {v0, v2}, Lobject/p2pwificam/clientActivity/ShowPictureActivity;->setRequestedOrientation(I)V

    .line 268
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/ShowPictureActivity$3;->this$0:Lobject/p2pwificam/clientActivity/ShowPictureActivity;

    invoke-static {v0, v2}, Lobject/p2pwificam/clientActivity/ShowPictureActivity;->access$10(Lobject/p2pwificam/clientActivity/ShowPictureActivity;Z)V

    .line 269
    invoke-static {v2}, Lobject/p2pipcam/utils/Pub;->setReverseLandscape(Z)V

    .line 272
    :cond_1
    return-void
.end method
