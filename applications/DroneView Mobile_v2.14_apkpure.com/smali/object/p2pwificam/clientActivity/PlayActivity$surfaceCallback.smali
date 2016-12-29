.class Lobject/p2pwificam/clientActivity/PlayActivity$surfaceCallback;
.super Ljava/lang/Object;
.source "PlayActivity.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pwificam/clientActivity/PlayActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "surfaceCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/PlayActivity;


# direct methods
.method private constructor <init>(Lobject/p2pwificam/clientActivity/PlayActivity;)V
    .locals 0

    .prologue
    .line 502
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/PlayActivity$surfaceCallback;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lobject/p2pwificam/clientActivity/PlayActivity;Lobject/p2pwificam/clientActivity/PlayActivity$surfaceCallback;)V
    .locals 0

    .prologue
    .line 502
    invoke-direct {p0, p1}, Lobject/p2pwificam/clientActivity/PlayActivity$surfaceCallback;-><init>(Lobject/p2pwificam/clientActivity/PlayActivity;)V

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
    .line 505
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity$surfaceCallback;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->playHolder:Landroid/view/SurfaceHolder;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$110(Lobject/p2pwificam/clientActivity/PlayActivity;)Landroid/view/SurfaceHolder;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 508
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity$surfaceCallback;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->bStartVideo:Z
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$111(Lobject/p2pwificam/clientActivity/PlayActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 510
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity$surfaceCallback;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$112(Lobject/p2pwificam/clientActivity/PlayActivity;Z)V

    .line 511
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity$surfaceCallback;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->_camera:Lcom/easyview/basecamera/BaseCamera;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$47(Lobject/p2pwificam/clientActivity/PlayActivity;)Lcom/easyview/basecamera/BaseCamera;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/easyview/basecamera/BaseCamera;->StartVideo(Lcom/easyview/basecamera/ICamera$IDataListener;)V

    .line 515
    :cond_0
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 518
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 522
    return-void
.end method
