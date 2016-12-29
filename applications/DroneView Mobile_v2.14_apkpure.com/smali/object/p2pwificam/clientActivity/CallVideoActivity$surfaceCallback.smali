.class Lobject/p2pwificam/clientActivity/CallVideoActivity$surfaceCallback;
.super Ljava/lang/Object;
.source "CallVideoActivity.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pwificam/clientActivity/CallVideoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "surfaceCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/CallVideoActivity;


# direct methods
.method private constructor <init>(Lobject/p2pwificam/clientActivity/CallVideoActivity;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity$surfaceCallback;->this$0:Lobject/p2pwificam/clientActivity/CallVideoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lobject/p2pwificam/clientActivity/CallVideoActivity;Lobject/p2pwificam/clientActivity/CallVideoActivity$surfaceCallback;)V
    .locals 0

    .prologue
    .line 142
    invoke-direct {p0, p1}, Lobject/p2pwificam/clientActivity/CallVideoActivity$surfaceCallback;-><init>(Lobject/p2pwificam/clientActivity/CallVideoActivity;)V

    return-void
.end method

.method static synthetic access$1(Lobject/p2pwificam/clientActivity/CallVideoActivity$surfaceCallback;)Lobject/p2pwificam/clientActivity/CallVideoActivity;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity$surfaceCallback;->this$0:Lobject/p2pwificam/clientActivity/CallVideoActivity;

    return-object v0
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 144
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity$surfaceCallback;->this$0:Lobject/p2pwificam/clientActivity/CallVideoActivity;

    # getter for: Lobject/p2pwificam/clientActivity/CallVideoActivity;->playHolder:Landroid/view/SurfaceHolder;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/CallVideoActivity;->access$29(Lobject/p2pwificam/clientActivity/CallVideoActivity;)Landroid/view/SurfaceHolder;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 145
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity$surfaceCallback;->this$0:Lobject/p2pwificam/clientActivity/CallVideoActivity;

    # getter for: Lobject/p2pwificam/clientActivity/CallVideoActivity;->_camera:Lcom/easyview/camera/EVBaseCamera;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/CallVideoActivity;->access$24(Lobject/p2pwificam/clientActivity/CallVideoActivity;)Lcom/easyview/camera/EVBaseCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easyview/camera/EVBaseCamera;->isOnline()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 147
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity$surfaceCallback;->this$0:Lobject/p2pwificam/clientActivity/CallVideoActivity;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lobject/p2pwificam/clientActivity/CallVideoActivity;->access$5(Lobject/p2pwificam/clientActivity/CallVideoActivity;I)V

    .line 148
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity$surfaceCallback;->this$0:Lobject/p2pwificam/clientActivity/CallVideoActivity;

    # getter for: Lobject/p2pwificam/clientActivity/CallVideoActivity;->strDID:Ljava/lang/String;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/CallVideoActivity;->access$6(Lobject/p2pwificam/clientActivity/CallVideoActivity;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity$surfaceCallback;->this$0:Lobject/p2pwificam/clientActivity/CallVideoActivity;

    # getter for: Lobject/p2pwificam/clientActivity/CallVideoActivity;->streamType:I
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/CallVideoActivity;->access$7(Lobject/p2pwificam/clientActivity/CallVideoActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lobject/p2pipcam/nativecaller/NativeCaller;->StartPPPPLivestream(Ljava/lang/String;I)I

    .line 167
    :cond_0
    :goto_0
    return-void

    .line 152
    :cond_1
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity$surfaceCallback;->this$0:Lobject/p2pwificam/clientActivity/CallVideoActivity;

    # getter for: Lobject/p2pwificam/clientActivity/CallVideoActivity;->_camera:Lcom/easyview/camera/EVBaseCamera;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/CallVideoActivity;->access$24(Lobject/p2pwificam/clientActivity/CallVideoActivity;)Lcom/easyview/camera/EVBaseCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easyview/camera/EVBaseCamera;->Start()V

    .line 153
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity$surfaceCallback;->this$0:Lobject/p2pwificam/clientActivity/CallVideoActivity;

    # getter for: Lobject/p2pwificam/clientActivity/CallVideoActivity;->_camera:Lcom/easyview/camera/EVBaseCamera;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/CallVideoActivity;->access$24(Lobject/p2pwificam/clientActivity/CallVideoActivity;)Lcom/easyview/camera/EVBaseCamera;

    move-result-object v0

    new-instance v1, Lobject/p2pwificam/clientActivity/CallVideoActivity$surfaceCallback$1;

    invoke-direct {v1, p0}, Lobject/p2pwificam/clientActivity/CallVideoActivity$surfaceCallback$1;-><init>(Lobject/p2pwificam/clientActivity/CallVideoActivity$surfaceCallback;)V

    invoke-virtual {v0, v1}, Lcom/easyview/camera/EVBaseCamera;->setStatusListener(Lcom/easyview/basecamera/ICamera$IRespondListener;)V

    goto :goto_0
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 170
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 174
    return-void
.end method
