.class Lcom/tutk/IOTC/Monitor$1;
.super Ljava/lang/Object;
.source "Monitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tutk/IOTC/Monitor;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tutk/IOTC/Monitor;


# direct methods
.method constructor <init>(Lcom/tutk/IOTC/Monitor;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tutk/IOTC/Monitor$1;->this$0:Lcom/tutk/IOTC/Monitor;

    .line 463
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v0, 0x0

    .line 467
    iget-object v1, p0, Lcom/tutk/IOTC/Monitor$1;->this$0:Lcom/tutk/IOTC/Monitor;

    # getter for: Lcom/tutk/IOTC/Monitor;->mCamera:Lcom/tutk/IOTC/Camera;
    invoke-static {v1}, Lcom/tutk/IOTC/Monitor;->access$5(Lcom/tutk/IOTC/Monitor;)Lcom/tutk/IOTC/Camera;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tutk/IOTC/Monitor$1;->this$0:Lcom/tutk/IOTC/Monitor;

    # getter for: Lcom/tutk/IOTC/Monitor;->mAVChannel:I
    invoke-static {v1}, Lcom/tutk/IOTC/Monitor;->access$6(Lcom/tutk/IOTC/Monitor;)I

    move-result v1

    if-ltz v1, :cond_0

    .line 468
    iget-object v1, p0, Lcom/tutk/IOTC/Monitor$1;->this$0:Lcom/tutk/IOTC/Monitor;

    # getter for: Lcom/tutk/IOTC/Monitor;->mCamera:Lcom/tutk/IOTC/Camera;
    invoke-static {v1}, Lcom/tutk/IOTC/Monitor;->access$5(Lcom/tutk/IOTC/Monitor;)Lcom/tutk/IOTC/Camera;

    move-result-object v6

    iget-object v1, p0, Lcom/tutk/IOTC/Monitor$1;->this$0:Lcom/tutk/IOTC/Monitor;

    # getter for: Lcom/tutk/IOTC/Monitor;->mAVChannel:I
    invoke-static {v1}, Lcom/tutk/IOTC/Monitor;->access$6(Lcom/tutk/IOTC/Monitor;)I

    move-result v7

    const/16 v8, 0x1001

    const/16 v1, 0x8

    move v2, v0

    move v3, v0

    move v4, v0

    move v5, v0

    invoke-static/range {v0 .. v5}, Lcom/tutk/IOTC/AVIOCTRLDEFs$SMsgAVIoctrlPtzCmd;->parseContent(BBBBBB)[B

    move-result-object v0

    invoke-virtual {v6, v7, v8, v0}, Lcom/tutk/IOTC/Camera;->sendIOCtrl(II[B)V

    .line 469
    :cond_0
    return-void
.end method
