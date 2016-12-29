.class Lobject/p2pwificam/clientActivity/DronePlayActivity$surfaceCallback;
.super Ljava/lang/Object;
.source "DronePlayActivity.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pwificam/clientActivity/DronePlayActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "surfaceCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;


# direct methods
.method private constructor <init>(Lobject/p2pwificam/clientActivity/DronePlayActivity;)V
    .locals 0

    .prologue
    .line 266
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$surfaceCallback;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lobject/p2pwificam/clientActivity/DronePlayActivity;Lobject/p2pwificam/clientActivity/DronePlayActivity$surfaceCallback;)V
    .locals 0

    .prologue
    .line 266
    invoke-direct {p0, p1}, Lobject/p2pwificam/clientActivity/DronePlayActivity$surfaceCallback;-><init>(Lobject/p2pwificam/clientActivity/DronePlayActivity;)V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 269
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$surfaceCallback;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->playHolder:Landroid/view/SurfaceHolder;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$72(Lobject/p2pwificam/clientActivity/DronePlayActivity;)Landroid/view/SurfaceHolder;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 270
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$surfaceCallback;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-static {v0, v1}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$73(Lobject/p2pwificam/clientActivity/DronePlayActivity;Landroid/view/Surface;)V

    .line 274
    :cond_0
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 277
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 281
    return-void
.end method
