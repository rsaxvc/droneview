.class Lobject/p2pwificam/clientActivity/LightActivity$5;
.super Ljava/lang/Object;
.source "LightActivity.java"

# interfaces
.implements Lcom/easyview/basecamera/ICamera$IRespondListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lobject/p2pwificam/clientActivity/LightActivity;->setLightListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/LightActivity;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/LightActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/LightActivity$5;->this$0:Lobject/p2pwificam/clientActivity/LightActivity;

    .line 119
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
    .line 122
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/LightActivity$5;->this$0:Lobject/p2pwificam/clientActivity/LightActivity;

    invoke-static {v0, p2}, Lobject/p2pwificam/clientActivity/LightActivity;->access$0(Lobject/p2pwificam/clientActivity/LightActivity;I)V

    .line 123
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/LightActivity$5;->this$0:Lobject/p2pwificam/clientActivity/LightActivity;

    invoke-static {v0, p3}, Lobject/p2pwificam/clientActivity/LightActivity;->access$1(Lobject/p2pwificam/clientActivity/LightActivity;I)V

    .line 124
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/LightActivity$5;->this$0:Lobject/p2pwificam/clientActivity/LightActivity;

    # getter for: Lobject/p2pwificam/clientActivity/LightActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/LightActivity;->access$8(Lobject/p2pwificam/clientActivity/LightActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 125
    return-void
.end method
