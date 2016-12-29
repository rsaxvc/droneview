.class Lobject/p2pwificam/clientActivity/DronePlayActivity$6$1;
.super Ljava/lang/Object;
.source "DronePlayActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lobject/p2pwificam/clientActivity/DronePlayActivity$6;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lobject/p2pwificam/clientActivity/DronePlayActivity$6;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/DronePlayActivity$6;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$6$1;->this$1:Lobject/p2pwificam/clientActivity/DronePlayActivity$6;

    .line 1523
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1526
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$6$1;->this$1:Lobject/p2pwificam/clientActivity/DronePlayActivity$6;

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity$6;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DronePlayActivity$6;->access$0(Lobject/p2pwificam/clientActivity/DronePlayActivity$6;)Lobject/p2pwificam/clientActivity/DronePlayActivity;

    move-result-object v0

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->vedioview:Landroid/view/View;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$49(Lobject/p2pwificam/clientActivity/DronePlayActivity;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1527
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$6$1;->this$1:Lobject/p2pwificam/clientActivity/DronePlayActivity$6;

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity$6;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DronePlayActivity$6;->access$0(Lobject/p2pwificam/clientActivity/DronePlayActivity$6;)Lobject/p2pwificam/clientActivity/DronePlayActivity;

    move-result-object v0

    # getter for: Lobject/p2pwificam/clientActivity/DronePlayActivity;->control_layout:Landroid/view/View;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$19(Lobject/p2pwificam/clientActivity/DronePlayActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1528
    return-void
.end method
