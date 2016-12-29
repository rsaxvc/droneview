.class Lobject/p2pwificam/clientActivity/DPlayActivity$14;
.super Ljava/util/TimerTask;
.source "DPlayActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pwificam/clientActivity/DPlayActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/DPlayActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$14;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    .line 2568
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2572
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DPlayActivity$14;->this$0:Lobject/p2pwificam/clientActivity/DPlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DPlayActivity;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DPlayActivity;->access$20(Lobject/p2pwificam/clientActivity/DPlayActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x6a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2573
    return-void
.end method
