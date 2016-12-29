.class Lobject/p2pwificam/clientActivity/DPlayActivity$9$2;
.super Ljava/lang/Object;
.source "DPlayActivity.java"

# interfaces
.implements Lcom/easyview/basecamera/ICamera$IRespondListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lobject/p2pwificam/clientActivity/DPlayActivity$9;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lobject/p2pwificam/clientActivity/DPlayActivity$9;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/DPlayActivity$9;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$9$2;->this$1:Lobject/p2pwificam/clientActivity/DPlayActivity$9;

    .line 2013
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
    .line 2016
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$9$2;->this$1:Lobject/p2pwificam/clientActivity/DPlayActivity$9;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity$9;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity$9;->access$0(Lobject/p2pwificam/clientActivity/DPlayActivity$9;)Lobject/p2pwificam/clientActivity/DPlayActivity;

    move-result-object v0

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$20(Lobject/p2pwificam/clientActivity/DPlayActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x69

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2017
    return-void
.end method
