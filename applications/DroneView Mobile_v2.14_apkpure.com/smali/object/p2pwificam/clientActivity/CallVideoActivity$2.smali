.class Lobject/p2pwificam/clientActivity/CallVideoActivity$2;
.super Landroid/os/Handler;
.source "CallVideoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pwificam/clientActivity/CallVideoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/CallVideoActivity;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/CallVideoActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity$2;->this$0:Lobject/p2pwificam/clientActivity/CallVideoActivity;

    .line 305
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 312
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity$2;->this$0:Lobject/p2pwificam/clientActivity/CallVideoActivity;

    # invokes: Lobject/p2pwificam/clientActivity/CallVideoActivity;->getCameraParams()V
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/CallVideoActivity;->access$4(Lobject/p2pwificam/clientActivity/CallVideoActivity;)V

    .line 316
    return-void
.end method
