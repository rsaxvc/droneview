.class Lobject/p2pwificam/clientActivity/PlayAlarmActivity$surfaceCallback;
.super Ljava/lang/Object;
.source "PlayAlarmActivity.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pwificam/clientActivity/PlayAlarmActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "surfaceCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;


# direct methods
.method private constructor <init>(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)V
    .locals 0

    .prologue
    .line 428
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$surfaceCallback;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;Lobject/p2pwificam/clientActivity/PlayAlarmActivity$surfaceCallback;)V
    .locals 0

    .prologue
    .line 428
    invoke-direct {p0, p1}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$surfaceCallback;-><init>(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)V

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
    .line 431
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$surfaceCallback;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->playHolder:Landroid/view/SurfaceHolder;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$84(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)Landroid/view/SurfaceHolder;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 432
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$surfaceCallback;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$85(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;I)V

    .line 433
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$surfaceCallback;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->strDID:Ljava/lang/String;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$8(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$surfaceCallback;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->streamType:I
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$86(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lobject/p2pipcam/nativecaller/NativeCaller;->StartPPPPLivestream(Ljava/lang/String;I)I

    .line 435
    :cond_0
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 438
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 442
    return-void
.end method
