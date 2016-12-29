.class Lobject/p2pwificam/clientActivity/PlayTestActivity$surfaceCallback;
.super Ljava/lang/Object;
.source "PlayTestActivity.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pwificam/clientActivity/PlayTestActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "surfaceCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;


# direct methods
.method private constructor <init>(Lobject/p2pwificam/clientActivity/PlayTestActivity;)V
    .locals 0

    .prologue
    .line 436
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$surfaceCallback;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lobject/p2pwificam/clientActivity/PlayTestActivity;Lobject/p2pwificam/clientActivity/PlayTestActivity$surfaceCallback;)V
    .locals 0

    .prologue
    .line 436
    invoke-direct {p0, p1}, Lobject/p2pwificam/clientActivity/PlayTestActivity$surfaceCallback;-><init>(Lobject/p2pwificam/clientActivity/PlayTestActivity;)V

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
    .line 439
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$surfaceCallback;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayTestActivity;->playHolder:Landroid/view/SurfaceHolder;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$84(Lobject/p2pwificam/clientActivity/PlayTestActivity;)Landroid/view/SurfaceHolder;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 440
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$surfaceCallback;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$85(Lobject/p2pwificam/clientActivity/PlayTestActivity;I)V

    .line 441
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$surfaceCallback;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayTestActivity;->strDID:Ljava/lang/String;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$8(Lobject/p2pwificam/clientActivity/PlayTestActivity;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$surfaceCallback;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayTestActivity;->streamType:I
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$86(Lobject/p2pwificam/clientActivity/PlayTestActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lobject/p2pipcam/nativecaller/NativeCaller;->StartPPPPLivestream(Ljava/lang/String;I)I

    .line 443
    :cond_0
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 446
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 450
    return-void
.end method
