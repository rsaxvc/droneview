.class Lobject/p2pwificam/clientActivity/PlayActivity$17;
.super Ljava/lang/Object;
.source "PlayActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pwificam/clientActivity/PlayActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/PlayActivity;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/PlayActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/PlayActivity$17;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    .line 3345
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 3349
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity$17;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->bProgress:Z
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$70(Lobject/p2pwificam/clientActivity/PlayActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3351
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity$17;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->_camera:Lcom/easyview/basecamera/BaseCamera;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$47(Lobject/p2pwificam/clientActivity/PlayActivity;)Lcom/easyview/basecamera/BaseCamera;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3353
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity$17;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->_camera:Lcom/easyview/basecamera/BaseCamera;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$47(Lobject/p2pwificam/clientActivity/PlayActivity;)Lcom/easyview/basecamera/BaseCamera;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/easyview/basecamera/BaseCamera;->StartVideo(Lcom/easyview/basecamera/ICamera$IDataListener;)V

    .line 3355
    :cond_0
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity$17;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$12(Lobject/p2pwificam/clientActivity/PlayActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity$17;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->runnableStartVideo:Ljava/lang/Runnable;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$14(Lobject/p2pwificam/clientActivity/PlayActivity;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3357
    :cond_1
    return-void
.end method
