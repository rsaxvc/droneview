.class Lobject/p2pwificam/clientActivity/DronePlayActivity$ThreadConnect;
.super Ljava/lang/Thread;
.source "DronePlayActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pwificam/clientActivity/DronePlayActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ThreadConnect"
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/DronePlayActivity;)V
    .locals 0

    .prologue
    .line 630
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$ThreadConnect;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 634
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 636
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$ThreadConnect;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    # invokes: Lobject/p2pwificam/clientActivity/DronePlayActivity;->connectDevice()V
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->access$74(Lobject/p2pwificam/clientActivity/DronePlayActivity;)V

    .line 637
    return-void
.end method
