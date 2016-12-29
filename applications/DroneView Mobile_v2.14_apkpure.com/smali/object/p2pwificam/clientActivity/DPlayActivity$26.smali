.class Lobject/p2pwificam/clientActivity/DPlayActivity$26;
.super Landroid/view/OrientationEventListener;
.source "DPlayActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lobject/p2pwificam/clientActivity/DPlayActivity;->startOrientationChangeListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/DPlayActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "$anonymous0"    # Landroid/content/Context;

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$26;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    .line 2390
    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 5
    .param p1, "rotation"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2394
    const/16 v0, 0x2d

    if-lt p1, v0, :cond_0

    const/16 v0, 0x87

    if-gt p1, v0, :cond_0

    .line 2396
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$26;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->isReverseLandscape:Z
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$101(Lobject/p2pwificam/clientActivity/DPlayActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2398
    const-string v0, "DPlay"

    const-string v1, "ReverseLandscape "

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2399
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$26;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lobject/p2pwificam/clientActivity/DPlayActivity;->setRequestedOrientation(I)V

    .line 2400
    invoke-static {v4}, Lobject/p2pipcam/utils/Pub;->setReverseLandscape(Z)V

    .line 2401
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$26;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    invoke-static {v0, v4}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$167(Lobject/p2pwificam/clientActivity/DPlayActivity;Z)V

    .line 2404
    :cond_0
    const/16 v0, 0xe1

    if-lt p1, v0, :cond_1

    const/16 v0, 0x13b

    if-gt p1, v0, :cond_1

    .line 2406
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$26;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->isReverseLandscape:Z
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$101(Lobject/p2pwificam/clientActivity/DPlayActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2408
    const-string v0, "DPlay"

    const-string v1, "Landscape "

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2409
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$26;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    invoke-virtual {v0, v3}, Lobject/p2pwificam/clientActivity/DPlayActivity;->setRequestedOrientation(I)V

    .line 2410
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$26;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    invoke-static {v0, v3}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$167(Lobject/p2pwificam/clientActivity/DPlayActivity;Z)V

    .line 2411
    invoke-static {v3}, Lobject/p2pipcam/utils/Pub;->setReverseLandscape(Z)V

    .line 2414
    :cond_1
    return-void
.end method
