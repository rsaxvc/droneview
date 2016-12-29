.class Lobject/p2pwificam/clientActivity/DronePlayActivity$24;
.super Landroid/view/OrientationEventListener;
.source "DronePlayActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lobject/p2pwificam/clientActivity/DronePlayActivity;->startOrientationChangeListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/DronePlayActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "$anonymous0"    # Landroid/content/Context;

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$24;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    .line 2059
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

    .line 2063
    const/16 v0, 0x2d

    if-lt p1, v0, :cond_0

    const/16 v0, 0x87

    if-gt p1, v0, :cond_0

    .line 2065
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$24;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->isReverseLandscape:Z
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$53(Lobject/p2pwificam/clientActivity/DronePlayActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2067
    const-string v0, "Drone"

    const-string v1, "ReverseLandscape "

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2068
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$24;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->setRequestedOrientation(I)V

    .line 2069
    invoke-static {v4}, Lobject/p2pipcam/utils/Pub;->setReverseLandscape(Z)V

    .line 2070
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$24;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    invoke-static {v0, v4}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$115(Lobject/p2pwificam/clientActivity/DronePlayActivity;Z)V

    .line 2073
    :cond_0
    const/16 v0, 0xe1

    if-lt p1, v0, :cond_1

    const/16 v0, 0x13b

    if-gt p1, v0, :cond_1

    .line 2075
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$24;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->isReverseLandscape:Z
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$53(Lobject/p2pwificam/clientActivity/DronePlayActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2077
    const-string v0, "Drone"

    const-string v1, "Landscape "

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2078
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$24;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    invoke-virtual {v0, v3}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->setRequestedOrientation(I)V

    .line 2079
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$24;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    invoke-static {v0, v3}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$115(Lobject/p2pwificam/clientActivity/DronePlayActivity;Z)V

    .line 2080
    invoke-static {v3}, Lobject/p2pipcam/utils/Pub;->setReverseLandscape(Z)V

    .line 2083
    :cond_1
    return-void
.end method
