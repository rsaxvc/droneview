.class Lobject/p2pwificam/clientActivity/ThresholdActivity$6;
.super Ljava/lang/Object;
.source "ThresholdActivity.java"

# interfaces
.implements Lcom/easyview/basecamera/ICamera$IRespondListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lobject/p2pwificam/clientActivity/ThresholdActivity;->saveThres()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/ThresholdActivity;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/ThresholdActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/ThresholdActivity$6;->this$0:Lobject/p2pwificam/clientActivity/ThresholdActivity;

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnRespondResult(Lcom/easyview/basecamera/ICamera;II)V
    .locals 2
    .param p1, "camera"    # Lcom/easyview/basecamera/ICamera;
    .param p2, "cmd"    # I
    .param p3, "result"    # I

    .prologue
    .line 211
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/ThresholdActivity$6;->this$0:Lobject/p2pwificam/clientActivity/ThresholdActivity;

    # getter for: Lobject/p2pwificam/clientActivity/ThresholdActivity;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/ThresholdActivity;->access$3(Lobject/p2pwificam/clientActivity/ThresholdActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 212
    return-void
.end method
