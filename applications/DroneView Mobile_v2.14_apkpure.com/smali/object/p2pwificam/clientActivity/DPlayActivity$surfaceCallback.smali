.class Lobject/p2pwificam/clientActivity/DPlayActivity$surfaceCallback;
.super Ljava/lang/Object;
.source "DPlayActivity.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pwificam/clientActivity/DPlayActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "surfaceCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;


# direct methods
.method private constructor <init>(Lobject/p2pwificam/clientActivity/DPlayActivity;)V
    .locals 0

    .prologue
    .line 296
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$surfaceCallback;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lobject/p2pwificam/clientActivity/DPlayActivity;Lobject/p2pwificam/clientActivity/DPlayActivity$surfaceCallback;)V
    .locals 0

    .prologue
    .line 296
    invoke-direct {p0, p1}, Lobject/p2pwificam/clientActivity/DPlayActivity$surfaceCallback;-><init>(Lobject/p2pwificam/clientActivity/DPlayActivity;)V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 3
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 298
    const-string v0, "DPlay"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "surfaceChanged  === width:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " h:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$surfaceCallback;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->playHolder:Landroid/view/SurfaceHolder;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$120(Lobject/p2pwificam/clientActivity/DPlayActivity;)Landroid/view/SurfaceHolder;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 300
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$surfaceCallback;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-static {v0, v1}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$121(Lobject/p2pwificam/clientActivity/DPlayActivity;Landroid/view/Surface;)V

    .line 306
    :cond_0
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 309
    const-string v0, "DPlay"

    const-string v1, "surfaceCreated  === "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 313
    const-string v0, "DPlay"

    const-string v1, "surfaceDestroyed  === "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$surfaceCallback;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # invokes: Lobject/p2pwificam/clientActivity/DPlayActivity;->StopPlayThread()V
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$123(Lobject/p2pwificam/clientActivity/DPlayActivity;)V

    .line 316
    return-void
.end method
