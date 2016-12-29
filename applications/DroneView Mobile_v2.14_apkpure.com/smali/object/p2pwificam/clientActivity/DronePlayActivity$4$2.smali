.class Lobject/p2pwificam/clientActivity/DronePlayActivity$4$2;
.super Ljava/lang/Object;
.source "DronePlayActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lobject/p2pwificam/clientActivity/DronePlayActivity$4;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lobject/p2pwificam/clientActivity/DronePlayActivity$4;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/DronePlayActivity$4;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$4$2;->this$1:Lobject/p2pwificam/clientActivity/DronePlayActivity$4;

    .line 842
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 845
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$4$2;->this$1:Lobject/p2pwificam/clientActivity/DronePlayActivity$4;

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity$4;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DronePlayActivity$4;->access$0(Lobject/p2pwificam/clientActivity/DronePlayActivity$4;)Lobject/p2pwificam/clientActivity/DronePlayActivity;

    move-result-object v0

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$29(Lobject/p2pwificam/clientActivity/DronePlayActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 846
    return-void
.end method
