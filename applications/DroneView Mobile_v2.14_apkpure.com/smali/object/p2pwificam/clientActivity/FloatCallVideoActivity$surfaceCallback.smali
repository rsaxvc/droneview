.class Lobject/p2pwificam/clientActivity/FloatCallVideoActivity$surfaceCallback;
.super Ljava/lang/Object;
.source "FloatCallVideoActivity.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "surfaceCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;


# direct methods
.method private constructor <init>(Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity$surfaceCallback;->this$0:Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;Lobject/p2pwificam/clientActivity/FloatCallVideoActivity$surfaceCallback;)V
    .locals 0

    .prologue
    .line 133
    invoke-direct {p0, p1}, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity$surfaceCallback;-><init>(Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;)V

    return-void
.end method

.method static synthetic access$1(Lobject/p2pwificam/clientActivity/FloatCallVideoActivity$surfaceCallback;)Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity$surfaceCallback;->this$0:Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;

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
    .line 135
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity$surfaceCallback;->this$0:Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;

    # getter for: Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->playHolder:Landroid/view/SurfaceHolder;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->access$31(Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;)Landroid/view/SurfaceHolder;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 136
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity$surfaceCallback;->this$0:Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;

    # getter for: Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->_camera:Lcom/easyview/camera/EVBaseCamera;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->access$26(Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;)Lcom/easyview/camera/EVBaseCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easyview/camera/EVBaseCamera;->isOnline()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 138
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity$surfaceCallback;->this$0:Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->access$7(Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;I)V

    .line 139
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity$surfaceCallback;->this$0:Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;

    # getter for: Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->strDID:Ljava/lang/String;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->access$8(Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity$surfaceCallback;->this$0:Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;

    # getter for: Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->streamType:I
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->access$9(Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lobject/p2pipcam/nativecaller/NativeCaller;->StartPPPPLivestream(Ljava/lang/String;I)I

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 143
    :cond_1
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity$surfaceCallback;->this$0:Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;

    # getter for: Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->_camera:Lcom/easyview/camera/EVBaseCamera;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->access$26(Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;)Lcom/easyview/camera/EVBaseCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easyview/camera/EVBaseCamera;->Start()V

    .line 144
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity$surfaceCallback;->this$0:Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;

    # getter for: Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->_camera:Lcom/easyview/camera/EVBaseCamera;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;->access$26(Lobject/p2pwificam/clientActivity/FloatCallVideoActivity;)Lcom/easyview/camera/EVBaseCamera;

    move-result-object v0

    new-instance v1, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity$surfaceCallback$1;

    invoke-direct {v1, p0}, Lobject/p2pwificam/clientActivity/FloatCallVideoActivity$surfaceCallback$1;-><init>(Lobject/p2pwificam/clientActivity/FloatCallVideoActivity$surfaceCallback;)V

    invoke-virtual {v0, v1}, Lcom/easyview/camera/EVBaseCamera;->setStatusListener(Lcom/easyview/basecamera/ICamera$IRespondListener;)V

    goto :goto_0
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 161
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 165
    return-void
.end method
