.class Lobject/p2pwificam/clientActivity/PlayActivity$33;
.super Ljava/lang/Object;
.source "PlayActivity.java"

# interfaces
.implements Lcom/easyview/basecamera/ICamera$IRespondListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lobject/p2pwificam/clientActivity/PlayActivity;->setLightListener()V
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
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/PlayActivity$33;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    .line 2662
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
    .line 2665
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity$33;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    invoke-static {v0, p2}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$56(Lobject/p2pwificam/clientActivity/PlayActivity;I)V

    .line 2666
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity$33;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    invoke-static {v0, p3}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$57(Lobject/p2pwificam/clientActivity/PlayActivity;I)V

    .line 2667
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity$33;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$12(Lobject/p2pwificam/clientActivity/PlayActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2668
    return-void
.end method
